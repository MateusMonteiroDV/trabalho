unit Menu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Corretor, Imovel, Cliente, Proposta_compra, Total_comissao_corretor;

type
  TF_Menu = class(TForm)
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    Panel2: TPanel;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Menu: TF_Menu;
  F_cliente : TF_cliente;

implementation

{$R *.dfm}






procedure OpenCliente(var form: TF_cliente);
begin

  if not Assigned(form) then
  begin
    form := TF_cliente.Create(nil);
    form.BorderStyle := bsNone;
    form.BorderIcons := [];
    form.Parent := F_Menu.Panel2;
    form.Align := alClient;
    form.Show;
  end
  else
  begin
    form.Free;
    form := nil;

    form := TF_cliente.Create(nil);
    form.BorderStyle := bsNone;
    form.BorderIcons := [];
    form.Parent := F_Menu.Panel2;
    form.Align := alClient;
    form.Show;



  end;
end;

procedure OpenCorretor(var form: TF_corretor);
begin

  if not Assigned(form) then
  begin
    form := TF_corretor.Create(nil);
    form.BorderStyle := bsNone;
    form.BorderIcons := [];
    form.Parent := F_Menu.Panel2;
    form.Align := alClient;
    form.Show;
  end
  else
  begin
    form.Free;
    form := nil;

     form := TF_corretor.Create(nil);
    form.BorderStyle := bsNone;
    form.BorderIcons := [];
    form.Parent := F_Menu.Panel2;
    form.Align := alClient;
    form.Show;
  end;
end;
procedure OpenImovel(var form: TF_imovel);
begin

  if not Assigned(form) then
  begin
    form := TF_imovel.Create(nil);
    form.BorderStyle := bsNone;
    form.BorderIcons := [];
    form.Parent := F_Menu.Panel2;
    form.Align := alClient;
    form.Show;
  end
  else
  begin
    form.Free;
    form := nil;

     form := TF_imovel.Create(nil);
    form.BorderStyle := bsNone;
    form.BorderIcons := [];
    form.Parent := F_Menu.Panel2;
    form.Align := alClient;
    form.Show;
  end;
end;

 procedure OpenProposta(var form: TF_proposta);
begin

  if not Assigned(form) then
  begin
    form := TF_proposta.Create(nil);
    form.BorderStyle := bsNone;
    form.BorderIcons := [];
    form.Parent := F_Menu.Panel2;
    form.Align := alClient;
    form.Show;
  end
  else
  begin
    form.Free;
    form := nil;


    form := TF_proposta.Create(nil);
    form.BorderStyle := bsNone;
    form.BorderIcons := [];
    form.Parent := F_Menu.Panel2;
    form.Align := alClient;
    form.Show;
  end;
end;

procedure OpenComissao(var form: TF_comissao);
begin

  if not Assigned(form) then
  begin
    form := TF_comissao.Create(nil);
    form.BorderStyle := bsNone;
    form.BorderIcons := [];
    form.Parent := F_Menu.Panel2;
    form.Align := alClient;

    form.Show;
  end
  else
  begin
    form.Free;
    form := nil;

     form := TF_comissao.Create(nil);
    form.BorderStyle := bsNone;
    form.BorderIcons := [];
    form.Parent := F_Menu.Panel2;
    form.Align := alClient;
    form.Show;
  end;
end;


procedure TF_Menu.SpeedButton1Click(Sender: TObject);


begin


      OpenCliente(F_cliente);
end;


procedure TF_Menu.SpeedButton2Click(Sender: TObject);
begin
 OpenCorretor(F_corretor);
end;

procedure TF_Menu.SpeedButton3Click(Sender: TObject);
begin
 OpenImovel(F_imovel);
end;

procedure TF_Menu.SpeedButton5Click(Sender: TObject);
begin
    OpenProposta(F_proposta);
end;

procedure TF_Menu.SpeedButton6Click(Sender: TObject);
begin
  OpenComissao(F_comissao);
end;

end.
