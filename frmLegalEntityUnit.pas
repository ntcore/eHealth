unit frmLegalEntityUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frmMainUnit, IPPeerClient, Vcl.StdCtrls, System.AnsiStrings,
  REST.Client, REST.Authenticator.OAuth, Data.Bind.Components, REST.Types,  EncdDecd,
  Data.Bind.ObjectScope, System.JSON, System.NetEncoding, REST.Authenticator.OAuth.WebForm.Win,
  Vcl.OleCtrls, SHDocVw;// synacode;

type
  mForm =  class(Tfrm_OAuthWebForm)

  private
    procedure TitleChanged(const ATitle: string; var DoCloseWebView: boolean);
  end;

  TfrmLegalEntity = class(TForm)
    Memo1: TMemo;
    Memo2: TMemo;
    Button2: TButton;
    Button3: TButton;
    OpenDialog1: TOpenDialog;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    OAuth2Authenticator_PreProd: TOAuth2Authenticator;
    RESTResponse1: TRESTResponse;
    Edit3: TEdit;
    Edit4: TEdit;
    OAuth2Authenticator_demo: TOAuth2Authenticator;
    Memo3: TMemo;
    Button4: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    procedure createauthForm;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLegalEntity: TfrmLegalEntity;

implementation

{$R *.dfm}



procedure mForm.TitleChanged(const ATitle: string;
  var DoCloseWebView: boolean);
begin
  if (StartsText('Success code', ATitle)) then
  begin
    frmLegalEntity.OAuth2Authenticator_PreProd.AuthCode:= Copy(ATitle, 14, Length(ATitle));
    if (frmLegalEntity.OAuth2Authenticator_PreProd.AuthCode = '') then
      DoCloseWebView := TRUE;
  end;
end;

   {
function EncodeBase64(const inStr: string): string;

  function Encode_Byte(b: Byte): AnsiChar;
  const
    Base64Code: string[64] =
      'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/';
  begin
    Result := Base64Code[(b and $3F)+1];
  end;

var
  i: Integer;
begin
  i := 1;
  Result := '';
  while i <= Length(InStr) do
  begin
    Result := Result + Encode_Byte(Byte(inStr[i]) shr 2);
    Result := Result + Encode_Byte((Byte(inStr[i]) shl 4) or (Byte(inStr[i+1]) shr 4));
    if i+1 <= Length(inStr) then
      Result := Result + Encode_Byte((Byte(inStr[i+1]) shl 2) or (Byte(inStr[i+2]) shr 6))
    else
      Result := Result + '=';
    if i+2 <= Length(inStr) then
      Result := Result + Encode_Byte(Byte(inStr[i+2]))
    else
      Result := Result + '=';
    Inc(i, 3);
  end;
}

// Base64 decoding
function DecodeBase64(const CinLine: string): string;
const
  RESULT_ERROR = -2;
var
  inLineIndex: Integer;
  c: Char;
  x: SmallInt;
  c4: Word;
  StoredC4: array[0..3] of SmallInt;
  InLineLength: Integer;
begin
  Result := '';
  inLineIndex := 1;
  c4 := 0;
  InLineLength := Length(CinLine);

  while inLineIndex <=InLineLength do
  begin
    while (inLineIndex <= InLineLength) and (c4 < 4) do
    begin
      c := CinLine[inLineIndex];
      case c of
        '+'     : x := 62;
        '/'     : x := 63;
        '0'..'9': x := Ord(c) - (Ord('0')-52);
        '='     : x := -1;
        'A'..'Z': x := Ord(c) - Ord('A');
        'a'..'z': x := Ord(c) - (Ord('a')-26);
      else
        x := RESULT_ERROR;
      end;
      if x <> RESULT_ERROR then
      begin
        StoredC4[c4] := x;
        Inc(c4);
      end;
      Inc(inLineIndex);
    end;

    if c4 = 4 then
    begin
      c4 := 0;
      Result := Result + Char((StoredC4[0] shl 2) or (StoredC4[1] shr 4));
      if StoredC4[2] = -1 then Exit;
      Result := Result + Char((StoredC4[1] shl 4) or (StoredC4[2] shr 2));
      if StoredC4[3] = -1 then Exit;
      Result := Result + Char((StoredC4[2] shl 6) or (StoredC4[3]));
    end;
  end;
end;

function EncodeFile(const FileName: string): String;
var
  stream: TMemoryStream;
begin
  stream := TMemoryStream.Create;
  try
    stream.LoadFromFile(Filename);
    result := EncodeBase64(stream.Memory, stream.Size);
  finally
    stream.Free;
  end;
end;


procedure TfrmLegalEntity.createauthForm;

