unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus;

type//dobavlen commentarij na dop vetku
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
const  PassVar='abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';  //���������� �������� ������� ������
var f: TextFile;             //���������� ����� � ������ login.txt
    FileDir: String;         //���������� ����
    FileDirLength: Integer;  //���������� ����� ������ ����
    str,bufstr: string;      //��������� ���������� �������� ��������� �����������
    i,c: integer;            //���������� �����
    j,k: integer;            //���������� ������ �������/�������
    RandomNum: integer;      //���������� ���������� ��������
    PassLetter: string;      //���������� ������ ������� ������
label m1,m2;

begin
randomize; //����������� ���������� ��������� �����

//�������� ������������� �����
//----------------------------------------------------------------------------
if SName.Text='' then                         //�� ������� �������
begin
  if FName.Text='' then                       //�� ������� ������� � ���
  begin
    if NGroup.Text='' then                    //�� ������� �������, ���, ����� ������
    begin
      ShowMessage('��������� ��� ����');
      exit;
    end
    else                                      //�� ������� ������� � ���, ������� ������
    begin
        ShowMessage('������� ������� � ���');
        exit;
    end;
  end
  else                                        //�� ������� �������, ������� ���
  begin
    if NGroup.Text='' then                    //�� ������� ������� � ����� ������, ������� ���
    begin
      ShowMessage('������� ������� � ����� ������');
      exit;
    end
    else                                      //�� ������� �������, ������ ����� ������ � ���
    begin
      ShowMessage('������� �������');
      exit;
    end;
  end;
end
else                                          //������� �������
begin
  if FName.Text='' then                       //�� ������� ���, ������� �������
  begin
    if Ngroup.Text='' then                    //�� ������� ��� � ����� ������, ������� �������
    begin
      ShowMessage('������� ��� � ����� ������');
      exit;
    end
    else                                      //�� ������� ���, ������� ������� � ����� ������
    begin
      ShowMessage('������� ���');
      exit;
    end;
  end
  else                                        //������� ��� � �������
  begin
    if NGroup.Text='' then                    //�� ������ ����� ������, ������� ��� � �������
    begin
    ShowMessage('������� ����� ������');
    exit;
    end;
                                              //��������� ��� ����
  end;
end;
//----------------------------------------------------------------------------
//�������� �������� ����� (�������� ��������� ���� �������� ��� ������� �������)
//----------------------------------------------------------------------------
for j:=1 to 4 do                                         //����� �������
  for k:=1 to 5 do                                       //����� �������
    begin
m1:                                                      //����� ����������� ��� ���������� �������� � �������
    RandomNum:=random(19)+1;                             //����� ���������� �� 20 ��������� ��������
    for i:=1 to 5 do                                     //���� �������� �� ����������
      if RandomNum=RandomNumsArray[j,i] then goto m1;    //������� �� ����� m1 ��� ����������
    RandomNumsArray[j,k]:=RandomNum;                     //���������� ������� ����� ��� ������������
    end;
//----------------------------------------------------------------------------


 FileDir:=Application.ExeName; //���������� ���� � ����� "D:\Documents\��������\Project.exe"
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

//��������� ������
//----------------------------------------------------------------------------
    for c:=1 to 6 do
      begin
m2:   PassLetter:=PassVar[random(length(PassVar)+1)];
      if PassLetter=' ' then goto m2
      else PassGen:=PassGen+PassLetter;
      end;
      ShowMessage('��������� ��� ������ ��� ���������� ����� � ���������: '+PassGen);
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
