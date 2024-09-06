library DLL_TECHNICAL_PROCESS_DOC;

{ Important note about DLL memory management: ShareMem must be the
  first unit in your library's USES clause AND your project's (select
  Project-View Source) USES clause if your DLL exports any procedures or
  functions that pass strings as parameters or function results. This
  applies to all strings passed to and from your DLL--even those that
  are nested in records and classes. ShareMem is the interface unit to
  the BORLNDMM.DLL shared memory manager, which must be deployed along
  with your DLL. To avoid using BORLNDMM.DLL, pass string information
  using PChar or ShortString parameters. }

uses
  System.SysUtils,
  System.Classes,
  Controls,
  DynvarsEh,
  Oracle,
  OracleData,
  Vcl.Forms,
  Dialogs,
  EDIT_DOC_INFO_FORM in 'EDIT_DOC_INFO_FORM.pas' {Form39},
  Tp_Setup_Time_Calc in 'Tp_Setup_Time_Calc.pas' {Form_Setup_Time_Calc},
  Tp_Add_Sym_Form in 'Tp_Add_Sym_Form.pas' {Form_Add_Sym},
  Tp_Approve_Doc_Form in 'Tp_Approve_Doc_Form.pas' {Form_Approve_Doc},
  Tp_Chs_Oper_For_Copy in 'Tp_Chs_Oper_For_Copy.pas' {Form_Chs_Oper_For_Copy},
  Tp_Complect_Doc_Form in 'Tp_Complect_Doc_Form.pas' {Form_Doc_Complect},
  Tp_Copy_Detail_For_Det_Doc_Form in 'Tp_Copy_Detail_For_Det_Doc_Form.pas' {Form_Copy_Det_From_Rcd},
  Tp_Copy_Oper_For_Det_Doc_Form in 'Tp_Copy_Oper_For_Det_Doc_Form.pas' {Form_Copy_Opers_From_TTP},
  Tp_Copy_Tech_Proc_Form in 'Tp_Copy_Tech_Proc_Form.pas' {Form_Chose_Doc_For_Copy},
  Tp_Data_Mode in 'Tp_Data_Mode.pas' {Tp_Dm: TDataModule},
  Tp_Det_For_Oper_Per_Form in 'Tp_Det_For_Oper_Per_Form.pas' {Form_Per_Det},
  Tp_Detail_Docs_Connect_Form in 'Tp_Detail_Docs_Connect_Form.pas' {Form_Tp_Connected_Details},
  Tp_Detail_Trud_Form in 'Tp_Detail_Trud_Form.pas' {Form_Detail_Trud},
  Tp_Doc_Comm_Form in 'Tp_Doc_Comm_Form.pas' {Form_Doc_Comments},
  Tp_Doc_Files_Form in 'Tp_Doc_Files_Form.pas' {Form_Doc_Files},
  Tp_Doc_Info_Form in 'Tp_Doc_Info_Form.pas' {Form_Doc_Info},
  Tp_Ins_For_Oper_Per_Form in 'Tp_Ins_For_Oper_Per_Form.pas' {Form_Per_Ins},
  Tp_Main_Form in 'Tp_Main_Form.pas' {Form_Tech_Proc_Main},
  Tp_Mat_For_Oper_Per_Form in 'Tp_Mat_For_Oper_Per_Form.pas' {Form_Per_Mat},
  Tp_Oper_Files_Form in 'Tp_Oper_Files_Form.pas' {Form_Oper_Files},
  Tp_Oper_Per_Text_Form in 'Tp_Oper_Per_Text_Form.pas' {Form_Oper_Per_Text},
  Tp_Oper_Tk_Param_Form in 'Tp_Oper_Tk_Param_Form.pas' {Form_Oper_TK_Params},
  Tp_Osn_For_Oper_Per_Form in 'Tp_Osn_For_Oper_Per_Form.pas' {Form_Per_Osn},
  Tp_Tech_Proc_Form in 'Tp_Tech_Proc_Form.pas' {Form_Tech_Proc_Info},
  Udm_Main in '..\..\Unit\Udm_Main\Udm_Main.Pas' {DM_Main: TDataModule},
  Gen_Chs_Data_Mod in '..\Gen_Chs_Unit\Gen_Chs_Data_Mod.pas' {DM_Gen_Chs: TDataModule},
  Gen_Chs_Dd_Form in '..\Gen_Chs_Unit\Gen_Chs_Dd_Form.pas' {Drop_D_Form_Gen_Chose: TCustomDropDownFormEh},
  Gen_Chs_Form in '..\Gen_Chs_Unit\Gen_Chs_Form.pas' {Form_Gen_Chose},
  Tp_Data_Changes in 'Tp_Data_Changes.pas' {Form_Tp_Data_Changes},
  Tp_Memo_Text_Drp_D_Form in 'Tp_Memo_Text_Drp_D_Form.pas' {Drop_D_Form_MemoText: TCustomDropDownFormEh},
  Loading_Form in '..\..\Unit\Loading_Form\Loading_Form.Pas' {Form_Loading},
  Tp_Tech_Proc_DataModule in 'Tp_Tech_Proc_DataModule.pas' {Dm_Tech_Proc: TDataModule},
  Tp_Per_Instr_Card in 'Tp_Per_Instr_Card.pas' {Form_Per_Instr_Card},
  Tp_Setup_Time_Calc_Config in 'Tp_Setup_Time_Calc_Config.pas' {Form_Tp_Setup_Time_Calc_Config},
  Filter_DropDown in '..\Filter_Unit\Filter_DropDown.pas' {DropDown_Filter: TCustomDropDownFormEh},
  FilterOption_Form in '..\Filter_Unit\FilterOption_Form.pas' {Form_OptionFilter},
  Dc_Aprvl_Lst_Main_Form in '..\Doc_Approval_List\Dc_Aprvl_Lst_Main_Form.pas' {Form_Main_Dc_Aprvl_L},
  Dc_Aprvl_Lst_Setup_Form in '..\Doc_Approval_List\Dc_Aprvl_Lst_Setup_Form.pas' {Form_Setup_Dc_Arvl_Lst},
  Tp_TechProc_TimeNormHist in 'Tp_TechProc_TimeNormHist.pas' {Form_TechProc_TimeNormHist},
  Tp_TechProc_ComplectFrame in 'Tp_TechProc_ComplectFrame.pas' {Frame_Tp_TechProcComplect: TFrame},
  Tp_TechProc_DataFrame in 'Tp_TechProc_DataFrame.pas' {FrameData_TechProc: TFrame},
  Tp_TechProc_DocDetListDataFrame in 'Tp_TechProc_DocDetListDataFrame.pas' {Frame_Tp_TechProc_DocDetListData: TFrame},
  Tp_TechProc_DocDetListFrame in 'Tp_TechProc_DocDetListFrame.pas' {Frame_Tp_TechProc_DocDetList: TFrame},
  Tp_TechProc_ListFrame in 'Tp_TechProc_ListFrame.pas' {Frame_TechProc_List: TFrame},
  Tp_TechProc_CoAuthorsForm in 'Tp_TechProc_CoAuthorsForm.pas' {Form_CoAuthors};

