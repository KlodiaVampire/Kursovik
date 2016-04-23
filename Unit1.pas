unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    BTest: TMenuItem;
    BBegin: TMenuItem;
    BExit: TMenuItem;
    BHelp: TMenuItem;
    BReg: TMenuItem;
    SName: TLabel;
    FName: TLabel;
    NGroup: TLabel;
    Summary: TGroupBox;
    Part1: TGroupBox;
    Part2: TGroupBox;
    Part3: TGroupBox;
    SummaryRight: TLabel;
    SummaryWrong: TLabel;
    SummaryAll: TLabel;
    Part4: TGroupBox;
    Part1Right: TLabel;
    Part1Wrong: TLabel;
    Part1All: TLabel;
    Part2Right: TLabel;
    Part2Wrong: TLabel;
    Part2All: TLabel;
    Part3Right: TLabel;
    Part3Wrong: TLabel;
    Part3All: TLabel;
    Part4Right: TLabel;
    Part4Wrong: TLabel;
    Part4All: TLabel;
    procedure BExitClick(Sender: TObject);
    procedure BRegClick(Sender: TObject);
    procedure BBeginClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BHelpClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations}
  public
    { Public declarations}
  end;

var
  Form1: TForm1;
  min,sec: integer;                                   //глобальный переменные времени таймера
  SName,FName,NGroup: string;                         //глобальные переменные имени, фамилии, номера группы
  GlobSectionNum: integer;                            //глобальная переменная номера раздела вопроса
  GlobQuestionNum: integer;                           //глобальная переменная номера вопроса
  QuestionArray: array[1..4,1..20] of string;         //глобальный двумерный массив идентификатора вопроса [номер раздела,номер вопроса]
  AnswerArray: array[1..4,1..20] of string;           //глобальный двумерный массив правильных ответов [номер раздела, номер вопроса]
  AnswerVarsArray: array[1..4,1..20,1..4] of string;  //глобальный трехмерный массив вариантов ответов [номер раздела, номер вопроса, номер варианта ответа]
  RandomNumsArray: array[1..4,1..5] of integer;       //глобальный двумерный массив хранения случайно сгенерированного варианта опроса [номер раздела,номер вопроса]
  AnswerIndexArray: array[1..4,1..5] of string;       //глобальный двумерный массив хранения выбранного ответа
  SummaryArray: array[1..4,1..5] of integer;          //глобальная переменная баллов
  ButtonArray: array[1..20] of integer;               //глобальная переменная контроля кнопок
  AnswerIndexArrayCheck: integer;                     //глобальная переменная выбранных ответов
  BEnterCase: integer;                                //глобальная переменная обращения к конкретной кнопке из Form5 в From3
  PassGen: string;                                    //глобальная переменная пароля
  LoginCheck: TStrings;                               //глобальный список строк проверки совпадения регистрации
  bufPassString: string;                              //глобальная переменная хранения строки совпадения
  RightAnswer: integer;                               //глобальная переменная хранения кол-ва правильных ответов
  WrongAnswer: integer;                               //глобальная переменная хранения кол-ва неправильных ответов
  EndTest: Boolean;                                   //глобальная переменная контроля завершения теста
  Part1AllX,Part1RightX,Part1WrongX: integer;         //глобальные переменные итогов 1ого раздела
  Part2AllX,Part2RightX,Part2WrongX: integer;         //глобальные переменные итогов 2ого раздела
  Part3AllX,Part3RightX,Part3WrongX: integer;         //глобальные переменные итогов 3ого раздела
  Part4AllX,Part4RightX,Part4WrongX: integer;         //глобальные переменные итогов 4ого раздела
  SummaryAllX,SummaryRightX,SummaryWrongX: integer;   //глобальные переменные общих итогов
  Ch11,Ch12,Ch13,Ch14,Ch15: Boolean;                  //глобальная переменная проверки нажатия кнопок 1ого раздела
  Ch21,Ch22,Ch23,Ch24,Ch25: Boolean;                  //глобальная переменная проверки нажатия кнопок 2ого раздела
  Ch31,Ch32,Ch33,Ch34,Ch35: Boolean;                  //глобальная переменная проверки нажатия кнопок 3ого раздела
  Ch41,Ch42,Ch43,Ch44,Ch45: Boolean;                  //глобальная переменная проверки нажатия кнопок 4ого раздела

implementation

uses Unit2, Unit3, Unit4, Unit5;

{$R *.dfm}


procedure TForm1.BExitClick(Sender: TObject);
begin
  if MessageDlg('Вы действительно хотите выйти?', mtConfirmation, [mbYes, mbNo], MB_ICONQUESTION) = mrYes then
  Application.Terminate;
end;

procedure TForm1.BRegClick(Sender: TObject);
begin
 Form1.Visible:=False;
 Form2.Show;
end;


