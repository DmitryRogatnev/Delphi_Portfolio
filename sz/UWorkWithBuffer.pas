unit UWorkWithBuffer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids,SZ_choose_Str, OracleData, Oracle,
  Vcl.AppEvnts, Vcl.ToolWin, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, Vcl.Menus, ShellApi,
  System.ImageList, Vcl.ImgList, System.UITypes,
  Vcl.Mask, DBCtrlsEh, DBLookupEh, System.Math, Vcl.Themes, Winapi.UxTheme, ObjectInspectorEh, ClipBrd,
  MemTableDataEh, MemTableEh, DataDriverEh;

type
  TBufferedRecord = class(TObject)
  private
    FValues: array of Variant;
    FFields: array of String;
    function GetValueByFieldIndex(const FieldIndex: Integer): Variant;
    function GetValueByFieldName(const FieldName: String): Variant;
    procedure SetValueByFieldIndex(const FieldIndex: Integer; const Value: Variant);
    procedure SetValueByFieldName(const FieldName: String; const Value: Variant);
    function GetFieldIndex(FieldName: String): Integer;
  public
    procedure AddValue(FieldName: String; Value: Variant);
    constructor Create(MemRec: TMemoryRecordEh);
    property Value[const FieldIndex: Integer]: Variant read GetValueByFieldIndex write SetValueByFieldIndex;
    property ValueByFieldName[const FieldName: String]: Variant read GetValueByFieldName write SetValueByFieldName;
    //function BufferMemoryRecordEh(MemRec: TMemoryRecordEh): TBufferedRecord;
end;

type
  TBufferStructOfMemRecs = class(TObject)
  private
    FBufferedRecs: Array Of TBufferedRecord;//TObjectListEh;
    FBufferedFrom: TDataSet;
    function GetBufRec(Index: Integer): TBufferedRecord;
    function GetBufRecCount: Integer;
    function GetBufferdFromDataSet: TDataSet;
    procedure SetBufRec(Index: Integer; const Value: TBufferedRecord);
  public
    constructor Create;
    function AddBufferedRecord(BufRec: TBufferedRecord): Integer;
    function BufferMemoryRecordEh(MemRec: TMemoryRecordEh): Integer;
    procedure ClearItems;
    property BufRecCount: Integer Read GetBufRecCount;
    property BufferedFrom: TDataSet Read GetBufferdFromDataSet;
    property BufRec[Index: Integer]: TBufferedRecord read GetBufRec write SetBufRec; default;
  end;

type TBufferStruct = class(TObject)
  private
    FBufferedStructsOfMem: Array Of TBufferStructOfMemRecs;
    function GetBufStruct(Index: Integer): TBufferStructOfMemRecs;
    function GetBufStructCount: Integer;
    procedure SetBufStruct(Index: Integer; const Value: TBufferStructOfMemRecs);
  public
    constructor Create;
    function AddBuffer(BufStruct: TBufferStructOfMemRecs): Integer;
    function FindBuffer(BufferedDataSet: TDataSet): TBufferStructOfMemRecs overload;
    function FindBuffer(BufferedDataSetName: String): TBufferStructOfMemRecs overload;
    function IndexOf(BufferedDataSet: TDataSet): Integer overload;
    function IndexOf(BufferedDataSetName: String): Integer overload;
    procedure ClearBuffer;
    function BufferMemoryRecordEh(MemRec: TMemoryRecordEh): Integer;
    property BufferedStructsCount: Integer Read GetBufStructCount;
    property BufferedStructs[Index: Integer]: TBufferStructOfMemRecs read GetBufStruct write SetBufStruct; default;
end;

implementation

{ TBufferStructOfMemRecs }

function TBufferStructOfMemRecs.AddBufferedRecord(
  BufRec: TBufferedRecord): Integer;
begin
  SetLength(FBufferedRecs, Length(FBufferedRecs)+1);
  FBufferedRecs[Length(FBufferedRecs)-1]:=BufRec;
  Result:=Length(FBufferedRecs)-1;
end;

function TBufferStructOfMemRecs.BufferMemoryRecordEh(
  MemRec: TMemoryRecordEh): Integer;
