unit MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    btnConvert: TButton;
    btnRound: TButton;
    Memo1: TMemo;
    edtNumber: TEdit;
    edtNum1: TEdit;
    edtNum2: TEdit;
    Button3: TButton;
    edtResult: TEdit;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    btnInteger: TButton;
    btnReal: TButton;
    procedure btnConvertClick(Sender: TObject);
    procedure btnRoundClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure btnIntegerClick(Sender: TObject);
    procedure btnRealClick(Sender: TObject);
  private
    { Private declarations }
    procedure LogIntegerType(ADataType: string; ASize, AMin, AMax: Int64);
    procedure LogSingleType(Value: Single);
  public
    { Public declarations }
  end;

function HexToBinStr(HexString: string): string;

var
  Form1: TForm1;

implementation

uses
  System.Math;

{$R *.dfm}

procedure TForm1.btnIntegerClick(Sender: TObject);
begin
  LogIntegerType('Byte',     SizeOf(Byte),     Low(Byte),      High(Byte));
  LogIntegerType('Word',     SizeOf(Word),     Low(Word),      High(Word));
  LogIntegerType('Integer',  SizeOf(Integer),  Low(Integer),   High(Integer));
  LogIntegerType('Cardinal', SizeOf(Cardinal), Low(Cardinal),  High(Cardinal));
  LogIntegerType('Int64',    SizeOf(Int64),    Low(Int64),     High(Int64));
end;

procedure TForm1.LogIntegerType(ADataType: string; ASize, AMin, AMax: Int64);
begin
  Memo1.Lines.Add(Format('Type: %s, Size: %d, Min: %d, Max: %d',
                            [ADataType, ASize, AMin, AMax]));
end;

procedure TForm1.btnRealClick(Sender: TObject);
var
  S: Single;
  D: Double;
  C: Currency;
begin
  Memo1.Lines.Add('SizeOf(Single): ' + IntToStr(SizeOf(Single)));
  Memo1.Lines.Add('SizeOf(Double): ' + IntToStr(SizeOf(Double)));
  Memo1.Lines.Add('SizeOf(Extended): ' + IntToStr(SizeOf(Extended)));
  Memo1.Lines.Add('SizeOf(Currency): ' + IntToStr(SizeOf(Currency)));
  Memo1.Lines.Add('');

  S := 1234.5678;
  D := 1234.5678;
  C := 1234.5678;

  Memo1.Lines.Add('Single: ' + FloatToStr(S));
  Memo1.Lines.Add('Double: ' + FloatToStr(D));
  Memo1.Lines.Add('Currency: ' + FloatToStr(C));
  Memo1.Lines.Add('Single: ' + FloatToStr(Single(1234.567)));
  Memo1.Lines.Add('Single: ' + FloatToStr(Single(1234.625)));
  Memo1.Lines.Add('');

  { Single - 4-byte(32-bit) }
  // 부호(1-bit)   지수(8-bit)    가수(23-bit)
  LogSingleType(1);     // 0001 = 1     * 2^0   // 0  127+0   0
  LogSingleType(2);     // 0010 = 1     * 2^1   // 0  127+1   0
  LogSingleType(3);     // 0011 = 1.1   * 2^1   // 0  127+1   1
  LogSingleType(13);    // 1101 = 1.101 * 2^3   // 0  127+3   101
  LogSingleType(-1);                            // 1  127+0   0
  LogSingleType(0.5);   // 0.1  = 1     * 2^-1  // 0  127-1   0

  LogSingleType(-118.625);
    // -1110110.101 = -1.110110101 * 2^6  // 1  127+6 110110101

    // 0.625(10)  = 0.101(2)
      // 0.625  * 2  = 1.25  = 1
      // 0.25   * 2  = 0.5   = 0
      // 0.5    * 2  = 1.0   = 1
  { Double - 8-byte(64-bit) }
  // 부호(1-bit)   지수(11-bit)    가수(52-bit)

  { Extended - 10-byte(80-bit) }
  // 부호(1-bit)   지수(15-bit)    가수(64-bit)
end;

procedure TForm1.LogSingleType(Value: Single);
var
  Bytes: array of Byte;
  I: Integer;
  HexStr, BinStr, TempBinStr: string;
begin
  SetLength(Bytes, SizeOf(Value));
  CopyMemory(Bytes, @Value, SizeOf(Value));
  for I := SizeOf(Value)-1 downto 0 do
  begin
    HexStr := HexStr + Bytes[I].ToHexString + ' ';
    TempBinStr := TempBinStr + HexToBinStr(Bytes[I].ToHexString);
  end;

  BinStr := Copy(TempBinStr, 1, 1) + ' ' + Copy(TempBinStr, 2, 8) + ' ' + Copy(TempBinStr, 10, 23);

  Memo1.Lines.Add(Format(' %s | %f | %s', [BinStr, Value, HexStr]));
