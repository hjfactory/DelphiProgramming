unit MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

const
  CAP_LOAN: string = '�����:';
  CAP_LOAN_PRI = '����:';
  CAP_LOAN_INT = '����:';
  CAP_LOAN_SUM = '�հ�:';

  INTEREST_RATE = 0.1;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    Button2: TButton;
    Button3: TButton;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
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
begin
  Memo1.Lines.Clear;
  Memo1.Lines.Add(CAP_LOAN+IntToStr(12000));
  Memo1.Lines.Add('����:'+IntToStr(Trunc(12000 / 12)));
  Memo1.Lines.Add('����:'+IntToStr(Trunc(12000 * 0.1 / 12)));
  Memo1.Lines.Add('�հ�:'+IntToStr(Trunc((12000 / 12) + (12000 * 0.1 / 12))));
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  Loan: Integer;
  Principal: Integer;
  Interest: Integer;
  Sum: Integer;
begin
  Loan := 12000;
  Principal := Trunc(Loan / 12);
  Interest := Trunc(Loan * 0.1 / 12);
  Sum := Principal + Interest;

  Memo1.Lines.Clear;
  Memo1.Lines.Add(CAP_LOAN+IntToStr(Loan));
  Memo1.Lines.Add('����:'+IntToStr(Principal));
  Memo1.Lines.Add('����:'+IntToStr(Interest));
  Memo1.Lines.Add('�հ�:'+IntToStr(Sum));
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  Loan: Integer;
  Principal: Integer;
  Interest: Integer;
  Sum: Integer;
begin
  Loan := StrToInt(Edit1.Text);
  Principal := Trunc(Loan / 12);
  Interest := Trunc(Loan * 0.1 / 12);
  Sum := Principal + Interest;

  Memo1.Lines.Clear;
  Memo1.Lines.Add('�����:'+IntToStr(Loan));
  Memo1.Lines.Add('����:'+IntToStr(Principal));
  Memo1.Lines.Add('����:'+IntToStr(Interest));
  Memo1.Lines.Add('�հ�:'+IntToStr(Sum));
end;

end.