{$R *.res}
{$R SQL_lists\SQL_lists.RES}

{$Region ' F_Show_Form '}
/// После вызова нельзя освобождать библиотеку, пока не закрыта вызванная форма
/// До открытия проверятся вызываемая форма на загрузку ранее, если запущена - активируется.
/// В событии CloseQuery выполняется CloseForm и FreeLibrary
  Function F_Show_Form( In_App_Handle: THandle; // хэндл вызывающего приложения
                        In_App_Session: TOracleSession; // сэссия
                        In_Dll_Handle: THandle; // хэндл экземпляра библиотеки
                        In_Object_Name: String; // имя библиотеки (проекта)
                        In_Dll_External_Names: Array of String;
                        var In_Dyn_Params: TDynVarsEh //входящие параметры
                        ): Integer { -1: открыта ранее,
                                     0: ошибка,
                                     1: успешно открыта not MrOk
                                     2: успешно открыта MrOk}; stdcall;
  Var
    Vl_idx: Integer;
  begin
    // проверяем, создана ли форма
    if not Assigned( Form_Tech_Proc_Main )
    then
    begin
      try
        begin
          Application.CreateForm(TForm_Tech_Proc_Main, Form_Tech_Proc_Main);
  Application.CreateForm(TForm_Doc_Info, Form_Doc_Info);
  Application.CreateForm(TDM_Main, DM_Main);
  Application.CreateForm(TForm_Approve_Doc, Form_Approve_Doc);
  Application.CreateForm(TForm_Doc_Comments, Form_Doc_Comments);
  Application.CreateForm(TForm_Doc_Files, Form_Doc_Files);
  Application.CreateForm(TForm_Detail_Trud, Form_Detail_Trud);
  Application.CreateForm(TForm_Doc_Complect, Form_Doc_Complect);
  Application.CreateForm(TForm_Chose_Doc_For_Copy, Form_Chose_Doc_For_Copy);
  Application.CreateForm(TTp_Dm, Tp_Dm);
  Application.CreateForm(TDM_Gen_Chs, DM_Gen_Chs);
  Application.CreateForm(TForm_Gen_Chose, Form_Gen_Chose);
  Application.CreateForm(TDrop_D_Form_Gen_Chose, Drop_D_Form_Gen_Chose);
  Application.CreateForm(TForm_Tp_Data_Changes, Form_Tp_Data_Changes);
  Application.CreateForm(TDrop_D_Form_MemoText, Drop_D_Form_MemoText);
  Application.CreateForm(TForm_Loading, Form_Loading);
  Application.CreateForm(TForm_Tp_Setup_Time_Calc_Config, Form_Tp_Setup_Time_Calc_Config);
  Application.CreateForm(TForm_Per_Instr_Card, Form_Per_Instr_Card);
  Application.CreateForm(TForm_Main_Dc_Aprvl_L, Form_Main_Dc_Aprvl_L);
  Application.CreateForm(TForm_Setup_Dc_Arvl_Lst, Form_Setup_Dc_Arvl_Lst);
  In_App_Session.Share( DM_Main.Session );
          DM_Main.Session.Connected := True;
          DM_Main.Vg_Dll_Handle := In_Dll_Handle;
          DM_Main.Vg_Prnt_Handle := In_App_Handle;
          DM_Main.Vg_Current_Object_Name := In_Object_Name;
          DM_Main.Vg_DLL_Params := In_Dyn_Params;
          SetLength( DM_Main.Vg_Dll_External_Names, Length( In_Dll_External_Names ) );
          For Vl_Idx := 0 to Length( In_Dll_External_Names ) - 1 do
          Begin
            DM_Main.Vg_Dll_External_Names[ Vl_Idx ] := In_Dll_External_Names[ Vl_Idx ];
          End;
          //Loading_Form.Form_Loading.P_Start_Loading(8784,Application.MainForm, TOracleDataSet, 'Active', 'True');
          Form_Tech_Proc_Main.Tm_check.Enabled := True;
          Form_Tech_Proc_Main.Show;
          Result := 1;
        end
      except
        On E : Exception do
        begin
          ShowMessage( 'Error: '+E.Message );
          Result := 0;
        end;
      end;
    end
    else
    begin
      Form_Tech_Proc_Main.Show;
      Result := -1;
    end;
  end;
{$EndRegion ' F_Show_Form '}

