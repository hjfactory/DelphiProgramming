unit MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    Button2: TButton;
    edtAge: TEdit;
    edtId: TEdit;
    edtPwd: TEdit;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
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
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  Bool: Boolean;
begin
  if True then
  begin
    Memo1.Lines.Add('True');
    // DoSomething
  end;

  if False then
    Memo1.Lines.Add('False');

  Bool := (1>0) and (True or False);
  Bool := Bool and not (True and False);
  if Bool then
    Memo1.Lines.Add('Boolean True');
end;

// 비교 연산자
procedure TForm1.Button2Click(Sender: TObject);
var
  I, Age: Integer;
begin
  Memo1.Lines.Clear;
  if 1 = 2-1 then
    Memo1.Lines.Add('1 = 2-1');

  if 9 mod 4 = 1 then
    Memo1.Lines.Add('9 mod 4 = 1');

  if 10 <> (27/3) then
    Memo1.Lines.Add('10 <> (27/3)');

  if 10 < (300/15*1.2) then
    Memo1.Lines.Add('10 < (300/15*1.2)');

  if edtAge.Text = '' then
  begin
    ShowMessage('나이를 입력하세요');
    edtAge.SetFocus;
    Exit;
  end;

  Age := StrToIntDef(edtAge.Text, 0);
  if Age < 20 then
    ShowMessage('성인이 아닙니다.');
end;

// 논리 연산자
procedure TForm1.Button3Click(Sender: TObject);
var
  Id, Pwd: string;
  Bool: Boolean;
begin
  Memo1.Lines.Clear;
  if True and True then
    Memo1.Lines.Add('True and True');
  if True and False then
    Memo1.Lines.Add('True and False');
  if False and False then
    Memo1.Lines.Add('False and False');

  if True or True then
    Memo1.Lines.Add('True or True');
  if True or False then
    Memo1.Lines.Add('True or False');
  if False or False then
    Memo1.Lines.Add('False or False');

  Id  := edtId.Text;
  Pwd := edtPwd.Text;

  if Id = '' then
  begin
    ShowMessage('아이디를 입력하세요.');
    edtId.SetFocus;
    Exit;
  end;

  if Pwd = '' then
  begin
    ShowMessage('비밀번호를 입력하세요.');
    edtId.SetFocus;
    Exit;
  end;

  if (Id = 'humphrey') and (Pwd = '1234') then
    Memo1.Lines.Add('아이디와 비밀번호가 맞습니다.');

  Bool := (Id = 'humphrey') and (Pwd = '1234');
  if Bool then
    Memo1.Lines.Add('아이디와 비밀번호가 맞습니다.');

  if not Bool then
    Memo1.Lines.Add('아이디와 비밀번호가 맞지않습니다.');

  if ((Id = 'humphrey') and (Pwd = '1234'))
   or ((Id = 'admin') and (Pwd = '0987'))then
    Memo1.Lines.Add('아이디와 비밀번호가 맞습니다.');
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  I: Integer;
  Id, Pwd: string;
begin
  Memo1.Lines.Clear;
  if True then
    Memo1.Lines.Add('True')
  else
    Memo1.Lines.Add('False');

  if False then
    Memo1.Lines.Add('True')
  else
    Memo1.Lines.Add('False');

  I := 9;
  if I mod 2 = 0 then
    Memo1.Lines.Add('짝수')
  else
    Memo1.Lines.Add('홀수');

  Id  := edtId.Text;
  Pwd := edtPwd.Text;
  if (Id = 'humphrey') and (Pwd = '1234') then
    Memo1.Lines.Add('아이디와 비밀번호가 맞습니다.')
  else
    Memo1.Lines.Add('아이디와 비밀번호가 맞지않습니다..');
end;

procedure TForm1.Button5Click(Sender: TObject);
var
  Age: Integer;
  Id, Pwd: string;
begin
  if False then
    Memo1.Lines.Add('if 조건')
  else if True then
    Memo1.Lines.Add('else if 조건')
  else
    Memo1.Lines.Add('else 조건')
  ;

  Id := edtId.Text;
  Pwd := edtPwd.Text;

  if Id = 'guest' then
    Memo1.Lines.Add('손님입니다.')
  else if Id = 'admin' then
    Memo1.Lines.Add('관리자입니다.')
  else if Id = 'user' then
    Memo1.Lines.Add('사용자입니다.')
  else
    Memo1.Lines.Add('기타');
  ;

  Age := StrToIntDef(edtAge.Text, 0);

  if Age <= 7 then
    Memo1.Lines.Add('미취학')
  else if (Age > 7) and (Age <= 13) then
    Memo1.Lines.Add('초등학생')
  else if (Age > 13) and (Age <= 16) then
    Memo1.Lines.Add('중학생')
  else if (Age > 16) and (Age <= 19) then
    Memo1.Lines.Add('고등학생')
  else if (Age > 19) then
    Memo1.Lines.Add('성인');

end;

end.