end;

function HexToBinStr(HexString: string): string;
const
  BCD: array[0..15] of string =
  ('0000', '0001', '0010', '0011', '0100', '0101', '0110', '0111',
    '1000', '1001', '1010', '1011', '1100', '1101', '1110', '1111');
var
  I: integer;
begin
  Result := '';
  for I := Length(HexString) downto 1 do
    Result := BCD[StrToInt('$' + HexString[I])] + Result;
end;

procedure TForm1.btnConvertClick(Sender: TObject);
var
  I: Integer;
  S: Single;
  D: Double;
  C: Currency;
begin
//  I := StrToInt(edtNumber.Text);
  if TryStrToInt(edtNumber.Text, I) then
    Memo1.Lines.Add('정수가 맞습니다.')
  else
    Memo1.Lines.Add('정수가 아닙니다.');
  I := StrToIntDef(edtNumber.Text, 0);

  S := StrToFloat(edtNumber.Text);
  Memo1.Lines.Add('StrToFloat: ' + FloatToStr(S));
  if TryStrToFloat(edtNumber.Text, S) then
    Memo1.Lines.Add('실수가 맞습니다.')
  else
    Memo1.Lines.Add('실수가 아닙니다.');


  S := StrToFloatDef(edtNumber.Text, 1.0);
  Memo1.Lines.Add('Single: ' + FormatFloat('0.######', S));

  D := StrToFloatDef(edtNumber.Text, 0);
  Memo1.Lines.Add('Double: ' + FormatFloat('0.######', D));

  C := StrToFloatDef(edtNumber.Text, 0);
  Memo1.Lines.Add('Currency: ' + FormatFloat('0.######', C));
end;

procedure TForm1.btnRoundClick(Sender: TObject);
var
  I: Integer;
  S: Single;
begin
  Memo1.Lines.Clear;

  S := StrToFloatDef(edtNumber.Text, 3.5);

  I := Trunc(S);
  Memo1.Lines.Add('Trunc: ' + IntToStr(I));  // 내림

  I := Round(S);
  Memo1.Lines.Add('Round: ' + IntToStr(I));  // 반올림

  I := Floor(S);
  Memo1.Lines.Add('Floor: ' + IntToStr(I)); // 내림

  I := Ceil(S);
  Memo1.Lines.Add('Ceil: ' + IntToStr(I)); // 올림

  S := Abs(S);
  Memo1.Lines.Add('Abs: ' + FloatToStr(S)); // 절대값
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  Num1, Num2, Value: Integer;
begin
  Num1 := StrToIntDef(edtNum1.Text, 0);
  Num2 := StrToIntDef(edtNum2.Text, 0);

  Value := Num1 + Num2;

  edtResult.Text := IntToStr(Value);
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  Num1, Num2, Value: Integer;
begin
  Num1 := StrToIntDef(edtNum1.Text, 0);
  Num2 := StrToIntDef(edtNum2.Text, 0);

  Value := Num1 - Num2;

  edtResult.Text := IntToStr(Value);
end;

procedure TForm1.Button5Click(Sender: TObject);
var
  Num1, Num2, Value: Integer;
begin
  Num1 := StrToIntDef(edtNum1.Text, 0);
  Num2 := StrToIntDef(edtNum2.Text, 0);

  Value := Num1 * Num2;

  edtResult.Text := IntToStr(Value);
end;

procedure TForm1.Button6Click(Sender: TObject);
var
  Num1, Num2: Integer;
  Value: Single;
begin
  Num1 := StrToIntDef(edtNum1.Text, 0);
  Num2 := StrToIntDef(edtNum2.Text, 0);

  Value := Num1 / Num2;

  edtResult.Text := FloatToStr(Value);
end;

procedure TForm1.Button7Click(Sender: TObject);
var
  Num1, Num2, Value: Integer;
begin
  Num1 := StrToIntDef(edtNum1.Text, 0);
  Num2 := StrToIntDef(edtNum2.Text, 0);

  Value := Num1 div Num2;

  edtResult.Text := IntToStr(Value);
end;

procedure TForm1.Button8Click(Sender: TObject);
var
  Num1, Num2, Value: Integer;
begin
  Num1 := StrToIntDef(edtNum1.Text, 0);
  Num2 := StrToIntDef(edtNum2.Text, 0);

  Value := Num1 mod Num2;

  edtResult.Text := IntToStr(Value);
end;

end.
