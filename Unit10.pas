unit Unit10;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Unit9, IPPeerClient, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, REST.Response.Adapter, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FireDAC.Stan.StorageJSON, REST.Client, REST.Authenticator.OAuth,  REST.Types,
  Data.Bind.Components, Data.Bind.ObjectScope, Vcl.StdCtrls, frmMainUnit;

type
  TForm10 = class(TForm)
    FDStanStorageJSONLink1: TFDStanStorageJSONLink;
    FDMemTable1: TFDMemTable;
    DataSource1: TDataSource;
    DBGridEh1: TDBGridEh;
    RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter;
    RESTResponse1: TRESTResponse;
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    OAuth2Authenticator1: TOAuth2Authenticator;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;

implementation

{$R *.dfm}

procedure TForm10.Button1Click(Sender: TObject);
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
  restReq.Resource := edit2.Text;//?type=PHARMACY';
  RESTReq.Method := TRESTRequestMethod.rmGET; ;

    try
      RESTReq.Execute;
      RESTResponseDataSetAdapter1.Active := true;
    except
    on e:exception do
      showmessage(e.Message);
    end;
end;

end.
