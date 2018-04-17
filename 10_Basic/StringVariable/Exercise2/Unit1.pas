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
  // S2의 [Name]  항목을 StringReplace  함수를 이용해 입력받은 이름으로 치환하세요.
  // S2의 [Age]  항목을 StringReplace  함수를 이용해 입력받은 나이로 치환하세요.

  ShowMessage(S2);
end;

end.
