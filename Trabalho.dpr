program Trabalho;

uses
  Vcl.Forms,
  Login in 'Login.pas' {F_login},
  Menu in 'Menu.pas' {F_Menu},
  Corretor in 'Corretor.pas' {F_corretor};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TF_login, F_login);
  Application.Run;
end.
