object Frame_DocsList: TFrame_DocsList
  Left = 0
  Top = 0
  Width = 1105
  Height = 732
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'clWindowText'
  Font.Style = []
  ParentFont = False
  TabOrder = 0
  object Splitter2: TSplitter
    Left = 0
    Top = 345
    Width = 1105
    Height = 5
    Cursor = crVSplit
    Align = alTop
    ExplicitLeft = -3
    ExplicitTop = 409
  end
  object Grid_DocContent: TDBGridEh
    Left = 0
    Top = 350
    Width = 1105
    Height = 382
    Align = alClient
    AutoFitColWidths = True
    DataSource = Data_Doc_Content
    DynProps = <>
    EditActions = [geaCutEh, geaCopyEh, geaPasteEh, geaDeleteEh, geaSelectAllEh]
    EvenRowColor = clMenu
    Flat = True
    ParentShowHint = False
    PopupMenu = Pm_DocItems
    ShowHint = True
    TabOrder = 0
    TitleParams.RowLines = 3
    OnDrawColumnCell = Grid_DocContentDrawColumnCell
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ITEM_POS_NUM'
        Footers = <>
        Title.Caption = #8470' '#1087'/'#1087
        Width = 40
      end
      item
        CellButtons = <
          item
            Action = Act_ApplyItem
            Images.NormalImages = Form_Sz_Main.ImageList2
            Images.HotImages = Form_Sz_Main.ImageList2
            Images.PressedImages = Form_Sz_Main.ImageList2
            Images.DisabledImages = Form_Sz_Main.ImageList2
            Images.NormalIndex = 117
            Images.HotIndex = 117
            Images.PressedIndex = 117
            Images.DisabledIndex = 117
            Style = ebsGlyphEh
            Width = 20
            OnDraw = Grid_DocContentColumns1CellButtons0Draw
          end
          item
            Action = Act_CancelItem
            Images.NormalImages = Form_Sz_Main.ImageList2
            Images.HotImages = Form_Sz_Main.ImageList2
            Images.PressedImages = Form_Sz_Main.ImageList2
            Images.DisabledImages = Form_Sz_Main.ImageList1
            Images.NormalIndex = 116
            Images.HotIndex = 116
            Images.PressedIndex = 116
            Images.DisabledIndex = 116
            Style = ebsGlyphEh
            Width = 20
            OnDraw = Grid_DocContentColumns1CellButtons0Draw
          end>
        DynProps = <>
        EditButtons = <
          item
            Style = ebsGlyphEh
            Width = 20
          end>
        FieldName = 'ITEM_CODE'
        Footers = <>
        Title.Caption = #1050#1086#1076
        Width = 150
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ITEM_NAME'
        Footers = <>
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Width = 300
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ITEM_NUM'
        Footers = <>
        Title.Caption = #1063#1077#1088#1090#1077#1078#1085#1099#1081' '#8470
        Width = 150
      end
      item
        CellButtons = <>
        DisplayFormat = '#,##,0.00'
        DynProps = <>
        EditButtons = <>
        FieldName = 'ITEM_PRICE'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1073#1077#1079' '#1053#1044#1057', '#1088#1091#1073'.'
        Width = 98
      end
      item
        CellButtons = <>
        DisplayFormat = '#,##,0'
        DynProps = <>
        EditButtons = <>
        FieldName = 'ITEM_NDS'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1053#1044#1057', %'
      end
      item
        CellButtons = <>
        DisplayFormat = '#,##,0.00'
        DynProps = <>
        EditButtons = <>
        FieldName = 'ITEM_PRICE_N_NDS'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1089' '#1053#1044#1057', '#1088#1091#1073'.'
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1105
    Height = 345
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Panel1'
    TabOrder = 1
    object Grid_DocsList: TDBGridEh
      Left = 0
      Top = 24
      Width = 1105
      Height = 321
      Align = alClient
      AutoFitColWidths = True
      DataSource = Data_DocsList
      DynProps = <>
      EditActions = [geaCutEh, geaCopyEh, geaPasteEh, geaDeleteEh, geaSelectAllEh]
      EvenRowColor = clMenu
      Flat = True
      ParentShowHint = False
      PopupMenu = Pm_DocsList
      ShowHint = True
      TabOrder = 0
      OnGetCellParams = Grid_DocsListGetCellParams
      Columns = <
        item
          CellButtons = <
            item
              Action = Act_Sign
              Images.NormalImages = Form_Sz_Main.ImageList2
              Images.DisabledImages = Form_Sz_Main.ImageList2
              Images.NormalIndex = 142
              Images.HotIndex = -1
              Images.PressedIndex = 142
              Images.DisabledIndex = 143
              Style = ebsGlyphEh
              Width = 20
              OnDraw = Grid_DocsListColumns1CellButtons0Draw
            end>
          DynProps = <>
          EditButtons = <>
          FieldName = 'SZ_DEP_NUMBER'
          Footers = <>
          Title.Caption = #8470' '#1076#1086#1082'.'
          Width = 140
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'SZ_DATE'
          Footers = <>
          Title.Caption = #1044#1072#1090#1072
          Width = 80
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'EMP_FIO'
          Footers = <>
          Title.Caption = #1048#1089#1087#1086#1083#1085#1080#1090#1077#1083#1100
          Width = 85
        end
        item
          CellButtons = <
            item
              DropDownFormParams.DropDownFormClassName = 'TDForm_DocAppr'
              DropDownFormParams.PassParams = pspCustomValuesEh
              Hint = #1055#1086#1076#1088#1086#1073#1085#1077#1077
              Style = ebsEllipsisEh
              Width = 20
            end>
          DynProps = <>
          EditButtons = <>
          FieldName = 'DONE_PERC'
          Footers = <>
          Title.Caption = #1057#1090#1072#1090#1091#1089' '#1087#1086#1076#1087#1080#1089#1072#1085#1080#1103
          Width = 134
          OnAdvDrawDataCell = Grid_DocsListColumns3AdvDrawDataCell
          OnOpenDropDownForm = Grid_DocsListColumns3OpenDropDownForm
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'SZ_NOTE'
          Footers = <>
          Title.Caption = #1058#1077#1084#1072'\'#1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
          Width = 315
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 1105
      Height = 24
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Panel2'
      Color = clMenu
      ParentBackground = False
      TabOrder = 1
      object ToolBar1: TToolBar
        Left = 0
        Top = 0
        Width = 1105
        Height = 24
        Align = alClient
        AutoSize = True
        Caption = 'ToolBar1'
        DoubleBuffered = True
        EdgeInner = esNone
        EdgeOuter = esNone
        GradientEndColor = clScrollBar
        GradientStartColor = clMenu
        Images = Form_Sz_Main.ImageList2
        ParentDoubleBuffered = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnCustomDraw = ToolBar1CustomDraw
        object Tb_NewDoc: TToolButton
          Left = 0
          Top = 0
          Action = Act_NewDoc
        end
        object ToolButton2: TToolButton
          Left = 23
          Top = 0
          Action = Act_EditDoc
        end
        object Tb_Print: TToolButton
          Left = 46
          Top = 0
          Action = Act_PrintDoc
        end
        object Tb_Comments: TToolButton
          Left = 69
          Top = 0
          Action = Act_DocComms
        end
        object ToolButton4: TToolButton
          Left = 92
          Top = 0
          Action = Act_EditRightConfig
        end
        object ToolButton1: TToolButton
          Left = 115
          Top = 0
          Width = 100
          Caption = 'ToolButton1'
          ImageIndex = 76
          Style = tbsSeparator
        end
        object Lcb_FilterSetions: TDBLookupComboboxEh
          Left = 215
          Top = 0
          Width = 232
          Height = 22
          DynProps = <>
          DataField = ''
          EmptyDataInfo.Text = #1060#1080#1083#1100#1090#1088' '#1085#1077' '#1074#1099#1073#1088#1072#1085'...'
          EditButton.Width = 15
          EditButtons = <
            item
              Hint = #1054#1095#1080#1089#1090#1080#1090#1100' '#1092#1080#1083#1100#1090#1088
              Style = ebsMinusEh
              Width = 15
              OnClick = Lcb_FilterSetionsEditButtons0Click
            end>
          Flat = True
          KeyField = 'KEYLIST'
          ListField = 'LOOKAPVALUE'
          ListSource = Data_Filters
          ShowHint = True
          TabOrder = 0
          Visible = True
          OnKeyValueChanged = Lcb_FilterSetionsKeyValueChanged
        end
        object ToolButton3: TToolButton
          Left = 447
          Top = 0
          Width = 8
          Caption = 'ToolButton3'
          ImageIndex = 77
          Style = tbsSeparator
        end
        object Cb_FilterString: TDBComboBoxEh
          Left = 455
          Top = 0
          Width = 399
          Height = 22
          DynProps = <>
          EmptyDataInfo.Text = #1060#1080#1083#1100#1090#1088' '#1085#1077' '#1091#1082#1072#1079#1072#1085'...'
          EditButton.Width = 15
          EditButtons = <
            item
              Style = ebsEllipsisEh
              OnClick = Cb_FilterStringEditButtons0Click
            end>
          Flat = True
          ShowHint = True
          TabOrder = 1
          Visible = True
          OnChange = Cb_FilterStringChange
        end
      end
    end
  end
  object Db_DocsList: TOracleDataSet
    SQL.Strings = (
      'Select t.Id_Sz_Price_Req,'
      '       t.Doc_Header_Id,'
      '       t.Sz_Price_Req_Id,'
      '       t.Sz_Number,'
      '       Dep.Dep_Code||'#39'/'#39'||t.Sz_Number Sz_Dep_Number,'
      '       t.Sz_Date,'
      '       t.Sz_Note, '
      '       t.Sz_Dep_Id,'
      '       Dep.Dep_Code,'
      '       Dep.Dep_Sname,'
      '       u.Emp_Fio,'
      '       dp.Done_Perc,'
      '        (Case'
      '           When n.Doc_Header_Id is Null Then 0'
      '           Else 1 '
      '         End) Negative_Flag,'
      #9#9#9' (Case'
      #9#9#9'    When m.Id_Sz_Pr_Req_Dep_Mark Is Null Then 0'
      #9#9#9#9#9'Else 1'
      #9#9#9'  End) DepMark_Flag,'
      '       t.I_User,'
      '       t.I_Date,'
      '       t.U_User,'
      '       r.Date_Start_Route,'
      '       r.Date_End_Route'
      'From Src.V_SZ_PRICE_REQUEST t'
      'Join (Select i.Sz_Price_Req_Id '
      '      From   Mrk.V_Sz_Price_Req_Items i'
      
        '      Where  Lower(i.Item_Name) Like Lower('#39'%'#39'||:VarItem_Name||'#39 +
        '%'#39')'
      
        '             And Lower(i.Item_Code) Like Lower('#39'%'#39'||:VarItem_Cod' +
        'e||'#39'%'#39')'
      
        #9'     And Nvl(Lower(i.Item_Num), '#39'%'#39') Like Lower('#39'%'#39'||:VarItem_N' +
        'um||'#39'%'#39')'
      '      Group  By i.Sz_Price_Req_Id) i'
      'On i.Sz_Price_Req_Id=t.Id_Sz_Price_Req'
      'Left Join Mrk.v_Sz_Price_Req_Dep_Marks m'
      'On   m.Sz_Price_Req_Id=t.ID_SZ_PRICE_REQ'
      '     And m.Dep_Id=Stp.Pkg_User.F_Get_User_Department_Id'
      'Left Join (Select t.Doc_Rout_Id, '
      
        '                  Round((Count(t.Stp_Doc_Resolution_Result_Id)/C' +
        'ount(t.Id_Doc_Rout_Point))*100, 0) Done_Perc'
      '           From src.v_Doc_Rout_Points t'
      '           Group By t.Doc_Rout_Id) dp'
      'On dp.Doc_Rout_Id=t.Doc_Header_Id'
      'Left    Join (Select Distinct t.Doc_Rout_Id Doc_Header_Id'
      '              From   Src.V_Doc_Rout_Points t'
      '              Join Stp.v_Doc_Resolution_Results r'
      
        '              On     r.Id_Doc_Resolution_Result = t.Stp_Doc_Reso' +
        'lution_Result_Id'
      '              Where  r.Result_Value = -1) n'
      'On      n.Doc_Header_Id = t.Doc_Header_Id'
      'Left  Join Src.V_Doc_Routs r'
      'On    r.Doc_Header_Id=t.Doc_Header_Id'
      'Left  Join Stp.v_Users u'
      'On    u.Id_User=t.i_User'
      '      And u.Id_User_Add=t.I_User_Add'
      'Left  Join Stp.V_Deps dep'
      'On    Dep.Id_Dep=t.Sz_Dep_Id'
      '      And Nvl(Dep.Date_Expitation, Sysdate)>=Sysdate'
      '/*BeginFrameTypeFilter*/ Where (1=1)/*EndFrameTypeFilter*/'
      '      And Lower(t.Sz_Number) Like Lower('#39'%'#39'||:VarSz_Number||'#39'%'#39')'
      '      And Lower(u.Emp_Fio) Like Lower('#39'%'#39'||:VarEmp_Fio||'#39'%'#39')')
    Optimize = False
    Variables.Data = {
      04000000050000001A0000003A005600410052004900540045004D005F004E00
      41004D0045000500000000000000000000001A0000003A005600410052004900
      540045004D005F0043004F004400450005000000000000000000000018000000
      3A005600410052004900540045004D005F004E0055004D000500000000000000
      000000001A0000003A0056004100520053005A005F004E0055004D0042004500
      5200050000000000000000000000160000003A0056004100520045004D005000
      5F00460049004F00050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      05000000130000001E000000490044005F0053005A005F005000520049004300
      45005F005200450051000100000000001E00000053005A005F00500052004900
      430045005F005200450051005F00490044000100000000001200000053005A00
      5F004E0055004D004200450052000100000000000E00000053005A005F004400
      4100540045000100000000000E00000053005A005F004E004F00540045000100
      000000000E00000045004D0050005F00460049004F0001000000000012000000
      44004F004E0045005F0050004500520043000100000000001A00000044004F00
      43005F004800450041004400450052005F00490044000100000000001A000000
      4E0045004700410054004900560045005F0046004C0041004700010000000000
      1200000053005A005F004400450050005F004900440001000000000010000000
      4400450050005F0043004F004400450001000000000012000000440045005000
      5F0053004E0041004D0045000100000000000C00000049005F00550053004500
      52000100000000000C00000049005F0044004100540045000100000000000C00
      000055005F005500530045005200010000000000200000004400410054004500
      5F00530054004100520054005F0052004F005500540045000100000000001C00
      000044004100540045005F0045004E0044005F0052004F005500540045000100
      000000001A00000053005A005F004400450050005F004E0055004D0042004500
      5200010000000000180000004400450050004D00410052004B005F0046004C00
      41004700010000000000}
    UniqueFields = 'Doc_Header_Id'
    Session = DM_Main.Session
    Left = 432
    Top = 336
    object Db_DocsListID_SZ_PRICE_REQ: TIntegerField
      FieldName = 'ID_SZ_PRICE_REQ'
      Required = True
    end
    object Db_DocsListSZ_PRICE_REQ_ID: TIntegerField
      FieldName = 'SZ_PRICE_REQ_ID'
    end
    object Db_DocsListSZ_NUMBER: TStringField
      FieldName = 'SZ_NUMBER'
      Size = 100
    end
    object Db_DocsListSZ_DATE: TDateTimeField
      FieldName = 'SZ_DATE'
    end
    object Db_DocsListSZ_NOTE: TStringField
      FieldName = 'SZ_NOTE'
      Size = 1000
    end
    object Db_DocsListEMP_FIO: TStringField
      FieldName = 'EMP_FIO'
      Size = 26
    end
    object Db_DocsListDONE_PERC: TFloatField
      FieldName = 'DONE_PERC'
    end
    object Db_DocsListDOC_HEADER_ID: TIntegerField
      FieldName = 'DOC_HEADER_ID'
    end
    object Db_DocsListNEGATIVE_FLAG: TFloatField
      FieldName = 'NEGATIVE_FLAG'
    end
    object Db_DocsListSZ_DEP_ID: TIntegerField
      FieldName = 'SZ_DEP_ID'
    end
    object Db_DocsListDEP_CODE: TStringField
      FieldName = 'DEP_CODE'
      Size = 2
    end
    object Db_DocsListDEP_SNAME: TStringField
      FieldName = 'DEP_SNAME'
      Size = 200
    end
    object Db_DocsListI_USER: TStringField
      FieldName = 'I_USER'
      Size = 30
    end
    object Db_DocsListI_DATE: TDateTimeField
      FieldName = 'I_DATE'
    end
    object Db_DocsListU_USER: TStringField
      FieldName = 'U_USER'
      Size = 30
    end
    object Db_DocsListDATE_START_ROUTE: TDateTimeField
      FieldName = 'DATE_START_ROUTE'
    end
    object Db_DocsListDATE_END_ROUTE: TDateTimeField
      FieldName = 'DATE_END_ROUTE'
    end
    object Db_DocsListSZ_DEP_NUMBER: TStringField
      FieldName = 'SZ_DEP_NUMBER'
      Size = 103
    end
    object Db_DocsListDEPMARK_FLAG: TFloatField
      FieldName = 'DEPMARK_FLAG'
    end
  end
  object ActionList1: TActionList
    Images = Form_Sz_Main.ImageList2
    Left = 304
    Top = 232
    object Act_NewDoc: TAction
      Caption = #1057#1086#1079#1076#1072#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090
      Hint = #1057#1086#1079#1076#1072#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090
      ImageIndex = 110
      OnExecute = Act_NewDocExecute
    end
    object Act_EditDoc: TAction
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090
      ImageIndex = 109
      OnExecute = Act_EditDocExecute
    end
    object Act_PrintDoc: TAction
      Caption = #1055#1077#1095#1072#1090#1100
      Hint = #1055#1077#1095#1072#1090#1100
      ImageIndex = 75
      OnExecute = Act_PrintDocExecute
    end
    object Act_Sign: TAction
      Caption = #1055#1086#1076#1087#1080#1089#1072#1090#1100
      Hint = #1055#1086#1076#1087#1080#1089#1072#1090#1100
      ImageIndex = 142
      OnExecute = Act_SignExecute
    end
    object Act_CancelItem: TAction
      Caption = #1054#1090#1082#1083#1086#1085#1080#1090#1100' '#1087#1086#1079#1080#1094#1080#1102
      Hint = #1054#1090#1082#1083#1086#1085#1080#1090#1100' '#1087#1086#1079#1080#1094#1080#1102
      ImageIndex = 116
      OnExecute = Act_CancelItemExecute
    end
    object Act_ApplyItem: TAction
      Caption = #1055#1088#1080#1085#1103#1090#1100' '#1087#1086#1079#1080#1094#1080#1102
      Hint = #1055#1088#1080#1085#1103#1090#1100' '#1087#1086#1079#1080#1094#1080#1102
      ImageIndex = 117
      OnExecute = Act_ApplyItemExecute
    end
    object Act_DocComms: TAction
      Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
      Hint = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
      ImageIndex = 103
      OnExecute = Act_DocCommsExecute
    end
    object Act_LinkDocs: TAction
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1074' '#1086#1090#1074#1077#1090#1085#1099#1081' '#1076#1086#1082#1091#1084#1077#1085#1090
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1074' '#1086#1090#1074#1077#1090#1085#1099#1081' '#1076#1086#1082#1091#1084#1077#1085#1090
      ImageIndex = 78
      OnExecute = Act_LinkDocsExecute
    end
    object Act_MarkDoc: TAction
      Caption = #1054#1090#1084#1077#1090#1080#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090
      Hint = #1054#1090#1084#1077#1090#1080#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090
      ImageIndex = 144
      OnExecute = Act_MarkDocExecute
    end
    object Act_EditRightConfig: TAction
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1072' '#1087#1088#1072#1074' '#1076#1086#1089#1090#1091#1087#1072
      Hint = #1053#1072#1089#1090#1088#1086#1081#1082#1072' '#1087#1088#1072#1074' '#1076#1086#1089#1090#1091#1087#1072
      ImageIndex = 145
      OnExecute = Act_EditRightConfigExecute
    end
    object Act_Unsign: TAction
      Caption = #1057#1085#1103#1090#1100' '#1087#1086#1076#1087#1080#1089#1100
      Hint = #1057#1085#1103#1090#1100' '#1087#1086#1076#1087#1080#1089#1100
      ImageIndex = 105
      OnExecute = Act_UnsignExecute
    end
  end
  object Data_DocsList: TDataSource
    DataSet = Db_DocsList
    Left = 224
    Top = 344
  end
  object Db_Doc_Content: TOracleDataSet
    SQL.Strings = (
      'select t.*,'
      '       Item_Price*((Item_Nds/100)+1) Item_Price_n_Nds,'
      '       u.Emp_Fio User_Correct,'
      '       c.CheckItems'
      'from   Mrk.V_SZ_PRICE_REQ_ITEMS t'
      'Left   Join Stp.v_Users u'
      'On     u.Id_User=t.u_User'
      '       And u.Id_User_Add=t.u_User_add'
      'Left   Join (Select Count(*) CheckItems, c.Sz_Price_Req_Item_Id'
      '             From   Mrk.V_Sz_Price_Req_Items_Check c'
      '             Group  By c.Sz_Price_Req_Item_Id) c'
      'On     c.Sz_Price_Req_Item_Id=t.Id_Sz_Price_Req_Item'
      'Where  t.Sz_Price_Req_Id=:Id_Sz_Price_Req'
      'Order  By t.Item_Pos_Num')
    Optimize = False
    Variables.Data = {
      0400000001000000200000003A00490044005F0053005A005F00500052004900
      430045005F00520045005100050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      050000001600000028000000490044005F0053005A005F005000520049004300
      45005F005200450051005F004900540045004D00010000000000280000005300
      5A005F00500052004900430045005F005200450051005F004900540045004D00
      5F00490044000100000000001E00000053005A005F0050005200490043004500
      5F005200450051005F0049004400010000000000180000004900540045004D00
      5F0050004F0053005F004E0055004D0001000000000012000000490054004500
      4D005F0043004F0044004500010000000000100000004900540045004D005F00
      4E0055004D00010000000000120000004900540045004D005F004E0041004D00
      4500010000000000140000004900540045004D005F0050005200490043004500
      010000000000100000004900540045004D005F004E0044005300010000000000
      2A0000004900540045004D005F00500052004900430045005F00440041005400
      45005F0053005400410052005400010000000000260000004900540045004D00
      5F00500052004900430045005F0044004100540045005F0045004E0044000100
      00000000120000004900540045004D005F004E004F0054004500010000000000
      1A0000004900540045004D005F005500530045005F0046004C00410047000100
      000000000C00000049005F005500530045005200010000000000140000004900
      5F0055005300450052005F004100440044000100000000000C00000049005F00
      44004100540045000100000000000C00000055005F0055005300450052000100
      000000001400000055005F0055005300450052005F0041004400440001000000
      00000C00000055005F0044004100540045000100000000001800000055005300
      450052005F0043004F0052005200450043005400010000000000200000004900
      540045004D005F00500052004900430045005F004E005F004E00440053000100
      000000001400000043004800450043004B004900540045004D00530001000000
      0000}
    Master = Db_DocsList
    MasterFields = 'Id_Sz_Price_Req'
    Session = DM_Main.Session
    Left = 944
    Top = 568
    object Db_Doc_ContentID_SZ_PRICE_REQ_ITEM: TIntegerField
      FieldName = 'ID_SZ_PRICE_REQ_ITEM'
      Required = True
    end
    object Db_Doc_ContentSZ_PRICE_REQ_ITEM_ID: TIntegerField
      FieldName = 'SZ_PRICE_REQ_ITEM_ID'
    end
    object Db_Doc_ContentSZ_PRICE_REQ_ID: TIntegerField
      FieldName = 'SZ_PRICE_REQ_ID'
    end
    object Db_Doc_ContentITEM_POS_NUM: TIntegerField
      FieldName = 'ITEM_POS_NUM'
    end
    object Db_Doc_ContentITEM_CODE: TStringField
      FieldName = 'ITEM_CODE'
      Size = 8
    end
    object Db_Doc_ContentITEM_NUM: TStringField
      FieldName = 'ITEM_NUM'
      Size = 150
    end
    object Db_Doc_ContentITEM_NAME: TStringField
      FieldName = 'ITEM_NAME'
      Size = 200
    end
    object Db_Doc_ContentITEM_PRICE: TFloatField
      FieldName = 'ITEM_PRICE'
    end
    object Db_Doc_ContentITEM_NDS: TIntegerField
      FieldName = 'ITEM_NDS'
    end
    object Db_Doc_ContentITEM_PRICE_DATE_START: TDateTimeField
      FieldName = 'ITEM_PRICE_DATE_START'
    end
    object Db_Doc_ContentITEM_PRICE_DATE_END: TDateTimeField
      FieldName = 'ITEM_PRICE_DATE_END'
    end
    object Db_Doc_ContentITEM_NOTE: TStringField
      FieldName = 'ITEM_NOTE'
      Size = 500
    end
    object Db_Doc_ContentITEM_USE_FLAG: TStringField
      FieldName = 'ITEM_USE_FLAG'
      Size = 50
    end
    object Db_Doc_ContentI_USER: TStringField
      FieldName = 'I_USER'
      Size = 30
    end
    object Db_Doc_ContentI_USER_ADD: TIntegerField
      FieldName = 'I_USER_ADD'
    end
    object Db_Doc_ContentI_DATE: TDateTimeField
      FieldName = 'I_DATE'
    end
    object Db_Doc_ContentU_USER: TStringField
      FieldName = 'U_USER'
      Size = 30
    end
    object Db_Doc_ContentU_USER_ADD: TIntegerField
      FieldName = 'U_USER_ADD'
    end
    object Db_Doc_ContentU_DATE: TDateTimeField
      FieldName = 'U_DATE'
    end
    object Db_Doc_ContentUSER_CORRECT: TStringField
      FieldName = 'USER_CORRECT'
      Size = 26
    end
    object Db_Doc_ContentITEM_PRICE_N_NDS: TFloatField
      FieldName = 'ITEM_PRICE_N_NDS'
    end
    object Db_Doc_ContentCHECKITEMS: TFloatField
      FieldName = 'CHECKITEMS'
    end
  end
  object Data_Doc_Content: TDataSource
    DataSet = Db_Doc_Content
    Left = 864
    Top = 640
  end
  object Db_Filters: TOracleDataSet
    SQL.Strings = (
      'Select (Case Level'
      #9#9#9#9#9'When 1 Then '#39'Sz_Number'#39
      #9#9#9#9#9'When 2 Then '#39'Item_Code'#39
      #9#9#9#9#9'When 3 Then '#39'Item_Num'#39
      #9#9#9#9#9'When 4 Then '#39'Item_Name'#39
      #9#9#9#9#9'When 5 Then '#39'Emp_Fio'#39
      '        End) KeyList,'
      #9#9#9#9'(Case Level'
      #9#9#9#9#9'When 1 Then '#39#8470' '#1076#1086#1082#1091#1084#1077#1085#1090#1072#39
      #9#9#9#9#9'When 2 Then '#39#1050#1086#1076' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103#39
      #9#9#9#9#9'When 3 Then '#39#1063#1077#1088#1090#1077#1078#1085#1099#1081' '#8470' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103#39
      #9#9#9#9#9'When 4 Then '#39#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103#39
      #9#9#9#9#9'When 5 Then '#39#1048#1089#1087#1086#1083#1085#1080#1090#1077#1083#1100#39
      '        End) LookapValue'
      'From   Dual'
      'Connect By Level<=5')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      05000000020000000E0000004B00450059004C00490053005400010000000000
      160000004C004F004F004B0041005000560041004C0055004500010000000000}
    Session = DM_Main.Session
    Left = 512
    Top = 472
    object Db_FiltersKEYLIST: TStringField
      FieldName = 'KEYLIST'
      Size = 9
    end
    object Db_FiltersLOOKAPVALUE: TStringField
      FieldName = 'LOOKAPVALUE'
      Size = 25
    end
  end
  object Data_Filters: TDataSource
    DataSet = Db_Filters
    Left = 424
    Top = 464
  end
  object Pkg_Sz_Price_Req: TOraclePackage
    Session = DM_Main.Session
    PackageName = 'Mrk.Pkg_Sz_Price_Req'
    Left = 80
    Top = 120
  end
  object ColorDialog1: TColorDialog
    Color = 10544892
    CustomColors.Strings = (
      'ColorA=FFFFFFFF'
      'ColorB=FFFFFFFF'
      'ColorC=FFFFFFFF'
      'ColorD=FFFFFFFF'
      'ColorE=FFFFFFFF'
      'ColorF=FFFFFFFF'
      'ColorG=FFFFFFFF'
      'ColorH=FFFFFFFF'
      'ColorI=FFFFFFFF'
      'ColorJ=FFFFFFFF'
      'ColorK=FFFFFFFF'
      'ColorL=FFFFFFFF'
      'ColorM=FFFFFFFF'
      'ColorN=FFFFFFFF'
      'ColorO=FFFFFFFF'
      'ColorP=FFFFFFFF')
    Left = 688
    Top = 184
  end
  object Pm_DocsList: TPopupMenu
    Images = Form_Sz_Main.ImageList2
    OnPopup = Pm_DocsListPopup
    Left = 488
    Top = 184
    object Btn_AddDoc: TMenuItem
      Action = Act_NewDoc
    end
    object Btn_EditDoc: TMenuItem
      Action = Act_EditDoc
    end
    object Btn_PrintDoc: TMenuItem
      Action = Act_PrintDoc
    end
    object Btn_SignDoc: TMenuItem
      Action = Act_Sign
    end
    object Btn_UnSignDoc: TMenuItem
      Action = Act_Unsign
    end
    object Pm_Btn_AddToDoc: TMenuItem
      Action = Act_LinkDocs
    end
    object Pm_Btn_MarkDoc: TMenuItem
      Action = Act_MarkDoc
    end
    object Pm_Btn_EditRights: TMenuItem
      Action = Act_EditRightConfig
    end
  end
  object Pkg_Doc_Comms: TOraclePackage
    Session = DM_Main.Session
    PackageName = 'Src.Pkg_Doc_Comms'
    Left = 520
    Top = 272
  end
  object Pm_DocItems: TPopupMenu
    Images = Form_Sz_Main.ImageList2
    OnPopup = Pm_DocItemsPopup
    Left = 264
    Top = 552
    object Pm_Btn_AddItemToDoc: TMenuItem
      Action = Act_LinkDocs
    end
    object N1: TMenuItem
      Action = Act_ApplyItem
    end
    object N2: TMenuItem
      Action = Act_CancelItem
    end
  end
  object Pkg_Doc: TOraclePackage
    Session = DM_Main.Session
    PackageName = 'Src.PKG_DOC'
    Left = 560
    Top = 392
  end
end
