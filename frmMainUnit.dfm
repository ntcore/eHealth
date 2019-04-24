object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'frmMain'
  ClientHeight = 468
  ClientWidth = 618
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    618
    468)
  PixelsPerInch = 96
  TextHeight = 13
  object Edit1: TEdit
    Left = 8
    Top = 8
    Width = 185
    Height = 21
    Enabled = False
    TabOrder = 0
    Text = 'https://api.demo.asclepius.com.ua'
  end
  object Button1: TButton
    Left = 524
    Top = 8
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Req'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Edit2: TEdit
    Left = 199
    Top = 8
    Width = 319
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 2
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
    Left = 440
    Top = 120
  end
  object RESTResponse1: TRESTResponse
    Left = 448
    Top = 168
  end
end
