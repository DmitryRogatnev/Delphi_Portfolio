unit Tp_Data_Changes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, MemTableDataEh, Data.DB, DataDriverEh,
  OracleData, MemTableEh, Vcl.ExtCtrls, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, PrViewEh, Printers, DBGridEhImpExp, PrnDbgeh, Vcl.Menus;

type
  TForm_Tp_Data_Changes = class(TForm)
    Grid_ChangesBookmrks: TDBGridEh;
    Splitter1: TSplitter;
    Panel_Changes: TPanel;
    Panel_Changes_Bfr: TPanel;
    Splitter2: TSplitter;
    Panel_Changes_Aftr: TPanel;
    Panel_Changes_Bfr_Capt: TPanel;
    Panel_Changes_Aftr_Capt: TPanel;
    Grid_Changes_Bfr: TDBGridEh;
    Grid_Changes_Aftr: TDBGridEh;
    Db_Opers_Chng: TOracleDataSet;
    Driver_Changes: TDataSetDriverEh;
    MemT_Changes: TMemTableEh;
    MemT_Changes_Bfr: TMemTableEh;
    MemT_Changes_Aftr: TMemTableEh;
    Data_Changes_Bfr: TDataSource;
    Data_Changes_Aftr: TDataSource;
    Db_Oper_Per_Chng: TOracleDataSet;
    Db_Per_Det_Chng: TOracleDataSet;
    Db_Per_Mat_Chng: TOracleDataSet;
    Db_Per_Ins_Chng: TOracleDataSet;
    Db_Per_Osn_Chng: TOracleDataSet;
    Db_Opers_ChngNOMOPER: TFloatField;
    Db_Opers_ChngPART_ROW_NUM: TFloatField;
    Db_Opers_ChngCEH: TFloatField;
    Db_Opers_ChngCEH_CODE: TStringField;
    Db_Opers_ChngOPER: TFloatField;
    Db_Opers_ChngOPER_NAME: TStringField;
    Db_Opers_ChngOBOR: TFloatField;
    Db_Opers_ChngOBOR_NAME: TStringField;
    Db_Opers_ChngPRIM: TStringField;
    Db_Opers_ChngTT: TStringField;
    Db_Opers_ChngMAT: TFloatField;
    Db_Opers_ChngMAT_NAME: TStringField;
    Db_Opers_ChngTARA: TFloatField;
    Db_Opers_ChngTARA_NUM_NAME: TStringField;
    Db_Opers_ChngIOT: TStringField;
    Db_Opers_ChngFLAG: TStringField;
    Db_Oper_Per_ChngNOMOPER: TFloatField;
    Db_Oper_Per_ChngPART_ROW_NUM: TFloatField;
    Db_Oper_Per_ChngCEH: TFloatField;
    Db_Oper_Per_ChngCEH_CODE: TStringField;
    Db_Oper_Per_ChngOPER: TFloatField;
    Db_Oper_Per_ChngOPER_NAME: TStringField;
    Db_Oper_Per_ChngNOM_PER: TIntegerField;
    Db_Oper_Per_ChngPER: TStringField;
    Db_Oper_Per_ChngPRIM: TStringField;
    Db_Oper_Per_ChngTT_PER: TStringField;
    Db_Oper_Per_ChngFLAG: TStringField;
    Db_Per_Det_ChngNOMOPER: TFloatField;
    Db_Per_Det_ChngPART_ROW_NUM: TFloatField;
    Db_Per_Det_ChngCEH: TFloatField;
    Db_Per_Det_ChngCEH_CODE: TStringField;
    Db_Per_Det_ChngOPER: TFloatField;
    Db_Per_Det_ChngNOM_PER: TIntegerField;
    Db_Per_Det_ChngDET_ID: TFloatField;
    Db_Per_Det_ChngDET_NUM_NAME: TStringField;
    Db_Per_Det_ChngNOM_DET: TIntegerField;
    Db_Per_Det_ChngKOL: TFloatField;
    Db_Per_Det_ChngFLAG: TStringField;
    Db_Per_Mat_ChngNOMOPER: TFloatField;
    Db_Per_Mat_ChngPART_ROW_NUM: TFloatField;
    Db_Per_Mat_ChngCEH: TFloatField;
    Db_Per_Mat_ChngCEH_CODE: TStringField;
    Db_Per_Mat_ChngOPER: TFloatField;
    Db_Per_Mat_ChngNOM_PER: TIntegerField;
    Db_Per_Mat_ChngMAT_ID: TFloatField;
    Db_Per_Mat_ChngMAT_NAME: TStringField;
    Db_Per_Mat_ChngNOM_MAT: TIntegerField;
    Db_Per_Mat_ChngNORMA_MIN: TFloatField;
    Db_Per_Mat_ChngNORMA_MAX: TFloatField;
    Db_Per_Mat_ChngED_ID: TFloatField;
    Db_Per_Mat_ChngED_NAME: TStringField;
    Db_Per_Mat_ChngMAT_VISCOS: TStringField;
    Db_Per_Mat_ChngFLAG: TStringField;
    Db_Per_Ins_ChngNOMOPER: TFloatField;
    Db_Per_Ins_ChngPART_ROW_NUM: TFloatField;
    Db_Per_Ins_ChngCEH: TFloatField;
    Db_Per_Ins_ChngCEH_CODE: TStringField;
    Db_Per_Ins_ChngOPER: TFloatField;
    Db_Per_Ins_ChngNOM_PER: TIntegerField;
    Db_Per_Ins_ChngINSTR_ID: TFloatField;
    Db_Per_Ins_ChngINSTR_NAME: TStringField;
    Db_Per_Ins_ChngFLAG: TStringField;
    Db_Per_Osn_ChngNOMOPER: TFloatField;
    Db_Per_Osn_ChngPART_ROW_NUM: TFloatField;
    Db_Per_Osn_ChngCEH: TFloatField;
    Db_Per_Osn_ChngCEH_CODE: TStringField;
    Db_Per_Osn_ChngOPER: TFloatField;
    Db_Per_Osn_ChngNOM_PER: TIntegerField;
    Db_Per_Osn_ChngSHOSN_ID: TFloatField;
    Db_Per_Osn_ChngOSN_NUM_NAME: TStringField;
    Db_Per_Osn_ChngFLAG: TStringField;
    Data_Changes_Bookmrks: TDataSource;
    MemT_Changes_Bookmrks: TMemTableEh;
    MemT_Changes_BookmrksRefFrameClass: TRefObjectField;
    MemT_Changes_BookmrksRefFrame: TRefObjectField;
    MemT_Changes_BookmrksBkmrk_Name: TStringField;
    MemT_Changes_BookmrksBkmrk_Flag: TStringField;
    Db_Opers_ChngOPER_NUMBER: TStringField;
    Db_Oper_Per_ChngOPER_NUMBER: TStringField;
    Db_Per_Mat_ChngOPER_NUMBER: TStringField;
    Db_Per_Osn_ChngOPER_NUMBER: TStringField;
    Db_Per_Ins_ChngOPER_NUMBER: TStringField;
    Db_Per_Det_ChngOPER_NUMBER: TStringField;
    Save_Grid: TSaveDialog;
    Print_Grid: TPrintDBGridEh;
    Pop_M_Changes: TPopupMenu;
    Pop_M_Changes_Btn_Print: TMenuItem;
    Pop_M_Changes_Btn_Export: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure MemT_Changes_BookmrksAfterScroll(DataSet: TDataSet);
    procedure Pop_M_Changes_Btn_PrintClick(Sender: TObject);
    procedure Pop_M_Changes_Btn_ExportClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    v_Doc_Id: Integer;
  end;

