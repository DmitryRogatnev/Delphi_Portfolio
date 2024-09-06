unit FORMAT_OF_COPY_CHS_FORM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm16 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    v_Copy_Type :Integer;
  end;

var
  Form16: TForm16;

implementation

{$R *.dfm}

procedure TForm16.Button1Click(Sender: TObject);
begin
 v_Copy_Type := 1;
 Form16.Close;
end;

procedure TForm16.Button2Click(Sender: TObject);
begin
 v_Copy_Type := 2;
 Form16.Close;
end;

procedure TForm16.Button3Click(Sender: TObject);
begin
 v_Copy_Type := 3;
 Form16.Close;
end;

end.
