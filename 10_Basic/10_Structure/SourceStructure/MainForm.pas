unit MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Unit1;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

procedure Hello;

implementation

{$R *.dfm}

procedure Hello;
begin
  ShowMessage('Hello');
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  Name, Email, Address: string;
begin
  // 입력 값 확인
  if Edit1.Text = '' then
  begin
    ShowMessage('입력하세요');
    Edit1.SetFocus;

    Exit;
  end;

  if Edit1.Text = '' then
    ShowMessage('입력하세요');

  // 사용자 정보 설정
  Name      := '홍길동';
  Email     := 'mail@email.com';
  Address   := '서울시 서초구 사평대로 359';
end;

end.

이 곳에 작성된 내용은 무시됩니다.
