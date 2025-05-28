object F_cliente: TF_cliente
  Left = 0
  Top = 0
  Caption = 'F_cliente'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 208
    Top = 136
    Width = 17
    Height = 15
    Caption = 'cpf'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 208
    Top = 184
    Width = 31
    Height = 15
    Caption = 'nome'
    FocusControl = DBEdit2
  end
  object Button1: TButton
    Left = 32
    Top = 60
    Width = 75
    Height = 25
    Caption = 'voltar'
    TabOrder = 0
    OnClick = Button1Click
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 321
    Width = 624
    Height = 120
    Align = alBottom
    DataSource = D_cliente
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'cpf'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Width = 200
        Visible = True
      end>
  end
  object DBEdit1: TDBEdit
    Left = 208
    Top = 157
    Width = 200
    Height = 23
    DataField = 'cpf'
    DataSource = D_cliente
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 208
    Top = 200
    Width = 200
    Height = 23
    DataField = 'nome'
    DataSource = D_cliente
    TabOrder = 3
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 0
    Width = 624
    Height = 25
    DataSource = D_cliente
    VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
    Align = alTop
    TabOrder = 4
    ExplicitLeft = 232
    ExplicitTop = 56
    ExplicitWidth = 240
  end
  object Q_cliente: TFDQuery
    Active = True
    CachedUpdates = True
    Connection = F_login.FDConnection1
    SQL.Strings = (
      'SELECT * FROM cliente;')
    Left = 32
    Top = 160
    object Q_clientecpf: TLargeintField
      FieldName = 'cpf'
      Origin = 'cpf'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Q_clientenome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 80
    end
  end
  object D_cliente: TDataSource
    DataSet = Q_cliente
    Left = 32
    Top = 224
  end
end
