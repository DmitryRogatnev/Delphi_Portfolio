unit SZ_COMMET_VIEW;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Oracle, Data.DB,
  OracleData, Vcl.ExtCtrls, SZ_VARIABLES, SZ_COMMET_CREAT, SZ_COMMET_EDIT, SZ_CHOOSE_STR,
  Vcl.ComCtrls, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  Vcl.Menus, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, Vcl.Mask, DBCtrlsEh,
  DBLookupEh;

type
  TForm6 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    SimpleSQL: TOracleDataSet;
    SZ_PACKAGE: TOraclePackage;
    OraclePackage2: TOraclePackage;
    CommentarySet: TOracleDataSet;
    DBGridEh1: TDBGridEh;
    COMMENTARY_DATA: TDataSource;
    PM_GRID: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    Close_but: TButton;
    COMMENT_TYPES: TOracleDataSet;
    COMMENT_TYPE_DATA: TDataSource;
    COMMENT_TYPESNAME_TYPE: TStringField;
    COMMENT_TYPESSZ_TYPE_USER: TFloatField;
    COM_TYPE_LCB: TDBLookupComboboxEh;
    CommentarySetCOMMENT_TEXT: TStringField;
    CommentarySetAVTOR: TStringField;
    CommentarySetCOMMENT_DATE_: TStringField;
    CommentarySetSZ_TYPE_USER: TFloatField;
    CommentarySetSZ_COMM_VAZH: TFloatField;
    CommentarySetSZ_COMM_ISDEL: TFloatField;
    CommentarySetSZ_ID: TFloatField;
    CommentarySetID_COM: TFloatField;
    CommentarySetOTDEL_TYPE: TFloatField;
    procedure FormActivate(Sender: TObject);
    procedure Close_butClick(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure COM_TYPE_LCBKeyValueChanged(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    v_Otdel_type :integer;
    /// <summary> Определение удален комментарий или нет</summary>
		/// <param name="Id_com"> Integer; <br/>  ID комментария  </param>
    /// <returns> Bool <br/> </returns>
    function Is_Comm_delete(Id_com :integer; v_Otdel_type :Integer) :bool;

    /// <summary> Определение возможности редактирования комментария</summary>
		/// <param name="Id_com"> Integer; <br/>  ID комментария  </param>
    /// <returns> Bool <br/> </returns>
    function Can_Comm_Edit(Id_com :integer; v_Otdel_type :Integer) :bool;


    /// <summary> Определение возможности редактирования комментария</summary>
		/// <param name="Id_com"> Integer; <br/>  ID комментария  </param>
    /// <returns> Bool <br/> </returns>
    function Can_Comm_Add(Sz_Id :integer; v_Otdel_type :Integer) :bool;

    /// <summary> Получение имени с/з в формате №ЗС-(номер) от (дата) </summary>
		/// <param name="SZ_Id"> Integer; <br/>  ID с/з  </param>
    /// <returns> SZ_Name; String; <br/> </returns>
    function Get_SZ_Name_by_Id(SZ_Id :integer) :String;
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

uses
sz_enter;

{$Region 'Закрытие формы'}

  procedure TForm6.Close_butClick(Sender: TObject);
  begin
    form6.Close;
  end;

{$ENDRegion 'Закрытие формы'}

{$Region 'Фильтры главной таблицы'}
  //Фильтрация по типу пользователя
  procedure TForm6.COM_TYPE_LCBKeyValueChanged(Sender: TObject);
  begin
   if COMMENTARYSET.Active then
   begin
      if COM_TYPE_LCB.KeyValue <> 0 then
      begin
        DBGridEh1.StartLoadingStatus('Загрузка данных! Ожидайте...');
        COMMENTARYSET.SetVariable('TYPEOFUSR', COM_TYPE_LCB.KeyValue);
        COMMENTARYSET.Refresh;
        DBGridEh1.FinishLoadingStatus();
      end
      else if COM_TYPE_LCB.KeyValue = 0 then
      begin
        DBGridEh1.StartLoadingStatus('Загрузка данных! Ожидайте...');
        COMMENTARYSET.SetVariable('TYPEOFUSR', '%');
        COMMENTARYSET.Refresh;
        DBGridEh1.FinishLoadingStatus();
      end;
   end;
  end;

{$ENDRegion 'Фильтры главной таблицы'}

{$Region 'Окрашивание формы'}
  procedure TForm6.DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
    AFont: TFont; var Background: TColor; State: TGridDrawState);
  begin
     if not CommentarySet.IsEmpty then
     begin
         if CommentarySetSZ_COMM_VAZH.AsInteger = 1 then
         begin
           AFont.Color := clRed;
           AFont.Style := AFont.Style + [fsBold];
         end;
         if CommentarySetSZ_COMM_ISDEL.AsInteger = 0 then
         begin
           AFont.Color := clSilver;
           AFont.Style := AFont.Style + [fsItalic];
         end;
     end;
  end;
{$ENDRegion 'Окрашивание формы'}

{$Region 'Добавление, редактирование и удаление комментариев'}
  //Добавление комментария
  procedure TForm6.N1Click(Sender: TObject);
  begin
    if not SZ_Enter.Form1.User_is_admin  then // Проверка если пользователь админ
      begin // Если пользователь не админ
        if not Form6.Can_Comm_Add(CommentarySetSz_ID.AsInteger, v_Otdel_type) then //Проверка на возможноть редактирования комментариев
          begin
            MessageDlg('У Вас нет прав на добавление комментариев к чужим служебкам!', MtError, [mbOk], 1);
          end
        else
          begin
             SZ_COMMET_CREAT.Form4.v_Otdel := v_Otdel_type;
             SZ_COMMET_CREAT.Form4.ShowModal; //Форма ввода комментариев
             DBGridEh1.StartLoadingStatus('Загрузка данных! Ожидайте...');
             CommentarySet.Refresh;
             DBGridEh1.FinishLoadingStatus();
          end;
      end
      else //Если пользователь админ, то он может добавлять комментарии в любое время к любым с/з
      begin
         SZ_COMMET_CREAT.Form4.v_Otdel := v_Otdel_type;
         SZ_COMMET_CREAT.Form4.ShowModal;
         DBGridEh1.StartLoadingStatus('Загрузка данных! Ожидайте...');
         CommentarySet.Refresh;
         DBGridEh1.FinishLoadingStatus();
      end;
  end;

  //Редактирование комментариев
  procedure TForm6.N2Click(Sender: TObject);
  begin
    if not SZ_Enter.Form1.User_is_admin  then // Проверка если пользователь админ
      begin
        if not Form6.Can_Comm_Edit(CommentarySetID_COM.AsInteger, v_Otdel_type) then //Проверка на возможноть редактирования комментариев
          begin
              MessageDlg('У Вас нет прав на редактирование чужих комментариев!', MtError, [mbOk], 1);
          end
        else
          begin
             if not Form6.Is_Comm_delete(CommentarySetID_COM.AsInteger, v_Otdel_type) then //Проверка удален комментарий или нет
              begin
                SZ_COMMET_EDIT.Form5.Id_comm := CommentarySetID_COM.AsInteger;
                SZ_COMMET_EDIT.Form5.OtdelType := v_Otdel_type;
                SZ_COMMET_EDIT.Form5.ShowModal; //Запуск формы для редактирования комментария
                DBGridEh1.StartLoadingStatus('Загрузка данных! Ожидайте...');
                CommentarySet.Refresh;
                DBGridEh1.FinishLoadingStatus();
              end
             else if Form6.Is_Comm_delete(CommentarySetID_COM.AsInteger, v_Otdel_type) then
              begin
                MessageDlg('Удаленные коментарии редактировать запрещено!', MtError, [mbOk], 1);
              end;
          end;
      end
      else //Если пользователь админ, то он может редактировать комментарии в любое время в любых с/з
      begin
        SZ_COMMET_EDIT.Form5.Id_comm := CommentarySetID_COM.AsInteger;
        SZ_COMMET_EDIT.Form5.OtdelType := v_Otdel_type;
        SZ_COMMET_EDIT.Form5.ShowModal;
        DBGridEh1.StartLoadingStatus('Загрузка данных! Ожидайте...');
        CommentarySet.Refresh;
        DBGridEh1.FinishLoadingStatus();
      end;
  end;
  //Удаление комментариев
  procedure TForm6.N3Click(Sender: TObject);
  begin
    if not SZ_Enter.Form1.User_is_admin  then // Проверка если пользователь админ
      begin
        if not Form6.Can_Comm_Edit(CommentarySetID_COM.AsInteger, v_Otdel_type) then //Проверка на возможноть редактирования комментариев
          begin
              MessageDlg('У Вас нет прав на удаление чужих комментариев!', MtError, [mbOk], 1);
          end
        else
          begin
             if not Form6.Is_Comm_delete(CommentarySetID_COM.AsInteger, v_Otdel_type) then //Проверка удален комментарий или нет
              begin
                DBGridEh1.StartLoadingStatus('Загрузка данных! Ожидайте...');
                SZ_PACKAGE.CallProcedure('Delete_Comment_by_id', [CommentarySetID_COM.AsInteger, v_otdel_type]);
                CommentarySet.Refresh;
                DBGridEh1.FinishLoadingStatus();
              end
             else if Form6.Is_Comm_delete(CommentarySetID_COM.AsInteger, v_Otdel_type) then
              begin
                MessageDlg('Комментарий уже удален!', MtError, [mbOk], 1);
              end;
          end;
      end
      else //Если пользователь админ, то он может удалять комментарии в любое время в любых с/з
      begin
        DBGridEh1.StartLoadingStatus('Загрузка данных! Ожидайте...');
        SZ_PACKAGE.CallProcedure('Delete_Comment_by_id', [CommentarySetID_COM.AsInteger, v_otdel_type]);
        CommentarySet.Refresh;
        DBGridEh1.FinishLoadingStatus();
      end;
  end;

{$ENDRegion 'Добавление, редактирование и удаление комментариев'}

{$Region 'Запуск формы'}

  procedure TForm6.FormActivate(Sender: TObject);
  begin
  DBGridEh1.StartLoadingStatus('Загрузка данных! Ожидайте...');
  //Загрузка дата сетов
  CommentarySet.Close;
  CommentarySet.ClearVariables;
  CommentarySet.SetVariable('vID',SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_ID')); // устновка ID с/з
  CommentarySet.SetVariable('vOTDEL_TYPE',v_Otdel_type); // установка типа отдела 1-отдела продаж 2-СЭО
  COMMENT_TYPES.Close;
  COMMENT_TYPES.SetVariable('OTDEL_TYPE',v_Otdel_type);
  COMMENT_TYPES.Open;
  //Сброс фильтра на "ВСЕ"
  COM_TYPE_LCB.KeyValue := 0;
  CommentarySet.Open;
  Form6.Caption := 'Комментарии к с/з ' + Form6.Get_SZ_Name_by_Id(SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_ID'));
  DBGridEh1.FinishLoadingStatus();
  end;

{$ENDRegion 'Запуск формы'}

{$Region 'Вспомогательные функции'}
  //Комментарий удален или нет?
  function TForm6.Is_Comm_delete(Id_com: Integer; v_Otdel_type :Integer) :bool;
  begin
   SimpleSQL.Close;
   SimpleSQL.SQL.Clear;
   SimpleSQL.DeleteVariables;
   SimpleSQL.DeclareVariable('Id_com',otinteger);
   SimpleSQL.SetVariable('Id_com', Id_com);
   SimpleSQL.DeclareVariable('v_Otdel_Type',otinteger);
   SimpleSQL.SetVariable('v_Otdel_Type', v_Otdel_Type);
   SimpleSQL.SQL.Add('select t.sz_comm_isdel from mrk.V$SZ_COMMENTARY_ALL t where t.ID_COM = :Id_com and t.Otdel_type = :v_Otdel_type');
   SimpleSQL.ExecSQL;
   SimpleSQL.Open;
   if SimpleSQL.Fields[0].AsInteger = 0 then result := true else result := false;
  end;
//Комментарий можно редактировать или нет?
  function TForm6.Can_Comm_Edit(Id_com: Integer; v_Otdel_type :Integer) :bool;
  begin
     SimpleSQL.Close;
     SimpleSQL.SQL.Clear;
     SimpleSQL.DeleteVariables;
     SimpleSQL.DeclareVariable('Id_com',otinteger);
     SimpleSQL.SetVariable('Id_com', Id_com);
     SimpleSQL.DeclareVariable('v_Otdel_Type',otinteger);
     SimpleSQL.SetVariable('v_Otdel_Type', v_Otdel_Type);
     SimpleSQL.SQL.Add('select t.sz_user_id from mrk.V$SZ_COMMENTARY_ALL t where t.ID_COM = :Id_com and t.Otdel_type = :v_Otdel_type');
     SimpleSQL.ExecSQL;
     SimpleSQL.Open;
     if SimpleSQL.Fields[0].AsInteger = SZ_Enter.Form1.User_Id then result := true else result := false;
  end;
  //Комментарий можно добавить или нет?
  function TForm6.Can_Comm_Add(Sz_Id :integer; v_Otdel_type :Integer) :bool;
  begin
     if (Sz_Enter.Form1.User_Type = 1) and (v_Otdel_type = 1) then
     Begin
     SimpleSQL.Close;
     SimpleSQL.SQL.Clear;
     SimpleSQL.DeleteVariables;
     SimpleSQL.DeclareVariable('Sz_Id',otinteger);
     SimpleSQL.SetVariable('Sz_Id', Sz_Id);
     SimpleSQL.SQL.Add('select t.sz_id_cont from mrk.SZ_Main_Op t where t.Sz_Id = :Sz_Id');
     SimpleSQL.ExecSQL;
     SimpleSQL.Open;
     if SimpleSQL.Fields[0].AsInteger = SZ_Enter.Form1.User_Id then result := true else result := false;
     End
     Else if (Sz_Enter.Form1.User_Type <> 1) and (v_Otdel_type = 1)   then result := true;
     if (Sz_Enter.Form1.User_Type = 3) and (v_Otdel_type = 2) then
     Begin
     SimpleSQL.Close;
     SimpleSQL.SQL.Clear;
     SimpleSQL.DeleteVariables;
     SimpleSQL.DeclareVariable('Sz_Id',otinteger);
     SimpleSQL.SetVariable('Sz_Id', Sz_Id);
     SimpleSQL.SQL.Add('select t.sz_id_cont from mrk.SZ_Main_SEO t where t.Sz_Id = :Sz_Id');
     SimpleSQL.ExecSQL;
     SimpleSQL.Open;
     if SimpleSQL.Fields[0].AsInteger = SZ_Enter.Form1.User_Id then result := true else result := false;
     End
     Else if (Sz_Enter.Form1.User_Type <> 3) and (v_Otdel_type = 2)   then result := true;
  end;
  //Получение имени с/з
  function TForm6.Get_SZ_Name_by_Id(SZ_Id: Integer) :string;
  begin
   SimpleSQL.Close;
   SimpleSQL.SQL.Clear;
   SimpleSQL.DeleteVariables;
   SimpleSQL.DeclareVariable('Sz_Id',otinteger);
   SimpleSQL.SetVariable('Sz_Id', SZ_id);
   SimpleSQL.SQL.Add('select (''№ЗС-''||t.sz_numb||'' от ''||t.sz_date) from mrk.SZ_TABLE_TEST t where t.SZ_ID = :SZ_ID');
   SimpleSQL.ExecSQL;
   SimpleSQL.Open;
   result := SimpleSQL.Fields[0].AsString;
  end;
{$ENDRegion 'Вспомогательные функции'}

end.
