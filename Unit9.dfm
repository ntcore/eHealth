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
    Width = 225
    Height = 21
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
    ExplicitLeft = 1040
  end
  object Edit2: TEdit
    Left = 239
    Top = 8
    Width = 270
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 2
    ExplicitWidth = 786
  end
  object RESTClient1: TRESTClient
    Authenticator = OAuth2Authenticator1
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'UTF-8, *;q=0.8'
    BaseURL = 'https://api.demo.asclepius.com.ua'
    Params = <>
    HandleRedirects = True
    ProxyPort = 8888
    ProxyServer = 'localhost'
    Left = 48
    Top = 48
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Params = <
      item
        name = 'type'
        Value = 'PHARMACY'
      end>
    Resource = 'api/legal_entities?'
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 48
    Top = 96
  end
  object RESTResponse1: TRESTResponse
    ContentType = 'application/json'
    Left = 152
    Top = 96
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
    Left = 152
    Top = 48
  end
end
