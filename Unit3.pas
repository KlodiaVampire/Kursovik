unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm3 = class(TForm)
    Section1: TGroupBox;
    Section2: TGroupBox;
    Section3: TGroupBox;
    Section4: TGroupBox;
    S1B1: TButton;
    S1B2: TButton;
    S1B3: TButton;
    S1B4: TButton;
    S1B5: TButton;
    S2B1: TButton;
    S2B2: TButton;
    S2B3: TButton;
    S2B4: TButton;
    S2B5: TButton;
    S3B1: TButton;
    S3B2: TButton;
    S3B3: TButton;
    S3B4: TButton;
    S3B5: TButton;
    S4B1: TButton;
    S4B2: TButton;
    S4B3: TButton;
    S4B4: TButton;
    S4B5: TButton;
    S1Name: TLabel;
    S2Name: TLabel;
    S3Name: TLabel;
    S4Name: TLabel;
    TestTimer: TTimer;
    BTestEnd: TButton;
    BSummary: TButton;
    TimeLabel: TLabel;
    procedure FormShow(Sender: TObject);
    procedure S1B1Click(Sender: TObject);
    procedure S1B2Click(Sender: TObject);
    procedure S1B3Click(Sender: TObject);
    procedure S1B4Click(Sender: TObject);
    procedure S1B5Click(Sender: TObject);
    procedure S2B1Click(Sender: TObject);
    procedure S2B2Click(Sender: TObject);
    procedure S2B3Click(Sender: TObject);
    procedure S2B4Click(Sender: TObject);
    procedure S2B5Click(Sender: TObject);
    procedure S3B1Click(Sender: TObject);
    procedure S3B2Click(Sender: TObject);
    procedure S3B3Click(Sender: TObject);
    procedure S3B4Click(Sender: TObject);
    procedure S3B5Click(Sender: TObject);
    procedure S4B1Click(Sender: TObject);
    procedure S4B2Click(Sender: TObject);
    procedure S4B3Click(Sender: TObject);
    procedure S4B4Click(Sender: TObject);
    procedure S4B5Click(Sender: TObject);
    procedure BTestEndClick(Sender: TObject);
    procedure BSummaryClick(Sender: TObject);
    procedure TestTimerTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses Unit1, Unit2, Unit5;

{$R *.dfm}


procedure TForm3.FormShow(Sender: TObject);
begin
  Form3.Top:=Round(Screen.Height/2-(Form3.Height/2));
  Form3.Left:=Round(Screen.Width/2-(Form3.Width/2));
  TestTimer.Enabled:=True;
end;

procedure TForm3.S1B1Click(Sender: TObject);
begin
  Ch11:=True;
  BEnterCase:=11;
  GlobSectionNum:=1;
  AnswerIndexArrayCheck:=1;
  GlobQuestionNum:=RandomNumsArray[GlobSectionNum,1];
  Form5.Visible:=True;
  Form3.Visible:=False;
end;

procedure TForm3.S1B2Click(Sender: TObject);
begin
  Ch12:=True;
  BEnterCase:=12;
  GlobSectionNum:=1;
  AnswerIndexArrayCheck:=2;
  GlobQuestionNum:=RandomNumsArray[GlobSectionNum,2];;
  Form5.Visible:=True;
  Form3.Visible:=False;
end;

procedure TForm3.S1B3Click(Sender: TObject);
begin
  Ch13:=True;
  BEnterCase:=13;
  GlobSectionNum:=1;
  AnswerIndexArrayCheck:=3;
  GlobQuestionNum:=RandomNumsArray[GlobSectionNum,3];;
  Form5.Visible:=True;
  Form3.Visible:=False;
end;

procedure TForm3.S1B4Click(Sender: TObject);
begin
  Ch14:=True;
  BEnterCase:=14;
  GlobSectionNum:=1;
  AnswerIndexArrayCheck:=4;
  GlobQuestionNum:=RandomNumsArray[GlobSectionNum,4];;
  Form5.Visible:=True;
  Form3.Visible:=False;
end;

procedure TForm3.S1B5Click(Sender: TObject);
begin
  Ch15:=True;
  BEnterCase:=15;
  GlobSectionNum:=1;
  AnswerIndexArrayCheck:=5;
  GlobQuestionNum:=RandomNumsArray[GlobSectionNum,5];;
  Form5.Visible:=True;
  Form3.Visible:=False;
