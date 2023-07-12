unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection, frxClass,
  frxDBSet;

type
  TForm4 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    cbb1: TComboBox;
    edt4: TEdit;
    edt5: TEdit;
    edt6: TEdit;
    edt7: TEdit;
    edt8: TEdit;
    ds1: TDataSource;
    con1: TZConnection;
    zqry1: TZQuery;
    dbgrd1: TDBGrid;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    frxrprt1: TfrxReport;
    frxdbdtst1: TfrxDBDataset;
    btn6: TButton;
    btn7: TButton;
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
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.dbgrd1DblClick(Sender: TObject);
begin
edt1.Text:=zqry1.FieldList[0].AsString;
edt2.Text:=zqry1.FieldList[1].AsString;
edt3.Text:=zqry1.FieldList[2].AsString;
cbb1.Text:=zqry1.FieldList[3].AsString;
edt4.Text:=zqry1.FieldList[4].AsString;
edt5.Text:=zqry1.FieldList[5].AsString;
edt6.Text:=zqry1.FieldList[6].AsString;
edt7.Text:=zqry1.FieldList[7].AsString;
edt8.Text:=zqry1.FieldList[8].AsString;
end;

procedure TForm4.btn1Click(Sender: TObject);
begin
edt1.Text :='';
edt2.Text :='';
edt3.Text :='';
edt4.Text :='';
edt5.Text :='';
edt6.Text :='';
edt7.Text :='';
edt8.Text :='';
cbb1.Text :='';
edt1.setFocus;
end;

procedure TForm4.btn2Click(Sender: TObject);
begin
if zqry1.Locate('id',edt1.Text,[])then
begin
MessageDlg('Data Sudah Ada',mtError,[mbOK],0);
end else
begin
zqry1.Open;
zqry1.Append;
zqry1.FieldByName('id').AsString:=edt1.Text;
zqry1.FieldByName('nip').AsString:=edt2.Text;
zqry1.FieldByName('nama').AsString:=edt3.Text;
zqry1.FieldByName('jenis_kelamin').AsString:=cbb1.Text;
zqry1.FieldByName('Pendidikan').AsString:=edt4.Text;
zqry1.FieldByName('telp').AsString:=edt5.Text;
zqry1.FieldByName('matpel').AsString:=edt6.Text;
zqry1.FieldByName('alamat').AsString:=edt7.Text;
zqry1.FieldByName('status').AsString:=edt8.Text;
zqry1.post;
ShowMessage('Data Tersimpan');
btn1Click(sender);
end;

end;

procedure TForm4.btn3Click(Sender: TObject);
begin
with zqry1 do
begin
zqry1.Open;
zqry1.Edit;
zqry1.FieldList[0].AsString:=edt1.Text;
zqry1.FieldList[1].AsString:=edt2.Text;
zqry1.FieldList[2].AsString:=edt3.Text;
zqry1.FieldList[3].AsString:=cbb1.Text;
zqry1.FieldList[4].AsString:=edt4.Text;
zqry1.FieldList[5].AsString:=edt5.Text;
zqry1.FieldList[6].AsString:=edt6.Text;
zqry1.FieldList[7].AsString:=edt7.Text;
zqry1.FieldList[8].AsString:=edt8.Text;
zqry1.post;
ShowMessage('Data Di Edit');
btn1Click(sender);
end;
end;

procedure TForm4.btn4Click(Sender: TObject);
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

procedure TForm4.btn5Click(Sender: TObject);
begin
edt1.Clear;
edt2.Clear;
edt3.Clear;
edt4.Clear;
edt5.Clear;
edt6.Clear;
cbb1.Clear;
edt7.Clear;
edt8.Clear;
end;

procedure TForm4.clear;
begin
edt1.Clear;
edt2.Clear;
edt3.Clear;
edt4.Clear;
edt5.Clear;
edt6.Clear;
cbb1.Clear;
edt7.Clear;
edt8.Clear;
end;

procedure TForm4.btn6Click(Sender: TObject);
begin
if Application.MessageBox('Yakin akan Kembali??','peringatan',MB_YESNO)=MRYES then
form4.Close;
end;

procedure TForm4.btn7Click(Sender: TObject);
begin
frxrprt1.ShowReport();
end;

end.
