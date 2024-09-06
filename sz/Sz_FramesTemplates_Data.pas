unit Sz_FramesTemplates_Data;

interface

uses
  System.SysUtils, System.Classes, Data.DB, OracleData;

type
  TData_Templates = class(TDataModule)
    Db_DepartmentDocs: TOracleDataSet;
    Db_DepartmentDocsID_SZ_PRICE_REQ: TIntegerField;
    Db_DepartmentDocsSZ_PRICE_REQ_ID: TIntegerField;
    Db_DepartmentDocsSZ_DEP_ID: TIntegerField;
    Db_DepartmentDocsSZ_NUMBER: TStringField;
    Db_DepartmentDocsSZ_DATE: TDateTimeField;
    Db_DepartmentDocsSZ_NOTE: TStringField;
    Db_DepartmentDocsI_USER: TStringField;
    Db_DepartmentDocsI_USER_ADD: TIntegerField;
    Db_DepartmentDocsI_DATE: TDateTimeField;
    Db_DepartmentDocsU_USER: TStringField;
    Db_DepartmentDocsU_USER_ADD: TIntegerField;
    Db_DepartmentDocsU_DATE: TDateTimeField;
    Db_DepartmentDocsDEP_CODE: TStringField;
    Db_DepartmentDocsUSER_NAME: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Data_Templates: TData_Templates;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses
Udm_Main;

{$R *.dfm}

end.
