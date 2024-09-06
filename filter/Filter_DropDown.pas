unit Filter_DropDown;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  DropDownFormEh, Dialogs, DynVarsEh, ToolCtrlsEh, DBGridEhGrouping,
  DBGridEhToolCtrls, Vcl.StdCtrls, Data.DB, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, Vcl.ExtCtrls, Vcl.CheckLst, OracleData, Vcl.Mask, DBCtrlsEh,
  System.ImageList, Vcl.ImgList, ClipBrd, Vcl.ActnCtrls, System.Actions,
  Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, Vcl.ToolWin,
  Vcl.ActnMenus;

type
  TFilterOperator = (fltopNone,
                     fltopEqual,
                     fltopNotEqual,
                     fltopGreaterThan,
                     fltopLessThan,
                     fltopGreaterOrEqual,
                     fltopLessOrEqual,
                     fltopLike,
                     fltopNotLike,
                     fltopIn,
                     fltopNotIn,
                     fltopBeginsWith,
                     fltopDoesntBeginWith,
                     fltopEndsWith,
                     fltopDoesntEndWith,
                     fltopAND,
                     fltopOR,
                     fltopNull,
                     fltopNotNull);

  TFilterOperandType = (fltopttNon,
                        fltoptString,
                        fltoptNumber,
                        fltoptDateTime,
                        fltoptDate,
                        fltoptBoolean);
  Type FilterExpression = record
    FilterOperator: TFilterOperator;
    FilterValue: Variant;
    FiltersRelation: TFilterOperator;
  end;

  TDropDown_Filter = class(TCustomDropDownFormEh)
    Panel1: TPanel;
    Btn_UserFilter: TButton;
    Btn_ClearFilter: TButton;
    Btn_ClearAllFilters: TButton;
    Items_List: TCheckListBox;
    Panel2: TPanel;
    E_Search: TEdit;
    Panel3: TPanel;
    Btn_Cancel: TButton;
    Btn_Apply: TButton;
    Check_Img: TImageList;
    procedure CustomDropDownFormEhInitForm(Sender: TCustomDropDownFormEh;
      DynParams: TDynVarsEh);
    procedure E_SearchChange(Sender: TObject);
    procedure Items_ListDrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure Items_ListClickCheck(Sender: TObject);
    procedure Items_ListData(Control: TWinControl; Index: Integer;
      var Data: string);
    procedure Btn_ApplyClick(Sender: TObject);
    procedure CustomDropDownFormEhReturnParams(Sender: TCustomDropDownFormEh;
      DynParams: TDynVarsEh);
    procedure Btn_UserFilterClick(Sender: TObject);
    procedure Btn_ClearFilterClick(Sender: TObject);
    procedure Btn_CancelClick(Sender: TObject);
    procedure Btn_ClearAllFiltersClick(Sender: TObject);
  private
    { Private declarations }
    procedure P_DeleteElemFromArray (VariantArray: Variant; Index: Integer);
    function F_ItemChecked(ItemValue: String): Bool;
    //procedure P_UnpackageFilterExpression(Fltr_Expr: String);
  public
    { Public declarations }
    FormOwner: TComponent;
    AllItems: TStringList;
    SearchedItems: TStringList;
    CheckedItems: TStringList;
    GlobalFilterExpression: FilterExpression;
    ExpressionType: TFilterOperandType;
    Arr_AllGlobalFilterExpression: Array Of FilterExpression;
    function F_PackageFilterExpression(Arr_FilterExpressions: Array Of FilterExpression): String;
    function F_ConvertFilterOperatorToString(FilterOperator: TFilterOperator; SQLVersion: Bool): String;
    function F_ConvertStringToFilterOperator(FilterName: String): TFilterOperator;
    constructor Create(AOwner: TComponent; ChildName: String);

  end;

var
  DropDown_Filter: TDropDown_Filter;
implementation

{$R *.dfm}
Uses
Udm_Main, FilterOption_Form;


procedure TDropDown_Filter.Btn_ApplyClick(Sender: TObject);
begin
  ModalResult := mrOk;
  Close;
end;

procedure TDropDown_Filter.Btn_CancelClick(Sender: TObject);
begin
  ModalResult := mrCancel;
  Close;
end;

procedure TDropDown_Filter.Btn_ClearAllFiltersClick(Sender: TObject);
var
  i: Integer;
