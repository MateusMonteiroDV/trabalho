object F_Menu: TF_Menu
  Left = 0
  Top = 0
  Caption = 'F_Menu'
  ClientHeight = 460
  ClientWidth = 701
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
    Width = 701
    Height = 33
    Align = alTop
    TabOrder = 0
    object SpeedButton1: TSpeedButton
      AlignWithMargins = True
      Left = 24
      Top = 3
      Width = 113
      Height = 30
      Caption = 'Cadastrar cliente'
      Flat = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 143
      Top = 3
      Width = 113
      Height = 30
      Caption = 'Cadastrar  corretor'
      Flat = True
      OnClick = SpeedButton2Click
    end
    object SpeedButton3: TSpeedButton
      Left = 262
      Top = 3
      Width = 105
      Height = 30
      Caption = 'Cadastrar  imovel'
      Flat = True
      OnClick = SpeedButton3Click
    end
    object SpeedButton5: TSpeedButton
      Left = 373
      Top = 3
      Width = 170
      Height = 30
      Caption = 'Cadastrar  proposta de compra'
      Flat = True
      OnClick = SpeedButton5Click
    end
    object SpeedButton6: TSpeedButton
      Left = 549
      Top = 3
      Width = 108
      Height = 30
      Caption = 'Total de comiss'#227'o '
      Flat = True
      OnClick = SpeedButton6Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 33
    Width = 701
    Height = 427
    Align = alClient
    TabOrder = 1
  end
end