var wf: mForm;
begin
  //������� ���� � ��������� ��� ��������������� ������������ �� �������� Google
  wf := mform.Create(self);
  try
    //���������� ���������� ������� ����� Title
  //  wf.OnTitleChanged:=mForm.TitleChanged();
    //���������� ����� ��������� � �������� URL � ������ ������������� �������
//    wf.ShowModalWithURL(OAuth2Authenticator_PreProd.AuthorizationRequestURI);
//   WebBrowser1.Navigate(OAuth2Authenticator_PreProd.AuthorizationRequestURI);
  finally
    wf.Release;
  end;
  //������ AuthCode �� AccessToken
  OAuth2Authenticator_PreProd.ChangeAuthCodeToAccesToken;
  //������� �������� ������ � Memo
  Memo1.Lines.Add(OAuth2Authenticator_PreProd.AccessToken);
  Memo1.Lines.Add(OAuth2Authenticator_PreProd.RefreshToken);
  Memo1.Lines.Add(DateTimeToStr(OAuth2Authenticator_PreProd.AccessTokenExpiry));
end;


procedure TfrmLegalEntity.Button1Click(Sender: TObject);
var
  restClient: TRESTClient;
  restReq: TRESTRequest;
  JsonObj: TJSONObject;
  strs: TStrings;
begin
  if not OpenDialog1.Execute then
     exit;


  restClient := TRESTClient.Create(Edit1.Text);
  restClient.Authenticator := OAuth2Authenticator_PreProd;

  createauthForm;

  restClient.ProxyServer := 'localhost';
  restClient.ProxyPort := 8888;

  restReq := TRESTRequest.Create(nil);
  restReq.Client := restClient;
  restReq.Response := RESTResponse1;
  restReq.Resource := edit2.Text;
  RESTReq.Method := TRESTRequestMethod.rmPUT;

  strs:=tstringlist.Create();
  strs.LoadFromFile(OpenDialog1.FileName,TEncoding.UTF8);

  JsonObj := TJSONObject.Create;
  try
    JsonObj.AddPair( 'signed_legal_entity_request', TJSONString.Create( strs.Text ));
    JsonObj.AddPair('signed_content_encoding', TJSONString.Create('base64'));
    strs.SaveToFile(OpenDialog1.FileName+'used');
    try
      RESTReq.AddBody(JsonObj.ToJSON ,ctAPPLICATION_JSON );
      RESTReq.Execute;

    except
    on e:exception do
      showmessage(e.Message);
    end;
  finally
  memo3.Text := RESTResponse1.Content;
    JsonObj.Free;
    strs.Free;
  end;
end;

procedure TfrmLegalEntity.Button2Click(Sender: TObject);
var
  signedTxt: Tstrings;
  encTxt: string;
  JsonObj: TJSONObject;
begin

  signedTxt := tstringlist.Create;
  try
    if OpenDialog1.Execute then
      signedTxt.LoadFromFile(OpenDialog1.FileName)
    else
      exit;

    encTxt := TNetEncoding.Base64.Encode(signedTxt.text);

    JsonObj := TJSONObject.Create;
    try
      JsonObj.AddPair( 'signed_legal_entity_request', TJSONString.Create(encTxt) );
      JsonObj.AddPair('signed_content_encoding', TJSONString.Create('base64'));

      memo2.Text := JsonObj.ToString;
    finally
      JsonObj.Free;
    end;
//    memo2.Lines.Add('---');
//    memo2.Lines.Add(signedTxt.Text);
  finally
    signedTxt.Free;
  end;
end;

procedure TfrmLegalEntity.Button3Click(Sender: TObject);
var
  param: TRESTRequestParameter;
  restClient: TRESTClient;
  restReq: TRESTRequest;
begin
  Button2.Click;
  restClient := TRESTClient.Create(Edit1.Text);
  restClient.Authenticator := OAuth2Authenticator_demo;

  restClient.ProxyServer := 'localhost';
  restClient.ProxyPort := 8888;

  restReq := TRESTRequest.Create(nil);
  restReq.Client := restClient;
  restReq.Response := RESTResponse1;
  restReq.Resource := edit2.Text;//?type=PHARMACY';
  RESTReq.Method := TRESTRequestMethod.rmPOST;

    try
      RESTReq.Resource := 'digital_signatures/';
      RESTReq.AddBody( memo2.Text,ctAPPLICATION_JSON );
      RESTReq.Execute;

    except
    on e:exception do
      showmessage(e.Message);
    end;
end;

procedure TfrmLegalEntity.Button4Click(Sender: TObject);
begin
// WebBrowser1.Navigate(OAuth2Authenticator_PreProd.AuthorizationRequestURI);

 memo2.Lines.Add( OAuth2Authenticator_PreProd.AuthorizationRequestURI);
end;

end.
