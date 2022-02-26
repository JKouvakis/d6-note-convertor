object Form1: TForm1
  Left = 374
  Top = 167
  BorderIcons = [biSystemMenu, biMinimize, biHelp]
  BorderStyle = bsSingle
  Caption = 'Note Convertor'
  ClientHeight = 324
  ClientWidth = 188
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 36
    Top = 6
    Width = 38
    Height = 13
    Caption = 'Original:'
  end
  object Label2: TLabel
    Left = 30
    Top = 30
    Width = 52
    Height = 13
    Caption = 'Converted:'
  end
  object Shape1: TShape
    Left = 2
    Top = 50
    Width = 183
    Height = 3
    Brush.Color = clBtnFace
  end
  object ComboBox1: TComboBox
    Left = 80
    Top = 2
    Width = 57
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 0
    OnChange = ComboBox2Change
    Items.Strings = (
      'C'
      'C#'
      'D'
      'D#'
      'E'
      'F'
      'F#'
      'G'
      'G#'
      'A'
      'A#'
      'B')
  end
  object ComboBox2: TComboBox
    Left = 88
    Top = 26
    Width = 57
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 1
    OnChange = ComboBox2Change
    Items.Strings = (
      'C'
      'C#'
      'D'
      'D#'
      'E'
      'F'
      'F#'
      'G'
      'G#'
      'A'
      'A#'
      'B')
  end
  object Values: TValueListEditor
    Left = 18
    Top = 56
    Width = 153
    Height = 263
    Color = clWhite
    DisplayOptions = [doColumnTitles]
    FixedCols = 1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    GridLineWidth = 2
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine]
    ParentFont = False
    ScrollBars = ssNone
    Strings.Strings = (
      'C='
      'C#='
      'D='
      'D#='
      'E='
      'F='
      'F#='
      'G='
      'G#='
      'A='
      'A#='
      'B=')
    TabOrder = 2
    TitleCaptions.Strings = (
      'Original'
      'Converted')
    ColWidths = (
      73
      73)
  end
end
