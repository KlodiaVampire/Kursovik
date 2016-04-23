unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask;

type
  TForm6 = class(TForm)
    PassLabel: TLabel;
    BPassCheck: TButton;
    PassEdit: TEdit;
    procedure BPassCheckClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;
  bufPass: string;

implementation

uses Unit1, Unit2;

{$R *.dfm}







procedure TForm6.BPassCheckClick(Sender: TObject);

begin
if PassEdit.Text=bufPass then
  begin
  Form1.BReg.Enabled:=False;
  Form1.BBegin.Enabled:=True;
  Form1.Summary.Visible:=True;
  Form1.Part1.Visible:=True;
  Form1.Part2.Visible:=True;
  Form1.Part3.Visible:=True;
  Form1.SName.Caption:=Form2.SName.Text;
  Form1.FName.Caption:=Form2.FName.Text;
  Form1.NGroup.Caption:=Form2.NGroup.Text;
  Form1.Visible:=True;
  Form6.Close;
  end
else
  begin
  ShowMessage('Неверный пароль!');
  PassEdit.Clear;
  end;
end;


procedure TForm6.FormShow(Sender: TObject);
var i: integer;
    PassPos: integer;
begin
  Form6.Top:=Round(Screen.Height/2-(Form6.Height/2));
  Form6.Left:=Round(Screen.Width/2-(Form6.Width/2));
  PassEdit.SetFocus;
  PassPos:=Length(bufPassString)-5;
  for i:=PassPos to Length(bufPassString) do bufPass:=bufPass+bufPassString[i];
end;

end.
