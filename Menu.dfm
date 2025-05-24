object F_Menu: TF_Menu
  Left = 0
  Top = 0
  Caption = 'F_Menu'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 624
    Height = 441
    Align = alClient
    TabOrder = 0
    ExplicitLeft = -8
    object Button1: TButton
      Left = 234
      Top = 120
      Width = 113
      Height = 25
      Caption = 'Cadatrar corretor'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 234
      Top = 175
      Width = 113
      Height = 25
      Caption = 'Cadastrar imovel'
      TabOrder = 1
    end
    object Button3: TButton
      Left = 234
      Top = 233
      Width = 113
      Height = 25
      Caption = 'Cadastrar cliente'
      TabOrder = 2
    end
    object Button4: TButton
      Left = 234
      Top = 288
      Width = 131
      Height = 25
      Caption = 'Proposta de compra'
      TabOrder = 3
    end
    object Button5: TButton
      Left = 176
      Top = 353
      Width = 235
      Height = 25
      Caption = 'Total de comisas'#227'o de cada corretor'
      TabOrder = 4
    end
  end
end
