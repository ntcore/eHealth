������������ �� �������������

�������� ������� �� ������ ������������ � ����� ���������.. ������ ���������� �����.. ����� ����� ������� base64, ����� �������  � ���������

```sh
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
```


��� ����������� ����� �������� ������������� �� LegalEntity..  � ���� ������ � ��������� �� ������ ��������� �� �����  ��� ��� ��� ������ � �� ��������� �� ��������

  ```sh
������� ���.
ϳ��������� ��� ��� ���� ������� ������ �� ��������� �������������� Subline Text 3 � ����������� ������ "show_encoding": true:
1. ������� ������� json

2. ³�������� Subline Text 3
2.1. ������� �� ���������� json � �������� Subline Text 3 (��������� ������������, �� ��������� ��������� UTF-8), �������� ����

3. ��������� ����� (��������� ����� https://ca.informjust.ua/sign)
3.1. ���������:
��� �� ����� � ������ ���� (������ CAdES)
�������� ������: ����-4145 (������� �� �������������)
������ ������ ������: � ������� ������ ��� �������� (CAdES-X-Long) (������� �� �������������)
3.2. ����������� ���� ��� ������
3.3. ���������:
������� �������
������ ����, � ����� �� �������������: ������� ��� ����
������ ���� ���������� �����: ����������� ���� ���������� �����
������ ������ �� ���������� �����: ������� ������ �� ���������� �����
3.4. ��������� "�������" �� �������� ��������� ����.

4. ³�������� ��������� ���� � Subline Text 3, ������������� ���� � �������� UTF-8 �� ��������
http://prntscr.com/mnnlzs
http://prntscr.com/mnmhto

5. ���������� ���� � base64 �� ��������� ������
https://www.base64encode.org/
����������� ��������� ���� �� ��������� ENCODE
http://prntscr.com/mnmne9
����������� ����������� ����.

6. ���������� ������� � ������������ ����� � json ������ ���� "signed_legal_entity_request".

```