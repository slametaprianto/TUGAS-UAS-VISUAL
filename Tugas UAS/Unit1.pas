unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls;

type
  TForm1 = class(TForm)
    mm1: TMainMenu;
    Data1: TMenuItem;
    Siswa1: TMenuItem;
    OrangTua1: TMenuItem;
    WaliKelas1: TMenuItem;
    Kelas1: TMenuItem;
    Poin1: TMenuItem;
    Semester1: TMenuItem;
    Hubungan1: TMenuItem;
    btn1: TButton;
    lbl1: TLabel;
    procedure Siswa1Click(Sender: TObject);
    procedure OrangTua1Click(Sender: TObject);
    procedure WaliKelas1Click(Sender: TObject);
    procedure Kelas1Click(Sender: TObject);
    procedure Poin1Click(Sender: TObject);
    procedure Hubungan1Click(Sender: TObject);
    procedure Semester1Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit3, Unit4, Unit5, Unit6, Unit7, Unit8;

{$R *.dfm}

procedure TForm1.Siswa1Click(Sender: TObject);
begin
form2.show;
end;

procedure TForm1.OrangTua1Click(Sender: TObject);
begin
form3.show;
end;

procedure TForm1.WaliKelas1Click(Sender: TObject);
begin
form4.show;
end;

procedure TForm1.Kelas1Click(Sender: TObject);
begin
form5.show
end;

procedure TForm1.Poin1Click(Sender: TObject);
begin
form6.show;
end;

procedure TForm1.Hubungan1Click(Sender: TObject);
begin
form7.show;
end;

procedure TForm1.Semester1Click(Sender: TObject);
begin
form8.show
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
if Application.MessageBox('Project Akan Dihentikan!!','peringatan',MB_YESNO)=MRYES then
begin
Application.Terminate;
end;
end;

end.
