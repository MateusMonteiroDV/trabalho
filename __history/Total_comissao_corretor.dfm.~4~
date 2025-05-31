object F_comissao: TF_comissao
  Left = 0
  Top = 0
  Caption = 'F_comissao'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object G_comissao: TDBGrid
    Left = 0
    Top = 0
    Width = 624
    Height = 441
    Align = alClient
    DataSource = D_comissao
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id_corretor'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'total_comissao'
        Width = 200
        Visible = True
      end>
  end
  object Q_comissao: TFDQuery
    Active = True
    Connection = F_login.FDConnection1
    SQL.Strings = (
      'select * from total_comissao();')
    Left = 512
    Top = 376
    object Q_comissaoid_corretor: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'id_corretor'
      Origin = 'id_corretor'
      ReadOnly = True
    end
    object Q_comissaonome: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome'
      Origin = 'nome'
      ReadOnly = True
      Size = 8190
    end
    object Q_comissaototal_comissao: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'total_comissao'
      Origin = 'total_comissao'
      ReadOnly = True
      Precision = 64
      Size = 64
    end
  end
  object D_comissao: TDataSource
    DataSet = Q_comissao
    Left = 512
    Top = 328
  end
end
