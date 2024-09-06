object DForm_DocAppr: TDForm_DocAppr
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'DForm_DocAppr'
  ClientHeight = 301
  ClientWidth = 914
  Color = clBtnFace
  Constraints.MinHeight = 34
  Constraints.MinWidth = 34
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'clWindowText'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesigned
  DropDownMode = True
  OnInitForm = CustomDropDownFormEhInitForm
  DesignSize = (
    914
    301)
  PixelsPerInch = 96
  TextHeight = 14
  object Grid_DocAppr: TDBGridEh
    Left = 1
    Top = 2
    Width = 912
    Height = 298
    Align = alClient
    AutoFitColWidths = True
    DataSource = Data_DocApprList
    DynProps = <>
    EvenRowColor = clMenu
    Flat = True
    EmptyDataInfo.Active = True
    EmptyDataInfo.Text = #1044#1086#1082#1091#1084#1077#1085#1090' '#1085#1077' '#1087#1086#1076#1087#1080#1089#1072#1085
    ParentShowHint = False
    SearchPanel.Enabled = True
    ShowHint = True
    TabOrder = 2
    OnGetCellParams = Grid_DocApprGetCellParams
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DEP_SNAME'
        Footers = <>
        Title.Caption = #1054#1090#1076#1077#1083
        Width = 69
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'POINT_NAME'
        Footers = <>
        Title.Caption = #1057#1086#1075#1083#1072#1089#1091#1102#1097#1072#1103' '#1089#1090#1086#1088#1086#1085#1072
        Width = 206
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DATE_IN'
        Footers = <>
        Title.Caption = #1044#1072#1090#1072' '#1087#1086#1083#1091#1095#1077#1085#1080#1103
        Width = 130
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'RESULT_DATE'
        Footers = <>
        Title.Caption = #1044#1072#1090#1072' '#1087#1086#1076#1087#1080#1089#1072#1085#1080#1103
        Width = 130
      end
      item
        CellButtons = <
          item
            Images.NormalImages = Form_Sz_Main.ImageList2
            Style = ebsGlyphEh
            Width = 20
            OnDraw = Grid_DocApprColumns4CellButtons0Draw
          end>
        DynProps = <>
        EditButtons = <>
        FieldName = 'EMP_FIO'
        Footers = <>
        Title.Caption = #1057#1086#1090#1088#1091#1076#1085#1080#1082
        Width = 120
        OnDataHintShow = Grid_DocApprColumns4DataHintShow
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Db_DocApprList: TOracleDataSet
    SQL.Strings = (
      'Select p.Id_Doc_Rout_Point, '
      '       dep.Dep_Sname,'
      '       p.Point_Name, '
      #9#9#9' p.Point_Position, '
      #9#9#9' (Case '
      '          When Instr(p.Point_Position, '#39'1.'#39') <> 0 '
      '          Then r.Date_Start_Route'
      '          Else s.Date_In '
      '       End) Date_In, '
      #9#9#9' p.Result_Date,'
      #9#9#9' res.Result_Value,'
      '                         res.Result_Name,'
      #9#9#9' u.Emp_Fio'
      'From   Src.v_Doc_Routs r'
      'Join   Src.v_Doc_Rout_Points p'
      'On     r.Doc_Header_Id=p.Doc_Rout_Id'
      'Left   Join (Select c.C_DOC_ROUT_POINT_ID Id_Doc_Rout_Point, '
      '                    (Case '
      
        #9#9#9#9#9#9#9#9#9#9#9'When Max(Nvl(cp.Result_Date, to_Date('#39'01.01.0001'#39')))=' +
        'to_Date('#39'01.01.0001'#39') '
      #9#9#9#9#9#9#9#9#9#9#9'Then Null '
      #9#9#9#9#9#9#9#9#9#9#9'Else Max(cp.Result_Date)'
      '                    End) Date_In'
      '             From   Src.v_Doc_Rout_Point_Cnnctns c'
      '             Left   Join Src.v_Doc_Rout_Points cp'
      '             On     cp.Id_Doc_Rout_Point = c.P_DOC_ROUT_POINT_ID'
      
        '                    And cp.Stp_Doc_Resolution_Result_Id Not In (' +
        '0, -1)'
      '             Group  By c.C_DOC_ROUT_POINT_ID) s'
      'On     s.Id_Doc_Rout_Point = p.Id_Doc_Rout_Point'
      'Left   Join Stp.v_Users u'
      'On     u.Id_User=p.Result_User_Id'
      '       And u.Id_User_Add=p.Result_User_Id_Add'
      'Left   Join (Select ps.Doc_Rout_Point_Id,'
      '                    dps.Dep_Id,'
      #9#9#9#9#9#9#9#9#9#9'd.Dep_Sname'
      '             From   Src.v_Doc_Rout_Point_Pstns ps'
      #9#9#9#9#9#9' Left   Join Src.v_Doc_Rout_Point_Pstn_Ds dps'
      
        #9#9#9#9#9#9' On     dps.Doc_Rout_Point_Pstn_Id=ps.Id_Doc_Rout_Point_Ps' +
        'tn'
      #9#9#9#9#9#9' Left   Join Stp.v_Deps d'
      #9#9#9#9#9#9' On     d.id_dep=dps.Dep_Id'
      #9#9#9#9#9#9'        And Nvl(d.Date_Expitation, Sysdate)>=Sysdate'
      #9#9#9#9#9#9'Group   By ps.Doc_Rout_Point_Id,'
      '                    dps.Dep_Id,'
      #9#9#9#9#9#9#9#9#9#9'd.Dep_Sname) dep'
      'On     Dep.Doc_Rout_Point_Id = p.Id_Doc_Rout_Point'
      'Left   Join Stp.v_Doc_Resolution_Results res'
      
        'On     res.Id_Doc_Resolution_Result=p.Stp_Doc_Resolution_Result_' +
        'Id'
      'Where  r.Doc_Header_Id=:Doc_Header_Id'
      'Order  By p.Point_Position')
    Optimize = False
    Variables.Data = {
      04000000010000001C0000003A0044004F0043005F0048004500410044004500
      52005F0049004400050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      05000000090000001600000052004500530055004C0054005F00440041005400
      450001000000000022000000490044005F0044004F0043005F0052004F005500
      54005F0050004F0049004E005400010000000000120000004400450050005F00
      53004E0041004D0045000100000000001400000050004F0049004E0054005F00
      4E0041004D0045000100000000001C00000050004F0049004E0054005F005000
      4F0053004900540049004F004E000100000000000E0000004400410054004500
      5F0049004E000100000000000E00000045004D0050005F00460049004F000100
      000000001800000052004500530055004C0054005F00560041004C0055004500
      0100000000001600000052004500530055004C0054005F004E0041004D004500
      010000000000}
    Session = DM_Main.Session
    Left = 571
    Top = 88
    object Db_DocApprListID_DOC_ROUT_POINT: TIntegerField
      FieldName = 'ID_DOC_ROUT_POINT'
      Required = True
    end
    object Db_DocApprListDEP_SNAME: TStringField
      FieldName = 'DEP_SNAME'
      Size = 200
    end
    object Db_DocApprListPOINT_NAME: TStringField
      FieldName = 'POINT_NAME'
      Required = True
      Size = 50
    end
    object Db_DocApprListPOINT_POSITION: TStringField
      FieldName = 'POINT_POSITION'
      Required = True
      Size = 30
    end
    object Db_DocApprListDATE_IN: TDateTimeField
      FieldName = 'DATE_IN'
    end
    object Db_DocApprListRESULT_DATE: TDateTimeField
      FieldName = 'RESULT_DATE'
    end
    object Db_DocApprListEMP_FIO: TStringField
      FieldName = 'EMP_FIO'
      Size = 26
    end
    object Db_DocApprListRESULT_VALUE: TIntegerField
      FieldName = 'RESULT_VALUE'
    end
    object Db_DocApprListRESULT_NAME: TStringField
      FieldName = 'RESULT_NAME'
      Size = 30
    end
  end
  object Data_DocApprList: TDataSource
    DataSet = Db_DocApprList
    Left = 699
    Top = 88
  end
end
