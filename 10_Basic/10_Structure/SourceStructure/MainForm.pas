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
  // �Է� �� Ȯ��
  if Edit1.Text = '' then
  begin
    ShowMessage('�Է��ϼ���');
    Edit1.SetFocus;

    Exit;
  end;

  if Edit1.Text = '' then
    ShowMessage('�Է��ϼ���');

  // ����� ���� ����
  Name      := 'ȫ�浿';
  Email     := 'mail@email.com';
  Address   := '����� ���ʱ� ������ 359';
end;

end.

�� ���� �ۼ��� ������ ���õ˴ϴ�.
