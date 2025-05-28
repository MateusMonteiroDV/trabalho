program Trabalho;

uses
  Vcl.Forms,
  Login in 'Login.pas' {F_login},
  Menu in 'Menu.pas' {F_Menu},
  Corretor in 'Corretor.pas' {F_corretor},
  Imovel in 'Imovel.pas' {F_imovel},
  Cliente in 'Cliente.pas' {F_cliente},
  Proposta_compra in 'Proposta_compra.pas' {F_proposta};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TF_login, F_login);
  Application.CreateForm(TF_proposta, F_proposta);
  Application.Run;
end.
