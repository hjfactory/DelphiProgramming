unit LoginForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmLogin = class(TForm)
    edtId: TEdit;
    edtPassword: TEdit;
    btnLogin: TButton;
    btnCancel: TButton;
    procedure btnLoginClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    function LoginCheck(AId, APwd: string): Boolean;
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.dfm}

procedure TfrmLogin.FormCreate(Sender: TObject);
begin
  KeyPreview := True;
end;

procedure TfrmLogin.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
     SelectNext(Activecontrol, True, True);
end;

function TfrmLogin.LoginCheck(AId, APwd: string): Boolean;
begin
  // Write your business login
  Result := (AId = 'id') and (APwd = '123');
end;

procedure TfrmLogin.btnLoginClick(Sender: TObject);
begin
  if LoginCheck(edtId.Text, edtPassword.Text) then
    ModalResult := mrOK
  else
    ShowMessage('Incorrect id or password');
end;

procedure TfrmLogin.btnCancelClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfrmLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  frmLogin := nil;
end;

end.
