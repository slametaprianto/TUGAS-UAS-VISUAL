unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, Grids, DBGrids, frxClass, frxDBSet;

type
  TForm7 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt4: TEdit;
    cbb1: TComboBox;
    cbb2: TComboBox;
    ds1: TDataSource;
    dbgrd1: TDBGrid;
    con1: TZConnection;
    zqry1: TZQuery;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    btn7: TButton;
    frxrprt1: TfrxReport;
    frxdbdtst1: TfrxDBDataset;
    procedure dbgrd1DblClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure clear;
    procedure btn6Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}

procedure TForm7.dbgrd1DblClick(Sender: TObject);
begin
edt1.Text:=zqry1.FieldList[1].AsString;
edt2.Text:=zqry1.FieldList[2].AsString;
cbb1.Text:=zqry1.FieldList[3].AsString;
edt4.Text:=zqry1.FieldList[4].AsString;
cbb2.Text:=zqry1.FieldList[5].AsString;
end;

procedure TForm7.btn1Click(Sender: TObject);
begin
edt1.Text :='';
edt2.Text :='';
cbb1.Text :='';
edt4.Text :='';
cbb2.Text :='';
end;

procedure TForm7.btn2Click(Sender: TObject);
begin
with zqry1 do
begin
zqry1.Open;
zqry1.Append;
zqry1.FieldByName('siswa_id').AsString:=edt1.Text;
zqry1.FieldByName('ortu_id').AsString:=edt2.Text;
zqry1.FieldByName('status_hub_anak').AsString:=cbb1.Text;
zqry1.FieldByName('keterangan').AsString:=edt4.Text;
zqry1.FieldByName('status_ortu').AsString:=cbb2.Text;
zqry1.post;
ShowMessage('Data Tersimpan');
btn1Click(sender);
end;
end;

procedure TForm7.btn3Click(Sender: TObject);
begin
with zqry1 do
begin
zqry1.Open;
zqry1.Edit;
zqry1.FieldList[1].AsString:=edt1.Text;
zqry1.FieldList[2].AsString:=edt2.Text;
zqry1.FieldList[3].AsString:=cbb1.Text;
zqry1.FieldList[4].AsString:=edt4.Text;
zqry1.FieldList[5].AsString:=cbb2.Text;
zqry1.post;
ShowMessage('Data Di Edit');
btn1Click(sender);
end;
end;

procedure TForm7.btn4Click(Sender: TObject);
begin
if Application.MessageBox('Data Akan Dihapus!!','peringatan',MB_YESNO)=MRYES then
begin
with zqry1 do
begin
Delete;
ShowMessage('Data Di Hapus');
end;
end;
btn1Click(sender);
end;

procedure TForm7.btn5Click(Sender: TObject);
begin
edt1.Clear;
edt2.Clear;
cbb1.Clear;
edt4.Clear;
cbb2.Clear;
end;

procedure TForm7.clear;
begin
edt1.Clear;
edt2.Clear;
cbb1.Clear;
edt4.Clear;
cbb2.Clear;
end;

procedure TForm7.btn6Click(Sender: TObject);
begin
if Application.MessageBox('Yakin akan Kembali??','peringatan',MB_YESNO)=MRYES then
form7.Close;
end;

procedure TForm7.btn7Click(Sender: TObject);
begin
frxrprt1.ShowReport();
end;

end.
