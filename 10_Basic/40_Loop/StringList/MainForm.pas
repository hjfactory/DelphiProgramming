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
    // StrList ���
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
    // ���ڿ� �߰�
    StrList.Add('�׸�1');
    StrList.Add('�׸�2');
    StrList.Add('�׸�3');
    StrList.Add('�׸�4');
    StrList.Add('�׸�5');

    // ���ڿ� ����
    StrList.Delete(2); // Zero-base Index

    // �ε����� ���ڿ� �߰�
    StrList.Insert(2, 'Item3');

    // �ε����� ���ڿ� ����
    StrList.Strings[0] := 'Item1';  // Strings ���� ����
    StrList[4] := 'Item5';

    Memo1.Lines.Assign(StrList);

    Memo1.Lines.Add('');
    Memo1.Lines.Add('[Item ���Ե� ���ڿ� ã��]');
    for I := 0 to StrList.Count - 1 do
    begin
      Str := StrList[I];
      if Pos('Item', Str) > 0 then
        memo1.Lines.Add('[' + IntToStr(I) + '] ' + Str);
    end;

    // IndexOf - ���ڿ� �ε��� ��ȯ(������ -1)
    Idx := StrList.IndexOf('Item3');
    Memo1.Lines.Add(Format('[%s]�� %d��°�� �ֽ��ϴ�.', ['Item3', Idx]));

    Idx := StrList.IndexOf('Item6');
    if Idx = -1 then
      Memo1.Lines.Add(Format('[%s]�� �����ϴ�.', ['Item6']));
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
    // Key=Value ��� ����
    StrList.Values['name']  := '������';
    StrList.Values['job']   := '����������Ʈ';
    StrList.Values['age']   := '���';

    ShowMessage(StrList.Values['name']);

    Memo1.Lines.Clear;

    // �ٹٲ� ����(#13#10)���� ���е� ��ü ���ڿ�
    Memo1.Lines.Add('[Text]');
    Str := StrList.Text;
    Memo1.Lines.Add(Str);

    // �޸�(,)�� ���е� ��ü ���ڿ�
    Memo1.Lines.Add('[CommaText]');
    Str := StrList.CommaText;
    Memo1.Lines.Add(Str);

    // ������ ���� �� �����ڷ� ���е� ��ü ���ڿ�
    Memo1.Lines.Add('[DelimitedText]');
    StrList.Delimiter := '|';
    Str := StrList.DelimitedText;
    Memo1.Lines.Add(Str);
  finally
    StrList.Free;
  end;
end;

end.
