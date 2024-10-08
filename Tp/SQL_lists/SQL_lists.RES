        ��  ��                  ~  ,   T X T   U S E R S       0         /*������ �������������*/
---------------------
/*COLUMNS_START
<0>EMP_FIO</0><1>Profession</1><end>
COLUMNS_END*/

/*TITLES_START
<0>�.�.�.</0><1>���������</1><end>
TITLES_END*/
--------------------

Select Usr.Id_User,
       Usr.Emp_Fio, 
       Usr.Emp_Id, 
       Usr.Dep_Id, 
       Dep.Dep_Code, 
       Ceh.Ceh_Id, 
       Emp.Profession, 
       Phn.Tphone || Case When Phn.Tphone2 <> '  -  ' Then ' (' || Phn.Tphone2 || ')' Else Null End Phone 
From   Stp.v_Users Usr 
Join   Src.v_Emps Emp 
On     Emp.Id_Emp = Usr.Emp_Id 
Left   Join Stp.v_Deps Dep 
On     Dep.id_dep = Usr.Dep_Id 
Left   Join Ogt.v_Spr_Ceh Ceh
On     Ceh.Ceh_Code = Dep.dep_Code
Left   Join PERS.Spr_Phone Phn
On     Usr.Emp_Id = Phn.Lnum
Where  /*FILTER_START*/ (1=1) /*FILTER_END*/
       /*KEYWORD_START*/ And Upper( t.Emp_Fio ) Like '%'||Upper( :V_Keyword )||'%' /*KEYWORD_END*/
	   /  ,   T X T   O P E R S       0         /*������ ��������*/
---------------------
/*COLUMNS_START
<0>Name_Oper</0><end>
COLUMNS_END*/

/*TITLES_START
<0>��������</0><end>
TITLES_END*/
--------------------

Select t.Id Oper_Id,
       t.Code_Oper,
       t.Name_Oper,
       t.Iot_Oper, 
       t.Tt_Oper Tt_Oper 
From   Ogt.V_Spr_Oper t 
Where  /*FILTER_START*/ (1=1) /*FILTER_END*/
       /*KEYWORD_START*/ And ( Upper( t.Name_Oper ) like '%'||Upper( :V_Keyword )||'%' 
                               Or Upper( t.Code_Oper ) like '%'||Upper( :V_Keyword )||'%' ) /*KEYWORD_END*/
 o  4   T X T   O P E R _ P R I M       0         /*������ ���������� � ���������*/
---------------------
/*COLUMNS_START
<0>Prim</0><end>
COLUMNS_END*/

/*TITLES_START
<0>����������</0><end>
TITLES_END*/
--------------------
Select *
From   ( Select
         Distinct Trim(t.Prim) Prim
         From   Ogt.V_Tp_Ok_Dlp t
         Where  t.Prim Is Not Null )
Where  /*FILTER_START*/ (1=1) /*FILTER_END*/ q  0   T X T   O P E R _ T T       0         /*����. ���������� � ���������*/
---------------------
/*COLUMNS_START
<0>TT</0><end>
COLUMNS_END*/

/*TITLES_START
<0>����. ���������� � ���������</0><end>
TITLES_END*/
--------------------

Select * 
From   ( Select Distinct Trim(t.TT) TT 
	 From   Ogt.V_Tp_Ok_Dlp t 
         Where  t.TT Is Not Null ) 
Where  /*FILTER_START*/ (1=1) /*FILTER_END*/
	      <   T X T   O P E R _ P E R _ P R I M       0         /*������ ���������� � ���������*/
---------------------
/*COLUMNS_START
<0>Prim</0><end>
COLUMNS_END*/

/*TITLES_START
<0>���������� � ���������</0><end>
TITLES_END*/
--------------------

Select * 
From   ( Select Distinct Trim(t.Prim) Prim 
         From   Ogt.V_Tp_Ok_Per_Dlp t 
         Where  t.Prim Is Not Null  )
Where  /*FILTER_START*/ (1=1) /*FILTER_END*/
	  a  8   T X T   O P E R _ P E R _ T T       0         /*������ ���������� � ���������*/
---------------------
/*COLUMNS_START
<0>TT</0><end>
COLUMNS_END*/

/*TITLES_START
<0>����. ���������� � ���������</0><end>
TITLES_END*/
--------------------

Select Distinct Trim(t.Tt_Per) TT 
From   Ogt.V_Tp_Ok_Per_Dlp t
Where  t.Tt_Per Is Not Null 
       And  /*FILTER_START*/ (1=1) /*FILTER_END*/
	    x  4   T X T   O P E R _ P E R         0         /*������ ���������*/
---------------------
/*COLUMNS_START
<0>Per</0><end>
COLUMNS_END*/

/*TITLES_START
<0>��������</0><end>
TITLES_END*/
--------------------

Select  Trim( t.Per ) Per,
	Oper.Oper_Id 
From    Ogt.V_Tp_Ok_Per_Dlp t 
Left    Join Ogt.v_Tp_Ok_Dlp Oper 
On      Oper.Id_Row_Oper = t.Id_Row_Oper 
Where   /*FILTER_START*/ (1=1) /*FILTER_END*/
	 I  0   T X T   R E A S O N         0         /*������ ������ �������*/
