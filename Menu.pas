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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Menu: TF_Menu;

implementation
 uses Corretor;
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

end.