var
  Form_Tp_Data_Changes: TForm_Tp_Data_Changes;
  Arr_Visible_Coll_Opers: Array Of String = ['CEH_CODE', 'OPER_NUMBER',
                                             'OPER_NAME', 'OBOR_NAME', 'PRIM',
                                             'TT', 'MAT_NAME', 'TARA_NUM_NAME',
                                             'IOT' ];
  Arr_Visible_Coll_Names_Opers: Array Of String = ['Цех', '№ опер.',
                                             'Операция', 'Оборудование', 'Примечание',
                                             'Техн. требования', 'Материал заготовки', 'Тара',
                                             'ИОТ'];
  Arr_Visible_Coll_Oper_Per: Array Of String = ['CEH_CODE', 'OPER_NUMBER', 'OPER_NAME',
                                                'NOM_PER', 'PER', 'PRIM', 'TT_PER' ];
  Arr_Visible_Coll_Names_Oper_Per: Array Of String = ['Цех', '№ опер.', 'Операция',
                                                      '№ перехода', 'Переход', 'Примечание',
                                                      'Тех. требования' ];
  Arr_Visible_Coll_Per_Det: Array Of String = ['CEH_CODE', 'OPER_NUMBER', 'NOM_PER',
                                               'NOM_DET', 'DET_NUM_NAME', 'KOL' ];
  Arr_Visible_Coll_Names_Per_Det: Array Of String = ['Цех', '№ опер.', '№ перехода',
                                                     '№ детали', 'Деталь', 'Кол-во' ];
  Arr_Visible_Coll_Per_Mat: Array Of String = ['CEH_CODE', 'OPER_NUMBER', 'NOM_PER',
                                               'NOM_MAT', 'MAT_NAME', 'NORMA_MIN',
                                               'NORMA_MAX', 'ED_NAME', 'MAT_VISCOS'];
  Arr_Visible_Coll_Names_Per_Mat: Array Of String = ['Цех', '№ опер.', '№ перехода',
                                                     '№ п/п', 'Наименование', 'Норма расх.(мин.)',
                                                     'Норма расх.(макс.)', 'Ед. изм.', 'Вязкость'];
  Arr_Visible_Coll_Per_Ins: Array Of String = ['CEH_CODE', 'OPER_NUMBER', 'NOM_PER', 'INSTR_NAME' ];
  Arr_Visible_Coll_Names_Per_Ins: Array Of String = ['Цех', '№ опер.', '№ перехода', 'Наименование'];
  Arr_Visible_Coll_Per_Osn: Array Of String = ['CEH_CODE', 'OPER_NUMBER', 'NOM_PER', 'OSN_NUM_NAME'  ];
  Arr_Visible_Coll_Names_Per_Osn: Array Of String = ['Цех', '№ опер.', '№ перехода', 'Наименование'];