end;

procedure TForm3.S2B1Click(Sender: TObject);
begin
  Ch21:=True;
  BEnterCase:=21;
  GlobSectionNum:=2;
  AnswerIndexArrayCheck:=1;
  GlobQuestionNum:=RandomNumsArray[GlobSectionNum,1];;
  Form5.Visible:=True;
  Form3.Visible:=False;
end;

procedure TForm3.S2B2Click(Sender: TObject);
begin
  Ch22:=True;
  BEnterCase:=22;
  GlobSectionNum:=2;
  AnswerIndexArrayCheck:=2;
  GlobQuestionNum:=RandomNumsArray[GlobSectionNum,2];;
  Form5.Visible:=True;
  Form3.Visible:=False;
end;

procedure TForm3.S2B3Click(Sender: TObject);
begin
  Ch23:=True;
  BEnterCase:=23;
  GlobSectionNum:=2;
  AnswerIndexArrayCheck:=3;
  GlobQuestionNum:=RandomNumsArray[GlobSectionNum,3];;
  Form5.Visible:=True;
  Form3.Visible:=False;
end;

procedure TForm3.S2B4Click(Sender: TObject);
begin
  Ch24:=True;
  BEnterCase:=24;
  GlobSectionNum:=2;
  AnswerIndexArrayCheck:=4;
  GlobQuestionNum:=RandomNumsArray[GlobSectionNum,4];;
  Form5.Visible:=True;
  Form3.Visible:=False;
end;

procedure TForm3.S2B5Click(Sender: TObject);
begin
  Ch25:=True;
  BEnterCase:=25;
  GlobSectionNum:=2;
  AnswerIndexArrayCheck:=5;
  GlobQuestionNum:=RandomNumsArray[GlobSectionNum,5];;
  Form5.Visible:=True;
  Form3.Visible:=False;
end;

procedure TForm3.S3B1Click(Sender: TObject);
begin
  Ch31:=True;
  BEnterCase:=31;
  GlobSectionNum:=3;
  AnswerIndexArrayCheck:=1;
  GlobQuestionNum:=RandomNumsArray[GlobSectionNum,1];;
  Form5.Visible:=True;
  Form3.Visible:=False;
end;

procedure TForm3.S3B2Click(Sender: TObject);
begin
  Ch32:=True;
  BEnterCase:=32;
  GlobSectionNum:=3;
  AnswerIndexArrayCheck:=2;
  GlobQuestionNum:=RandomNumsArray[GlobSectionNum,2];;
  Form5.Visible:=True;
  Form3.Visible:=False;
end;

procedure TForm3.S3B3Click(Sender: TObject);
begin
  Ch33:=True;
  BEnterCase:=33;
  GlobSectionNum:=3;
  AnswerIndexArrayCheck:=3;
  GlobQuestionNum:=RandomNumsArray[GlobSectionNum,3];;
  Form5.Visible:=True;
  Form3.Visible:=False;
end;

procedure TForm3.S3B4Click(Sender: TObject);
begin
  Ch34:=True;
  BEnterCase:=34;
  GlobSectionNum:=3;
  AnswerIndexArrayCheck:=4;
  GlobQuestionNum:=RandomNumsArray[GlobSectionNum,4];;
  Form5.Visible:=True;
  Form3.Visible:=False;
end;

procedure TForm3.S3B5Click(Sender: TObject);
begin
  Ch35:=True;
  BEnterCase:=35;
  GlobSectionNum:=3;
  AnswerIndexArrayCheck:=5;
  GlobQuestionNum:=RandomNumsArray[GlobSectionNum,5];;
  Form5.Visible:=True;
  Form3.Visible:=False;
end;

procedure TForm3.S4B1Click(Sender: TObject);
begin
  Ch41:=True;
  BEnterCase:=41;
  GlobSectionNum:=4;
  AnswerIndexArrayCheck:=1;
  GlobQuestionNum:=RandomNumsArray[GlobSectionNum,1];;
  Form5.Visible:=True;
  Form3.Visible:=False;
end;