begin
  for I := Low(Arr_AllGlobalFilterExpression) to High(Arr_AllGlobalFilterExpression)
  do
  begin
    with Arr_AllGlobalFilterExpression[i]
    do
    begin
      FilterOperator := fltopNone;
      VarClear(FilterValue);
      FiltersRelation := fltopNone;
    end;
  end;
  CheckedItems.Clear;
  ModalResult := mrOk;
  Close;
end;

procedure TDropDown_Filter.Btn_ClearFilterClick(Sender: TObject);
begin
  ModalResult := mrAbort;
  Close;
end;

procedure TDropDown_Filter.Btn_UserFilterClick(Sender: TObject);
var
  i: Integer;
  FilterOperatorTypes: TFilterOperator;
begin
  ModalResult := mrYesToAll;
  Close;
end;

constructor TDropDown_Filter.Create(AOwner: TComponent; ChildName: String);
begin
  inherited Create(AOwner);
  Self.Name := ChildName;
  Self.FormOwner := AOwner;
  CheckedItems := TStringListEh.Create;
  SearchedItems := TStringList.Create;
  AllItems := TStringList.Create;
  SetLength (Arr_AllGlobalFilterExpression, 1);
  Arr_AllGlobalFilterExpression[0].FiltersRelation := fltopNone;
end;

procedure TDropDown_Filter.CustomDropDownFormEhInitForm(
  Sender: TCustomDropDownFormEh; DynParams: TDynVarsEh);
  Var
    ParentDataSet: TDataSet;
    ParentFrame: TFrame;
    FormatSetting: TFormatSettings;
    List_DataSet: TOracleDataSet;
    i: Integer;
    Sql_Text: String;
begin
  ParentDataSet :=  FormOwner.FindComponent(DynParams.DynVar['DataSetName'].AsString) as TDataSet;

  AllItems.Clear;
  AllItems.Duplicates := dupError;
  AllItems.Sorted := True;
  AllItems.Add('(Выбрать все элементы)');

  if AllItems.Count = 1
  then
  begin
    With TOracleDataSet.Create(FormOwner)
    Do
    Begin
      Try
        Name := 'Db_Filter_'
                + AnsiLowerCase(DynParams.DynVar['FieldName'].AsString)
                + '_List';
        Session := DM_Main.Session;
        if DynParams.DynVar['ItemsFlag'].AsString = 'default'
        then
          Sql_Text := ' Select Distinct flt.' + AnsiUpperCase(DynParams.DynVar['FieldName'].AsString)
                      + #13#10 + 'From ('
                      + Copy( AnsiUpperCase((ParentDataSet as TOracleDataSet).SQL.Text),
                              Pos('/*FROM START*/', AnsiUpperCase((ParentDataSet as TOracleDataSet).SQL.Text))-1,
                              Pos('/*FROM END*/', AnsiUpperCase((ParentDataSet as TOracleDataSet).SQL.Text)) + 13 -
                              Pos('/*FROM START*/', AnsiUpperCase((ParentDataSet as TOracleDataSet).SQL.Text)) )
                      + ') flt'
                      //+ ' Where flt.' + AnsiUpperCase(DynParams.DynVar['FieldName'].AsString) + ' is Not Null '
                      + ' Order By flt.' + AnsiUpperCase(DynParams.DynVar['FieldName'].AsString)
        else if DynParams.DynVar['ItemsFlag'].AsString = 'custom'
        then
        begin
          if DynParams.DynVar['SQL'].AsString <> ''
          then
          begin
            Sql_Text := DynParams.DynVar['SQL'].AsString;
          end
          else
          begin
            MessageDlg('Не указан SQL запрос в переменной "SQL"!', mtError, [mbOK], 5);
            Abort;
          end;
        end;

        SQL.Add(Sql_Text);
        //Clipboard.AsText := Sql_Text;
        Active := True;

        List_DataSet :=  (FormOwner.FindComponent('Db_Filter_'
                                                       + AnsiLowerCase(DynParams.DynVar['FieldName'].AsString)
                                                       + '_List')) as TOracleDataSet;

        if List_DataSet <> Nil
        Then
        Begin
          With List_DataSet
          Do
          Begin
            First;
            if FieldByName(DynParams.DynVar['FieldName'].AsString).DataType = ftString
            then
              ExpressionType := fltoptString
            else if (FieldByName(DynParams.DynVar['FieldName'].AsString).DataType = ftInteger)
                     or (FieldByName(DynParams.DynVar['FieldName'].AsString).DataType = ftFloat)
            then
              ExpressionType := fltoptNumber
            else if (FieldByName(DynParams.DynVar['FieldName'].AsString).DataType = ftDate)
            then
              ExpressionType := fltoptDate
            else if (FieldByName(DynParams.DynVar['FieldName'].AsString).DataType = ftDateTime)
            then
              ExpressionType := fltoptDateTime;

            For i := 1 to RecordCount
            Do
            Begin
              if FieldByName(DynParams.DynVar['FieldName'].AsString).DataType = ftFloat
              then
              begin
                try AllItems.Add(StringReplace((FieldByName(DynParams.DynVar['FieldName'].AsString).AsString), ',', '.',
                          [rfReplaceAll, rfIgnoreCase])); except end
              end
              else
                try AllItems.Add(FieldByName(DynParams.DynVar['FieldName'].AsString).AsString); except end;
              Next;
            End;

            if AllItems.IndexOf('') <> -1
            then
            begin
              AllItems.Delete(AllItems.IndexOf(''));
              AllItems.Add('(Пустые)');
            end;

          End;
        End;
      Finally
        Close;
        Free;
      End;
    end;
  end;

  E_Search.Clear;
