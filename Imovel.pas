unit Imovel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.Mask, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Buttons;

type
  TF_imovel = class(TForm)
    DBGrid1: TDBGrid;
    Q_imovel: TFDQuery;
    D_imovel: TDataSource;
    Q_imovelid: TIntegerField;
    Q_imovelcodigo: TIntegerField;
    Q_imovelendereco: TWideStringField;
    Q_imoveltipo: TWideStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBNavigator1: TDBNavigator;
    procedure Q_imovelAfterPost(DataSet: TDataSet);
    procedure Q_imovelAfterDelete(DataSet: TDataSet);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_imovel: TF_imovel;

implementation
uses Login, Menu;
{$R *.dfm}



procedure TF_imovel.Q_imovelAfterDelete(DataSet: TDataSet);
begin
           Q_imovel.ApplyUpdates(0);
end;

procedure TF_imovel.Q_imovelAfterPost(DataSet: TDataSet);
begin
  Q_imovel.ApplyUpdates(0);
end;

end.
