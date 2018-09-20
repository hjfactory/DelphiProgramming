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

// �� ������
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
    ShowMessage('���̸� �Է��ϼ���');
    edtAge.SetFocus;
    Exit;
  end;

  Age := StrToIntDef(edtAge.Text, 0);
  if Age < 20 then
    ShowMessage('������ �ƴմϴ�.');
end;

// �� ������
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
    ShowMessage('���̵� �Է��ϼ���.');
    edtId.SetFocus;
    Exit;
  end;

  if Pwd = '' then
  begin
    ShowMessage('��й�ȣ�� �Է��ϼ���.');
    edtId.SetFocus;
    Exit;
  end;

  if (Id = 'humphrey') and (Pwd = '1234') then
    Memo1.Lines.Add('���̵�� ��й�ȣ�� �½��ϴ�.');

  Bool := (Id = 'humphrey') and (Pwd = '1234');
  if Bool then
    Memo1.Lines.Add('���̵�� ��й�ȣ�� �½��ϴ�.');

  if not Bool then
    Memo1.Lines.Add('���̵�� ��й�ȣ�� �����ʽ��ϴ�.');

  if ((Id = 'humphrey') and (Pwd = '1234'))
   or ((Id = 'admin') and (Pwd = '0987'))then
    Memo1.Lines.Add('���̵�� ��й�ȣ�� �½��ϴ�.');
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
    Memo1.Lines.Add('¦��')
  else
    Memo1.Lines.Add('Ȧ��');

  Id  := edtId.Text;
  Pwd := edtPwd.Text;
  if (Id = 'humphrey') and (Pwd = '1234') then
    Memo1.Lines.Add('���̵�� ��й�ȣ�� �½��ϴ�.')
  else
    Memo1.Lines.Add('���̵�� ��й�ȣ�� �����ʽ��ϴ�..');
end;

procedure TForm1.Button5Click(Sender: TObject);
var
  Age: Integer;
  Id, Pwd: string;
begin
  if False then
    Memo1.Lines.Add('if ����')
  else if True then
    Memo1.Lines.Add('else if ����')
  else
    Memo1.Lines.Add('else ����')
  ;

  Id := edtId.Text;
  Pwd := edtPwd.Text;

  if Id = 'guest' then
    Memo1.Lines.Add('�մ��Դϴ�.')
  else if Id = 'admin' then
    Memo1.Lines.Add('�������Դϴ�.')
  else if Id = 'user' then
    Memo1.Lines.Add('������Դϴ�.')
  else
    Memo1.Lines.Add('��Ÿ');
  ;

  Age := StrToIntDef(edtAge.Text, 0);

  if Age <= 7 then
    Memo1.Lines.Add('������')
  else if (Age > 7) and (Age <= 13) then
    Memo1.Lines.Add('�ʵ��л�')
  else if (Age > 13) and (Age <= 16) then
    Memo1.Lines.Add('���л�')
  else if (Age > 16) and (Age <= 19) then
    Memo1.Lines.Add('����л�')
  else if (Age > 19) then
    Memo1.Lines.Add('����');

end;

end.
