unit Unit1;

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
var
  UserName: string;
  S: string;
begin
  UserName := 'È«±æµ¿';
  S := '¾È³çÇÏ¼¼¿ä';

  Memo1.Lines.Add(UserName);
  Memo1.Lines.Add(S);
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  UserName: string;
  S: string;
  A, B: string;
begin
  UserName := 'È«±æµ¿';

  S := '¾È³ç' + 'ÇÏ¼¼¿ä.';
  S := UserName + '´Ô,' + S;
  Memo1.Lines.Add(S);

  S := 'È«±æµ¿´ÔÀÇ ³ªÀÌ´Â ' + IntToStr(23) + '¼¼ÀÔ´Ï´Ù.';
  Memo1.Lines.Add(S);

  A := 'a';
  B := 'b';

  A := A + B; // a + b = ab
  B := A + B; // ab + b = abb
  Memo1.Lines.Add('A: ' + A + ', B: ' + B);
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  Str: string;
  Num: Integer;
begin
  Num := 1 + 1;
  Str := '1' + '1';

  Memo1.Lines.Add(IntToStr(Num));
  Memo1.Lines.Add(Str);
end;

end.