var
  BufferedRec: TBufferedRecord;
  i: Integer;
begin
  BufferedRec := TBufferedRecord.Create(MemRec);
  SetLength(FBufferedRecs, Length(FBufferedRecs)+1);
  FBufferedRecs[Length(FBufferedRecs)-1]:=BufferedRec;
  FBufferedFrom := MemRec.RecordsList.MemTableData.Owner as TDataSet;
  Result:=Length(FBufferedRecs)-1;
end;

procedure TBufferStructOfMemRecs.ClearItems;
begin
  SetLength(FBufferedRecs, 0);
end;

constructor TBufferStructOfMemRecs.Create;
begin
  inherited Create;
end;

function TBufferStructOfMemRecs.GetBufferdFromDataSet: TDataSet;
begin
  Result := FBufferedFrom;
end;

function TBufferStructOfMemRecs.GetBufRec(Index: Integer): TBufferedRecord;
begin
  Result := TBufferedRecord(FBufferedRecs{.Items}[Index]);
end;

function TBufferStructOfMemRecs.GetBufRecCount: Integer;
begin
  Result := Length(FBufferedRecs);
end;

procedure TBufferStructOfMemRecs.SetBufRec(Index: Integer;
  const Value: TBufferedRecord);
begin
  FBufferedRecs[Index] := Value;
end;

{ TBufferedRecord }

procedure TBufferedRecord.AddValue(FieldName: String; Value: Variant);
var
  FieldIndex: Integer;
begin
  FieldIndex := GetFieldIndex(FieldName);
  if FieldIndex<>-1
  then
    FValues[FieldIndex] := Value
  else
  begin
    SetLength(FFields, Length(FFields)+1);
    FFields[Length(FFields)-1] := FieldName;
    SetLength(FValues, Length(FValues)+1);
    FValues[Length(FValues)-1] := Value;
  end;
end;

constructor TBufferedRecord.Create(MemRec: TMemoryRecordEh);
var
  I: Integer;
begin
  inherited Create;

  if MemRec <> Nil
  then
  begin
    for i := 0 to MemRec.DataStruct.Count - 1
    do
    begin
      SetLength(FFields, i+1);
      FFields[i] := MemRec.DataStruct.DataFields[i].FieldName;
      SetLength(FValues, i+1);
      FValues[i] := MemRec.Value[i, dvvValueEh];
    end;
  end;
end;

function TBufferedRecord.GetFieldIndex(FieldName: String): Integer;
var
  I: Integer;
begin
  Result := -1;
  for i := Low(FFields) to High(FFields)
  do
  begin
    if CompareText(FFields[i], FieldName) = 0
    then
    begin
      Result:=i;
      Exit;
    end;
  end;
end;

function TBufferedRecord.GetValueByFieldIndex(
  const FieldIndex: Integer): Variant;
begin
  if (FieldIndex>=0) or (FieldIndex<(Length(FFields)))
  then
    Result := FValues[FieldIndex]
  else
    raise exception.Create('This Field Index does not exists!');
end;

function TBufferedRecord.GetValueByFieldName(const FieldName: String): Variant;
var
  FieldIndex: Integer;
begin
  FieldIndex := GetFieldIndex(FieldName);
  if FieldIndex<>-1
  then
    Result := FValues[FieldIndex]
  else
    raise exception.Create('This Field Index does not exists!');
end;

procedure TBufferedRecord.SetValueByFieldIndex(const FieldIndex: Integer;
  const Value: Variant);
begin
  if (FieldIndex>=0) or (FieldIndex<(Length(FFields)))
  then
    FValues[FieldIndex] := Value
  else
    raise exception.Create('This Field Index does not exists!');
end;

procedure TBufferedRecord.SetValueByFieldName(const FieldName: String;
  const Value: Variant);
var
  FieldIndex: Integer;
begin
  FieldIndex := GetFieldIndex(FieldName);
  if FieldIndex<>-1
  then
    FValues[FieldIndex] := Value
  else
    raise exception.Create('This Field Index does not exists!');
end;


{ TBufferStruct }

function TBufferStruct.AddBuffer(BufStruct: TBufferStructOfMemRecs): Integer;
var
  BufferIndex: Integer;
