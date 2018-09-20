unit MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
    procedure WriteLog(AValue: string);
    procedure LogIntArray(Value: array of Integer);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  I, J, Num: Integer;
  S: string;
  Edit: TEdit;
  IntArray: array[0..4] of Integer;
  StrArray: array[1..10] of string;
  EditArray: array[0..1] of TEdit;

  Matrix: array[0..2, 0..9] of Integer;
  Matrix2: array[0..2] of array[0..9] of Integer;
begin
  Memo1.Lines.Clear;

  WriteLog('Integer Array');
  for I := 0 to Length(IntArray) - 1 do // 0..5-1
    IntArray[I] := Random(100);
  for Num in IntArray do
    WriteLog(IntToStr(Num));

  for I := Low(StrArray) to High(StrArray) do
    StrArray[I] := IntToStr(I);

  WriteLog('Edit Array');
  EditArray[0] := Edit1;
  EditArray[1] := Edit2;

  for Edit in EditArray do
    Memo1.Lines.Add(Edit.Text);

  // 다차원 배열
  WriteLog('Matrix');
  for I := Low(Matrix) to High(Matrix) do
    for J := Low(Matrix[I]) to High(Matrix[I]) do
      Matrix[I][J] := I*10 + J;

  for I := Low(Matrix) to High(Matrix) do
  begin
    S := '[' + IntToStr(I) + ']';
    for J := Low(Matrix[I]) to High(Matrix[I]) do
    begin
      S := S + ' ' + IntToStr(Matrix[I][J]);
    end;
    WriteLog(S);
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  I, J: Integer;
  IntArray: array of Integer;
  StrArray: TArray<string>;

  Matrix: array of array of Integer;
begin
  Memo1.Lines.Clear;

  SetLength(IntArray, 5); // [0..4]
  SetLength(StrArray, Length(IntArray));

  for I := 0 to Length(IntArray) - 1 do // 0..5-1
    IntArray[I] := Random(100);
  for I := Low(IntArray) to High(IntArray) do
    StrArray[I] := IntToStr(IntArray[I]);

  SetLength(Matrix, 2);
  for I := Low(Matrix) to High(Matrix) do
  begin
    SetLength(Matrix[I], I+1);
    for J := Low(Matrix[J]) to High(Matrix[I]) do
      Matrix[I][J] := Random(100);
  end;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  IntArray: array of Integer;
begin
  Memo1.Lines.Clear;

  // XE7 이상
  IntArray := [1, 2, 3, 4, 5];        // 1,2,3,4,5
  LogIntArray(IntArray);
  IntArray := IntArray + [8, 9];      // 1,2,3,4,5,8,9
  LogIntArray(IntArray);
  Insert([6, 7], IntArray, 5);        // 1,2,3,4,5,6,7,8,9
  LogIntArray(IntArray);
  Delete(IntArray, 3, 2);             // 1,2,3,6,7,8,9
  LogIntArray(IntArray);
end;

procedure TForm1.LogIntArray(Value: array of Integer);
var
  Num: Integer;
  Log: string;
begin
  Log := '';
  for Num in Value do
    Log := Log + IntToStr(Num) + ', ';
  WriteLog(Log);
end;

procedure TForm1.WriteLog(AValue: string);
begin
  Memo1.Lines.Add(AValue);
end;

end.
