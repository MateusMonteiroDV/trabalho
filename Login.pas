unit Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.VCLUI.Wait, FireDAC.Phys.PGDef, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Phys.PG;

type
  TF_login = class(TForm)
    B_logar: TButton;
    T_cred: TEdit;
    T_senha: TEdit;
    StaticText1: TStaticText;
    FDConnection1: TFDConnection;
    FDPhysPgDriverLink1: TFDPhysPgDriverLink;
    Q_login: TFDQuery;
    Q_loginid: TIntegerField;
    Q_loginnome: TWideStringField;
    Q_loginsenha: TIntegerField;
    Label1: TLabel;
    Label2: TLabel;
    procedure B_logarClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_login: TF_login;

implementation
uses Menu;
{$R *.dfm}

procedure TF_login.B_logarClick(Sender: TObject);
var
  menu: TF_Menu;

begin
    Q_login.Close;
    Q_login.ParamByName('id').AsInteger := StrToInt(T_cred.Text);
    Q_login.Open;


  if Q_login.RecordCount > 0 then
    begin
    if Q_login.FieldByName('senha').AsInteger = StrToInt(T_senha.Text) then
        begin
             Self.Hide;
             menu := TF_Menu.Create(nil);
             menu.ShowModal;
             menu.Free;
        end

       else
          begin
            ShowMessage('Senha incorreta');
          end
  end
    else
       begin
            ShowMessage('usario incorreto');
        end


end;

procedure TF_login.FormDestroy(Sender: TObject);
begin
    Application.Terminate;
end;

end.
