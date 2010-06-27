object Form1: TForm1
  Left = 192
  Top = 107
  Width = 330
  Height = 215
  Caption = 'test'
  Color = clBtnFace
  Constraints.MaxHeight = 215
  Constraints.MaxWidth = 330
  Constraints.MinHeight = 215
  Constraints.MinWidth = 330
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnMouseMove = FormMouseMove
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 321
    Height = 89
    Align = alCustom
    BorderStyle = bsSingle
    TabOrder = 0
    OnMouseMove = Panel1MouseMove
    object Label3: TLabel
      Left = 16
      Top = 32
      Width = 41
      Height = 16
      Caption = 'DInput:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 216
      Top = 32
      Width = 22
      Height = 20
      Caption = '0 0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 96
    Width = 321
    Height = 89
    BorderStyle = bsSingle
    TabOrder = 1
    OnMouseMove = Panel2MouseMove
    object Label2: TLabel
      Left = 216
      Top = 33
      Width = 22
      Height = 20
      Caption = '0 0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 8
      Top = 37
      Width = 87
      Height = 16
      Caption = 'GetCursorPos:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
  end
end
