object Form10: TForm10
  Left = 0
  Top = 0
  Caption = 'frmGetLst'
  ClientHeight = 431
  ClientWidth = 754
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  DesignSize = (
    754
    431)
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 8
    Top = 39
    Width = 738
    Height = 384
    Anchors = [akLeft, akTop, akRight, akBottom]
    AutoFitColWidths = True
    DataSource = DataSource1
    DynProps = <>
    OptionsEh = [dghFixed3D, dghResizeWholeRightPart, dghHighlightFocus, dghClearSelection, dghDialogFind, dghColumnResize, dghColumnMove, dghExtendVertLines]
    TabOrder = 0
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'addresses'
        Footers = <>
        Width = 128
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'archive'
        Footers = <>
        Width = 33
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'beneficiary'
        Footers = <>
        Width = 63
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'edrpou'
        Footers = <>
        Width = 115
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'email'
        Footers = <>
        Width = 187
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'id'
        Footers = <>
        Width = 251
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'inserted_at'
        Footers = <>
        Width = 96
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'inserted_by'
        Footers = <>
        Width = 119
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'is_active'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'kveds'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'legal_form'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'medical_service_provider'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'mis_verified'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'name'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'nhs_comment'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'nhs_reviewed'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'nhs_verified'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'owner_property_type'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'phones'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'public_name'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'receiver_funds_code'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'short_name'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'status'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'type'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'updated_at'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'updated_by'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'website'
        Footers = <>
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Button1: TButton
    Left = 655
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 8
    Top = 12
    Width = 353
    Height = 21
    TabOrder = 2
    Text = 'https://api.demo.asclepius.com.ua'
  end
  object Edit2: TEdit
    Left = 367
    Top = 12
    Width = 258
    Height = 21
    TabOrder = 3
    Text = '/api/legal_entities'
  end
  object FDStanStorageJSONLink1: TFDStanStorageJSONLink
    Left = 240
    Top = 160
  end
  object FDMemTable1: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 112
    Top = 232
  end
  object DataSource1: TDataSource
    DataSet = FDMemTable1
    Left = 112
    Top = 280
  end
  object RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter
    Dataset = FDMemTable1
    FieldDefs = <>
    ResponseJSON = RESTResponse1
    RootElement = 'data'
    NestedElements = True
    Left = 624
    Top = 168
  end
  object RESTResponse1: TRESTResponse
    Left = 568
    Top = 296
  end
  object OAuth2Authenticator1: TOAuth2Authenticator
    AccessToken = '7b341071a99411235bcd'
    AccessTokenEndpoint = 'https://api.demo.asclepius.com.ua'
    AuthorizationEndpoint = 'https://auth.demo.asclepius.com.ua'
    ClientID = 'f4479c32-bf11-4931-b0be-e8f91b4b78da'
    ClientSecret = '22413c98f46bac3f6638'
    RedirectionEndpoint = 'https://test46.com'
    RefreshToken = '9c577a4f28dccbb7e554'
    ResponseType = rtTOKEN
    Scope = 'legal_entity:write'
    TokenType = ttBEARER
    Left = 624
    Top = 104
  end
end
