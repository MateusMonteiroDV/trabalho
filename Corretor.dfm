object F_corretor: TF_corretor
  Left = 0
  Top = 0
  Caption = 'F_corretor'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnShow = FormShow
  TextHeight = 15
  object Label1: TLabel
    Left = 136
    Top = 104
    Width = 31
    Height = 15
    Caption = 'senha'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 136
    Top = 152
    Width = 23
    Height = 15
    Caption = 'cred'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 136
    Top = 59
    Width = 31
    Height = 15
    Caption = 'nome'
    FocusControl = DBEdit3
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 296
    Width = 624
    Height = 145
    Align = alBottom
    DataSource = Q_dados_corretor
    TabOrder = 0
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
        FieldName = 'nome'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'senha'
        Width = 100
        Visible = True
      end>
  end
  object DBEdit1: TDBEdit
    Left = 136
    Top = 120
    Width = 154
    Height = 23
    DataField = 'senha'
    DataSource = D_corretor
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 136
    Top = 168
    Width = 154
    Height = 23
    DataField = 'id'
    DataSource = D_corretor
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 136
    Top = 75
    Width = 154
    Height = 23
    DataField = 'nome'
    DataSource = D_corretor
    TabOrder = 3
  end
  object B_corretor: TButton
    Left = 136
    Top = 224
    Width = 154
    Height = 25
    Caption = 'B_corretor'
    TabOrder = 4
    OnClick = B_corretorClick
  end
  object Q_corretor: TFDQuery
    Active = True
    CachedUpdates = True
    Connection = F_login.FDConnection1
    SQL.Strings = (
      ' SELECT * FROM corretor;')
    Left = 24
    Top = 152
    object Q_corretorsenha: TIntegerField
      FieldName = 'senha'
      Origin = 'senha'
    end
    object Q_corretorid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Q_corretornome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 80
    end
  end
  object Q_dados_corretor: TDataSource
    DataSet = Q_dado_corretor
    Left = 40
    Top = 56
  end
  object D_corretor: TDataSource
    DataSet = Q_corretor
    Left = 32
    Top = 232
  end
  object Q_dado_corretor: TFDQuery
    CachedUpdates = True
    Connection = F_login.FDConnection1
    SQL.Strings = (
      'SELECT * FROM corretor;')
    Left = 376
    Top = 120
    object Q_dado_corretorid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Q_dado_corretornome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 80
    end
    object Q_dado_corretorsenha: TIntegerField
      FieldName = 'senha'
      Origin = 'senha'
    end
  end
end