/// Открыть форму в модальном режиме.
/// До открытия проверятся вызываемая форма на загрузку ранее не в модальном режиме, если запущена - активируется.
/// Если форма уже была открыта не в модальном режиме нельзя выгружать библиотеку
{$Region ' F_Show_Modal_Form '}
  Function F_Show_Modal_Form( In_App_Handle: THandle; // хэндл вызывающего приложения
                              In_App_Session: TOracleSession; // сэссия
                              In_Dll_Handle: THandle; // хэндл экземпляра библиотеки
                              In_Dll_Name: String; // имя библиотеки (проекта)
                              In_Dll_External_Names: Array of String;
                              var In_Out_Dyn_Params: TDynVarsEh; // входящие и исходящие {нельзя на выходе читать String!!!} параметры
                              var Out_Dyn_Names: WideString; // строковые исходящие параметры
                              var Out_Dyn_Strings: WideString // строковые исходящие параметры
                             ): Integer { -1: открыта ранее,
                                          0: ошибка,
                                          1: успешно открыта}; stdcall;
  var
    Vl_Idx: integer;
  begin
    // проверяем, создана ли форма
    if not Assigned( Form_Tech_Proc_Main )
    then
    begin
      Try
      begin
        //   Application.Handle := In_App_Handle;
        //  Application.MainFormOnTaskbar := False; //удаляешь эту строку
        Application.CreateForm(TForm_Tech_Proc_Main, Form_Tech_Proc_Main);
        Application.CreateForm(TForm_Doc_Info, Form_Doc_Info);
        Application.CreateForm(TDM_Main, DM_Main);
        Application.CreateForm(TForm_Doc_Comments, Form_Doc_Comments);
        Application.CreateForm(TForm_Doc_Files, Form_Doc_Files);
        Application.CreateForm(TForm_Detail_Trud, Form_Detail_Trud);
        Application.CreateForm(TForm_Doc_Complect, Form_Doc_Complect);
        Application.CreateForm(TForm_Chose_Doc_For_Copy, Form_Chose_Doc_For_Copy);
        Application.CreateForm(TTp_Dm, Tp_Dm);
        Application.CreateForm(TDM_Gen_Chs, DM_Gen_Chs);
        Application.CreateForm(TForm_Gen_Chose, Form_Gen_Chose);
        Application.CreateForm(TDrop_D_Form_Gen_Chose, Drop_D_Form_Gen_Chose);
        Application.CreateForm(TForm_Tp_Data_Changes, Form_Tp_Data_Changes);
        Application.CreateForm(TDrop_D_Form_MemoText, Drop_D_Form_MemoText);
        Application.CreateForm(TForm_Loading, Form_Loading);
        Application.CreateForm(TForm_Tp_Setup_Time_Calc_Config, Form_Tp_Setup_Time_Calc_Config);
        Application.CreateForm(TForm_Per_Instr_Card, Form_Per_Instr_Card);
        Application.CreateForm(TForm_Main_Dc_Aprvl_L, Form_Main_Dc_Aprvl_L);
        Application.CreateForm(TForm_Setup_Dc_Arvl_Lst, Form_Setup_Dc_Arvl_Lst);
        In_App_Session.Share( DM_Main.Session );
        Form_Tech_Proc_Main.Visible := False;
        DM_Main.Session.Connected := True;
        DM_Main.Vg_Dll_Handle := In_Dll_Handle;
        DM_Main.Vg_Current_Object_Name := In_Dll_Name;
        DM_Main.Vg_Dll_Params := In_Out_Dyn_Params;
        DM_Main.Vg_Prnt_Handle := In_App_Handle;
        SetLength( DM_Main.Vg_Dll_External_Names, Length( In_Dll_External_Names ) );
        For Vl_Idx := 0 to Length( In_Dll_External_Names ) - 1 do
        Begin
          DM_Main.Vg_Dll_External_Names[ Vl_Idx ] := In_Dll_External_Names[ Vl_Idx ];
        End;
        Form_Tech_Proc_Main.Tm_check.Enabled := True;
        If Form_Tech_Proc_Main.ShowModal = mrOk
        Then
        Begin
          In_Out_Dyn_Params := DM_Main.Vg_Dll_Params;
          Out_Dyn_Names := '';
          Out_Dyn_Strings := '';
          for Vl_Idx := 0 to In_Out_Dyn_Params.Count - 1 do
          begin
            Out_Dyn_Names := Out_Dyn_Names + '@Dyn@' + In_Out_Dyn_Params.Items[ Vl_Idx ].Name;
            Out_Dyn_Strings := Out_Dyn_Strings + '@Dyn@' + In_Out_Dyn_Params.Items[ Vl_Idx ].AsString;
          end;
          Application.Handle := 0;
          Application.ProcessMessages;
          Result := 2;
        End
        Else
        begin
          Application.Handle := 0;
          Application.ProcessMessages;
          Result := 1;
        end;
      end;
      except
        On E : Exception do
        begin
          ShowMessage( 'Error: ' + E.Message );
          Application.Handle := 0;
          Application.ProcessMessages;
          Result := 0;
        end;
      end;
      // уничтожается главная форма (если есть связи через Uses)
      Form_Tech_Proc_Main.Free;
      Form_Tech_Proc_Main := Nil;
      Form_Tech_Proc_Info.Free;
      Form_Tech_Proc_Info := Nil;
      Form_Doc_Info.Free;
      Form_Doc_Info := Nil;
      Form_Doc_Files.Free;
      Form_Doc_Files := Nil;
      Form_Doc_Comments.Free;
      Form_Doc_Comments := Nil;
      Form_Detail_Trud.Free;
      Form_Detail_Trud := Nil;
      Form_Chose_Doc_For_Copy.Free;
      Form_Chose_Doc_For_Copy := Nil;
      Form_Copy_Opers_From_TTP.Free;
      Form_Copy_Opers_From_TTP := Nil;
      Form_Copy_Det_From_Rcd.Free;
      Form_Copy_Det_From_Rcd := Nil;
      Form_Doc_Complect.Free;
      Form_Doc_Complect := Nil;
      Form_Gen_Chose.Free;
      Form_Gen_Chose := Nil;
      Drop_D_Form_Gen_Chose.Free;
      Drop_D_Form_Gen_Chose := Nil;
      Tp_Dm.Free;
      Tp_Dm := Nil;
      DM_Gen_Chs.Free;
      DM_Gen_Chs := Nil;
      Form_Tp_Data_Changes.Free;
      Form_Tp_Data_Changes := Nil;
      Form_Loading.Free;
      Form_Loading := Nil;
      Form_Tp_Setup_Time_Calc_Config.Free;
      Form_Tp_Setup_Time_Calc_Config := Nil;
      Form_Main_Dc_Aprvl_L.Free;
      Form_Main_Dc_Aprvl_L := Nil;
      Form_Setup_Dc_Arvl_Lst.Free;
      Form_Setup_Dc_Arvl_Lst := Nil;
      Form_Per_Instr_Card.Free;
      Form_Per_Instr_Card := Nil;
      Dm_Tech_Proc.Free;
      Dm_Tech_Proc := Nil;
      // уничтожается форма с разделом initialization RegisterClass
    end
    else
    begin
      Form_Tech_Proc_Main.Show;
      Result := -1;
    end;
  end;
  { Необходимо убрать отрисовку с панели задач
  procedure TFrm_Deps.FormShow(Sender: TObject);
  begin
    if ( fsModal in Frm_Deps.FormState )
    then
      ShowWindow( Application.Handle, SW_HIDE );
  end;
  }
{$EndRegion ' F_Show_Modal_Form '}

