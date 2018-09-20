unit MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Generics.Collections,
  Vcl.StdCtrls, System.Types;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
    procedure LogIntList(AList: TList<Integer>);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  I, Num: Integer;
  IntList: TList<Integer>;
  StrList: TList<string>;
  BtnList: TList<TButton>;
begin
  Memo1.Lines.Clear;

  IntList := TList<Integer>.Create;
  try
    for I := 0 to 4 do
      IntList.Add(Random(100));

    ShowMessage(IntToStr(IntList.Items[2]));

    for Num in IntList do
      Memo1.Lines.Add(IntToStr(Num));
  finally
    IntList.Free;
  end;

  BtnList := TList<TButton>.Create;
  try
    BtnList.Add(Button1);
    BtnList.Add(Button2);
    BtnList.Add(Button3);

    ShowMessage(BtnList[1].Caption);
  finally
    BtnList.Free;
  end;
end;

procedure TForm1.LogIntList(AList: TList<Integer>);
var
  I: Integer;
  Log: string;
begin
  Log := '';
  for I in AList do
    Log := Log + IntToStr(I) + ' ';
  Memo1.Lines.Add('[ ' + Log + ']');
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  Num: Integer;
  List: TList<Integer>;
begin
  Memo1.Lines.Clear;

  List := TList<Integer>.Create;
  try
    List.Add(10);
    List.AddRange([5, 3, 6, 7, 8, 5, 2]);

    Memo1.Lines.Add('IndexOf(5) = ' + IntToStr(List.IndexOf(5)));
    Memo1.Lines.Add('LastIndexOf(5) = ' + IntToStr(List.LastIndexOf(5)));

    LogIntList(List);       // 10, 5, 3, 6, 7, 8, 5, 2

    // 0 번째 항목 제거
    List.Delete(0);
    LogIntList(List);       //     5, 3, 6, 7, 8, 5, 2

    // 1 번째 부터 2개 제거
    List.DeleteRange(1, 2);
    LogIntList(List);       //     5,       7, 8, 5, 2

    // 7(데이터) 제거
    List.Remove(7);
    LogIntList(List);       //     5,          8, 5, 2

    // 뒤(FromEnd)에서 5 제거
    Num := List.ExtractItem(5, FromEnd);
    LogIntList(List);       //     5,          8,   2
//    ShowMessage(IntToStr(Num));

    Memo1.Lines.Add('');
    List.Clear;
    List.Insert(0, 4);
    List.InsertRange(0, [5, 3, 1, 2]);

    LogIntList(List);       //  5, 3, 1, 2, 4

    List.Sort;
    LogIntList(List);

    List.Reverse;
    LogIntList(List);

    ShowMessage(IntToStr(List[0]));
  finally
    List.Free;
  end;
end;

type
  TPersonRec = record
    Name: string;
    Job: string;
    Age: Integer;
  end;

procedure TForm1.Button3Click(Sender: TObject);
var
  Person: TPersonRec;
  List: TList<TPersonRec>;
begin
  Memo1.Lines.Clear;

  List := TList<TPersonRec>.Create;
  try
    Person.Name := '홍길동';
    Person.Job  := '의적';
    Person.Age  := 30;
    List.Add(Person);

    Person.Name := '이순신';
    Person.Job  := '장군';
    Person.Age  := 53;
    List.Add(Person);

    Person.Name := '에디슨';
    Person.Job  := '과학자';
    Person.Age  := 84;
    List.Add(Person);

    Memo1.Lines.Add('Count = ' + IntToStr(List.Count));
    for Person in List do
    begin
      Memo1.Lines.Add('');
      Memo1.Lines.Add('이름 : ' + Person.Name);
      Memo1.Lines.Add('직업 : ' + Person.Job);
      Memo1.Lines.Add('나이 : ' + IntToStr(Person.Age));
    end;
  finally
    List.Free;
  end;

end;

end.
