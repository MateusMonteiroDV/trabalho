unit Corretor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Buttons;

type
  TF_corretor = class(TForm)
    DBGrid1: TDBGrid;
    Q_corretor: TFDQuery;
    D_corretor: TDataSource;
    Q_corretorcred: TLargeintField;
    Q_corretornome: TWideStringField;
    Q_corretorsenha: TIntegerField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBNavigator1: TDBNavigator;
    procedure Q_corretorAfterPost(DataSet: TDataSet);
    procedure Q_corretorAfterDelete(DataSet: TDataSet);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_corretor: TF_corretor;

implementation
uses Login,Menu;
{$R *.dfm}




procedure TF_corretor.Q_corretorAfterDelete(DataSet: TDataSet);
begin
   Q_corretor.ApplyUpdates(0);
end;

procedure TF_corretor.Q_corretorAfterPost(DataSet: TDataSet);
begin
   Q_corretor.ApplyUpdates(0);
end;

end.