// Уничтожение экземпляра формы вызванной в не модальном режиме в DLL.
// Вызывается из вызванной формы в событии OnClose
{$Region ' P_Free_Form '}
  Procedure P_Free_Form; stdcall;
  begin
    // уничтожается главная форма (если есть связи через Uses)
      Form_Tech_Proc_Main.Free;
      Form_Tech_Proc_Main := Nil;
      Form_Tech_Proc_Info.Free;
      Form_Tech_Proc_Info := Nil;
      Form_Doc_Info.Free;
      Form_Doc_Info := Nil;
      Form_Doc_Files.Free;
      Form_Doc_Files := Nil;
      Form_Doc_Comments.Free;
      Form_Doc_Comments := Nil;
      Form_Detail_Trud.Free;
      Form_Detail_Trud := Nil;
      Form_Chose_Doc_For_Copy.Free;
      Form_Chose_Doc_For_Copy := Nil;
      Form_Copy_Opers_From_TTP.Free;
      Form_Copy_Opers_From_TTP := Nil;
      Form_Copy_Det_From_Rcd.Free;
      Form_Copy_Det_From_Rcd := Nil;
      Form_Doc_Complect.Free;
      Form_Doc_Complect := Nil;
      Form_Approve_Doc.Free;
      Form_Approve_Doc := Nil;
      Tp_Dm.Free;
      Tp_Dm := Nil;
      Form_Gen_Chose.Free;
      Form_Gen_Chose := Nil;
      Drop_D_Form_Gen_Chose.Free;
      Drop_D_Form_Gen_Chose := Nil;
      Form_Setup_Time_Calc.Free;
      Form_Setup_Time_Calc := Nil;
      DM_Gen_Chs.Free;
      DM_Gen_Chs := Nil;
      Form_Tp_Data_Changes.Free;
      Form_Tp_Data_Changes := Nil;
      Form_Main_Dc_Aprvl_L.Free;
      Form_Main_Dc_Aprvl_L := Nil;
      Form_Setup_Dc_Arvl_Lst.Free;
      Form_Setup_Dc_Arvl_Lst := Nil;
      Form_Loading.Free;
      Form_Loading := Nil;
      Form_Tp_Setup_Time_Calc_Config.Free;
      Form_Tp_Setup_Time_Calc_Config := Nil;
      Form_Per_Instr_Card.Free;
      Form_Per_Instr_Card := Nil;
      Dm_Tech_Proc.Free;
      Dm_Tech_Proc := Nil;
    // уничтожается форма с разделом initialization RegisterClass
  end;
{$EndRegion ' P_Free_Form '}

// Закртыие формы вызванной в не модальном режиме в DLL.
{$Region ' F_Close_Form '}
  Function F_Close_Form: Boolean; stdcall;
  begin
    // вызывается событие CloseQuery -> OnClose вызванной формы для возможной отмены закрытия всего приложения
    if Form_Tech_Proc_Main <> nil
    then
      Form_Tech_Proc_Main.Close;
    if Form_Tech_Proc_Main = nil
    then
      Result := True
    else
      Result := False;
  end;
  {
  procedure TFrm_Deps.FormClose(Sender: TObject; var Action: TCloseAction);
  var
    FreeForm: Procedure; stdcall;
  begin
    if not (fsModal in Frm_Deps.FormState)
    then
    begin
      @FreeForm := getProcAddress( DM_Main.Vg_Dll_Handle, 'P_Close_Form' );
      if @FreeForm  <> nil then
      begin
        FreeForm;
      end;
    end;
  end;
  }
{$EndRegion ' P_Close_Form '}

exports F_Show_Modal_Form, F_Show_Form, P_Free_Form, F_Close_Form;

begin
end.
