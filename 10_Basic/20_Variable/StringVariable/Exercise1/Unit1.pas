unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
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
  S, S2: string;
  Name, Age: string;
  I, C: Integer;
begin
  S := '내 이름은 [홍길동], 나이는 <23> 입니다.';

  I := Pos('[', S) + 1;
  C := Pos(']', S) - I;
  Name := Copy(S, I, C);

//  Age := Copy(

  S2 := '이름 : ' + Name + #13#10;
  S2 := S2 + '나이 : ' + Age;

  Memo1.Lines.Add(S);
  Memo1.Lines.Add(S2);
end;

end.
