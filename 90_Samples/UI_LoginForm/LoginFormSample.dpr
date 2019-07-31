program LoginFormSample;

uses
  Vcl.Forms,
  Vcl.Controls,
  MainForm in 'MainForm.pas' {frmMain},
  LoginForm in 'LoginForm.pas' {frmLogin};

{$R *.res}

begin

  frmLogin := TfrmLogin.Create(nil);
  if frmLogin.ShowModal = mrOK then
  begin
    Application.Initialize;
    Application.MainFormOnTaskbar := True;
    Application.CreateForm(TfrmMain, frmMain);
    Application.Run;
  end;

end.
