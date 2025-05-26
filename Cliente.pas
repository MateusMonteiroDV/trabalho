unit Cliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Vcl.Mask, Vcl.ExtCtrls, Vcl.DBCtrls,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids;

type
  TF_cliente = class(TForm)
    Button1: TButton;
    DBGrid1: TDBGrid;
    Q_cliente: TFDQuery;
    D_cliente: TDataSource;
    Button2: TButton;
    D_listar_cliente: TDataSource;
    Q_listar_cliente: TFDQuery;
    Q_clientecpf: TLargeintField;
    Q_clientenome: TWideStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Q_listar_clientecpf: TLargeintField;
    Q_listar_clientenome: TWideStringField;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_cliente: TF_cliente;

implementation
 uses Login , Menu;
{$R *.dfm}

procedure TF_cliente.Button1Click(Sender: TObject);
var
 menu: TF_menu;

begin

     Self.Hide;
     menu := TF_menu.Create(nil);
     menu.ShowModal;
     menu.Free;
end;

procedure TF_cliente.Button2Click(Sender: TObject);
begin
      Q_cliente.Post;
      Q_cliente.ApplyUpdates(0);

      Q_cliente.Close;
      Q_cliente.Open;

      Q_listar_cliente.Close;
      Q_listar_cliente.Open;

      Q_cliente.Append;

end;

procedure TF_cliente.FormCreate(Sender: TObject);
begin

    Q_listar_cliente.Open;
    Q_cliente.Close;
    Q_cliente.Open;
    Q_cliente.Append;

end;

end.
