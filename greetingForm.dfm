object greetingsForm: TgreetingsForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Corinda Fashion Show'
  ClientHeight = 166
  ClientWidth = 536
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnHide = FormHide
  PixelsPerInch = 96
  TextHeight = 13
  object StaticText1: TStaticText
    Left = 24
    Top = 8
    Width = 474
    Height = 29
    Caption = 'Welcome to Corinda'#39's Fashion Show Booking System!'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Myriad Pro'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object StaticText2: TStaticText
    Left = 120
    Top = 43
    Width = 266
    Height = 23
    Caption = 'To get started, please choose an option:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Myriad Pro'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object bookTicketBtn: TButton
    Left = 64
    Top = 88
    Width = 161
    Height = 52
    Caption = 'Book a  ticket'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Myriad Pro'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = bookTicketBtnClick
  end
  object changeBookingBtn: TButton
    Left = 288
    Top = 88
    Width = 161
    Height = 52
    Caption = 'Change booking'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Myriad Pro'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = changeBookingBtnClick
  end
end
