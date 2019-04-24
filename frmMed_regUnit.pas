unit frmMed_regUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, REST.Client, REST.Types,
  REST.Authenticator.OAuth, Data.Bind.Components, Data.Bind.ObjectScope;

type
  TfrmMed_reg = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    RESTResponse1: TRESTResponse;
    OAuth2Authenticator1: TOAuth2Authenticator;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMed_reg: TfrmMed_reg;

implementation

{$R *.dfm}

procedure TfrmMed_reg.Button1Click(Sender: TObject);
var
  restClient: TRESTClient;
  restReq: TRESTRequest;
begin
  restClient := TRESTClient.Create(Edit1.Text);
  restClient.Authenticator := OAuth2Authenticator1;

  restClient.ProxyServer := 'localhost';
  restClient.ProxyPort := 8888;

  restReq := TRESTRequest.Create(nil);
  restReq.Client := restClient;
  restReq.Response := RESTResponse1;
  restReq.Resource := edit2.Text;
  RESTReq.Method := TRESTRequestMethod.rmGET; ;

    try
      RESTReq.Execute;
      memo1.Text:=RESTResponse1.Content;

    except
    on e:exception do
      showmessage(e.Message);
    end;
end;

end.
