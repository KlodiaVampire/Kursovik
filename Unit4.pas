unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm4 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;//vnesenie izmenenij na osnovnyju vetku
    Mainmenu: TButton;
    procedure MainmenuClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses Unit1;

{$R *.dfm}


procedure TForm4.MainmenuClick(Sender: TObject);
begin
  Form1.Visible:=True;
  Form4.Close;
end;

procedure TForm4.FormShow(Sender: TObject);
begin
  Form4.Top:=Round(Screen.Height/2-(Form4.Height/2));
  Form4.Left:=Round(Screen.Width/2-(Form4.Width/2));
end;

end.