procedure TForm1.BBeginClick(Sender: TObject);
begin
 Form1.Visible:=False;
 Form3.Show;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  min:=30;
  sec:=0;
  if EndTest=True then BBegin.Enabled:=False;
  Form1.Top:=Round(Screen.Height/2-(Form1.Height/2));
  Form1.Left:=Round(Screen.Width/2-(Form1.Width/2));
end;

procedure TForm1.BHelpClick(Sender: TObject);
begin
  Form1.Visible:=False;
  Form4.Show;
end;

procedure TForm1.FormCreate(Sender: TObject);
var QuestionFile: TextFile;   //переменная файла вопросов/правильных ответов
    AnswerFile: TextFile;     //переменная файла вариантов ответа
    bufQuestion: string;      //переменная хранения строки вопроса
    bufPos: integer;          //переменная хранения положения символа #
    bufLength: integer;       //переменная хранения длины строки вопроса
    bufAnswer: string;        //переменная хранения правильного ответа
    bufAnswerVar: string;     //переменная хранения строки вариантов ответа
    bufAnswerLetter: char;    //переменная хранения буквы правильного ответа
    AnswerVar: string;        //переменная сложения букв правильного ответа
    i: integer;               //переменная цикла
    j,k,n: integer;           //переменные номера вопроса/раздела/варианта ответа
begin
{$Hints Off}                  //выключение подсказок делфи

EndTest:=False;
Part1WrongX:=0;
Part1RightX:=0;
Part1AllX:=0;
Part2WrongX:=0;
Part2RightX:=0;
Part2AllX:=0;
Part3WrongX:=0;
Part3RightX:=0;
Part3AllX:=0;
Part4WrongX:=0;
Part4RightX:=0;
Part4AllX:=0;
SummaryRightX:=0;
SummaryWrongX:=0;
SummaryAllX:=0;
Ch11:=False;
Ch12:=False;
Ch13:=False;
Ch14:=False;
Ch15:=False;
Ch21:=False;
Ch22:=False;
Ch23:=False;
Ch24:=False;
Ch25:=False;
Ch31:=False;
Ch32:=False;
Ch33:=False;
Ch34:=False;
Ch35:=False;
Ch41:=False;
Ch42:=False;
Ch43:=False;
Ch44:=False;
Ch45:=False;
//---------------------------------------------------------------------------------
//Извлечение вопросов
//---------------------------------------------------------------------------------
AssignFile(QuestionFile,'questions'); //подключаем файл вопросов
Reset(QuestionFile);                  //открываем файл вопросов для чтения
j:=1;
k:=1;
n:=1;
while not EOF(QuestionFile) do
  begin
  ReadLn(QuestionFile,bufQuestion); //читаем строку
  bufPos:=pos('#',bufQuestion);     //определяем позицию #
  bufLength:=Length(bufQuestion);   //определяем длину строки
  for i:=bufPos+1 to bufLength do
    begin
    bufAnswer:=bufAnswer+bufQuestion[i];  //составляем правильное слово-ответ
    end;
  AnswerArray[j,k]:=bufAnswer;
  bufAnswer:='';
  SetLength(bufQuestion,bufPos-1);  //срезаем строку от символа # до конца строки
  QuestionArray[j,k]:=bufQuestion;  //вносим вопрос в матрицу
  k:=k+1;                           //переходим к след. вопросу
  if k>20 then
    begin
    j:=j+1;                         //переходим к след. разделу
    k:=1;
    end;
  end;
//---------------------------------------------------------------------------------
//Извлечение ответов
//---------------------------------------------------------------------------------
AssignFile(AnswerFile,'answers');                     //подключаем файл ответов
Reset(AnswerFile);                                    //открываем файл ответов для чтения
while not EOF(AnswerFile) do                          //пока не достгнем конца файла
  begin
  for j:=1 to 4 do                                    //цикл номера раздела
    for k:=1 to 20 do                                 //цикл номера вопроса
      begin
      while not EOLN(AnswerFile) do                   //пока не достигнем конца строки
        begin
        Read(AnswerFile,bufAnswerLetter);             //читаем букву в строке, присваиваем переменной bufAnswerLetter
        AnswerVar:=AnswerVar+bufAnswerLetter;         //составляем вариант ответа путем сложения букв
        if bufAnswerLetter='@' then                   //цикл проверки на разделитель вариантов ответа
          begin
          SetLength(AnswerVar,Length(AnswerVar)-1);   //отрезаем идентификатор от варианта ответа
          AnswerVarsArray[j,k,n]:=AnswerVar;          //заносим вариант ответа в соответствующую ячейку трехмерного массива
          AnswerVar:='';                              //очищаем буфер варианта ответа
          n:=n+1;                                    //увеличиваем номер варианта ответа
          end;
        end;
      n:=1;                                           //возвращаем номер варианта ответа на начальную позицию
      ReadLn(AnswerFile,bufAnswerVar);                //читаем следующую строку
  end;
  end;
end;
end.
//-------------------------------------------------------------------------------

