unit Menu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TF_Menu = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Menu: TF_Menu;

implementation
 uses Corretor, Imovel, Cliente;
{$R *.dfm}

procedure TF_Menu.Button1Click(Sender: TObject);
var
corretor : TF_corretor;

begin
   Self.Hide;
   corretor := TF_corretor.Create(nil);
   corretor.ShowModal;
   corretor.Free;

end;


procedure TF_Menu.Button2Click(Sender: TObject);
var
  imovel :   TF_imovel;

begin
    Self.Hide;
    imovel := TF_imovel.Create(nil);
    imovel.ShowModal;
    imovel.free;

end;

procedure TF_Menu.Button3Click(Sender: TObject);
var
cliente: Tf_cliente;
begin

    Self.Hide;
    cliente := TF_cliente.Create(nil);
    cliente.ShowModal;
    cliente.free;


end;

end.