procedure TForm3.S4B2Click(Sender: TObject);
begin
  Ch42:=True;
  BEnterCase:=42;
  GlobSectionNum:=4;
  AnswerIndexArrayCheck:=2;
  GlobQuestionNum:=RandomNumsArray[GlobSectionNum,2];;
  Form5.Visible:=True;
  Form3.Visible:=False;
end;

procedure TForm3.S4B3Click(Sender: TObject);
begin
  Ch43:=True;
  BEnterCase:=43;
  GlobSectionNum:=4;
  AnswerIndexArrayCheck:=3;
  GlobQuestionNum:=RandomNumsArray[GlobSectionNum,3];;
  Form5.Visible:=True;
  Form3.Visible:=False;
end;

procedure TForm3.S4B4Click(Sender: TObject);
begin
  Ch44:=True;
  BEnterCase:=44;
  GlobSectionNum:=4;
  AnswerIndexArrayCheck:=4;
  GlobQuestionNum:=RandomNumsArray[GlobSectionNum,4];;
  Form5.Visible:=True;
  Form3.Visible:=False;
end;

procedure TForm3.S4B5Click(Sender: TObject);
begin
  Ch45:=True;
  BEnterCase:=45;
  GlobSectionNum:=4;
  AnswerIndexArrayCheck:=5;
  GlobQuestionNum:=RandomNumsArray[GlobSectionNum,5];;
  Form5.Visible:=True;
  Form3.Visible:=False;
end;

procedure TForm3.BTestEndClick(Sender: TObject);
begin
TestTimer.Enabled:=False;
EndTest:=True;
S1B1.Enabled:=True;
S1B2.Enabled:=True;
S1B3.Enabled:=True;
S1B4.Enabled:=True;
S1B5.Enabled:=True;
S2B1.Enabled:=True;
S2B2.Enabled:=True;
S2B3.Enabled:=True;
S2B4.Enabled:=True;
S2B5.Enabled:=True;
S3B1.Enabled:=True;
S3B2.Enabled:=True;
S3B3.Enabled:=True;
S3B4.Enabled:=True;
S3B5.Enabled:=True;
S4B1.Enabled:=True;
S4B2.Enabled:=True;
S4B3.Enabled:=True;
S4B4.Enabled:=True;
S4B5.Enabled:=True;
BTestEnd.Visible:=False;
BSummary.Visible:=True;
//---------------------------------------------------------------------------------
//��������������� ������
//---------------------------------------------------------------------------------
if AnswerIndexArray[1,1]=AnswerArray[1,ButtonArray[1]] then S1B1.Caption:='���������'
else S1B1.Caption:='�����������';
if AnswerIndexArray[1,2]=AnswerArray[1,ButtonArray[2]] then S1B2.Caption:='���������'
else S1B2.Caption:='�����������';
if AnswerIndexArray[1,3]=AnswerArray[1,ButtonArray[3]] then S1B3.Caption:='���������'
else S1B3.Caption:='�����������';
if AnswerIndexArray[1,4]=AnswerArray[1,ButtonArray[4]] then S1B4.Caption:='���������'
else S1B4.Caption:='�����������';
if AnswerIndexArray[1,5]=AnswerArray[1,ButtonArray[5]] then S1B5.Caption:='���������'
else S1B5.Caption:='�����������';
if AnswerIndexArray[2,1]=AnswerArray[2,ButtonArray[6]] then S2B1.Caption:='���������'
else S2B1.Caption:='�����������';
if AnswerIndexArray[2,2]=AnswerArray[2,ButtonArray[7]] then S2B2.Caption:='���������'
else S2B2.Caption:='�����������';
if AnswerIndexArray[2,3]=AnswerArray[2,ButtonArray[8]] then S2B3.Caption:='���������'
else S2B3.Caption:='�����������';
if AnswerIndexArray[2,4]=AnswerArray[2,ButtonArray[9]] then S2B4.Caption:='���������'
else S2B4.Caption:='�����������';
if AnswerIndexArray[2,5]=AnswerArray[2,ButtonArray[10]] then S2B5.Caption:='���������'
else S2B5.Caption:='�����������';
if AnswerIndexArray[3,1]=AnswerArray[3,ButtonArray[11]] then S3B1.Caption:='���������'
else S3B1.Caption:='�����������';
if AnswerIndexArray[3,2]=AnswerArray[3,ButtonArray[12]] then S3B2.Caption:='���������'
else S3B2.Caption:='�����������';
if AnswerIndexArray[3,3]=AnswerArray[3,ButtonArray[13]] then S3B3.Caption:='���������'
else S3B3.Caption:='�����������';
if AnswerIndexArray[3,4]=AnswerArray[3,ButtonArray[14]] then S3B4.Caption:='���������'
else S3B4.Caption:='�����������';
if AnswerIndexArray[3,5]=AnswerArray[3,ButtonArray[15]] then S3B5.Caption:='���������'
else S3B5.Caption:='�����������';
if AnswerIndexArray[4,1]=AnswerArray[4,ButtonArray[16]] then S4B1.Caption:='���������'
else S4B1.Caption:='�����������';
if AnswerIndexArray[4,2]=AnswerArray[4,ButtonArray[17]] then S4B2.Caption:='���������'
else S4B2.Caption:='�����������';
if AnswerIndexArray[4,3]=AnswerArray[4,ButtonArray[18]] then S4B3.Caption:='���������'
else S4B3.Caption:='�����������';
if AnswerIndexArray[4,4]=AnswerArray[4,ButtonArray[19]] then S4B4.Caption:='���������'
else S4B4.Caption:='�����������';
if AnswerIndexArray[4,5]=AnswerArray[4,ButtonArray[20]] then S4B5.Caption:='���������'
else S4B5.Caption:='�����������';
if Ch11=False then S1B1.Caption:='�� �������';
if Ch12=False then S1B2.Caption:='�� �������';
if Ch13=False then S1B3.Caption:='�� �������';
if Ch14=False then S1B4.Caption:='�� �������';
if Ch15=False then S1B5.Caption:='�� �������';
if Ch21=False then S2B1.Caption:='�� �������';
if Ch22=False then S2B2.Caption:='�� �������';
if Ch23=False then S2B3.Caption:='�� �������';
if Ch24=False then S2B4.Caption:='�� �������';
if Ch25=False then S2B5.Caption:='�� �������';
if Ch31=False then S3B1.Caption:='�� �������';
if Ch32=False then S3B2.Caption:='�� �������';
if Ch33=False then S3B3.Caption:='�� �������';
if Ch34=False then S3B4.Caption:='�� �������';
if Ch35=False then S3B5.Caption:='�� �������';
if Ch41=False then S4B1.Caption:='�� �������';
if Ch42=False then S4B2.Caption:='�� �������';
if Ch43=False then S4B3.Caption:='�� �������';
if Ch44=False then S4B4.Caption:='�� �������';
if Ch45=False then S4B5.Caption:='�� �������';
//---------------------------------------------------------------------------------
end;

