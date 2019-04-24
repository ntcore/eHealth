object frmMed_reg: TfrmMed_reg
  Left = 0
  Top = 0
  Caption = 'frmMed_reg'
  ClientHeight = 422
  ClientWidth = 763
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 647
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 8
    Top = 12
    Width = 353
    Height = 21
    TabOrder = 1
    Text = 'https://api.demo.asclepius.com.ua'
  end
  object Edit2: TEdit
    Left = 367
    Top = 12
    Width = 258
    Height = 21
    TabOrder = 2
    Text = '/ukr_med_registry/{id}'
  end
  object Memo1: TMemo
    Left = 8
    Top = 39
    Width = 617
    Height = 369
    Lines.Strings = (
      'Memo1')
    TabOrder = 3
  end
  object RESTResponse1: TRESTResponse
    Left = 256
    Top = 64
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
    Left = 368
    Top = 64
  end
end
