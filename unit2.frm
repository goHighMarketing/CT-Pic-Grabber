object Form2: TForm2
  Left = 1520
  Height = 300
  Top = 250
  Width = 397
  Caption = 'About CT PicScraper'
  ClientHeight = 300
  ClientWidth = 397
  LCLVersion = '7.2'
  object Panel1: TPanel
    AnchorSideLeft.Control = Owner
    AnchorSideTop.Control = Owner
    AnchorSideRight.Control = Owner
    AnchorSideRight.Side = asrBottom
    AnchorSideBottom.Control = Owner
    AnchorSideBottom.Side = asrBottom
    Left = 10
    Height = 280
    Top = 10
    Width = 377
    Anchors = [akTop, akLeft, akRight, akBottom]
    BorderSpacing.Left = 10
    BorderSpacing.Top = 10
    BorderSpacing.Right = 10
    BorderSpacing.Bottom = 10
    ClientHeight = 280
    ClientWidth = 377
    TabOrder = 0
    object Label1: TLabel
      AnchorSideLeft.Control = Panel1
      AnchorSideLeft.Side = asrCenter
      Left = 144
      Height = 19
      Top = 24
      Width = 89
      Caption = 'CT PicScraper'
      Font.Color = clNavy
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label2: TLabel
      AnchorSideLeft.Control = Panel1
      AnchorSideLeft.Side = asrCenter
      Left = 163
      Height = 19
      Top = 61
      Width = 50
      Caption = 'Version'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
  end
end
