Рекомендация от производителя

разложил процесс на мелкие составляющие и начал ипростого.. руками подписываю файлы.. потом кладу кодирую base64, пакую джейсон  и отправляю

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


Нас интересовал метод создания подразделения он LegalEntity..  с него начали и закончили до крипто библиотек не дошел  так как эти методы с из примерами не работали

  ```sh
Доброго дня.
Підготували для Вас опис процесу підпису та кодування використовуючи Subline Text 3 з активованою опцією "show_encoding": true:
1. Формуємо валідний json

2. Відкриваємо Subline Text 3
2.1. Копіюємо та вставляємо json у документ Subline Text 3 (необхідно переконатися, що кодування документу UTF-8), зберігаємо його

3. Накладаємо підпис (наприклад через https://ca.informjust.ua/sign)
3.1. Параметри:
Дані та підпис в одному файлі (формат CAdES)
Алгоритм підпису: ДСТУ-4145 (обраний за замовчуванням)
Оберіть формат підпису: з повними даними для перевірки (CAdES-X-Long) (обраний за замовчуванням)
3.2. Завантажуємо файл для підпису
3.3. Параметри:
Файлова система
Оберіть АЦСК, в якому Ви обслуговуєтесь: обираємо Ваш АЦСК
Оберіть файл особистого ключа: завантажуємо файл особистого ключа
Введіть пароль до особистого ключа: вводимо пароль до особистого ключа
3.4. Натискаємо "Зчитати" та зберігаємо підписаний файл.

4. Відкриваємо підписаний файл у Subline Text 3, перевідкриваємо його у кодуванні UTF-8 та зберігаємо
http://prntscr.com/mnnlzs
http://prntscr.com/mnmhto

5. Закодовуємо файл у base64 за допомогою сервісу
https://www.base64encode.org/
Завантажуємо підписаний файл та натискаємо ENCODE
http://prntscr.com/mnmne9
Завантажуємо закодований файл.

6. Вставляємо контент з закодованого файлу у json запиту поле "signed_legal_entity_request".

```