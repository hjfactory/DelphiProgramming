unit MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    edtAge: TEdit;
    Memo1: TMemo;
    edtChar: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
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
  Age: Integer;
  Title: string;
  Bool: Boolean;
begin
  case Bool of
  True:
    begin
    end;
  False:
    begin
    end;
  end;

  Age := StrToIntDef(edtAge.Text, -1);
  case Age of
    0:        Title := '태아';
    1..7:     Title := '유아';
    8..13:    Title := '초등학생';
    14,15,16: Title := '중학생';
    17..19:   Title := '고등학생';
  else        Title := '성인';
  end;

  Memo1.Lines.Add(Format('%d세는 %s입니다.', [Age, Title]));
end;

procedure TForm1.Button2Click(Sender: TObject);
type
  TMyEnum = (meFirst, meSecond, meThird);
var
  Enum: TMyEnum;
  Ch: Char;
  EnumValue, CharType: string;
begin
  Enum := meFirst;
  case Enum of
    meFirst:  EnumValue := 'First';
    meSecond: EnumValue := 'Second';
    meThird:  EnumValue := 'Third';
  end;

  if (edtChar.Text = '') or (Length(edtChar.Text) <> 1) then
  begin
    ShowMessage('문자 하나를 입력하세요.');
    edtChar.SetFocus;
    Exit;
  end;

  Ch := edtChar.Text[1];
  case Ch of
  'a'..'z': CharType := '소문자';
  'A'..'Z': CharType := '대문자';
  '0'..'9': CharType := '숫자';
  else      CharType := '기타문자';
  end;

  Memo1.Lines.Add(Format('''%s''는 %s입니다.', [Ch, CharType]));
end;

end.
