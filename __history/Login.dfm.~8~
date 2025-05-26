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
    Left = 132
    Top = 177
    Width = 88
    Height = 19
    Caption = 'Insira seu cred'
  end
  object Label2: TLabel
    Left = 132
    Top = 238
    Width = 97
    Height = 19
    Caption = 'insira sua senha'
  end
  object B_logar: TButton
    Left = 196
    Top = 320
    Width = 157
    Height = 49
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'logar'
    TabOrder = 0
    OnClick = B_logarClick
  end
  object T_cred: TEdit
    Left = 132
    Top = 204
    Width = 322
    Height = 27
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    ParentShowHint = False
    ShowHint = False
    TabOrder = 1
  end
  object T_senha: TEdit
    Left = 132
    Top = 265
    Width = 322
    Height = 27
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    TabOrder = 2
  end
  object StaticText1: TStaticText
    Left = 156
    Top = 146
    Width = 268
    Height = 23
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Alignment = taCenter
    Caption = 'Coloque seus dados para acessar o sistema'
    TabOrder = 3
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'User_Name=postgres'
      'Database=imovel'
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
      'WHERE id = :id; ')
    Left = 32
    Top = 48
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object Q_loginid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
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
