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
    Button3: TButton;
    edtName: TEdit;
    Button4: TButton;
    edtAge: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
    procedure BooleanLog(AType: string; AValue: Boolean);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BooleanLog(AType: string; AValue: Boolean);
begin
  Memo1.Lines.Add(AType + ' = ' + BoolToStr(AValue, True));
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  B: Boolean;
begin
  B := True; // False
  BooleanLog('B', B); // B = True
  BooleanLog('False', False);

  Memo1.Lines.Add('True' +   IntToStr(Ord(True)));
  Memo1.Lines.Add('False' +  IntToStr(Ord(False)));
end;

// 비교/관계 연산자
procedure TForm1.Button2Click(Sender: TObject);
var
  I: Integer;
  Name: string;
begin
  BooleanLog('1=1', 1=1);
  BooleanLog('1=2', 1=2);

  Name := edtName.Text; // 홍길동
  BooleanLog('이순신', Name = '이순신');  // False
  BooleanLog('홍길동', Name = '홍길동');  // True

  I := 1;
  BooleanLog('I<>1', I <> 1);       // False
  BooleanLog('I<>2', I <> 2);       // True

  I := 5;
  BooleanLog('I(5)<6', I < 6);      // True
  BooleanLog('I(5)<5', I < 5);      // False

  BooleanLog('I(5)<=5', I <= 5);    // True

  BooleanLog('I(5)>5', I > 5);
  BooleanLog('I(5)>4', I > 4);

  BooleanLog('I(5)>=5', I >= 5);
end;

// 논리 연산자
procedure TForm1.Button3Click(Sender: TObject);
var
  Age: Integer;
  ID, Name: string;
begin
  BooleanLog('not True',  not True);                // False
  BooleanLog('not False', not False);               // True

  BooleanLog('True and True',   True and True);     // True
  BooleanLog('True and False',  True and False);    // False

  BooleanLog('True or True',    True or True);      // True
  BooleanLog('True or False',   True or False);     // True
  BooleanLog('False or False',  False or False);    // False

  Age := StrToIntDef(edtAge.Text, 0); // 16
  BooleanLog('18세 이하',   Age <= 18);                   // True
  BooleanLog('고등학생',    (Age > 16) and (Age <= 19));  // False

  BooleanLog('중고생',      (Age >= 14) and (Age <= 19));
  BooleanLog('중고생 아님', (Age < 14) or (Age > 19));
  BooleanLog('중고생 아님', not ((Age >= 14) and (Age <= 19)));
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  I: Integer;
begin
  // 조건문(조건이 참인 경우 코드 실행)
  if edtName.Text = '' then
  begin
    ShowMessage('이름을 입력하세요.');
    edtName.SetFocus;
    Exit;
  end;

  // 반복문(참인 경우까지 반복)
  I := 0;
  while I < 5 do
  begin
    Memo1.Lines.Add(IntToStr(I));
    Inc(I);
  end;
end;

end.
