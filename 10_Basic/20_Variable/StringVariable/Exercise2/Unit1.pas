unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm3 = class(TForm)
    edtName: TEdit;
    edtAge: TEdit;
    Button1: TButton;
    mmoMessage: TMemo;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
var
  S, S2: string;
  Name, Age: string;
begin
  S := mmoMessage.Lines.Text;
  Name := edtName.Text;
  Age := edtAge.Text;

  S2 := S;
  // S2�� [Name]  �׸��� StringReplace  �Լ��� �̿��� �Է¹��� �̸����� ġȯ�ϼ���.
  // S2�� [Age]  �׸��� StringReplace  �Լ��� �̿��� �Է¹��� ���̷� ġȯ�ϼ���.

  ShowMessage(S2);
end;

end.
