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
    B_voltar: TButton;
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

    procedure B_voltarClick(Sender: TObject);
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


procedure TF_corretor.B_voltarClick(Sender: TObject);
var
menu : TF_Menu;

begin
    Self.Hide;
    menu := TF_Menu.Create(nil);
    menu.ShowModal;
    menu.Free;
end;

end.
