unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Memo2: TMemo;
    edtName: TEdit;
    Button6: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  UserName: string;
  S: string;
begin
  UserName := '홍길동';
  S := '안녕하세요';
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  UserName: string;
  S: string;
  A, B: string;
begin
  UserName := '홍길동';

  S := '안녕' + '하세요.';
  S := S + UserName + '님.';
  Memo1.Lines.Add(S);

  S := '홍길동님의 나이는 ' + IntToStr(23) + '세입니다.';
  Memo1.Lines.Add(S);

  A := 'a';
  B := 'b';

  A := A + B; // a + b = ab
  B := A + B; // ab + b = abb
  Memo1.Lines.Add('A: ' + A + ', B: ' + B);

  A := 'a';
  B := 'b';

  A := A + A + B; // a + a + b = aab
  Memo1.Lines.Add('A: ' + A + ', B: ' + B);
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  Str: string;
  Num: Integer;
begin
  Num := 1 + 1;      // 2
  Str := '1' + '1';   // 11

  Memo1.Lines.Add(IntToStr(Num));
  Memo1.Lines.Add(Str);
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  Str: string;
  Num: Integer;
begin
  Num := Length('안녕하세요.');
  Memo1.Lines.Add('문자열의 길이: ' + IntToStr(Num));

  Num := Pos('하', '안녕하세요.');
  Memo1.Lines.Add('''하''의 위치: ' + IntToStr(Num));

  Str := Copy('안녕하세요', 3, 2);
  Memo1.Lines.Add('3에서 2자 복사: ' + Str);

  Str := StringReplace('안녕하세요.', '하세요', '히가세요', [rfReplaceAll]);
  Memo1.Lines.Add('문자열 치환: ' + Str);

  Str := Trim('    안녕    하세요.   ');
  Memo1.Lines.Add('앞뒤 공백 제거: ' + Str);

  // Complete code : Ctrl + Space
end;

procedure TForm1.Button5Click(Sender: TObject);
var
  S, S2: string;
  Name: string;
begin
  S :=  '나의 이름은 홍길동입니다.';

// Name := Copy(S, 0, 0);
  Name := Copy(S, 8, 3);  // 문자열은 1번째부터 시작

  S2 := '이름: ' + Name;
  Memo1.Lines.Add(S2);
end;

procedure TForm1.Button6Click(Sender: TObject);
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