---------------------
/*COLUMNS_START
<0>REASON</0><end>
COLUMNS_END*/

/*TITLES_START
<0>�������</0><end>
TITLES_END*/
--------------------

Select  Distinct Trim( t.Reason ) REASON 
From    Ogt.V_SPR_TP_DOC t 
Where   t.Reason Is Not Null
	And   /*FILTER_START*/ (1=1) /*FILTER_END*/
	    '  ,   T X T   O B O R         0         /*������ ������ �������*/
---------------------
/*COLUMNS_START
<0>OBOR_NAME</0><end>
COLUMNS_END*/

/*TITLES_START
<0>������������ ������������</0><end>
TITLES_END*/
--------------------

Select  Id_Obor, 
        Name_Obor OBOR_NAME, 
        Group_Id 
From    Skl.V_OPP_SPR_OBOR_CEH t 
Where   Nvl( t.Kol, 0 ) >= 1 
        And Nvl( t.Pr, 0 ) = 1
	And /*FILTER_START*/ (1=1) /*FILTER_END*/
	/*KEYWORD_START*/ And Translate (Upper(t.Name_Obor), ' .-', '%') Like '%'||Translate(Upper(:V_Keyword),' .-*', '%')||'%' /*KEYWORD_END*/
	 {  ,   T X T   T A R A         0         /*������ ����*/
---------------------
/*COLUMNS_START
<0>Num_Tara</0><1>Name_Tara</1><end>
COLUMNS_END*/

/*TITLES_START
<0>����</0><1>������������</1><end>
TITLES_END*/
--------------------

Select t.Id Id_Tara, 
       t.Tara Num_Tara, 
       t.Naim_T||' '||( Case 
                          When t.Length_Max Is Not Null 
                          	Or t.Width_Max Is Not Null
                          	Or t.Height_ Is Not Null 
                          Then Nvl( t.Length_Max,0 )||'x'||Nvl( t.Width_Max,0 )||'x'||Nvl( t.Height_,0 ) 
                          Else Null
                        End ) Name_Tara 
From   Ogt.V$Spr_Tara t
Where  /*FILTER_START*/ (1=1) /*FILTER_END*/
       /*KEYWORD_START*/ And ( Upper(t.Tara) like '%'||Upper( :V_Keyword )||'%' 
                               Or Upper(t.Naim_T) like '%'||Upper(:V_Keyword)||'%') /*KEYWORD_END*/
	 �  4   T X T   R E T U R N _ T O       0         /*������ �������� ��� ��������*/
---------------------
/*COLUMNS_START
<0>Ceh_Code</0><1>Appr_Step_Name</1><end>
COLUMNS_END*/

/*TITLES_START
<0>���</0><1>������������ �������</1><end>
TITLES_END*/
--------------------
Select t.Id Id_Appr
       t.Appr_Step, 
       t.Ceh_Code, 
       ( Case 
           When t.Appr_Step = '006' 
           Then t.Appr_Step_Name||' ('||Dep.Dep_Sname||')' 
           Else t.Appr_Step_Name 
         End )  Appr_Step_Name 
From  Ogt.V_Spr_Tp_Doc_Appr t 
Left  Join Stp.v_Deps Dep
On    t.Dep_Id = Dep.Id_Dep
Where t.Flag_Out In ( 1, 2 )
      And  /*FILTER_START*/ (1=1) /*FILTER_END*/
      /*KEYWORD_START*/ And Upper(t.Appr_Step) like '%'||Upper(:V_Keyword)||'%' /*KEYWORD_END*/
	 �  0   T X T   S I G N _ T O       0         /*������ �������� ��� ����������*/
---------------------
/*COLUMNS_START
<0>Ceh_Code</0><1>Appr_Step_Name</1><end>
COLUMNS_END*/

/*TITLES_START
<0>���</0><1>������������ �������</1><end>
TITLES_END*/
--------------------
Select * 
From ( Select a.Ceh_Code, 
       	      a.Appr_Step_Name, 
              a.Stp_Id_Doc_Rout_Point,
              a.Ceh_Id,
              a.Dep_Id, 
              a.Id_Doc_Tp, 
              a.Doc_Header_Id 
       From   Ogt.V_Spr_Tp_Doc_Appr a 
       Where  a.Flag_In = 1 
              And a.Flag_Out <> 2 
              And ( a.Ceh_Code||a.Appr_Step In ( Select ( Case 
                                                When t.dep_Mmbr_Pstn_Id = 1 
                                                     Or t.dep_Mmbr_Pstn_Id = 2 Then Dep.Dep_Code||'004'
                          			When t.dep_Mmbr_Pstn_Id = 203 Then Dep.Dep_Code||'002' 
                          			When t.dep_Mmbr_Pstn_Id = 202 Then Dep.Dep_Code||'003' 
                          			When t.dep_Mmbr_Pstn_Id = 204 Then Dep.Dep_Code||'005'
                          			When t.dep_Mmbr_Pstn_Id = 221 Then Dep.Dep_Code||'008' 
                          			When t.dep_Mmbr_Pstn_Id = 201 
                            				And Dep.Id_Dep = a.Dep_Id 
                          			Then Dep.Dep_Code||'006' 
					      End ) 
                          	     From   STP.V_DEP_MMBRS t 
                          	     Left   Join Stp.v_Deps Dep 
                          	     On     Dep.id_dep = t.dep_Id 
                          	     Where  t.User_Id = User ) 
               Or ( Stp.Pkg_User.F_Check_Program_Param( In_Object_Id => 8784, 
                          In_Parametr => 'ADMIN',
                          In_Value => '1' ) = 1 )) 
	Union All


	Select a.Ceh_Code, 
               a.Appr_Step_Name, 
               Nvl( a.Stp_Id_Doc_Rout_Point, 0 ), 
               a.Ceh_Id, 
               Nvl( a.Dep_Id, 0 ), 
               a.Id_Doc_Tp, 
               a.Doc_Header_Id 
        From   Ogt.V_Spr_Tp_Doc_Appr a 
        Where  a.Flag_In = 1 
               And a.Appr_Step = '001'
               And a.Flag_Out = 0  ) 
Where  /*FILTER_START*/ (1=1) /*FILTER_END*/
      /*KEYWORD_START*/ And Doc_Header_Id = :V_Keyword /*KEYWORD_END*/
	 ~	  <   T X T   A D M I N _ S I G N _ T O       0         /*������ �������� ��� ����������*/
---------------------
/*COLUMNS_START
<0>Ceh_Code</0><1>Appr_Step_Name</1><2>EMP_FIO</2><end>
COLUMNS_END*/

/*TITLES_START
<0>���</0><1>������������ �������</1><2>���������</2><end>
TITLES_END*/
--------------------
Select * 
From ( Select Appr.Ceh_Code, 
              Appr.Ceh_Id, 
              Appr.Dep_Id, 
              Appr.Appr_Step_Name, 
              Appr.Stp_Id_Doc_Rout_Point,
              Appr.Id_Doc_Tp, 
              Appr.Doc_Header_Id, 
              U.Emp_Id, 
              U.Emp_Fio 
        From  Stp.V_Dep_Mmbrs t 
        Left  Join Stp.v_Users U 
        On    U.Id_User = t.User_Id 
        Cross Join Ogt.v_Spr_Tp_Doc_Appr Appr 
        Left  Join Stp.v_Deps Dep 
        On    Dep.Id_dep = t.Dep_Id 
        Where Appr.Flag_In = 1 
              And Appr.Ceh_Code = Dep.Dep_Code 
              And Appr.Flag_Out <> 2 
              And Appr.Appr_Step = ( Case 
                                       When t.Dep_Mmbr_Pstn_Id = 1 
                          	            Or t.Dep_Mmbr_Pstn_Id = 2 Then '004' 
                          	       When t.Dep_Mmbr_Pstn_Id = 203 Then '002' 
                                       When t.Dep_Mmbr_Pstn_Id = 202 Then '003'
                          	       When t.Dep_Mmbr_Pstn_Id = 204 Then '005'
                          	       When t.Dep_Mmbr_Pstn_Id = 221 Then '008' 
                          	       When t.Dep_Mmbr_Pstn_Id = 201 
                          		    And Dep.Id_Dep = Appr.Dep_Id 
                                       Then '006'
                                     End )) 
	Union All


	Select Appr.Ceh_Code, 
               Appr.Ceh_Id, 
               Appr.Dep_Id, 
               Appr.Appr_Step_Name, 
               Nvl( Appr.Stp_Id_Doc_Rout_Point, 0), 
               Appr.Id_Doc_Tp, 
               Appr.Doc_Header_Id, 
               U.Emp_Id, 
               U.Emp_Fio VSB_EMP_FIO 
        From   Stp.v_Users U 
        Cross  Join Ogt.v_Spr_Tp_Doc_Appr Appr 
        Left   Join Ogt.v_Spr_Tp_Doc Info 
        On     Info.Doc_Header_Id = Appr.Doc_Header_Id 
        Where  Appr.Flag_In = 1 
	       And Appr.Appr_Step = '001'
               And Appr.Flag_Out = 0 
               And U.Emp_Id = Info.Author_Lnum  ) 
