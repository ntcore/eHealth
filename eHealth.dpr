program eHealth;

uses
  Vcl.Forms,
  frmMainUnit in 'frmMainUnit.pas' {frmMain},
  Unit10 in 'Unit10.pas' {Form10},
  frmLegalEntityUnit in 'frmLegalEntityUnit.pas' {frmLegalEntity},
  frmButtosUnit in 'frmButtosUnit.pas' {frmButtonsFrm},
  frmMed_regUnit in 'frmMed_regUnit.pas' {frmMed_reg},
  TestSMTPUnit1 in 'TestSMTPUnit1.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
