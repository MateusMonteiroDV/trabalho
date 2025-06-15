unit Cliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Vcl.Mask, Vcl.ExtCtrls, Vcl.DBCtrls,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons;

type
  TF_cliente = class(TForm)
    DBGrid1: TDBGrid;
    Q_cliente: TFDQuery;
    D_cliente: TDataSource;
    Q_clientecpf: TLargeintField;
    Q_clientenome: TWideStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBNavigator1: TDBNavigator;
    procedure Q_clienteAfterPost(DataSet: TDataSet);
    procedure Q_clienteAfterDelete(DataSet: TDataSet);

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




procedure TF_cliente.Q_clienteAfterDelete(DataSet: TDataSet);
begin
    Q_cliente.ApplyUpdates(0);
end;

procedure TF_cliente.Q_clienteAfterPost(DataSet: TDataSet);
begin
  Q_cliente.ApplyUpdates(0);

end;

end.
