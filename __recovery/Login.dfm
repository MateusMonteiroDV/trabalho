object F_login: TF_login
  Left = 156
  Top = 105
  Caption = 'F_login'
  ClientHeight = 475
  ClientWidth = 595
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesigned
  OnDestroy = FormDestroy
  TextHeight = 19
  object Label1: TLabel
    Left = 180
    Top = 175
    Width = 29
    Height = 19
    Caption = 'Cred'
  end
  object Label2: TLabel
    Left = 180
    Top = 233
    Width = 36
    Height = 19
    Caption = 'senha'
  end
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 595
    Height = 475
    Align = alClient
    ExplicitLeft = 80
    ExplicitTop = 208
    ExplicitWidth = 449
    ExplicitHeight = 259
  end
  object B_logar: TButton
    Left = 180
    Top = 320
    Width = 228
    Height = 41
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'logar'
    TabOrder = 0
    OnClick = B_logarClick
  end
  object StaticText1: TStaticText
    Left = 164
    Top = 130
    Width = 268
    Height = 23
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Alignment = taCenter
    Caption = 'Coloque seus dados para acessar o sistema'
    TabOrder = 1
  end
  object T_cred: TEdit
    Left = 180
    Top = 200
    Width = 228
    Height = 27
    TabOrder = 2
  end
  object T_senha: TEdit
    Left = 180
    Top = 258
    Width = 228
    Height = 27
    TabOrder = 3
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'User_Name=postgres'
      'Database=trabalho'
      'Password=1234'
      'DriverID=PG')
    Connected = True
    Left = 520
    Top = 56
  end
  object FDPhysPgDriverLink1: TFDPhysPgDriverLink
    VendorLib = 'C:\Program Files (x86)\psqlODBC\1700\bin\libpq.dll'
    Left = 528
    Top = 144
  end
  object Q_login: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM corretor '
      'WHERE cred = :cred; ')
    Left = 32
    Top = 48
    ParamData = <
      item
        Name = 'CRED'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object Q_logincred: TLargeintField
      FieldName = 'cred'
      Origin = 'cred'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Q_loginnome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 80
    end
    object Q_loginsenha: TIntegerField
      FieldName = 'senha'
      Origin = 'senha'
    end
  end
end