implementation

{$R *.dfm}

Uses
Udm_Main, Tp_Main_Form;

procedure TForm_Tp_Data_Changes.FormShow(Sender: TObject);
Var
  Vl_Count_Changes, Vl_Div_Rem: Integer;
  Vl_In_DocParams, Vl_Out_DocParams: TDynVarsEh;
begin
  MemT_Changes_Bookmrks.Active := True;
  Grid_Changes_Bfr.ClearFilter;
  Grid_Changes_Aftr.ClearFilter;
  MemT_Changes.Active := False;
  MemT_Changes_Bfr.Active := False;
  MemT_Changes_Aftr.Active := False;


  MemT_Changes_Bookmrks.EmptyTable;


  {$Region 'Опеределение кол-ва изменений'}
  Db_Opers_Chng.Close;
  Db_Opers_Chng.SetVariable('v_Doc_Id', v_Doc_Id);
  Db_Opers_Chng.Open;

  If Not Db_Opers_Chng.IsEmpty
  Then
  Begin
    MemT_Changes_Bookmrks.Append;
    Vl_Div_Rem := Db_Opers_Chng.RecordCount Mod 2;
    if Vl_Div_Rem = 0
    Then
      Vl_Count_Changes := (Db_Opers_Chng.RecordCount Div 2)
    Else
      Vl_Count_Changes := (Db_Opers_Chng.RecordCount Div 2) + Vl_Div_Rem;
    MemT_Changes_Bookmrks.FieldByName('Bkmrk_Name').AsString := 'Операции ('
                                              + IntToStr(Vl_Count_Changes)
                                              + ')';
    MemT_Changes_Bookmrks.FieldByName('Bkmrk_Flag').AsString := 'Opers_Chng';
    MemT_Changes_Bookmrks.Post;
  End;


  Db_Oper_Per_Chng.Close;
  Db_Oper_Per_Chng.SetVariable('v_Doc_Id', v_Doc_Id);
  Db_Oper_Per_Chng.Open;

  If Not Db_Oper_Per_Chng.IsEmpty
  Then
  Begin
    MemT_Changes_Bookmrks.Append;
    Vl_Div_Rem := Db_Oper_Per_Chng.RecordCount Mod 2;
    if Vl_Div_Rem = 0
    Then
      Vl_Count_Changes := (Db_Oper_Per_Chng.RecordCount Div 2)
    Else
      Vl_Count_Changes := (Db_Oper_Per_Chng.RecordCount Div 2) + Vl_Div_Rem;
    MemT_Changes_Bookmrks.FieldByName('Bkmrk_Name').AsString := 'Переходы к операциям ('
                                              + IntToStr(Vl_Count_Changes)
                                              + ')';
    MemT_Changes_Bookmrks.FieldByName('Bkmrk_Flag').AsString := 'Oper_Per_Chng';
    MemT_Changes_Bookmrks.Post;
  End;

  Db_Per_Det_Chng.Close;
  Db_Per_Det_Chng.SetVariable('v_Doc_Id', v_Doc_Id);
  Db_Per_Det_Chng.Open;

  If Not Db_Per_Det_Chng.IsEmpty
  Then
  Begin
    MemT_Changes_Bookmrks.Append;
    Vl_Div_Rem := Db_Per_Det_Chng.RecordCount Mod 2;
    if Vl_Div_Rem = 0
    Then
      Vl_Count_Changes := (Db_Per_Det_Chng.RecordCount Div 2)
    Else
      Vl_Count_Changes := (Db_Per_Det_Chng.RecordCount Div 2) + Vl_Div_Rem;
    MemT_Changes_Bookmrks.FieldByName('Bkmrk_Name').AsString := 'Детали перехода ('
                                              + IntToStr(Vl_Count_Changes)
                                              + ')';
    MemT_Changes_Bookmrks.FieldByName('Bkmrk_Flag').AsString := 'Per_Det_Chng';
    MemT_Changes_Bookmrks.Post;
  End;

  Db_Per_Mat_Chng.Close;
  Db_Per_Mat_Chng.SetVariable('v_Doc_Id', v_Doc_Id);
  Db_Per_Mat_Chng.Open;

  If Not Db_Per_Mat_Chng.IsEmpty
  Then
  Begin
    MemT_Changes_Bookmrks.Append;
    Vl_Div_Rem := Db_Per_Mat_Chng.RecordCount Mod 2;
    if Vl_Div_Rem = 0
    Then
      Vl_Count_Changes := (Db_Per_Mat_Chng.RecordCount Div 2)
    Else
      Vl_Count_Changes := (Db_Per_Mat_Chng.RecordCount Div 2) + Vl_Div_Rem;
    MemT_Changes_Bookmrks.FieldByName('Bkmrk_Name').AsString := 'Материалы к переходам ('
                                                + IntToStr(Vl_Count_Changes)
                                                + ')';
    MemT_Changes_Bookmrks.FieldByName('Bkmrk_Flag').AsString := 'Per_Mat_Chng';
    MemT_Changes_Bookmrks.Post;
  End;

  Db_Per_Ins_Chng.Close;
  Db_Per_Ins_Chng.SetVariable('v_Doc_Id', v_Doc_Id);
  Db_Per_Ins_Chng.Open;

  If Not Db_Per_Ins_Chng.IsEmpty
  Then
  Begin
    MemT_Changes_Bookmrks.Append;
    Vl_Div_Rem := Db_Per_Ins_Chng.RecordCount Mod 2;
    if Vl_Div_Rem = 0
    Then
      Vl_Count_Changes := (Db_Per_Ins_Chng.RecordCount Div 2)
    Else
      Vl_Count_Changes := (Db_Per_Ins_Chng.RecordCount Div 2) + Vl_Div_Rem;
    MemT_Changes_Bookmrks.FieldByName('Bkmrk_Name').AsString := 'Инструменты к переходам ('
                                                + IntToStr(Vl_Count_Changes)
                                                + ')';
    MemT_Changes_Bookmrks.FieldByName('Bkmrk_Flag').AsString := 'Per_Ins_Chng';
    MemT_Changes_Bookmrks.Post;
  End;

  Db_Per_Osn_Chng.Close;
  Db_Per_Osn_Chng.SetVariable('v_Doc_Id', v_Doc_Id);
  Db_Per_Osn_Chng.Open;

  If Not Db_Per_Osn_Chng.IsEmpty
  Then
  Begin
    MemT_Changes_Bookmrks.Append;
    Vl_Div_Rem := Db_Per_Osn_Chng.RecordCount Mod 2;
    if Vl_Div_Rem = 0
    Then
      Vl_Count_Changes := (Db_Per_Osn_Chng.RecordCount Div 2)
    Else
      Vl_Count_Changes := (Db_Per_Osn_Chng.RecordCount Div 2) + Vl_Div_Rem;
    MemT_Changes_Bookmrks.FieldByName('Bkmrk_Name').AsString := 'Оснастка к переходам ('
                                                + IntToStr(Vl_Count_Changes)
                                                + ')';
    MemT_Changes_Bookmrks.FieldByName('Bkmrk_Flag').AsString := 'Per_Osn_Chng';
    MemT_Changes_Bookmrks.Post;
  End;
  {$EndRegion 'Опеределение кол-ва изменений'}

   Vl_In_DocParams := TDynVarsEh.Create( Application.MainForm );
   Vl_In_DocParams.DynVar[ 'v_Find' ].AsString := 'DOC';
   Vl_In_DocParams.DynVar[ 'V_Filter' ].AsString := 't.Id =' + IntToStr(v_Doc_Id);
   Vl_Out_DocParams := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( Vl_In_DocParams );
   If Vl_Out_DocParams <> Nil
   Then
   Begin
     Caption := 'Изменения по документу ' + Vl_Out_DocParams.DynVar['Num_Doc'].AsString;
   End
   Else
    Caption := 'Изменения по документу ';
  MemT_Changes_BookmrksAfterScroll(Nil);
