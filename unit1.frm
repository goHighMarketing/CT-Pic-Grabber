object Form1: TForm1
  Left = 443
  Height = 577
  Top = 250
  Width = 757
  Caption = 'CT Pic Scraper'
  ClientHeight = 577
  ClientWidth = 757
  Menu = MainMenu1
  LCLVersion = '7.2'
  object Image1: TImage
    AnchorSideLeft.Control = Owner
    AnchorSideTop.Control = Owner
    AnchorSideRight.Control = Owner
    AnchorSideRight.Side = asrBottom
    AnchorSideBottom.Control = Panel1
    Left = 10
    Height = 382
    Top = 16
    Width = 737
    Anchors = [akTop, akLeft, akRight, akBottom]
    BorderSpacing.Left = 10
    BorderSpacing.Top = 16
    BorderSpacing.Right = 10
    BorderSpacing.Bottom = 10
  end
  object Panel1: TPanel
    AnchorSideLeft.Control = Owner
    AnchorSideLeft.Side = asrCenter
    AnchorSideRight.Control = Owner
    AnchorSideRight.Side = asrBottom
    AnchorSideBottom.Control = StatusBar1
    Left = 9
    Height = 143
    Top = 408
    Width = 738
    Anchors = [akLeft, akBottom]
    BorderSpacing.Right = 10
    BorderSpacing.Bottom = 6
    ClientHeight = 143
    ClientWidth = 738
    TabOrder = 0
    object Button1: TButton
      AnchorSideLeft.Control = Panel1
      AnchorSideTop.Control = Panel1
      Left = 21
      Height = 33
      Top = 17
      Width = 123
      AutoSize = True
      BorderSpacing.Left = 20
      BorderSpacing.Top = 16
      Caption = 'Grab a random pic'
      OnClick = Button1Click
      TabOrder = 0
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Height = 20
    Top = 557
    Width = 757
    Panels = <    
      item
        Width = 50
      end    
      item
        Width = 800
      end>
    SimplePanel = False
  end
  object MainMenu1: TMainMenu
    Left = 16
    object MenuItemFile: TMenuItem
      Caption = 'File'
      object MenuItemQuit: TMenuItem
        Caption = 'Quit'
        OnClick = MenuItemQuitClick
      end
    end
    object MenuItemEdit: TMenuItem
      Caption = 'Edit'
      object MenuItemPrefs: TMenuItem
        Caption = 'Preferences'
      end
    end
    object MenuItemHelp: TMenuItem
      Caption = 'Help'
      object MenuItemAbout: TMenuItem
        Caption = 'About'
        OnClick = MenuItemAboutClick
      end
    end
  end
end