end;

procedure TDropDown_Filter.CustomDropDownFormEhReturnParams(
  Sender: TCustomDropDownFormEh; DynParams: TDynVarsEh);
begin
  DynParams['FilterExpression'].AsString := F_PackageFilterExpression(Arr_AllGlobalFilterExpression);
end;

procedure TDropDown_Filter.E_SearchChange(Sender: TObject);
var I, j: Integer;
begin
  try
    SearchedItems.Clear;
    for i := 0 to AllItems.Count-1
    do
    begin
      if (AnsiLowerCase(AllItems[i]).Contains(AnsiLowerCase(E_Search.Text)))
          Or (E_Search.Text = '')
      then
      begin
        SearchedItems.Add(AllItems[i]);
      end;
    end;
  finally
    Items_List.Count := SearchedItems.Count;
  end;
end;

procedure TDropDown_Filter.Items_ListClickCheck(Sender: TObject);
Var
  i,j, ListCount: Integer;
  FilterExpression: String;
  OldCheckedValue: Variant;
begin
  with Arr_AllGlobalFilterExpression[0]
  do
  begin
    if Not F_ItemChecked(Items_List.Items[Items_List.ItemIndex])
    then
    begin
      CheckedItems.Add(Items_List.Items[Items_List.ItemIndex]);
      if Items_List.Items[Items_List.ItemIndex] = '(Выбрать все элементы)'
      then
      begin
        CheckedItems.Clear;
        CheckedItems.Assign(AllItems);
        FilterOperator := fltopIn;
        if CheckedItems.IndexOf('(Пустые)') <> -1
        then
        begin
          FilterValue := VarArrayCreate([0, CheckedItems.Count-3], varVariant);
        end
        else
        begin
          FilterValue := VarArrayCreate([0, CheckedItems.Count-2], varVariant);
        end;
        j := 0;
        for i := 0 to CheckedItems.Count-1
        do
          if (CheckedItems[i] <> '(Выбрать все элементы)')
              and (CheckedItems[i] <> '(Пустые)')
          then
          begin
            FilterValue[j] := CheckedItems[i];
            Inc(j);
          end;

        if j = 1
        then
        begin
          FilterOperator := fltopEqual;
          OldCheckedValue := FilterValue[0];
          FilterValue := OldCheckedValue;
        end;


        //VarClear(FilterValue);
      end
      else if Items_List.Items[Items_List.ItemIndex] = '(Пустые)'
      then
      begin
        FilterOperator := fltopNull;
        //VarClear(FilterValue1);
      end
      else if VarType(FilterValue) = varEmpty
      then
      begin
        FilterOperator := fltopEqual;
        FilterValue := AllItems[AllItems.IndexOf(Items_List.Items[Items_List.ItemIndex])]
      end
      else
      begin
        if VarType(FilterValue) <> (varArray + varVariant)
        then
        begin
          FilterOperator := fltopIn;
          OldCheckedValue := FilterValue;
          FilterValue := VarArrayCreate([0, 1], varVariant);
          FilterValue[0] := OldCheckedValue;
          FilterValue[1] := AllItems[AllItems.IndexOf(Items_List.Items[Items_List.ItemIndex])];
        end
        else
        begin
          FilterOperator := fltopIn;
          VarArrayRedim(FilterValue, VarArrayHighBound(FilterValue, 1) + 1);
          FilterValue[VarArrayHighBound(FilterValue, 1)] := AllItems[AllItems.IndexOf(Items_List.Items[Items_List.ItemIndex])];
        end;
      end;
    end
    else
    begin
      CheckedItems.Delete(CheckedItems.IndexOf(Items_List.Items[Items_List.ItemIndex]));
      if Items_List.Items[Items_List.ItemIndex] = '(Выбрать все элементы)'
      then
      begin
        CheckedItems.Clear;
        FilterOperator := fltopNone;
        VarClear(FilterValue);
      end
      else if F_ItemChecked('(Выбрать все элементы)')
      then
      begin
        CheckedItems.Delete(CheckedItems.IndexOf('(Выбрать все элементы)'));
        FilterOperator := fltopIn;
        FilterValue := VarArrayCreate([0, 1], varVariant);
        for i := 0 to CheckedItems.Count-1
        do
        begin
          if i > 1
          then
            VarArrayRedim(FilterValue, VarArrayHighBound(FilterValue, 1) + 1);

          FilterValue[i] := CheckedItems[i];
        end;
      end
      else if VarType(FilterValue) = (varArray + varVariant)
      then
      begin
        for i := VarArrayLowBound(FilterValue, 1) to VarArrayHighBound(FilterValue, 1)
        do
        begin
          if FilterValue[i] = AllItems[AllItems.IndexOf(Items_List.Items[Items_List.ItemIndex])]
          then
          begin
            for j := i to VarArrayHighBound(FilterValue, 1) - 1
            do
            begin
              FilterValue[j] := FilterValue[j+1];
            end;
            VarArrayRedim(FilterValue, VarArrayHighBound(FilterValue, 1) - 1);
            Break;
          end;
        end;
        if (VarType(FilterValue) = (varArray + varVariant))
           and (VarArrayHighBound(FilterValue, 1) = 0)
        then
        begin
          FilterOperator := fltopEqual;
          OldCheckedValue := FilterValue[0];
          FilterValue := OldCheckedValue;
        end
      end
      else
      begin
        VarClear(FilterValue);
        FilterOperator := fltopNone;
      end;
    end;
  end;
  Items_List.Refresh;