end;

procedure TForm_Tp_Data_Changes.MemT_Changes_BookmrksAfterScroll(DataSet: TDataSet);
Var I: Integer;
New_Field_Bfr, New_Field_Aftr: TField;
Columns_Arr: Array Of String;
Titles_Arr: Array Of String;

begin

  MemT_Changes.Active := False;
  MemT_Changes_Bfr.Active := False;
  MemT_Changes_Aftr.Active := False;

  {$Region 'Определение типа изменений и колонок'}

  If MemT_Changes_Bookmrks.FieldByName('Bkmrk_Flag').AsString = 'Opers_Chng'
  Then
  Begin
    Driver_Changes.ProviderDataSet := Db_Opers_Chng;
    SetLength(Columns_Arr, Length(Arr_Visible_Coll_Opers));
    For I := Low(Arr_Visible_Coll_Opers) to High(Arr_Visible_Coll_Opers)
    Do
     Columns_Arr[i] := Arr_Visible_Coll_Opers[i];
    SetLength(Titles_Arr, Length(Arr_Visible_Coll_Names_Opers));
    For I := Low(Arr_Visible_Coll_Names_Opers) to High(Arr_Visible_Coll_Names_Opers)
    Do
     Titles_Arr[i] := Arr_Visible_Coll_Names_Opers[i];
    MemT_Changes.Active := True;
    MemT_Changes_Bfr.Active := True;
    MemT_Changes_Aftr.Active := True;
  End;

  If MemT_Changes_Bookmrks.FieldByName('Bkmrk_Flag').AsString = 'Oper_Per_Chng'
  Then
  Begin
    Driver_Changes.ProviderDataSet := Db_Oper_Per_Chng;
    SetLength(Columns_Arr, Length(Arr_Visible_Coll_Oper_Per));
    For I := Low(Arr_Visible_Coll_Oper_Per) to High(Arr_Visible_Coll_Oper_Per)
    Do
     Columns_Arr[i] := Arr_Visible_Coll_Oper_Per[i];
    SetLength(Titles_Arr, Length(Arr_Visible_Coll_Names_Oper_Per));
    For I := Low(Arr_Visible_Coll_Names_Oper_Per) to High(Arr_Visible_Coll_Names_Oper_Per)
    Do
     Titles_Arr[i] := Arr_Visible_Coll_Names_Oper_Per[i];
    MemT_Changes.Active := True;
    MemT_Changes_Bfr.Active := True;
    MemT_Changes_Aftr.Active := True;
  End;

  If MemT_Changes_Bookmrks.FieldByName('Bkmrk_Flag').AsString = 'Per_Det_Chng'
  Then
  Begin
    Driver_Changes.ProviderDataSet := Db_Per_Det_Chng;
    SetLength(Columns_Arr, Length(Arr_Visible_Coll_Per_Det));
    For I := Low(Arr_Visible_Coll_Per_Det) to High(Arr_Visible_Coll_Per_Det)
    Do
     Columns_Arr[i] := Arr_Visible_Coll_Per_Det[i];
    SetLength(Titles_Arr, Length(Arr_Visible_Coll_Names_Per_Det));
    For I := Low(Arr_Visible_Coll_Names_Per_Det) to High(Arr_Visible_Coll_Names_Per_Det)
    Do
     Titles_Arr[i] := Arr_Visible_Coll_Names_Per_Det[i];
    MemT_Changes.Active := True;
    MemT_Changes_Bfr.Active := True;
    MemT_Changes_Aftr.Active := True;
  End;

  If MemT_Changes_Bookmrks.FieldByName('Bkmrk_Flag').AsString = 'Per_Mat_Chng'
  Then
  Begin
    Driver_Changes.ProviderDataSet := Db_Per_Mat_Chng;
    SetLength(Columns_Arr, Length(Arr_Visible_Coll_Per_Mat));
    For I := Low(Arr_Visible_Coll_Per_Mat) to High(Arr_Visible_Coll_Per_Mat)
    Do
     Columns_Arr[i] := Arr_Visible_Coll_Per_Mat[i];
    SetLength(Titles_Arr, Length(Arr_Visible_Coll_Names_Per_Mat));
    For I := Low(Arr_Visible_Coll_Names_Per_Mat) to High(Arr_Visible_Coll_Names_Per_Mat)
    Do
     Titles_Arr[i] := Arr_Visible_Coll_Names_Per_Mat[i];
    MemT_Changes.Active := True;
    MemT_Changes_Bfr.Active := True;
    MemT_Changes_Aftr.Active := True;
  End;

  If MemT_Changes_Bookmrks.FieldByName('Bkmrk_Flag').AsString = 'Per_Ins_Chng'
  Then
  Begin
    Driver_Changes.ProviderDataSet := Db_Per_Ins_Chng;
    SetLength(Columns_Arr, Length(Arr_Visible_Coll_Per_Ins));
    For I := Low(Arr_Visible_Coll_Per_Ins) to High(Arr_Visible_Coll_Per_Ins)
    Do
     Columns_Arr[i] := Arr_Visible_Coll_Per_Ins[i];
    SetLength(Titles_Arr, Length(Arr_Visible_Coll_Names_Per_Ins));
    For I := Low(Arr_Visible_Coll_Names_Per_Ins) to High(Arr_Visible_Coll_Names_Per_Ins)
    Do
     Titles_Arr[i] := Arr_Visible_Coll_Names_Per_Ins[i];
    MemT_Changes.Active := True;
    MemT_Changes_Bfr.Active := True;
    MemT_Changes_Aftr.Active := True;
  End;

  If MemT_Changes_Bookmrks.FieldByName('Bkmrk_Flag').AsString = 'Per_Osn_Chng'
  Then
  Begin
    Driver_Changes.ProviderDataSet := Db_Per_Osn_Chng;
    SetLength(Columns_Arr, Length(Arr_Visible_Coll_Per_Osn));
    For I := Low(Arr_Visible_Coll_Per_Osn) to High(Arr_Visible_Coll_Per_Osn)
    Do
     Columns_Arr[i] := Arr_Visible_Coll_Per_Osn[i];
    SetLength(Titles_Arr, Length(Arr_Visible_Coll_Names_Per_Osn));
    For I := Low(Arr_Visible_Coll_Names_Per_Osn) to High(Arr_Visible_Coll_Names_Per_Osn)
    Do
     Titles_Arr[i] := Arr_Visible_Coll_Names_Per_Osn[i];
    MemT_Changes.Active := True;
    MemT_Changes_Bfr.Active := True;
    MemT_Changes_Aftr.Active := True;
  End;

  {$EndRegion 'Определение типа изменений и колонок'}

  if MemT_Changes_Bfr.Active
  Then
    With Grid_Changes_Bfr
    Do
    Begin
      Columns.Clear;
      For I := Low(Columns_Arr) to High(Columns_Arr)
      Do
      Begin
        With Columns.Add
        Do
        Begin
          New_Field_Bfr := MemT_Changes_Bfr.FindField(Columns_Arr[i]);
          if New_Field_Bfr <> Nil
          Then
          Begin
            FieldName := New_Field_Bfr.DisplayName;
            Title.Caption := Titles_Arr[i];
            If Width >= 300
            Then
              Width := 300
            Else if Width < 50
            Then
              Width := 50;
          End;
        End;
      End;
    End;

  if MemT_Changes_Bfr.Active
  Then
    With Grid_Changes_Aftr
    Do
    Begin
      Columns.Clear;
      For I := Low(Columns_Arr) to High(Columns_Arr)
      Do
      Begin
        With Columns.Add
        Do
        Begin
          New_Field_Aftr := MemT_Changes_Aftr.FindField(Columns_Arr[i]);
          if New_Field_Aftr <> Nil
          Then
          Begin
            FieldName := New_Field_Aftr.DisplayName;
            Title.Caption := Titles_Arr[i];
            If Width >= 300
            Then
              Width := 300
            Else if Width < 50
            Then
              Width := 50;
          End;
        End;
      End;
    End;

