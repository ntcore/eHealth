unit frmButtosUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmButtonsFrm = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmButtonsFrm: TfrmButtonsFrm;

implementation

{$R *.dfm}

uses frmLegalEntityUnit, Unit10, frmMed_regUnit;

procedure TfrmButtonsFrm.Button1Click(Sender: TObject);
var
  frmGet: TForm10;
begin
  frmGet := TForm10.Create(self);
  frmGet.ShowModal;
  frmGet.Free;
end;

procedure TfrmButtonsFrm.Button2Click(Sender: TObject);
var
  frm: TfrmLegalEntity;
begin
  frm := TfrmLegalEntity.Create(nil);
  frm.ShowModal;
  frm.Free;
end;

procedure TfrmButtonsFrm.Button3Click(Sender: TObject);
var
  frm: TfrmMed_reg;
begin
  frm := TfrmMed_reg.Create(application);
  frm.ShowModal;
  frm.Free;
end;

end.