end;

function TDropDown_Filter.F_ConvertFilterOperatorToString(
  FilterOperator: TFilterOperator; SQLVersion: Bool): String;
Var
  ResultFilterName: String;
begin
  Case FilterOperator
  Of
    fltopNone: ResultFilterName := '';
    fltopEqual:
    begin
      if SQLVersion
      then
        ResultFilterName := '='
      else
        ResultFilterName := 'равно';
    end;
    fltopNotEqual:
    begin
      if SQLVersion
      then
        ResultFilterName := '<>'
      else
        ResultFilterName := 'не равно';
    end;
    fltopGreaterThan:
    begin
      if SQLVersion
      then
        ResultFilterName := '>'
      else
        ResultFilterName := 'больше';
    end;
    fltopLessThan:
    begin
      if SQLVersion
      then
        ResultFilterName := '<'
      else
        ResultFilterName := 'меньше';
    end;
    fltopGreaterOrEqual:
    begin
      if SQLVersion
      then
        ResultFilterName := '>='
      else
        ResultFilterName := 'больше или равно';
    end;
    fltopLessOrEqual:
    begin
      if SQLVersion
      then
        ResultFilterName := '<='
      else
        ResultFilterName := 'меньше или равно';
    end;
    fltopLike:
    begin
      if SQLVersion
      then
        ResultFilterName := 'like'
      else
        ResultFilterName := 'содержит';
    end;
    fltopNotLike:
    begin
      if SQLVersion
      then
        ResultFilterName := 'not like'
      else
        ResultFilterName := 'не содержит';
    end;
    fltopIn:
    begin
      if SQLVersion
      then
        ResultFilterName := 'in'
      else
        ResultFilterName := 'в списке';
    end;
    fltopNotIn:
    begin
      if SQLVersion
      then
        ResultFilterName := 'not in'
      else
        ResultFilterName := 'не в списке';
    end;
    fltopNull:
    begin
      if SQLVersion
      then
        ResultFilterName := 'is null'
      else
        ResultFilterName := 'пустые';
    end;
    fltopNotNull:
    begin
      if SQLVersion
      then
        ResultFilterName := 'is not null'
      else
        ResultFilterName := 'не пустые';
    end;
    fltopAND:
    begin
      if SQLVersion
      then
        ResultFilterName := 'and'
      else
        ResultFilterName := 'и';
    end;
    fltopOR:
    begin
      if SQLVersion
      then
        ResultFilterName := 'or'
      else
        ResultFilterName := 'или';
    end;
    fltopBeginsWith:
    begin
      if SQLVersion
      then
        ResultFilterName := 'like'
      else
        ResultFilterName := 'начинается с';
    end;
    fltopDoesntBeginWith:
    begin
      if SQLVersion
      then
        ResultFilterName := 'not like'
      else
        ResultFilterName := 'не начинается с';
    end;
    fltopEndsWith:
    begin
      if SQLVersion
      then
        ResultFilterName := 'like'
      else
        ResultFilterName := 'заканчивается на';
    end;
    fltopDoesntEndWith:
    begin
      if SQLVersion
      then
        ResultFilterName := 'not like'
      else
        ResultFilterName := 'не заканчивается на';
    end;
    else
      ResultFilterName := '';
  End;
  Result := ResultFilterName;
