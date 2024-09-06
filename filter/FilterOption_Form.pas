unit FilterOption_Form;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls, Filter_DropDown;

type
  TForm_OptionFilter = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Group_Codition_1: TGroupBox;
    Group_Codition_2: TGroupBox;
    Comb_Operator1: TComboBox;
    Comb_Value1: TComboBox;
    Comb_Operator2: TComboBox;
    Comb_Value2: TComboBox;
    Btn_Apply: TButton;
    Btn_Close: TButton;
    Group_Relation: TRadioGroup;
    procedure Btn_CloseClick(Sender: TObject);
    procedure Btn_ApplyClick(Sender: TObject);
    procedure Comb_OperatorChange(Sender: TObject);
    procedure Group_RelationClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Comb_ValueChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Arr_AllGlobalFilterExpression: Array Of FilterExpression;
  end;

var
  Form_OptionFilter: TForm_OptionFilter;

implementation

{$R *.dfm}

procedure TForm_OptionFilter.Btn_ApplyClick(Sender: TObject);
begin
  Self.ModalResult := mrOk;
end;

procedure TForm_OptionFilter.Btn_CloseClick(Sender: TObject);
begin
  Self.ModalResult := mrCancel;
end;

procedure TForm_OptionFilter.Comb_OperatorChange(Sender: TObject);
begin
  if Sender = Comb_Operator1
  then
  begin
    Self.Arr_AllGlobalFilterExpression[0].FilterOperator := DropDown_Filter.F_ConvertStringToFilterOperator(Comb_Operator1.Items[Comb_Operator1.ItemIndex]);
  end
  else if Sender = Comb_Operator2
  then
  begin
    Self.Arr_AllGlobalFilterExpression[1].FilterOperator := DropDown_Filter.F_ConvertStringToFilterOperator(Comb_Operator2.Items[Comb_Operator2.ItemIndex]);
  end;
end;

procedure TForm_OptionFilter.Comb_ValueChange(Sender: TObject);
begin
  if Sender = Comb_Value1
  then
  begin
    Self.Arr_AllGlobalFilterExpression[0].FilterValue := Comb_Value1.Text;
  end
  else if Sender = Comb_Value2
  then
  begin
    Self.Arr_AllGlobalFilterExpression[1].FilterValue := Comb_Value2.Text;
  end;
end;

procedure TForm_OptionFilter.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  with Self.Arr_AllGlobalFilterExpression[1]
  do
  begin
    if (FilterOperator = fltopNone)
    then
    begin
      FiltersRelation := fltopNone;
      FilterOperator := fltopNone;
      VarClear(FilterValue);
    end;
  end;
end;

procedure TForm_OptionFilter.Group_RelationClick(Sender: TObject);
begin
  if Group_Relation.ItemIndex = 0
  then
    Self.Arr_AllGlobalFilterExpression[1].FiltersRelation := fltopAND
  else if Group_Relation.ItemIndex = 1
  then
    Self.Arr_AllGlobalFilterExpression[1].FiltersRelation := fltopOR;
end;

end.
