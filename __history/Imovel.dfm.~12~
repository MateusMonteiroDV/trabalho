object F_imovel: TF_imovel
  Left = 0
  Top = 0
  Caption = 'F_imovel'
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
    Top = 128
    Width = 37
    Height = 15
    Caption = 'codigo'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 208
    Top = 176
    Width = 49
    Height = 15
    Caption = 'endereco'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 208
    Top = 224
    Width = 21
    Height = 15
    Caption = 'tipo'
    FocusControl = DBEdit3
  end
  object B_voltar: TButton
    Left = 24
    Top = 72
    Width = 105
    Height = 25
    Caption = 'voltar'
    TabOrder = 0
    OnClick = B_voltarClick
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 321
    Width = 624
    Height = 120
    Align = alBottom
    DataSource = D_imovel
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'codigo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'endereco'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tipo'
        Width = 200
        Visible = True
      end>
  end
  object DBEdit1: TDBEdit
    Left = 208
    Top = 149
    Width = 200
    Height = 23
    DataField = 'codigo'
    DataSource = D_imovel
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 208
    Top = 192
    Width = 200
    Height = 23
    DataField = 'endereco'
    DataSource = D_imovel
    TabOrder = 3
  end
  object DBEdit3: TDBEdit
    Left = 208
    Top = 240
    Width = 200
    Height = 23
    DataField = 'tipo'
    DataSource = D_imovel
    TabOrder = 4
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 0
    Width = 624
    Height = 25
    DataSource = D_imovel
    VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
    Align = alTop
    TabOrder = 5
    ExplicitLeft = 248
    ExplicitTop = 40
    ExplicitWidth = 240
  end
  object Q_imovel: TFDQuery
    Active = True
    CachedUpdates = True
    Connection = F_login.FDConnection1
    SQL.Strings = (
      'SELECT * FROM imovel;')
    Left = 48
    Top = 240
    object Q_imovelid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Q_imovelcodigo: TIntegerField
      FieldName = 'codigo'
      Origin = 'codigo'
    end
    object Q_imovelendereco: TWideStringField
      FieldName = 'endereco'
      Origin = 'endereco'
      Size = 80
    end
    object Q_imoveltipo: TWideStringField
      FieldName = 'tipo'
      Origin = 'tipo'
      Size = 80
    end
  end
  object D_imovel: TDataSource
    DataSet = Q_imovel
    Left = 48
    Top = 184
  end
end
