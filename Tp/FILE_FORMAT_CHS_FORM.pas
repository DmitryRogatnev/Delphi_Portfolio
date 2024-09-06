unit FILE_FORMAT_CHS_FORM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, VAR_FORM;

type
  TForm29 = class(TForm)
    FILES_FORMAT_CB: TComboBox;
    Label1: TLabel;
    CHS_BTN: TButton;
    procedure CHS_BTNClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    files_path, chosen_file_format :string;

  /// <summary> Выбор формата для копирования</summary>
  ///  <param name="Files_Dir"> String; <br/> Адрес дериктории</param>
  ///  <returns> File_format; Integer; <br/> Выбранный формат файла </returns>
  function Chose_file_format (files_dir :string) :string;
  end;

var
  Form29: TForm29;

implementation

{$R *.dfm}

{$Region 'Основные функции'}
function TForm29.Chose_file_format(files_dir: string) :string;
var
searchResult: TSearchRec;
begin
  files_path := files_dir;
  if FindFirst(files_dir + '\*.*', faAnyFile and not faDirectory and not faHidden and not faSysFile, searchResult)=0 then
  begin
      repeat
         if FILES_FORMAT_CB.Items.IndexOf(ExtractFileExt(files_dir + '\' + searchResult.Name)) = -1then
         begin
           FILES_FORMAT_CB.Items.Add(ExtractFileExt(files_dir + '\' + searchResult.Name));
         end;
      until FindNext(searchResult) <> 0;
      FindClose (searchResult);
  end;
  if FILES_FORMAT_CB.Items.Count > 1 then
  begin
    Form29.ShowModal;
    if chosen_file_format <> '' then
    begin
      Result := chosen_file_format;
    end;
  end
  else if FILES_FORMAT_CB.Items.Count = 1 then
  begin
    FILES_FORMAT_CB.ItemIndex := 0;
    Result := FILES_FORMAT_CB.Text;
  end;
end;

{$ENDRegion 'Основные функции'}

procedure TForm29.CHS_BTNClick(Sender: TObject);
begin
  chosen_file_format := FILES_FORMAT_CB.Text;
  form29.Close;
end;

procedure TForm29.FormShow(Sender: TObject);
begin
 Label1.Caption := 'Выберите формат файла для копирования файлов из папки расположенной по адресу: ' + files_path;
 FILES_FORMAT_CB.Text := '';
end;

end.
