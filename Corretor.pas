unit Corretor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TF_corretor = class(TForm)
    DBGrid1: TDBGrid;
    Q_corretor: TFDQuery;
    Q_dados_corretor: TDataSource;
    Q_corretorid: TIntegerField;
    Q_corretornome: TWideStringField;
    Q_corretorsenha: TIntegerField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    D_corretor: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    B_corretor: TButton;
    Q_dado_corretor: TFDQuery;
    Q_dado_corretorid: TIntegerField;
    Q_dado_corretornome: TWideStringField;
    Q_dado_corretorsenha: TIntegerField;
    B_voltar: TButton;
    procedure FormShow(Sender: TObject);
    procedure B_corretorClick(Sender: TObject);
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

procedure TF_corretor.B_corretorClick(Sender: TObject);
begin
    try
      Q_corretor.Post;
      Q_corretor.ApplyUpdates(0);

      Q_dado_corretor.Close;
      Q_dado_corretor.Open;



      Q_corretor.Close;
      Q_corretor.Open;

      Q_corretor.Append;



    except
      on E:Exception do
        begin
          ShowMessage('Erro'+ E.Message);
          Q_corretor.Cancel;
        end;

    end;


end;

procedure TF_corretor.B_voltarClick(Sender: TObject);
var
menu : TF_Menu;

begin
    Self.Hide;
    menu := TF_Menu.Create(nil);
    menu.ShowModal;
    menu.Free;
end;

procedure TF_corretor.FormShow(Sender: TObject);
begin


         Q_dado_corretor.Open;

         Q_corretor.Close;
         Q_corretor.Open;
         Q_corretor.Append;
end;

end.
