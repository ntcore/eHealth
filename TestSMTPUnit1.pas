unit TestSMTPUnit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase, IdMessageClient,
  IdSMTPBase, IdSMTP, Vcl.StdCtrls, IdMessage, IdIOHandler, IdIOHandlerSocket,
  IdIOHandlerStack, IdSSL, IdSSLOpenSSL;

type
  TForm1 = class(TForm)
    Button1: TButton;
    SMTP: TIdSMTP;
    IdMessage: TIdMessage;
    FIdSSLIOHandlerSocketOpenSSL: TIdSSLIOHandlerSocketOpenSSL;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
 SMTP.Host := 'smtp.ukr.net';
  SMTP.Port:=25;
  SMTP.Username:='sanches_lg@ukr.net';
  SMTP.Password:='Pravilo111';
//  SMTP.AuthType := atLogin;
  with IdMessage do
     begin
      Body.Add('Test');
      From.Text := 'sanches_lg@ukr.net';
      Recipients.EMailAddresses := '5865048@gmail.com';
      Subject := '';
      end;
   SMTP.Connect;

  FIdSSLIOHandlerSocketOpenSSL.Destination := AHost+':'+IntToStr(APort);
  FIdSSLIOHandlerSocketOpenSSL.Host := AHost;
  FIdSSLIOHandlerSocketOpenSSL.Port := APort;
  FIdSSLIOHandlerSocketOpenSSL.SSLOptions.Method := sslvSSLv3;

  SMTP.IOHandler := fIdSSLIOHandlerSocketOpenSSL;
  SMTP.UseTLS := utUseImplicitTLS;

   try
  showmessage('подключение произведено успешно');
  SMTP.Send(IdMessage);
   finally
      SMTP.Disconnect;
   end;
end;

end.