Where  /*FILTER_START*/ (1=1) /*FILTER_END*/
      /*KEYWORD_START*/ And Doc_Header_Id = :V_Keyword /*KEYWORD_END*/
	  �  (   T X T   D O C       0         /*������ ����������*/
---------------------
/*COLUMNS_START
<0>Num_Doc</0><1>Doc_Type_Name</1><2>Addit_Info_Num</2><3>Addit_Info_Name</3><4>Sec_Addit_Info</4><end>
COLUMNS_END*/

/*TITLES_START
<0>����� ���������</0><1>���</1><2>�����/���� ��/������</2><3>������������ ��/������</3><4>������� ������/��� �����</4><end>
TITLES_END*/
--------------------
Select t.Id Id_Doc, 
       ( Case 
           When t.Main_Doc_Id Is Null 
           Then t.Id 
           Else t.Main_Doc_Id 
         End ) Main_Doc_Id, 
       t.Main_Doc_Id Real_Main_Doc_Id, 
       t.Doc_Header_Id, 
       t.Doc_Num Num_Doc, 
       ( Case t.Doc_Type 
           When 1 Then '���������'
           When 2 Then '�������'
           When 3 Then '���������'
           When 4 Then '���������'
           When 5 Then '�������� ����������'
         End ) Doc_Type_Name, 
       t.Doc_Type, 
       t.Ceh_Id, 
       t.Ceh_Code, 
       t.Det_Id Id_Det, 
       ( Case 
           When t.Doc_Type In ( 1 ) Then t.Det_Num 
           When t.Doc_Type In ( 2, 4 ) Then t.Tp_Num 
         End ) Addit_Info_Num, 
       ( Case 
           When t.Doc_Type In ( 1 ) Then t.Det_Name 
           When t.Doc_Type In ( 2, 4 ) Then t.Tp_Name 
         End ) Addit_Info_Name, 
       ( Case 
           When t.Doc_Type In ( 1 ) Then t.Det_Mar 
           When t.Doc_Type In ( 2, 4 ) Then t.Tp_Work_Type_Name 
         End ) Sec_Addit_Info, 
       t.Tp_Work_Type, 
       t.Izd_Id, 
       t.Izd_Name, 
       t.Izd_Type 
From   Ogt.V_Spr_Tp_Doc t 
Where  /*FILTER_START*/ (1=1) /*FILTER_END*/
       /*KEYWORD_START*/ And ( (Upper(t.Doc_Num) like '%'||Upper(:V_Keyword)||'%'
                                Or Upper(t.Tp_Num) Like '%'||Upper(:V_Keyword )||'%') ) /*KEYWORD_END*/
	�  (   T X T   I Z D       0         /*������ �������*/
---------------------
/*COLUMNS_START
<0>Izd</0><1>Izd_Nd</1><end>
COLUMNS_END*/

/*TITLES_START
<0>������������</0><1>�����������</1><end>
TITLES_END*/
--------------------
Select t.Id Id_Izd,
       t.Izd Izd,
       t.Nd_Izd Izd_Nd
From   Ogt.Spr_Izd_Txt t 
Where  t.Arhiv = 1
       And/*FILTER_START*/ (1=1) /*FILTER_END*/
       /*KEYWORD_START*/And Upper(t.Izd) like '%'||Upper(:V_Keyword)||'%' /*KEYWORD_END*/
	 1  (   T X T   E D         0         /*������ �������*/
---------------------
/*COLUMNS_START
<0>Ed_Code</0><1>Ed_Naim</1><end>
COLUMNS_END*/

/*TITLES_START
<0>���</0><1>������������</1><end>
TITLES_END*/
--------------------
Select t.Id Id_Ed,
       t.Ed Ed_Code, 
       t.Ed_Naim Ed_Naim 
From Ogt.Spr_Ed t
Where  /*FILTER_START*/ (1=1) /*FILTER_END*/
       /*KEYWORD_START*/And (Translate (Upper( t.ED_NAIM ), ' .-', '%') Like '%'||Translate(Upper(:V_Keyword), ' .-*', '%')||'%'
                             Or Upper(t.Ed) like '%'||Upper(:V_Keyword)||'%') /*KEYWORD_END*/
	   �  (   T X T   I N S       0         /*������ ������������*/
---------------------
/*COLUMNS_START
<0>Name_Instr</0><end>
COLUMNS_END*/

/*TITLES_START
<0>������������</0><end>
TITLES_END*/
--------------------
Select t.Id Id_Ins, 
       t.Name_Instr Name_Instr 
From   Ogt.Spr_Instr t
Where  /*FILTER_START*/ (1=1) /*FILTER_END*/
       /*KEYWORD_START*/And (Translate(Upper(t.Name_Instr), ' .-', '%') Like '%'||Translate(Upper(:V_Keyword), ' .-*', '%')||'%') /*KEYWORD_END*/
	   5  (   T X T   O S N       0         /*������ ��������*/
---------------------
/*COLUMNS_START
<0>Num_Osn</0><1>Name_Osn</1><end>
COLUMNS_END*/

/*TITLES_START
<0>����</0><1>������������</1><end>
TITLES_END*/
--------------------
Select t.Id Id_Osn, 
       t.Shosn Num_Osn, 
       t.Nosn Name_Osn 
From   Ogt.Spr_Osn_Txt t 
Where  Nvl( t.An_Txt, '1' ) = '1'
       And /*FILTER_START*/ (1=1) /*FILTER_END*/
       /*KEYWORD_START*/And (Upper(t.Shosn) like '%'||Upper(:V_Keyword)||'%' 
                             Or Upper(t.Nosn) like '%'||Upper(:V_Keyword)||'%') /*KEYWORD_END*/
	     0   T X T   D E T _ M A R       0         /*������ ��������� ������*/
---------------------
/*COLUMNS_START
<0>Det_Num_Name</0><1>Mar</1><end>
COLUMNS_END*/

/*TITLES_START
<0>����/������������ ������</0><1>�������</1><end>
TITLES_END*/
--------------------
Select  Distinct t.Id,
        t.Num_Det||' '||t.Name_Det Det_Num_Name, 
        t.Mar MAR, 
        t.Id_Det, 
        t.Num_Det, 
        t.Name_Det 
From    Ogt.V_SPR_RCD t 
Where   Ogt.Ras.Status_Mtm( t.Id_Mtm )||Ogt.Ras.Status_Mtm( t.Id_C_Mtm )='10'
        And /*FILTER_START*/ (1=1) /*FILTER_END*/
	   �  4   T X T   W O R K _ T Y P E       0         /*������ ����� �����*/
---------------------
/*COLUMNS_START
<0>Work_Type_Name</0><end>
COLUMNS_END*/

/*TITLES_START
<0>��� �����</0><end>
TITLES_END*/
--------------------
Select t.Num Work_Type_Id, 
       t.Num_Gr_Vid_Rab, 
       t.Name_Gr_Vid_Rab,
       '('||t.Num_Gr_Vid_Rab||') '||Decode( t.Num_Gr_Vid_Rab, '00', '��� ��������', t.Name_Gr_Vid_Rab ) Work_Type_Name
From   Ogt.SPR_GR_VID_RAB t
Where  /*FILTER_START*/ (1=1) /*FILTER_END*/
	   <   T X T   C E H _ F O R _ P R N T         0         /*������ ����� ��� ������*/
---------------------
/*COLUMNS_START
<0>CEH_CODE</0><end>
COLUMNS_END*/

/*TITLES_START
<0>���</0><end>
TITLES_END*/
--------------------
Select  Distinct t.Ceh_Id,
	      t.Ceh_Code CEH_CODE 
From    Ogt.v_Tp_Ok_Mar_Parts t
Join    Ogt.V_Spr_Tp_Doc Inf
On      (Inf.Id = t.Id_Doc_Tp
        Or Inf.Main_Doc_Id = t.Id_Doc_Tp)
        And Inf.Doc_Header_Id=:V_Keyword
Join    (Select Max(a.Id_Doc_Tp||a.Doc_Tp_Vers_Id) Actual, 
                                          a.Id
				 From   Ogt.V_Tp_Ok_Mar_Parts_Vers a
				 Join   Ogt.V_Spr_Tp_Doc Inf
				 On     (Inf.Id = a.Id_Doc_Tp
				         Or Inf.Main_Doc_Id = a.Id_Doc_Tp)
					And Inf.Doc_Header_Id=:V_Keyword
				 Where  a.Doc_Tp_Vers_Id In ( Select a.Id_Vers
							      From   ogt.v_Spr_Tp_Doc a 
					          	      Connect By Prior a.Parent_Doc_Id = a.Doc_Header_Id
							      Start With a.Doc_Header_Id=:V_Keyword )
           Group By a.Id) b
On b.Id = t.Id
   And b.Actual = t.Id_Doc_Tp||t.Doc_Tp_Vers_Id
where ((Case
           when t.Doc_Tp_Vers_Id <> Inf.Id_Vers
                And (t.Rw_Status = 'deleted'
                     Or t.Rw_Vers = 'old_version')
           then 0
           else 1
       end) = 1)
      And /*FILTER_START*/ (1=1) /*FILTER_END*/
	  \  4   T X T   V T P _ P R I M         0         /*������ ���������� � ��������� ����������*/
---------------------
/*COLUMNS_START
<0>Prim</0><end>
COLUMNS_END*/

/*TITLES_START
<0>����������</0><end>
TITLES_END*/
--------------------
Select Distinct Trim( t.Prim ) Prim 
From   Ogt.V_TP_GKTTP_OPER_DLP t 
Where  t.Prim Is Not Null
       And /*FILTER_START*/ (1=1) /*FILTER_END*/
	"  (   T X T   C E H       0         /*������ �����*/
---------------------
/*COLUMNS_START
<0>Ceh_Code</0><1>Ceh_Sname</1><end>
COLUMNS_END*/

/*TITLES_START
<0>���</0><1>������������</1><end>
TITLES_END*/
--------------------

Select t.Ceh_Id Id_Ceh, 
       t.Dep_Id, 
       t.Ceh_Code, 
       t.Ceh_Sname 
From   Ogt.V_Spr_Ceh t
Where  /*FILTER_START*/ (1=1) /*FILTER_END*/
       /*KEYWORD_START*/And ( Upper(t.Ceh_Code) like '%'||Upper(:V_Keyword)||'%'
                              Or Upper(t.Ceh_Sname) like '%'||Upper(:V_Keyword)||'%') /*KEYWORD_END*/
	  �  (   T X T   D E T       0         /*������ �������*/
---------------------
/*COLUMNS_START
<0>DET_NUM</0><1>DET_NAME</1><2>MAR</2><end>
COLUMNS_END*/

/*TITLES_START
<0>����</0><1>������������</1><2>�������</2><end>
TITLES_END*/
--------------------

Select t.Det DET_NUM, 
       t.Id Id_Det, 
       t.Nd DET_NAME, 
       t.Mar MAR, 
       Ogt.Asup_Ogt.Kd_Asup_Min(v_det => t.Det) DET_KODD 
From   Ogt.SPR_DET_TXT t
Where  /*FILTER_START*/ (1=1) /*FILTER_END*/
       /*KEYWORD_START*/And ( Translate(Upper(t.Det), '.-', '%') Like '%'||Translate(Upper(:V_Keyword), '.-', '%')||'%'
                              Or Upper(Nvl(t.Nd, 0)) like '%'||Upper(:V_Keyword)||'%') /*KEYWORD_END*/
	 �  (   T X T   M A T       0         /*������ ����������*/
---------------------
/*COLUMNS_START
<0>Kodm_Mat</0><1>NAME_MAT</1><end>
COLUMNS_END*/

/*TITLES_START
<0>���</0><1>������������</1><end>
TITLES_END*/
--------------------

Select t.Id_Mat, 
       t.Name_Mat NAME_MAT, 
       t.Kodm_Mat, 
       t.Code_Ed CODE_ED 
From   Ogt.V_SPR_MATERIALS t 
Where  t.Flag_Use = 1
       And  /*FILTER_START*/ (1=1) /*FILTER_END*/
       /*KEYWORD_START*/And ( Translate(Upper(t.Name_Mat), '.-*,', '%' ) Like '%'||Translate(Upper(:V_Keyword), '.-*,', '%')||'%'
                              Or Upper(t.Kodm_Mat) like '%'||upper(:V_Keyword)||'%' ) /*KEYWORD_END*/
	�  0   T X T   D E T _ M A T       0         /*������ ���������� ��������� ��� ������*/
---------------------
/*COLUMNS_START
<0>KODM_MAT</0><1>NAME_MAT</1><end>
COLUMNS_END*/

/*TITLES_START
<0>���</0><1>������������</1><end>
TITLES_END*/
--------------------

Select Norm.Id_Mat, 
       Norm.Name_Mat NAME_MAT, 
       Norm.Kodm_Mat KODM_MAT
From   Ogt.Spr_Det_Txt Det 
Join   Ogt.v_Norm_Mat Norm 
On     Norm.Id_Det = Det.id 
       And Norm.Id_Vidrab = 6 
       And Norm.Flag = '1' 
       And Norm.Norma > 0
       And Det.Mar Not Like '�%'
       And Det.Mar Not Like '�%'
       And Det.Mar Not Like '=%'
       And Det.Mar Not Like '-%'
       And Det.Mar Not Like '?%'
       And Det.Mar Not Like '��%'
       And Det.Mar Is Not Null 
       And Instr( Det.Mar, '=' ) <> 0 
Where  Norm.Code_Ceh Like ( Case 
                              When Instr( Det.Mar, '-' ) <> 0 
                              Then ( Case 
                                       When Length( To_Char(Substr (Det.Mar, 0, Instr(Det.Mar, '-')-1 )) ) = 2 
                                       Then To_Char( Substr ( Det.Mar, 0, Instr( Det.Mar, '-' )-1 ) ) 
                                       When Length( To_Char(Substr (Det.Mar, 0, Instr(Det.Mar, '-')-1 )) )= 1 
                                       Then '0'||To_Char( Substr ( Det.Mar, 0, Instr( Det.Mar, '-' ) -1 ) ) 
                                     End ) 
                              When Instr( Det.Mar, '-' ) = 0 
                                   And Instr( Det.Mar, '=' ) <> 0 
                              Then ( Case 
                                       When Length( To_Char(Substr (Det.Mar, 0, Instr(Det.Mar, '=') -1 )) ) = 2 
                                       Then To_Char( Substr ( Det.Mar, 0, Instr( Det.Mar, '=' ) -1 ) ) 
                                       When Length( To_Char(Substr (Det.Mar, 0, Instr(Det.Mar, '=') -1 )) ) = 1 
                                       Then '0'||To_Char( Substr ( Det.Mar, 0, Instr( Det.Mar, '=' ) -1 ) ) 
                                     End ) 
                            End )
       And  /*FILTER_START*/ (1=1) /*FILTER_END*/
       /*KEYWORD_START*/ And Det.Id = :V_Keyword /*KEYWORD_END*/
	 �  @   T X T   N O R M _ M A T _ W _ T Y P E       0         /*������ ����� ����� �� ���� �������*/
---------------------
/*COLUMNS_START
<0>NAME_VIDRAB</0><end>
COLUMNS_END*/

/*TITLES_START
<0>��� �����</0><end>
TITLES_END*/
--------------------

Select Distinct a.Id_Vidrab, 
       a.Name_Vidrab NAME_VIDRAB 
From   Ogt.V_Norm_Mat a 
Where  a.Flag = '1'
       And a.Norma > 0 
       And  /*FILTER_START*/ (1=1) /*FILTER_END*/
	   �  0   T X T   K O D P R O F       0         /*������ ����� ���������*/
---------------------
/*COLUMNS_START
<0>CODE_PROF</0><1>NAME_PROF</1><2>RAZR_PROF</2><3>KVN_PROF</3><end>
COLUMNS_END*/

/*TITLES_START
<0>���</0><1>������������</1><2>������</2><3>��� �������</3><end>
TITLES_END*/
--------------------

Select Prof.Kodprof CODE_PROF, 
       Razr.Kvn KVN_PROF,
       Razr.Razr RAZR_PROF, 
       Prof.Prof NAME_PROF, 
       Prof_C.Nc CODE_CEH 
From   Sveta.M26 Prof 
Join   Skl.S109_Factch Prof_C 
On     Prof_C.KodProf = Prof .Kodprof 
Left   Join ( Select Distinct a.Kodprof, 
	             a.Razr, 
                     a.Nc, 
                     a.Kvn 
              From   Sveta.M05 a ) Razr 
On     Razr.Kodprof = Prof.Kodprof 
       And Razr.Nc = Prof_C.Nc
Where  /*FILTER_START*/ (1=1) /*FILTER_END*/
       /*KEYWORD_START*/And (Upper(Prof.Kodprof) Like '%'||Upper(:V_Keyword)||'%'
                             Or Upper(Prof.Prof) Like '%'||Upper(:V_Keyword)||'%') /*KEYWORD_END*/
	  �  8   T X T   T _ P Z _ P A R A M S       0         /*������ �������� �����������*/
---------------------
/*COLUMNS_START
<0>Param_Value</0><end>
COLUMNS_END*/

/*TITLES_START
<0>��������</0><end>
TITLES_END*/
--------------------

Select t.Id, 
       t.Param_Value Param_Value 
From   Ogt.Tp_Time_Params_Vl t
Where  /*FILTER_START*/ (1=1) /*FILTER_END*/
       /*KEYWORD_START*/And (t.Param_Id = :V_Keyword) /*KEYWORD_END*/
	 1  0   T X T   C H _ P R M         0         /*������ �������� �����������*/
---------------------
/*COLUMNS_START
<0>VL_CH_PRM</0><end>
COLUMNS_END*/

/*TITLES_START
<0>��������</0><end>
TITLES_END*/
--------------------
Select t.*,
       t.VL_CH_PRM
From   Ogt.V_TP_OP_PRM_CH_PRM_LINK t
Where  /*FILTER_START*/ (1=1) /*FILTER_END*/
	   �  0   T X T   D E T _ R C D       0         /*������ ������� ������*/
---------------------
/*COLUMNS_START
<0>Det_Num</0><1>Det_Name</1><end>
COLUMNS_END*/

/*TITLES_START
<0>��������� �</0><1>������������</1><end>
TITLES_END*/
--------------------
Select Distinct a.Det Det_Id, 
       a.Det_Txt Det_Num, 
       a.Nd Det_Name, 
       a.Kol 
From   Ogt.V$Spr_Rcd a
Where  /*FILTER_START*/ (1=1) /*FILTER_END*/
	  ,  <   T X T   D E T _ N O R M _ M A T         0         /*������ ������� ������*/
---------------------
/*COLUMNS_START
<0>Code_Ceh</0><1>Name_Vidrab</1><2>Mat_Name</2><3>Norma_Min</3><4>Ed_Name</4><end>
COLUMNS_END*/

/*TITLES_START
<0>���</0><1>��� �����</1><2>������������</2><3>����� ����.</3><4>��. ���.</4><end>
TITLES_END*/
--------------------
Select Id_Mat Mat_Id, 
       a.Code_Ceh, 
       a.Name_Mat Mat_Name, 
       a.Norma Norma_Min, 
       a.Id_Ed Ed_Id, 
       a.Code_Ed Ed_Name, 
       a.Name_Vidrab 
From   Ogt.V_Norm_Mat a
Where  /*FILTER_START*/ (1=1) /*FILTER_END*/
	@  4   T X T   T I M E _ G R P         0         /*������ �������� ����� ��� �������*/
---------------------
/*COLUMNS_START
<0>Group_Name</0><end>
COLUMNS_END*/

/*TITLES_START
<0>������</0><end>
TITLES_END*/
--------------------
Select a.Id Group_Id, 
       a.Group_Name 
From   Ogt.TP_OPER_GROUPS_NAME a 
Where  /*FILTER_START*/ (1=1) /*FILTER_END*/
	  0   T X T   T I M E _ C F       0         /*������ �������� �����. ��� �������*/
---------------------
/*COLUMNS_START
<0>Coeff_Flag_Name</0><end>
COLUMNS_END*/

/*TITLES_START
<0>�����������</0><end>
TITLES_END*/
--------------------
Select ( Case Rownum 
           When 1 Then 'unit_time'
           When 2 Then 'oper_time'
         End ) Coeff_Flag, 
       ( Case Rownum 
           When 1 then '% �� � ��.'
           When 2 then '% �� � ��.'
         End ) Coeff_Flag_Name
From   Dual
Connect By Level < 3
Where  /*FILTER_START*/ (1=1) /*FILTER_END*/
	  `  <   T X T   T I M E _ O B R _ G R P         0         /*������ �������� ����� ������. ��� �������*/
---------------------
/*COLUMNS_START
<0>Group_Name</0><end>
COLUMNS_END*/

/*TITLES_START
<0>������</0><end>
TITLES_END*/
--------------------
Select a.ID_RW_TP_T_OBR_GRP Group_Id,
       a.GRP_OBR_NAME Group_Name 
From   Ogt.Tp_Time_Obr_Grps a
Where  /*FILTER_START*/ (1=1) /*FILTER_END*/
	c  @   T X T   T I M E _ S C H M _ P R M S         0         /*������ �������� ���������� ��� �������*/
---------------------
/*COLUMNS_START
<0>Name_Param</0><end>
COLUMNS_END*/

/*TITLES_START
<0>��������</0><end>
TITLES_END*/
--------------------
Select t.Id_Row_Param, 
       t.Name_Param, 
       t.Type_Param 
From   Ogt.V_TP_OK_OPER_PARAMS_LIST t
Where  /*FILTER_START*/ (1=1) /*FILTER_END*/
	 /  8   T X T   T I M E _ D P N D S         0         /*������ �������� ���������� ��� �������*/
---------------------
/*COLUMNS_START
<0>Depends_Flag_Name</0><end>
COLUMNS_END*/

/*TITLES_START
<0>������� ��</0><end>
TITLES_END*/
--------------------
Select ( Case Rownum 
           When 1 Then 'param'
           When 2 Then 'value'
         End ) Depends_Flag, 
       ( Case Rownum 
           When 1 then '�������� ��. ���������'
           When 2 then '����e��� ���������'
         End ) Depends_Flag_Name
From   Dual
Connect By Level < 3
Where  /*FILTER_START*/ (1=1) /*FILTER_END*/
	 �  4   T X T   D E T _ T R U D         0         /*������ �������� ���������� ��� �������*/
---------------------
/*COLUMNS_START
<0>CODE_PROF</0><1>NAME_PROF</1><2>RAZR_PROF</2><3>KVN_PROF</3><4>MONEY_PROF</4><5>TIME</5><end>
COLUMNS_END*/

/*TITLES_START
<0>���</0><1>������������</1><2>������</2><3>��� �������</3><4>��������, ���.</4><5>�����, �/�</5><end>
TITLES_END*/
--------------------
Select Norm.*, 
       Prof.Profpoln NAME_PROF 
From   ( Select a.M05ID Id_Using_Norm, 
                a.Kd, 
                a.NC, 
                a.Kodprof CODE_PROF, 
                a.Razr RAZR_PROF, 
                a.Money MONEY_PROF, 
                a.Kvn KVN_PROF, 
                a.Time 
         From   Sveta.M05 a 
         
         Union All 
         
         Select 0,
                a.Kd, 
                a.NC, 
                a.Kodprof, 
                a.Razr, 
                a.Money, 
                a.Kvn, 
                Sum(a.Time) 
         From   Sveta.M05_Otk a 
         -- Where  a.Proc in (0) 
         Group  By a.NC, 
                a.Kd, 
                a.Kodprof, 
                a.Razr, 
                a.Money, 
                a.Kvn ) Norm 
Left   Join Sveta.M26 Prof 
On     Prof.Kodprof = Norm.CODE_PROF
Where  /*FILTER_START*/ (1=1) /*FILTER_END*/
       /*KEYWORD_START*/And (Upper(Norm.CODE_PROF) Like '%'||Upper(:V_Keyword)||'%' 
                             Or Upper(Prof.Profpoln) Like '%'||Upper(:V_Keyword)||'%') /*KEYWORD_END*/ q  4   T X T   P R O F _ C O D E       0         /*������ ����� ���������*/
---------------------
/*COLUMNS_START
<0>CODE_PROF</0><1>NAME_PROF</1><end>
COLUMNS_END*/

/*TITLES_START
<0>���</0><1>������������</1><end>
TITLES_END*/
--------------------
Select Prof.Kodprof CODE_PROF, 
       Prof.Prof NAME_PROF, 
       Prof_C.Nc CODE_CEH 
From   Sveta.M26 Prof 
Join   Skl.S109_Factch Prof_C 
On     Prof_C.KodProf = Prof .Kodprof
Where  /*FILTER_START*/ (1=1) /*FILTER_END*/
       /*KEYWORD_START*/And (Upper(Prof.Kodprof) Like '%'||Upper(:V_Keyword)||'%'
                             Or Upper(Prof.Prof) Like '%'||Upper(:V_Keyword)||'%') /*KEYWORD_END*/   G  8   T X T   T I M E _ W O R K S         0         /*������ �������� ����� ����� ��� �������*/
---------------------
/*COLUMNS_START
<0>Work_Name</0><end>
COLUMNS_END*/

/*TITLES_START
<0>������</0><end>
TITLES_END*/
--------------------
Select a.ID_RW_TP_TIME_WRK Work_Id,
       a.Work_Name 
From   Ogt.Tp_Time_Works a
Where  /*FILTER_START*/ (1=1) /*FILTER_END*/   @   T X T   T I M E _ W O R K S _ C N C T       0         /*������ �������� ����� ����� ��� �������*/
---------------------
/*COLUMNS_START
<0>Work_Name</0><end>
COLUMNS_END*/

/*TITLES_START
<0>������</0><end>
TITLES_END*/
--------------------
Select a.WRK_RW_Id Work_Id,
       a.Work_Name, 
       a.Work_Time 
From   Ogt.V_Tp_Time_Wrk_Op_Grp_Link a
Where  /*FILTER_START*/ (1=1) /*FILTER_END*/
       /*KEYWORD_START*/And (Upper(a.Work_Name) Like '%'||Upper(:V_Keyword)||'%'
                              Or Upper(a.WRK_RW_Id) Like '%'||Upper(:V_Keyword)||'%') /*KEYWORD_END*/
	   v  8   T X T   S I G N _ S T E P S         0         /*������ ����������� ��������*/
---------------------
/*COLUMNS_START
<0>Point_Name</0><end>
COLUMNS_END*/

/*TITLES_START
<0>�������</0><end>
TITLES_END*/
--------------------

Select p.Id_Doc_Rout_Point,
       P.Point_Name
From   Src.v_Doc_Rout_Points p 
Where  /*FILTER_START*/ (1=1) /*FILTER_END*/
       And p.Stp_Doc_Resolution_Result_Id Is Not Null
	  