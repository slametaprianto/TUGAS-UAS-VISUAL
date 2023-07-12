object Form1: TForm1
  Left = 332
  Top = 170
  Width = 1044
  Height = 540
  Caption = 'Form1'
  Color = clAqua
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mm1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 288
    Top = 80
    Width = 313
    Height = 33
    Caption = 'SLAMET APRIANTO 2110010317'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btn1: TButton
    Left = 352
    Top = 168
    Width = 281
    Height = 73
    Caption = 'KELUAR'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = btn1Click
  end
  object mm1: TMainMenu
    Left = 8
    Top = 16
    object Data1: TMenuItem
      Caption = 'Data'
      object Siswa1: TMenuItem
        Caption = 'Siswa'
        OnClick = Siswa1Click
      end
      object OrangTua1: TMenuItem
        Caption = 'Orang Tua'
        OnClick = OrangTua1Click
      end
      object WaliKelas1: TMenuItem
        Caption = 'Wali Kelas'
        OnClick = WaliKelas1Click
      end
      object Kelas1: TMenuItem
        Caption = 'Kelas'
        OnClick = Kelas1Click
      end
      object Poin1: TMenuItem
        Caption = 'Poin'
        OnClick = Poin1Click
      end
      object Semester1: TMenuItem
        Caption = 'Semester'
        OnClick = Semester1Click
      end
      object Hubungan1: TMenuItem
        Caption = 'Hubungan'
        OnClick = Hubungan1Click
      end
    end
  end
end