procedure TForm3.BSummaryClick(Sender: TObject);
var k: integer;
    SummaryFile: TextFile;
    SummCheck: integer;
begin
for SummCheck:=1 to 4 do
  begin
  for k:=1 to 5 do
    case SummCheck of
    1:  begin
        if SummaryArray[SummCheck,k]=0 then Part1WrongX:=Part1WrongX+1
        else Part1RightX:=Part1RightX+1;
        end;
    2:  begin
        if SummaryArray[SummCheck,k]=0 then Part2WrongX:=Part2WrongX+1
        else Part2RightX:=Part2RightX+1;
        end;
    3:  begin
        if SummaryArray[SummCheck,k]=0 then Part3WrongX:=Part3WrongX+1
        else Part3RightX:=Part3RightX+1;
        end;
    4:  begin
        if SummaryArray[SummCheck,k]=0 then Part4WrongX:=Part4WrongX+1
        else Part4RightX:=Part4RightX+1;
        end;
    end;
  end;
Part1AllX:=Round(Part1RightX/5*100);
Part2AllX:=Round(Part2RightX/5*100);
Part3AllX:=Round(Part3RightX/5*100);
Part4AllX:=Round(Part4RightX/5*100);
SummaryRightX:=Part1RightX+Part2RightX+Part3RightX+Part4RightX;
SummaryWrongX:=Part1WrongX+Part2WrongX+Part3WrongX+Part4WrongX;
SummaryAllX:=Round(SummaryRightX/20*100);
Form1.Part1Right.Caption:='���������: '+IntToStr(Part1RightX);
Form1.Part2Right.Caption:='���������: '+IntToStr(Part2RightX);
Form1.Part3Right.Caption:='���������: '+IntToStr(Part3RightX);
Form1.Part4Right.Caption:='���������: '+IntToStr(Part4RightX);
Form1.Part1Wrong.Caption:='�����������: '+IntToStr(Part1WrongX);
Form1.Part2Wrong.Caption:='�����������: '+IntToStr(Part2WrongX);
Form1.Part3Wrong.Caption:='�����������: '+IntToStr(Part3WrongX);
Form1.Part4Wrong.Caption:='�����������: '+IntToStr(Part4WrongX);
Form1.Part1All.Caption:='������� ����������: '+IntToStr(Part1AllX)+'%';
Form1.Part2All.Caption:='������� ����������: '+IntToStr(Part2AllX)+'%';
Form1.Part3All.Caption:='������� ����������: '+IntToStr(Part3AllX)+'%';
Form1.Part4All.Caption:='������� ����������: '+IntToStr(Part4AllX)+'%';
Form1.SummaryRight.Caption:='���������: '+IntToStr(SummaryRightX);
Form1.SummaryWrong.Caption:='�����������: '+IntToStr(SummaryWrongX);
Form1.SummaryAll.Caption:='������� ����������: '+IntToStr(SummaryAllX)+'%';
//---------------------------------------------------------------------------------
//������ ����������� � ����
//---------------------------------------------------------------------------------
AssignFile(SummaryFile,'summary');
Append(SummaryFile);
WriteLn(SummaryFile,'');
WriteLn(SummaryFile,'-------------------------------');
WriteLn(SummaryFile,'�������: '+Form1.SName.Caption);
WriteLn(SummaryFile,'���: '+Form1.FName.Caption);
WriteLn(SummaryFile,'����� ������: '+Form1.NGroup.Caption);
WriteLn(SummaryFile,'���������� �������: '+IntToStr(SummaryRightX));
WriteLn(SummaryFile,'������������ �������: '+IntToStr(SummaryWrongX));
WriteLn(SummaryFile,'������� ����������: '+IntToStr(SummaryAllX)+'%');
WriteLn(SummaryFile,'-------------------------------');
CloseFile(SummaryFile);
//---------------------------------------------------------------------------------
Form1.Summary.Visible:=True;
Form1.Part1.Visible:=True;
Form1.Part2.Visible:=True;
Form1.Part3.Visible:=True;
Form1.Part4.Visible:=True;
Form1.Visible:=True;
Form3.Close;
end;
//---------------------------------------------------------------------------------
//������ �������
//---------------------------------------------------------------------------------
procedure TForm3.TestTimerTimer(Sender: TObject);
begin
if sec=0 then
  begin
  sec:=59;
  min:=min-1;
  end