begin
  BufferIndex := IndexOf(BufStruct.BufferedFrom.Name);
  if BufferIndex=-1
  then
  begin
    SetLength(FBufferedStructsOfMem, Length(FBufferedStructsOfMem)+1);
    FBufferedStructsOfMem[Length(FBufferedStructsOfMem)-1]:=BufStruct;
    Result:=Length(FBufferedStructsOfMem)-1;{FBufferedRecs.Add(BufRec)};
  end
  else
  begin
    FBufferedStructsOfMem[BufferIndex]:=BufStruct;
    Result:=BufferIndex;{FBufferedRecs.Add(BufRec)};
  end;
end;

function TBufferStruct.BufferMemoryRecordEh(MemRec: TMemoryRecordEh): Integer;
var
  BufferedStruct: TBufferStructOfMemRecs;
  i: Integer;
var
  BufferIndex: Integer;
begin
  BufferedStruct := TBufferStructOfMemRecs.Create;
  BufferedStruct.BufferMemoryRecordEh(MemRec);

  BufferIndex := IndexOf(BufferedStruct.BufferedFrom);

  if BufferIndex=-1
  then
  begin
    SetLength(FBufferedStructsOfMem, Length(FBufferedStructsOfMem)+1);
    FBufferedStructsOfMem[Length(FBufferedStructsOfMem)-1]:=BufferedStruct;
    Result:=Length(FBufferedStructsOfMem)-1;
  end
  else
  begin
    FBufferedStructsOfMem[BufferIndex]:=BufferedStruct;
    Result:=BufferIndex;{FBufferedRecs.Add(BufRec)};
  end;
end;

procedure TBufferStruct.ClearBuffer;
begin
  SetLength(FBufferedStructsOfMem, 0);
end;

constructor TBufferStruct.Create;
begin
  inherited Create;
end;

function TBufferStruct.FindBuffer(
  BufferedDataSetName: String): TBufferStructOfMemRecs;
var
  I: Integer;
begin
  Result := Nil;
  for i := Low(FBufferedStructsOfMem) to High(FBufferedStructsOfMem)
  do
  begin
    if CompareText(FBufferedStructsOfMem[i].BufferedFrom.Name, BufferedDataSetName) = 0
    then
    begin
      Result := FBufferedStructsOfMem[i];
      Exit;
    end;
  end;
end;

function TBufferStruct.FindBuffer(
  BufferedDataSet: TDataSet): TBufferStructOfMemRecs;
var
  i: Integer;
begin
  Result := Nil;
  for i := Low(FBufferedStructsOfMem) to High(FBufferedStructsOfMem)
  do
  begin
    if FBufferedStructsOfMem[i].BufferedFrom=BufferedDataSet
    then
    begin
      Result := FBufferedStructsOfMem[i];
      Break;
    end;
  end;
end;

function TBufferStruct.GetBufStruct(Index: Integer): TBufferStructOfMemRecs;
begin
  Result := FBufferedStructsOfMem[Index];
end;

function TBufferStruct.GetBufStructCount: Integer;
begin
  Result := Length(FBufferedStructsOfMem);
end;

function TBufferStruct.IndexOf(BufferedDataSet: TDataSet): Integer;
var
  i: Integer;
begin
  Result := -1;
  for i := Low(FBufferedStructsOfMem) to High(FBufferedStructsOfMem)
  do
  begin
    if FBufferedStructsOfMem[i].BufferedFrom=BufferedDataSet
    then
    begin
      Result := i;
      Break;
    end;
  end;

end;

function TBufferStruct.IndexOf(BufferedDataSetName: String): Integer;
var
  I: Integer;
begin
  Result := -1;
  for i := Low(FBufferedStructsOfMem) to High(FBufferedStructsOfMem)
  do
  begin
    if CompareText(FBufferedStructsOfMem[i].BufferedFrom.Name, BufferedDataSetName) = 0
    then
    begin
      Result := i;
      Exit;
    end;
  end;
end;

procedure TBufferStruct.SetBufStruct(Index: Integer;
  const Value: TBufferStructOfMemRecs);
begin
  FBufferedStructsOfMem[Index] := Value;
end;

end.
