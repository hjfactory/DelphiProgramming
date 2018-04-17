unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VclTee.TeeGDIPlus, System.Net.URLClient,
  System.Net.HttpClient, System.Net.HttpClientComponent, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, System.Bluetooth, System.Beacon, System.Beacon.Components,
  System.Bluetooth.Components, FireDAC.Comp.Client, Data.DB,
  FireDAC.Comp.DataSet, IdTCPConnection, IdTCPClient, IdBaseComponent,
  IdComponent, IdCustomTCPServer, IdSocksServer, Vcl.ExtCtrls, VCLTee.TeEngine,
  VCLTee.Series, VCLTee.TeeProcs, VCLTee.Chart, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Memo1: TMemo;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Chart1: TChart;
    Series1: TLineSeries;
    Timer1: TTimer;
    IdSocksServer1: TIdSocksServer;
    NetHTTPClient1: TNetHTTPClient;
    IdTCPClient1: TIdTCPClient;
    FDConnection1: TFDConnection;
    FDQuery1: TFDQuery;
    FDTable1: TFDTable;
    Bluetooth1: TBluetooth;
    BluetoothLE1: TBluetoothLE;
    Beacon1: TBeacon;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