else sec:=sec-1;
if min>9 then
  begin
  if sec>9 then
    begin
    TimeLabel.Caption:='��������: '+IntToStr(min)+' : '+IntToStr(sec);
    Form5.TimePole.Caption:='��������: '+IntToStr(min)+' : '+IntToStr(sec);
    end
  else
    begin
    TimeLabel.Caption:='��������: '+IntToStr(min)+' : 0'+IntToStr(sec);
    Form5.TimePole.Caption:='��������: '+IntToStr(min)+' : 0'+IntToStr(sec);
    end;
  end
else
  begin
  if sec>9 then
    begin
    TimeLabel.Caption:='��������: 0'+IntToStr(min)+' : '+IntToStr(sec);
    Form5.TimePole.Caption:='��������: 0'+IntToStr(min)+' : '+IntToStr(sec);
    end
  else
    begin
    TimeLabel.Caption:='��������: 0'+IntToStr(min)+' : 0'+IntToStr(sec);
    Form5.TimePole.Caption:='��������: 0'+IntToStr(min)+' : 0'+IntToStr(sec);
    end;
  end;
if min=0 then
  if sec=0 then
    begin
    TestTimer.Enabled:=False;
    Form5.BEnter.Enabled:=False;
    EndTest:=True;
    end;
end;
//---------------------------------------------------------------------------------
end.
