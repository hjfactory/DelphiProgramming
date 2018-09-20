unit MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    Button1: TButton;
    Button3: TButton;
    Memo2: TMemo;
    edtName: TEdit;
    Button5: TButton;
    Memo1: TMemo;
    Button4: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
var
  Str: string;
  Num: Integer;
begin
  Num := Length('안녕하세요');
  Memo1.Lines.Add('문자열의 길이: ' + IntToStr(Num)); // 5

  Num := Pos('하', '안녕하세요');
  Memo1.Lines.Add('[하]의 위치: ' + IntToStr(Num)); // 3

  Str := Copy('안녕하세요', 3, 2);
  Memo1.Lines.Add('3번째에서 2글자 복사: ' + Str); // 하세

  Str := StringReplace('안녕하세요', '하세요', '히가세요', [rfReplaceAll]);
  Memo1.Lines.Add('문자열 치환: ' + Str); // 안녕히가세요

  Str := Trim('    안녕 하세요   ');
  Memo1.Lines.Add('앞뒤 공백 제거: ' + Str); // 안녕 하세요

  // Code Tooltip : Shift + Ctrl + Space
  // Complete code : Ctrl + Space
end;

procedure TForm2.Button2Click(Sender: TObject);
var
  Str: string;
  Num: Integer;
begin
  Num := Length('안녕하세요');
  Memo1.Lines.Add('안녕하세요 Length: ' + IntToStr(Num));

  Str := '안녕하세요';
  Num := Length(Str);
  Memo1.Lines.Add('Str Length: ' + IntToStr(Num));

  Num := Length('abc123가나다');
  Memo1.Lines.Add('A1가 Length: ' + IntToStr(Num));
end;

procedure TForm2.Button3Click(Sender: TObject);
var
  Str: string;
  Num: Integer;
begin
  Str := '안녕하세요';
  Memo1.Lines.Add(Str);

  Num := Pos('하', Str);
  Memo1.Lines.Add('[하]의 위치: ' + IntToStr(Num));

  Num := Pos('하세', Str);
  Memo1.Lines.Add('[하세]의 위치: ' + IntToStr(Num));

  Num := Pos('히', Str);
  Memo1.Lines.Add('[히]의 위치: ' + IntToStr(Num));

  Num := Pos('cd', 'abcdef');
  Memo1.Lines.Add('abcdef, [cd]의 위치: ' + IntToStr(Num));

  Num := Pos('b', 'abcabcd', 3);
  Memo1.Lines.Add('abcabcd, 3번이후 [b]의 위치: ' + IntToStr(Num));

  // b의 위치 들
  Num := Pos('b', 'abcabcd');
  Memo1.Lines.Add('첫번째 [b]의 위치: ' + IntToStr(Num));

  Num := Pos('b', 'abcabcd', Num+1);
  Memo1.Lines.Add('두번째 [b]의 위치: ' + IntToStr(Num));
end;

procedure TForm2.Button4Click(Sender: TObject);
var
  Str: string;
  Num: Integer;
  Idx, Len: Integer;
begin
  Str := Copy('안녕하세요', 3, 2);
  Memo1.Lines.Add('안녕하세요, 3에서 2자 복사: ' + Str);

  Str := Copy('안녕하세요', 3, 4);
  Memo1.Lines.Add('안녕하세요, 3에서 4자 복사: ' + Str);

  // '하'부터 '요'까지 가져오기
  Str := '안녕하세요';
//  Str := '안녕하신가요';
  Idx := Pos('하', Str); // 3
  Len := Pos('요', Str) - Idx + 1; // 5 - 3 + 1 = 3

  Str := Copy(Str, Idx, Len);
  Memo1.Lines.Add('하부터 요까지: ' + Str);
end;

procedure TForm2.Button5Click(Sender: TObject);
var
  Msg, Msg2: string;
  Name: string;
begin
  Msg := Memo2.Lines.Text;
  Name := edtName.Text;

  // 메시지의 [Name] 항목을 입력한 이름으로 치환하세요.
//  Msg2 := StringReplace('', '', '', [rfReplaceAll]);
  Msg2 := StringReplace(Msg, '[Name]', Name, [rfReplaceAll]);

  ShowMessage(Msg2);
end;

end.
