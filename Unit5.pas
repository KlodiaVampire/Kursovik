unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
    TForm5 = class(TForm)
    TimePole: TLabel;
    AnswerBox: TGroupBox;
    QuestionPole: TLabel;
    Answers: TRadioGroup;
    BEnter: TButton;
    BBack: TButton;
    procedure FormShow(Sender: TObject);
    procedure BBackClick(Sender: TObject);
    procedure BEnterClick(Sender: TObject);
    procedure AnswersClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

uses Unit1,Unit3;

{$R *.dfm}




procedure TForm5.FormShow(Sender: TObject);
var i: integer;
begin
Form5.Top:=Round(Screen.Height/2-(Form5.Height/2));
Form5.Left:=Round(Screen.Width/2-(Form5.Width/2));
BEnter.Enabled:=False;
QuestionPole.Caption:=QuestionArray[GlobSectionNum,GlobQuestionNum];
for i:=1 to 4 do Answers.Items.Add(AnswerVarsArray[GlobSectionNum,GlobQuestionNum,i]);
if EndTest=True then
  for i:=0 to 3 do
    begin
    if Answers.Items[i]=AnswerIndexArray[GlobSectionNum,AnswerIndexArrayCheck] then
      begin
      Answers.ItemIndex:=i;
      break;
      end;
    end;
end;

procedure TForm5.BBackClick(Sender: TObject);
begin
  Answers.Items.Clear;
  Form3.Visible:=True;
  Form5.Visible:=False;
end;

procedure TForm5.BEnterClick(Sender: TObject);
var AnswerCheck: String;
begin
AnswerCheck:=Answers.Items[Answers.ItemIndex];
if AnswerCheck=AnswerArray[GlobSectionNum,GlobQuestionNum] then SummaryArray[GlobSectionNum,AnswerIndexArrayCheck]:=1
else SummaryArray[GlobSectionNum,AnswerIndexArrayCheck]:=0;
AnswerIndexArray[GlobSectionNum,AnswerIndexArrayCheck]:=AnswerCheck;
case BEnterCase of
11: begin
    Answers.Items.Clear;
    Form3.S1B1.Enabled:=False;
    Form3.Visible:=True;
    Form5.Visible:=False;
    ButtonArray[1]:=GlobQuestionNum;
    end;
12: begin
    Answers.Items.Clear;
    Form3.S1B2.Enabled:=False;
    Form3.Visible:=True;
    Form5.Visible:=False;
    ButtonArray[2]:=GlobQuestionNum;
    end;
13: begin
    Answers.Items.Clear;
    Form3.S1B3.Enabled:=False;
    Form3.Visible:=True;
    Form5.Visible:=False;
    ButtonArray[3]:=GlobQuestionNum;
    end;
14: begin
    Answers.Items.Clear;
    Form3.S1B4.Enabled:=False;
    Form3.Visible:=True;
    Form5.Visible:=False;
    ButtonArray[4]:=GlobQuestionNum;
    end;
15: begin
    Answers.Items.Clear;
    Form3.S1B5.Enabled:=False;
    Form3.Visible:=True;
    Form5.Visible:=False;
    ButtonArray[5]:=GlobQuestionNum;
    end;
21: begin
    Answers.Items.Clear;
    Form3.S2B1.Enabled:=False;
    Form3.Visible:=True;
    Form5.Visible:=False;
    ButtonArray[6]:=GlobQuestionNum;
    end;
22: begin
    Answers.Items.Clear;
    Form3.S2B2.Enabled:=False;
    Form3.Visible:=True;
    Form5.Visible:=False;
    ButtonArray[7]:=GlobQuestionNum;
    end;
23: begin
    Answers.Items.Clear;
    Form3.S2B3.Enabled:=False;
    Form3.Visible:=True;
    Form5.Visible:=False;
    ButtonArray[8]:=GlobQuestionNum;
    end;
24: begin
    Answers.Items.Clear;
    Form3.S2B4.Enabled:=False;
    Form3.Visible:=True;
    Form5.Visible:=False;
    ButtonArray[9]:=GlobQuestionNum;
    end;
25: begin
    Answers.Items.Clear;
    Form3.S2B5.Enabled:=False;
    Form3.Visible:=True;
    Form5.Visible:=False;
    ButtonArray[10]:=GlobQuestionNum;
    end;
31: begin
    Answers.Items.Clear;
    Form3.S3B1.Enabled:=False;
    Form3.Visible:=True;
    Form5.Visible:=False;
    ButtonArray[11]:=GlobQuestionNum;
    end;
32: begin
    Answers.Items.Clear;
    Form3.S3B2.Enabled:=False;
    Form3.Visible:=True;
    Form5.Visible:=False;
    ButtonArray[12]:=GlobQuestionNum;
    end;
33: begin
    Answers.Items.Clear;
    Form3.S3B3.Enabled:=False;
    Form3.Visible:=True;
    Form5.Visible:=False;
    ButtonArray[13]:=GlobQuestionNum;
    end;
34: begin
    Answers.Items.Clear;
    Form3.S3B4.Enabled:=False;
    Form3.Visible:=True;
    Form5.Visible:=False;
    ButtonArray[14]:=GlobQuestionNum;
    end;
35: begin
    Answers.Items.Clear;
    Form3.S3B5.Enabled:=False;
    Form3.Visible:=True;
    Form5.Visible:=False;
    ButtonArray[15]:=GlobQuestionNum;
    end;
41: begin
    Answers.Items.Clear;
    Form3.S4B1.Enabled:=False;
    Form3.Visible:=True;
    Form5.Visible:=False;
    ButtonArray[16]:=GlobQuestionNum;
    end;
42: begin
    Answers.Items.Clear;
    Form3.S4B2.Enabled:=False;
    Form3.Visible:=True;
    Form5.Visible:=False;
    ButtonArray[17]:=GlobQuestionNum;
    end;
43: begin
    Answers.Items.Clear;
    Form3.S4B3.Enabled:=False;
    Form3.Visible:=True;
    Form5.Visible:=False;
    ButtonArray[18]:=GlobQuestionNum;
    end;
44: begin
    Answers.Items.Clear;
    Form3.S4B4.Enabled:=False;
    Form3.Visible:=True;
    Form5.Visible:=False;
    ButtonArray[19]:=GlobQuestionNum;
    end;
45: begin
    Answers.Items.Clear;
    Form3.S4B5.Enabled:=False;
    Form3.Visible:=True;
    Form5.Visible:=False;
    ButtonArray[20]:=GlobQuestionNum;
    end;
end;
end;

procedure TForm5.AnswersClick(Sender: TObject);
var i: integer;
begin
if EndTest=False then BEnter.Enabled:=True
else for i:=0 to 3 do
  begin
  if Answers.Items[i]=AnswerIndexArray[GlobSectionNum,AnswerIndexArrayCheck] then
    begin
    Answers.ItemIndex:=i;
    break;
    end;
  end;
end;

end.
