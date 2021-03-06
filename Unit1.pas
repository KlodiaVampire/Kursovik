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
  min,sec: integer;                                   //���������� ���������� ������� �������
  SName,FName,NGroup: string;                         //���������� ���������� �����, �������, ������ ������
  GlobSectionNum: integer;                            //���������� ���������� ������ ������� �������
  GlobQuestionNum: integer;                           //���������� ���������� ������ �������
  QuestionArray: array[1..4,1..20] of string;         //���������� ��������� ������ �������������� ������� [����� �������,����� �������]
  AnswerArray: array[1..4,1..20] of string;           //���������� ��������� ������ ���������� ������� [����� �������, ����� �������]
  AnswerVarsArray: array[1..4,1..20,1..4] of string;  //���������� ���������� ������ ��������� ������� [����� �������, ����� �������, ����� �������� ������]
  RandomNumsArray: array[1..4,1..5] of integer;       //���������� ��������� ������ �������� �������� ���������������� �������� ������ [����� �������,����� �������]
  AnswerIndexArray: array[1..4,1..5] of string;       //���������� ��������� ������ �������� ���������� ������
  SummaryArray: array[1..4,1..5] of integer;          //���������� ���������� ������
  ButtonArray: array[1..20] of integer;               //���������� ���������� �������� ������
  AnswerIndexArrayCheck: integer;                     //���������� ���������� ��������� �������
  BEnterCase: integer;                                //���������� ���������� ��������� � ���������� ������ �� Form5 � From3
  PassGen: string;                                    //���������� ���������� ������
  LoginCheck: TStrings;                               //���������� ������ ����� �������� ���������� �����������
  bufPassString: string;                              //���������� ���������� �������� ������ ����������
  RightAnswer: integer;                               //���������� ���������� �������� ���-�� ���������� �������
  WrongAnswer: integer;                               //���������� ���������� �������� ���-�� ������������ �������
  EndTest: Boolean;                                   //���������� ���������� �������� ���������� �����
  Part1AllX,Part1RightX,Part1WrongX: integer;         //���������� ���������� ������ 1��� �������
  Part2AllX,Part2RightX,Part2WrongX: integer;         //���������� ���������� ������ 2��� �������
  Part3AllX,Part3RightX,Part3WrongX: integer;         //���������� ���������� ������ 3��� �������
  Part4AllX,Part4RightX,Part4WrongX: integer;         //���������� ���������� ������ 4��� �������
  SummaryAllX,SummaryRightX,SummaryWrongX: integer;   //���������� ���������� ����� ������
  Ch11,Ch12,Ch13,Ch14,Ch15: Boolean;                  //���������� ���������� �������� ������� ������ 1��� �������
  Ch21,Ch22,Ch23,Ch24,Ch25: Boolean;                  //���������� ���������� �������� ������� ������ 2��� �������
  Ch31,Ch32,Ch33,Ch34,Ch35: Boolean;                  //���������� ���������� �������� ������� ������ 3��� �������
  Ch41,Ch42,Ch43,Ch44,Ch45: Boolean;                  //���������� ���������� �������� ������� ������ 4��� �������

implementation

uses Unit2, Unit3, Unit4, Unit5;

{$R *.dfm}


procedure TForm1.BExitClick(Sender: TObject);
begin
  if MessageDlg('�� ������������� ������ �����?', mtConfirmation, [mbYes, mbNo], MB_ICONQUESTION) = mrYes then
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
var QuestionFile: TextFile;   //���������� ����� ��������/���������� �������
    AnswerFile: TextFile;     //���������� ����� ��������� ������
    bufQuestion: string;      //���������� �������� ������ �������
    bufPos: integer;          //���������� �������� ��������� ������� #
    bufLength: integer;       //���������� �������� ����� ������ �������
    bufAnswer: string;        //���������� �������� ����������� ������
    bufAnswerVar: string;     //���������� �������� ������ ��������� ������
    bufAnswerLetter: char;    //���������� �������� ����� ����������� ������
    AnswerVar: string;        //���������� �������� ���� ����������� ������
    i: integer;               //���������� �����
    j,k,n: integer;           //���������� ������ �������/�������/�������� ������
begin
{$Hints Off}                  //���������� ��������� �����

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
//���������� ��������
//---------------------------------------------------------------------------------
AssignFile(QuestionFile,'questions'); //���������� ���� ��������
Reset(QuestionFile);                  //��������� ���� �������� ��� ������
j:=1;
k:=1;
n:=1;
while not EOF(QuestionFile) do
  begin
  ReadLn(QuestionFile,bufQuestion); //������ ������
  bufPos:=pos('#',bufQuestion);     //���������� ������� #
  bufLength:=Length(bufQuestion);   //���������� ����� ������
  for i:=bufPos+1 to bufLength do
    begin
    bufAnswer:=bufAnswer+bufQuestion[i];  //���������� ���������� �����-�����
    end;
  AnswerArray[j,k]:=bufAnswer;
  bufAnswer:='';
  SetLength(bufQuestion,bufPos-1);  //������� ������ �� ������� # �� ����� ������
  QuestionArray[j,k]:=bufQuestion;  //������ ������ � �������
  k:=k+1;                           //��������� � ����. �������
  if k>20 then
    begin
    j:=j+1;                         //��������� � ����. �������
    k:=1;
    end;
  end;
//---------------------------------------------------------------------------------
//���������� �������
//---------------------------------------------------------------------------------
AssignFile(AnswerFile,'answers');                     //���������� ���� �������
Reset(AnswerFile);                                    //��������� ���� ������� ��� ������
while not EOF(AnswerFile) do                          //���� �� �������� ����� �����
  begin
  for j:=1 to 4 do                                    //���� ������ �������
    for k:=1 to 20 do                                 //���� ������ �������
      begin
      while not EOLN(AnswerFile) do                   //���� �� ��������� ����� ������
        begin
        Read(AnswerFile,bufAnswerLetter);             //������ ����� � ������, ����������� ���������� bufAnswerLetter
        AnswerVar:=AnswerVar+bufAnswerLetter;         //���������� ������� ������ ����� �������� ����
        if bufAnswerLetter='@' then                   //���� �������� �� ����������� ��������� ������
          begin
          SetLength(AnswerVar,Length(AnswerVar)-1);   //�������� ������������� �� �������� ������
          AnswerVarsArray[j,k,n]:=AnswerVar;          //������� ������� ������ � ��������������� ������ ����������� �������
          AnswerVar:='';                              //������� ����� �������� ������
          n:=n+1;                                    //����������� ����� �������� ������
          end;
        end;
      n:=1;                                           //���������� ����� �������� ������ �� ��������� �������
      ReadLn(AnswerFile,bufAnswerVar);                //������ ��������� ������
  end;
  end;
end;
end.
//-------------------------------------------------------------------------------

