unit MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Memo1: TMemo;
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
  StrList: TStringList;
begin
  StrList := TStringList.Create;
  try
    // StrList 사용
  finally
    StrList.Free;
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  I, Idx: Integer;
  Str: string;
  StrList: TStringList;
begin
  StrList := TStringList.Create;
  try
    // 문자열 추가
    StrList.Add('항목1');
    StrList.Add('항목2');
    StrList.Add('항목3');
    StrList.Add('항목4');
    StrList.Add('항목5');

    // 문자열 삭제
    StrList.Delete(2); // Zero-base Index

    // 인덱스로 문자열 추가
    StrList.Insert(2, 'Item3');

    // 인덱스로 문자열 접근
    StrList.Strings[0] := 'Item1';  // Strings 제외 가능
    StrList[4] := 'Item5';

    Memo1.Lines.Assign(StrList);

    Memo1.Lines.Add('');
    Memo1.Lines.Add('[Item 포함된 문자열 찾기]');
    for I := 0 to StrList.Count - 1 do
    begin
      Str := StrList[I];
      if Pos('Item', Str) > 0 then
        memo1.Lines.Add('[' + IntToStr(I) + '] ' + Str);
    end;

    // IndexOf - 문자열 인덱스 반환(없으면 -1)
    Idx := StrList.IndexOf('Item3');
    Memo1.Lines.Add(Format('[%s]는 %d번째에 있습니다.', ['Item3', Idx]));

    Idx := StrList.IndexOf('Item6');
    if Idx = -1 then
      Memo1.Lines.Add(Format('[%s]은 없습니다.', ['Item6']));
  finally
    StrList.Free;
  end;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  Str: string;
  StrList: TStringList;
begin
  StrList := TStringList.Create;
  try
    // Key=Value 방식 접근
    StrList.Values['name']  := '험프리';
    StrList.Values['job']   := '에반젤리스트';
    StrList.Values['age']   := '비밀';

    ShowMessage(StrList.Values['name']);

    Memo1.Lines.Clear;

    // 줄바꿈 문자(#13#10)으로 구분된 전체 문자열
    Memo1.Lines.Add('[Text]');
    Str := StrList.Text;
    Memo1.Lines.Add(Str);

    // 콤마(,)로 구분된 전체 문자열
    Memo1.Lines.Add('[CommaText]');
    Str := StrList.CommaText;
    Memo1.Lines.Add(Str);

    // 구분자 지정 후 구분자로 구분된 전체 문자열
    Memo1.Lines.Add('[DelimitedText]');
    StrList.Delimiter := '|';
    Str := StrList.DelimitedText;
    Memo1.Lines.Add(Str);
  finally
    StrList.Free;
  end;
end;

end.