end;

function TDropDown_Filter.F_ConvertStringToFilterOperator(
  FilterName: String): TFilterOperator;
Var
  ResultFilter: TFilterOperator;
begin
  if FilterName = ''
  then
    ResultFilter := fltopNone
  else if (FilterName = '=')
           or (FilterName = 'равно')
  then
    ResultFilter := fltopEqual
  else if (FilterName = '<>')
           or (FilterName = 'не равно')
  then
    ResultFilter := fltopNotEqual
  else if (FilterName = '>')
           or (FilterName = 'больше')
  then
    ResultFilter := fltopGreaterThan
  else if (FilterName = '<')
           or (FilterName = 'меньше')
  then
    ResultFilter := fltopLessThan
  else if (FilterName = '>=')
           or (FilterName = 'больше или равно')
  then
    ResultFilter := fltopGreaterOrEqual
  else if (FilterName = '<=')
           or (FilterName = 'меньше или равно')
  then
    ResultFilter := fltopLessOrEqual
  else if (FilterName = 'like')
           or (FilterName = 'содержит')
  then
    ResultFilter := fltopLike
  else if (FilterName = 'not like')
           or (FilterName = 'не содержит')
  then
    ResultFilter := fltopNotLike
  else if (FilterName = 'in')
           or (FilterName = 'в списке')
  then
    ResultFilter := fltopIn
  else if (FilterName = 'not in')
           or (FilterName = 'не в списке')
  then
    ResultFilter := fltopNotIn
  else if (FilterName = 'is null')
           or (FilterName = 'пустые')
  then
    ResultFilter := fltopNull
  else if (FilterName = 'is not null')
           or (FilterName = 'не пустые')
  then
    ResultFilter := fltopNotNull
  else if (FilterName = 'and')
           or (FilterName = 'и')
  then
    ResultFilter := fltopAND
  else if (FilterName = 'начинается с')
  then
    ResultFilter := fltopBeginsWith
  else if (FilterName = 'не начинается с')
  then
    ResultFilter := fltopDoesntBeginWith
  else if (FilterName = 'заканчивается на')
  then
    ResultFilter := fltopEndsWith
  else if (FilterName = 'не заканчивается на')
  then
    ResultFilter := fltopDoesntEndWith
  else
    ResultFilter := fltopNone;
  Result := ResultFilter;
end;

function TDropDown_Filter.F_ItemChecked(ItemValue: String): Bool;
Var
  ItemChecked: Bool;
  I: Integer;
begin
  if CheckedItems.IndexOf(ItemValue) <> -1
  then
    ItemChecked := True
  else
    ItemChecked := False;

  Result := ItemChecked;
end;

function TDropDown_Filter.F_PackageFilterExpression(Arr_FilterExpressions: Array Of FilterExpression): String;
var
  ResultFiltrExpresion: String;
  i, j: Integer;
