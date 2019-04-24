object frmLegalEntity: TfrmLegalEntity
  Left = 0
  Top = 0
  Caption = 'Legal Entity.'
  ClientHeight = 695
  ClientWidth = 954
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  DesignSize = (
    954
    695)
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 400
    Top = 39
    Width = 249
    Height = 648
    Anchors = [akLeft, akTop, akBottom]
    Lines.Strings = (
      '{'
      '  "name": "'#1050#1083#1110#1085#1110#1082#1072' IT-F",'
      '  "short_name": "'#1053#1086#1091#1085#1077#1081#1084'",'
      '  "public_name": "'#1053#1086#1091#1085#1077#1081#1084'",'
      '  "type": "PHARMACY",'
      '  "owner_property_type": "STATE",'
      '  "legal_form": "140",'
      '  "edrpou": "32323454",'
      '  "kveds": ['
      '    "86.10"'
      '  ],'
      '  "addresses": ['
      '    {'
      '      "type": "RESIDENCE",'
      '      "country": "UA",'
      '      "area": "'#1046#1080#1090#1086#1084#1080#1088#1089#1100#1082#1072'",'
      '      "region": "'#1041#1077#1088#1076#1080#1095#1110#1074#1089#1100#1082#1080#1081'",'
      '      "settlement": "'#1050#1080#1111#1074'",'
      '      "settlement_type": "CITY",'
      '      "settlement_id": "43432432",'
      '      "street_type": "STREET",'
      '      "street": "'#1074#1091#1083'. '#1053#1110#1078#1080#1085#1089#1100#1082#1072'",'
      '      "building": "15",'
      '      "apartment": "23",'
      '      "zip": "02090"'
      '    }'
      '  ],'
      '  "phones": ['
      '    {'
      '      "type": "MOBILE",'
      '      "number": "+380503410870"'
      '    }'
      '  ],'
      '  "email": "email@example.com",'
      '  "website": "www.msp.com.ua",'
      '  "receiver_funds_code": "AB12345",'
      '  "beneficiary": "'#1041#1086#1088#1080#1089#1086#1074' '#1041#1086#1088#1080#1089' '#1041#1086#1088#1080#1089#1086#1074#1080#1095'",'
      '  "owner": {'
      '    "first_name": "'#1055#1077#1090#1088#1086'",'
      '    "last_name": "'#1030#1074#1072#1085#1086#1074'",'
      '    "second_name": "'#1052#1080#1082#1086#1083#1072#1081#1086#1074#1080#1095'",'
      '    "tax_id": "3015492563",'
      '    "birth_date": "1991-08-19",'
      '    "gender": "MALE",'
      '    "email": "email@example.com",'
      '    "documents": ['
      '      {'
      '        "type": "PASSPORT",'
      '        "number": "120518",'
      '        "issued_by": "'#1056#1086#1082#1080#1090#1085#1103#1085#1089#1100#1082#1080#1084' '#1056#1042' '#1043#1059' '#1052#1042#1057' '
      #1050#1080#1111#1074#1089#1100#1082#1086#1111' '#1086#1073#1083#1072#1089#1090#1110'",'
      '        "issued_at": "2017-02-28"'
      '      }'
      '    ],'
      '    "phones": ['
      '      {'
      '        "type": "MOBILE",'
      '        "number": "+380503410870"'
      '      }'
      '    ],'
      '    "position": "P6"'
      '  },'
      '  "medical_service_provider": {'
      '    "licenses": ['
      '      {'
      '        "license_number": "fd123443",'
      '        "issued_by": "'#1050#1074#1072#1083#1110#1092#1110#1082#1072#1094#1081#1085#1072' '#1082#1086#1084#1110#1089#1110#1103'",'
      '        "issued_date": "2017-02-28",'
      '        "expiry_date": "2017-02-28",'
      '        "active_from_date": "2017-02-28",'
      '        "what_licensed": "'#1088#1077#1072#1083#1110#1079#1072#1094#1110#1103' '#1085#1072#1088#1082#1086#1090#1080#1095#1085#1080#1093' '
      #1079#1072#1089#1086#1073#1110#1074'",'
      '        "order_no": "'#1042#1040'43234"'
      '      }'
      '    ],'
      '    "accreditation": {'
      '      "category": "'#1076#1088#1091#1075#1072'",'
      '      "issued_date": "2017-02-28",'
      '      "expiry_date": "2017-02-28",'
      '      "order_no": "fd123443",'
      '      "order_date": "2017-02-28"'
      '    }'
      '  },'
      '  "archive": ['
      '    {'
      '      "date": "2017-02-28",'
      '      "place": "'#1074#1091#1083'. '#1043#1088#1091#1096#1077#1074#1089#1100#1082#1086#1075#1086' 15"'
      '    }'
      '  ],'
      '  "security": {'
      '    "redirect_uri": "https://test46.com"'
      '  },'
      '  "public_offer": {'
      '    "consent_text": "Consent text",'
      '    "consent": true'
      '  }'
      '}')
    TabOrder = 3
  end
  object Memo2: TMemo
    Left = 8
    Top = 308
    Width = 384
    Height = 379
    Anchors = [akLeft, akTop, akBottom]
    Lines.Strings = (
      '{'
      '  "signed_legal_entity_request": "...",'
      '  "signed_content_encoding": "base64"'
      '}')
    TabOrder = 0
    WordWrap = False
    ExplicitHeight = 165
  end
  object Button2: TButton
    Left = 8
    Top = 277
    Width = 75
    Height = 25
    Caption = 'Sign'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 103
    Top = 277
    Width = 75
    Height = 25
    Caption = 'verify sign'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Edit1: TEdit
    Left = 8
    Top = 8
    Width = 185
    Height = 21
    Enabled = False
    TabOrder = 4
    Text = 'https://api-preprod.ehealth-ukraine.org'
  end
  object Edit2: TEdit
    Left = 199
    Top = 8
    Width = 606
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 5
    Text = 'api/legal_entities'
    ExplicitWidth = 422
  end
  object Button1: TButton
    Left = 860
    Top = 8
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Req'
    TabOrder = 6
    OnClick = Button1Click
    ExplicitLeft = 676
  end
  object Edit3: TEdit
    Left = 8
    Top = 59
    Width = 305
    Height = 21
    TabOrder = 7
    Text = 'https://api.demo.asclepius.com.ua'
  end
  object Edit4: TEdit
    Left = 8
    Top = 32
    Width = 185
    Height = 21
    Enabled = False
    TabOrder = 8
    Text = 'https://api-preprod.ehealth-ukraine.org'
  end
  object Memo3: TMemo
    Left = 8
    Top = 86
    Width = 384
    Height = 185
    Lines.Strings = (
      'Memo3')
    TabOrder = 9
    WordWrap = False
  end
  object Button4: TButton
    Left = 199
    Top = 277
    Width = 75
    Height = 25
    Caption = 'Button4'
    TabOrder = 10
    OnClick = Button4Click
  end
  object OpenDialog1: TOpenDialog
    Left = 536
  end
  object OAuth2Authenticator_PreProd: TOAuth2Authenticator
    AccessToken = 'e5293ef013d83a28a71f'
    AccessTokenEndpoint = 'https://api-preprod.ehealth-ukraine.org'
    AuthCode = 'aE5qYWNaeWNEellpNDlINkpOMmVtZz09'
    AuthorizationEndpoint = 'https://auth-preprod.ehealth-ukraine.org'
    ClientID = '3b2b0bdf-da9d-4672-8945-e040495222a4'
    ClientSecret = '384ad6b35831f2640956'
    RedirectionEndpoint = 'https://test46.com'
    RefreshToken = '2f7da1c43217a57b2de4'
    ResponseType = rtTOKEN
    Scope = 
      'legal_entity:read legal_entity:write legal_entity:mis_verify rol' +
      'e:read user:request_factor user:approve_factor event:read client' +
      ':read connection:read connection:write connection:refresh_secret' +
      ' connection:delete'
    TokenType = ttBEARER
    Left = 344
    Top = 32
  end
  object RESTResponse1: TRESTResponse
    Left = 40
    Top = 112
  end
  object OAuth2Authenticator_demo: TOAuth2Authenticator
    AccessToken = '7b341071a99411235bcd'
    AccessTokenEndpoint = 'https://auth.demo.asclepius.com.ua'
    AuthCode = 'UnkwMmtnNldmcVUzVUEvMU1wVXpmQT09'
    AuthorizationEndpoint = 'https://api.demo.asclepius.com.ua'
    ClientID = 'f4479c32-bf11-4931-b0be-e8f91b4b78da'
    ClientSecret = '22413c98f46bac3f6638'
    RedirectionEndpoint = 'https://test46.com'
    RefreshToken = '9c577a4f28dccbb7e554'
    ResponseType = rtTOKEN
    Scope = 'legal_entity:write'
    TokenType = ttBEARER
    Left = 200
    Top = 112
  end
end
