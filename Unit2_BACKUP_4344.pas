unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus;

<<<<<<< .merge_file_a06584
type//dobavlen commentarij na osnovn vetku
=======
type//dobavlen commentarij na dop vetku
>>>>>>> .merge_file_a02552
  TForm2 = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Regenter: TButton;
    Mainmenu: TButton;
    SName: TEdit;
    FName: TEdit;
    NGroup: TEdit;
    procedure MainmenuClick(Sender: TObject);
    procedure RegenterClick(Sender: TObject);
    procedure NGroupKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure SNameKeyPress(Sender: TObject; var Key: Char);
    procedure FNameKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations}
  public
    { Public declarations}
  end;

var
  Form2: TForm2;


implementation

uses Unit1, Unit6;

{$R *.dfm}



procedure TForm2.MainmenuClick(Sender: TObject);
begin
 Form1.Visible:=True;
 Form2.Close;
end;

procedure TForm2.RegenterClick(Sender: TObject);
const  PassVar='abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';  //постоянная значений символа пароля
var f: TextFile;             //переменная связи с файлом login.txt
    FileDir: String;         //переменная пути
    FileDirLength: Integer;  //переменная длины строки пути
    str,bufstr: string;      //строковые переменные проверки вторичной регистрации
    i,c: integer;            //переменная цикла
    j,k: integer;            //переменные номера раздела/вопроса
    RandomNum: integer;      //переменная случайного значения
    PassLetter: string;      //переменная одного символа пароля
label m1,m2;

begin
randomize; //подключение генератора случайных чисел

//Проверка заполненности полей
//----------------------------------------------------------------------------
if SName.Text='' then                         //не введена фамилия
begin
  if FName.Text='' then                       //не введены фамилия и имя
  begin
    if NGroup.Text='' then                    //не введены фамилия, имя, номер группы
    begin
      ShowMessage('Заполните все поля');
      exit;
    end
    else                                      //не введены фамилия и имя, введена группа
    begin
        ShowMessage('Введите фамилию и имя');
        exit;
    end;
  end
  else                                        //не введена фамилия, введено имя
  begin
    if NGroup.Text='' then                    //не введены фамилия и номер группы, введено имя
    begin
      ShowMessage('Введите фамилию и номер группы');
      exit;
    end
    else                                      //не введена фамилия, введны номер группы и имя
    begin
      ShowMessage('Введите фамилию');
      exit;
    end;
  end;
end
else                                          //введена фамилия
begin
  if FName.Text='' then                       //не введено имя, введена фамилия
  begin
    if Ngroup.Text='' then                    //не введены имя и номер группы, введена фамилия
    begin
      ShowMessage('Введите имя и номер группы');
      exit;
    end
    else                                      //не введено имя, введены фамилия и номер группы
    begin
      ShowMessage('Введите имя');
      exit;
    end;
  end
  else                                        //введены имя и фамилия
  begin
    if NGroup.Text='' then                    //не введен номер группы, введены имя и фамилия
    begin
    ShowMessage('Введите номер группы');
    exit;
    end;
                                              //заполнены все поля
  end;
end;
//----------------------------------------------------------------------------
//Создание варианта теста (случайно выбранных пяти вопросов для каждого раздела)
//----------------------------------------------------------------------------
for j:=1 to 4 do                                         //номер раздела
  for k:=1 to 5 do                                       //номер вопроса
    begin
m1:                                                      //метка возвращения при совпадении вопросов в разделе
    RandomNum:=random(19)+1;                             //выбор случайного из 20 возможных вопросов
    for i:=1 to 5 do                                     //цикл проверки на совпадение
      if RandomNum=RandomNumsArray[j,i] then goto m1;    //переход по метке m1 при совпадении
    RandomNumsArray[j,k]:=RandomNum;                     //присвоение массиву числа при несовпадении
    end;
//----------------------------------------------------------------------------


 FileDir:=Application.ExeName; //возвращаем путь к файлу "D:\Documents\Курсовик\Project.exe"
 FileDirLength:=Length(FileDir);
 SetLength(FileDir,FileDirLength-12);
 AssignFile(f,FileDir+'login.dat');
 LoginCheck:=TStringList.Create;
 LoginCheck.LoadFromFile('login.dat');
 str:=(SName.Text+' '+FName.Text+' '+NGroup.Text);
 for i:=0 to LoginCheck.Count-1 do
  begin
  bufstr:=LoginCheck.Strings[i];
  SetLength(bufstr,Length(bufstr)-7);
  if str=bufstr then
    begin
    bufPassString:=LoginCheck.Strings[i];
    Form2.Enabled:=False;
    Form6.Show;
    Form2.Close;
    exit;
    end;
  end;

//Генерация пароля
//----------------------------------------------------------------------------
    for c:=1 to 6 do
      begin
m2:   PassLetter:=PassVar[random(length(PassVar)+1)];
      if PassLetter=' ' then goto m2
      else PassGen:=PassGen+PassLetter;
      end;
      ShowMessage('Запомните ваш пароль для повторного входа в программу: '+PassGen);
//----------------------------------------------------------------------------

    str:=str+' '+PassGen;
    Append(f);
    Writeln(f,str);
    CloseFile(f);
    Form1.BReg.Enabled:=False;
    Form1.BBegin.Enabled:=True;
    Form1.SName.Caption:=SName.Text;
    Form1.FName.Caption:=FName.Text;
    Form1.NGroup.Caption:=NGroup.Text;
    Form1.Visible:=True;
    Form2.Close;
end;


procedure TForm2.NGroupKeyPress(Sender: TObject; var Key: Char);
begin
 if not (key in ['0'..'9',#8]) then
 key:=#0;
end;


procedure TForm2.FormShow(Sender: TObject);
begin
  Form2.Top:=Round(Screen.Height/2-(Form2.Height/2));
  Form2.Left:=Round(Screen.Width/2-(Form2.Width/2));
end;

procedure TForm2.SNameKeyPress(Sender: TObject; var Key: Char);
begin
if Key=' ' then Key:=#0;
end;

procedure TForm2.FNameKeyPress(Sender: TObject; var Key: Char);
begin
if Key=' ' then Key:=#0;
end;

end.