begin
  for i := 0 to Length(Arr_FilterExpressions)-1
  do
  begin
    with Arr_FilterExpressions[i]
    do
    begin
      if FiltersRelation <> fltopNone
      then
         ResultFiltrExpresion := ResultFiltrExpresion
                                 + ' '
                                 + F_ConvertFilterOperatorToString(FiltersRelation, False)
                                 + ' ';

      if (FilterOperator <> fltopNull)
         And (FilterOperator <> fltopNotNull)
      then
      begin
        if (VarType(FilterValue) = (varArray + varVariant))
        then
        begin
          ResultFiltrExpresion := ResultFiltrExpresion + F_ConvertFilterOperatorToString(FilterOperator, False) + ': ';
          for j:= VarArrayLowBound(FilterValue, 1) to VarArrayHighBound(FilterValue, 1)
          do
          begin
            if j = VarArrayHighBound(FilterValue, 1)
            then
              ResultFiltrExpresion := ResultFiltrExpresion + ', '
                                  + FilterValue[j]
                                  + ')'
            else if j = VarArrayLowBound(FilterValue, 1)
            then
              ResultFiltrExpresion := ResultFiltrExpresion + '('
                                  + FilterValue[j]
            else
              ResultFiltrExpresion := ResultFiltrExpresion + ', '
                                  + FilterValue[j]
          end;
        end
        else if VarType(FilterValue) <> varEmpty
        then
        begin
          ResultFiltrExpresion := ResultFiltrExpresion + F_ConvertFilterOperatorToString(FilterOperator, False) + ': ''';
          ResultFiltrExpresion := ResultFiltrExpresion + FilterValue + '''';
        end
        else
          ResultFiltrExpresion := ResultFiltrExpresion + '';
      end
      else
      begin
        ResultFiltrExpresion := ResultFiltrExpresion + F_ConvertFilterOperatorToString(FilterOperator, False);
      end;
    end;
  end;

  Result := ResultFiltrExpresion;
end;

procedure TDropDown_Filter.Items_ListData(Control: TWinControl; Index: Integer;
  var Data: string);
begin
  Data := AllItems[AllItems.IndexOf(SearchedItems[Index])];
end;

procedure TDropDown_Filter.Items_ListDrawItem(Control: TWinControl;
  Index: Integer; Rect: TRect; State: TOwnerDrawState);
  Var
    CompareRect: TRect;
begin
  if odselected in State then
  begin
    Items_List.Canvas.Brush.Color := clGradientInactiveCaption;
  end
  else
  if odd(index) then
  begin
    Items_List.Canvas.Brush.Color := clMenu;
  end
  else
  begin
    Items_List.Canvas.Brush.Color := clWhite;
  end;
  Items_List.Canvas.FillRect(Rect);


  if (F_ItemChecked(Items_List.Items[Index]))
  then
    Check_Img.Draw(Items_List.Canvas,0,Rect.Top,1)
  else
    Check_Img.Draw(Items_List.Canvas,0,Rect.Top,0);

  if AnsiLowerCase(Items_List.Items[Index]).Contains(AnsiLowerCase(E_Search.Text))
  then
  begin
    if odselected in State then
      Items_List.Canvas.Brush.Color := clWebDarkOrange
    else
      Items_List.Canvas.Brush.Color := clWebYellow;
    CompareRect.Left := Rect.Left + (Items_List.Canvas.TextWidth(Copy(Items_List.Items[index],
                                                                      0,Pos(E_Search.text, Items_List.Items[index])-1)));
    CompareRect.Top := Rect.Top;
    CompareRect.Bottom := Rect.Bottom;
    CompareRect.Width := Items_List.Canvas.TextWidth(E_Search.Text);
    Items_List.Canvas.FillRect(CompareRect);
    SetBkMode(Items_List.Canvas.Handle,TRANSPARENT);
  end;
  Items_List.Canvas.Font.Color := clWindowText;
  Items_List.Canvas.TextOut(Rect.Left,Rect.Top,Items_List.Items[index]);

end;

procedure TDropDown_Filter.P_DeleteElemFromArray(VariantArray: Variant;
  Index: Integer);
var
  i: Integer;
begin
  if (VarType(VariantArray) = (varArray + varVariant))
  then
  begin
    for i := Index to VarArrayHighBound(VariantArray, 1) - 1
    do
    begin
      VariantArray[i] := VariantArray[i+1];
    end;
    VarArrayRedim(VariantArray, VarArrayHighBound(VariantArray, 1) - 1);
  end;

end;

end.