end;

procedure TForm_Tp_Data_Changes.Pop_M_Changes_Btn_ExportClick(Sender: TObject);
var
  ExpClass: TDBGridEhExportClass;
  Ext: String;
  Grid_To_Export: TDBGridEh;
begin
  Grid_To_Export := TDBGridEh( ActiveControl );
  Save_Grid.FileName := Caption
                        + '_' + Copy(MemT_Changes_Bookmrks.FieldByName('Bkmrk_Name').AsString,
                                           0,
                                           Pos('(',MemT_Changes_Bookmrks.FieldByName('Bkmrk_Name').AsString)- 1)
                                      + ' (' +
                                      TPanel(FindComponent(Grid_To_Export.Parent.Name + '_Capt')).Caption + ')';
  If Save_Grid.Execute
  Then
  Begin

    {$Region 'Выбор формата'}
    Case Save_Grid.FilterIndex
    Of
      1:
      Begin
        ExpClass:= TDBGridEhExportAsText;
        Ext:= '.txt';
      End;
      2:
      Begin
        ExpClass:= TDBGridEhExportAsCSV;
        Ext:= '.csv';
      End;
      3:
      Begin
        ExpClass:= TDBGridEhExportAsHTML;
        Ext:= '.htm';
      End;
      4:
      Begin
        ExpClass:= TDBGridEhExportAsXlsx ;
        Ext:= '.xlsx';
      End;
      Else
      Begin
        ExpClass:= nil;
        Ext:= '';
      End;
    end;
    {$EndRegion 'Выбор формата'}

    If ExpClass <> nil then
    Begin
      If Not AnsiSameText( Copy( Save_Grid.FileName , Length( Save_Grid.FileName )-2, 3 ), Ext )
      Then
      Begin
        Save_Grid.FileName := Save_Grid.FileName + Ext;
        SaveDBGridEhToExportFile( ExpClass,
                                  Grid_To_Export,
                                  Save_Grid.FileName,
                                  True );
      End;
    End;
  End;
end;

procedure TForm_Tp_Data_Changes.Pop_M_Changes_Btn_PrintClick(Sender: TObject);
Var
  V_Active_Grid: TDBGridEh;
begin
  V_Active_Grid := TDBGridEh( ActiveControl );
  PrinterPreview.Orientation := poLandscape;
  Print_Grid.DBGridEh := V_Active_Grid;
  Print_Grid.PageHeader.LeftText.Clear;
  Print_Grid.PageHeader.RightText.Clear;
  Print_Grid.PageHeader.RightText.Add(Caption);
  Print_Grid.PageHeader.LeftText.Add( Copy(MemT_Changes_Bookmrks.FieldByName('Bkmrk_Name').AsString,
                                           0,
                                           Pos('(',MemT_Changes_Bookmrks.FieldByName('Bkmrk_Name').AsString)- 1)
                                      + ' (' +
                                      TPanel(FindComponent(V_Active_Grid.Parent.Name + '_Capt')).Caption + ')');
  Print_Grid.Preview;
end;

end.
