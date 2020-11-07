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
    AnchorSideLeft.Side = asrCenter
    AnchorSideTop.Control = Owner
    AnchorSideRight.Control = Owner
    AnchorSideRight.Side = asrCenter
    AnchorSideBottom.Control = Panel1
    Left = 10
    Height = 382
    Top = 16
    Width = 736
    Anchors = [akTop, akLeft, akRight, akBottom]
    BorderSpacing.Left = 10
    BorderSpacing.Top = 16
    BorderSpacing.Right = 10
    BorderSpacing.Bottom = 10
    Center = True
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
    object LabelSaved: TLabel
      AnchorSideLeft.Control = Button1
      AnchorSideTop.Control = Button1
      AnchorSideTop.Side = asrBottom
      Left = 21
      Height = 19
      Top = 110
      Width = 75
      BorderSpacing.Top = 60
      Caption = 'LabelSaved'
      Font.Color = clGreen
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object EditSearch: TEdit
      AnchorSideLeft.Control = Button1
      AnchorSideLeft.Side = asrBottom
      AnchorSideTop.Control = Button1
      AnchorSideTop.Side = asrCenter
      Left = 194
      Height = 30
      Top = 18
      Width = 200
      BorderSpacing.Left = 50
      OnKeyDown = EditSearchKeyDown
      TabOrder = 1
      TextHint = 'Search'
    end
    object LabelTotal: TLabel
      AnchorSideLeft.Control = EditSearch
      AnchorSideTop.Control = EditSearch
      AnchorSideTop.Side = asrBottom
      Left = 194
      Height = 19
      Top = 54
      Width = 59
      BorderSpacing.Top = 6
      Caption = 'Total Pics:'
      ParentColor = False
    end
    object BtnBack: TButton
      AnchorSideLeft.Control = EditSearch
      AnchorSideLeft.Side = asrBottom
      AnchorSideTop.Control = EditSearch
      AnchorSideTop.Side = asrCenter
      Left = 424
      Height = 25
      Top = 21
      Width = 75
      BorderSpacing.Left = 30
      Caption = '<'
      OnClick = BtnBackClick
      TabOrder = 2
    end
    object BtnForward: TButton
      AnchorSideLeft.Control = BtnBack
      AnchorSideLeft.Side = asrBottom
      AnchorSideTop.Control = BtnBack
      AnchorSideTop.Side = asrCenter
      Left = 529
      Height = 25
      Top = 21
      Width = 75
      BorderSpacing.Left = 30
      Caption = '>'
      OnClick = BtnForwardClick
      TabOrder = 3
    end
    object LabelPicNumber: TLabel
      AnchorSideLeft.Control = BtnForward
      AnchorSideLeft.Side = asrBottom
      AnchorSideTop.Control = BtnForward
      AnchorSideTop.Side = asrCenter
      Left = 620
      Height = 19
      Top = 24
      Width = 8
      BorderSpacing.Left = 16
      Caption = '0'
      ParentColor = False
    end
    object SpinEdit1: TSpinEdit
      AnchorSideLeft.Control = BtnBack
      AnchorSideTop.Control = BtnBack
      AnchorSideTop.Side = asrBottom
      Left = 424
      Height = 28
      Hint = 'Direct enter a picture number'
      Top = 62
      Width = 96
      BorderSpacing.Top = 16
      MinValue = 1
      OnKeyDown = SpinEdit1KeyDown
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      Value = 1
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
      object MenuItemSave: TMenuItem
        Caption = 'Save'
        Bitmap.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          20000000000000040000640000006400000000000000000000000000AB070202
          A74D5656B1B0B8B8CED0C7C7D3CFC6C6D2CFC6C6D2CFBEBFCCCFB7BAC8CFC7C7
          D3CFC7C6D2CFC6C6D2CFC6C6D2CFC3C3D0D1A3A3B8865C5C820A0000AA0E0000
          A8994646BFF9E2E2F4FFFDFDFCFFFBFBFCFFFCFCFDFFE2EBEEFF90C3D1FFC2E3
          ECFFF4F8FAFFFCFBFCFFFBFBFCFFF6F6F8FFC3C3D0A55151780C0000AA0E0000
          A89C4545BFFAE5E5F6FFFFFFFFFFFCFCFCFFFAFAFAFFE6F1F3FF60BAD0FF40B6
          D3FF94E2F5FFF8FEFFFFFFFFFFFFFAFAFBFFC5C5D2A45151770C0000AA0E0000
          A8974848C0F7E6E6F6FFFFFFFFFFE4E4E4FFCDCDCDFFC3C9CAFF5BBBD3FF0EC0
          ECFF24D2FDFFBFF2FFFFFFFFFFFFF9F9FBFFC5C5D2A45151770C0000AA0E0000
          A8954949C0F5E6E6F6FFFFFFFFFFE5E5E5FFCFCFCFFFCDCCCCFF7DC7DAFF0CCB
          FAFF00CCFFFF55DDFFFFECFBFFFFFAF9FBFFC5C5D2A45151770C0000AA0E0000
          A8974848C0F7E5E5F6FFFFFFFFFFE0E0E0FFC6C6C6FFC5C4C4FFB4C3C7FF43C7
          E7FF00CBFEFF0ECEFFFF9CEBFFFFF8F9FBFFC5C5D2A45151770C0000AA0E0000
          A89A4545BFF9E5E5F6FFFFFFFFFFEAEAEAFFD9D9D9FFD8D8D8FFD8D7D6FFAAD9
          E5FF22D2FEFF00CBFFFF34D7FFFFCDF1FBFFC8C6D2A45151770C0000AA0E0000
          A89C4444BFFAE5E5F6FFFFFFFFFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFF7FC
          FDFF7FE4FDFF06CDFFFF06CBFDFF74D8F1FFB9C0CFA46054780C0000AA0E0000
          A8994747C0F8E6E6F7FFF8F8F9FFDDDDE4FFDCDCE4FFDEDEE6FFE0E0E7FFE5E3
          E9FFC7E0EDFF3FD1F7FF14B9E1FF35ABCAFF69A7C1A57174900C0000AA0E0000
          A8954A4AC0F5E7E7F7FFF1F1F4FFD2D2DCFFD8D8E1FFDEDEE5FFE4E4EAFFEAEA
          EEFFF1F1F4FFA6DCECFF2EA6C4FF239EBDFF329DC3C0478DCE210000AA0E0000
          A8964848C0F6E6E6F7FFF2F2F4FFD5D5DEFFDEDEE6FFE5E5EBFFEBEBEFFFF1F1
          F4FFF9F8FAFFE0E7EDFF6BB9CFFF3598C6FF5077CFF25D62D37B0000AA0D0000
          A8964646BFF7E5E5F7FFF3F3F5FFD2D2DCFFD5D5DEFFDADAE2FFDEDEE5FFE2E2
          E8FFE6E6ECFFE1E1E8FFCADDEBFF748BDAFF5D5ED3FA5F5FD39D0000AA090000
          A8874343BDF3E0E0F4FFFFFFFEFFF5F5F7FFF3F3F6FFF4F4F6FFF4F4F6FFF4F4
          F6FFF4F4F7FFF5F5F7FFFCFBFDFFC6C5EEFF7E7ED1C35D5DC92E0000AA060000
          A7813D3DBBF3DCDCF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7FAFFC2C2D2A45151700B0000A9040000
          A87C3333B8F5D3D3EFFFFFFFFEFFFCFCFDFFFCFCFDFFFCFCFDFFFCFCFDFFFCFC
          FDFFFCFCFDFFFCFCFDFFFDFDFDFFF7F7F9FFC4C4D1A55151770C0000BC000404
          A63E4A4AAEBAB0B0CDDFCCCCD7DECBCBD6DECBCBD6DECBCBD6DECBCBD6DECBCB
          D6DECBCBD6DECBCBD6DECBCBD6DEC7C7D4E0A6A6BA8F5B5B800A
        }
        OnClick = MenuItemSaveClick
      end
      object MenuItemQuit: TMenuItem
        Caption = 'Quit'
        Bitmap.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000064000000640000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          FF090000FFD60000FFF60000FFBB0000FF020000000000000000000000000000
          0000000000000000FF0D0000FFCD0000FFEE0000FFB10000FF03000000000000
          00000000FF320000FFFA0000FFFF0000FF730000000000000000000000000000
          00000000FF010000FFAB0000FFFF0000FFE60000FF1A00000000000000000000
          0000000000000000FF830000FFFF0000FFF80000FF2C00000000000000000000
          00000000FF800000FFFF0000FFF70000FF360000000000000000000000000000
          0000000000000000FF040000FFCC0000FFFF0000FFCD0000FF05000000000000
          FF4E0000FFFD0000FFFF0000FF62000000000000000000000000000000000000
          000000000000000000000000FF2A0000FFF70000FFFF0000FF7D0000FF270000
          FFF00000FFFF0000FF8E00000000000000000000000000000000000000000000
          00000000000000000000000000000000FF780000FFFF0000FFFA0000FFDF0000
          FFFF0000FFBC0000FF0400000000000000000000000000000000000000000000
          00000000000000000000000000000000FF020000FFC30000FFFF0000FFFF0000
          FFE00000FF150000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000FF8E0000FFFF0000FFFF0000
          FFBC0000FF010000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000FF550000FFFE0000FFFE0000FFFD0000
          FFFF0000FF6B0000000000000000000000000000000000000000000000000000
          000000000000000000000000FF2E0000FFF40000FFFF0000FF850000FF8E0000
          FFFF0000FFF50000FF2500000000000000000000000000000000000000000000
          0000000000000000FF120000FFDC0000FFFF0000FFB80000FF030000FF070000
          FFD30000FFFF0000FFC60000FF03000000000000000000000000000000000000
          00000000FF040000FFBD0000FFFF0000FFD90000FF1000000000000000000000
          FF320000FFFA0000FFFF0000FF75000000000000000000000000000000000000
          00000000FF910000FFFF0000FFF20000FF2B0000000000000000000000000000
          00000000FF810000FFFF0000FFF80000FF2D0000000000000000000000000000
          FF330000FFBB0000FFBB0000FF4A000000000000000000000000000000000000
          00000000FF050000FFB10000FFCC0000FF9A0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000
        }
        OnClick = MenuItemQuitClick
      end
    end
    object MenuItemEdit: TMenuItem
      Caption = 'Edit'
      object MenuItemPrefs: TMenuItem
        Caption = 'Preferences'
        Bitmap.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000064000000640000000000000000000000000000000000
          0000000000002D2400002C2300003329000029210000866B0000715B00429E7E
          00B16652002B725B00005B490026AE8B00D291740076FFFF0000342A0000B792
          0000987900000000000007050000000000000000000000000000000000000000
          00000000000003020000090700031B150010FFFF0000FFF30000A281007CEABB
          00FFAC8A0099FFFF0A009A7C0079ECBC00FFB49000A800000002110E00097860
          00546D570038FFFF000006040000000000000000000000000000000000000000
          000000000000A685000079610047B59100C28F730065000000039B7C007CF1C0
          00FFCFA600E17B610073BB9500CAF3C200FFAE8B00B300000013987A0086D4AA
          00F99D7E0092FFFF0000040200000000000000000000000000001C1700001C17
          0000110E0000957800007C640049E1B400FADFB200F490730089A28405B7E9BA
          00FFEEBE00FFB0A944FFC9B027FFF2C100FFC4A109EE9B810ABFD7AC00F2E4B6
          00FF90730070B8940000C09A0000B38F000000000000251D000000000000FFFF
          000000000002F7C600002D250012BA9400C1F3C200FFDEB302FFA8B370FFBCB6
          4FFFDAB208FF9CCBBCFFA7BB7CFFD7B007FF90BA90FFA7AF54FFEDBC00FFC69D
          00E94E3D00384D3E002183690064735C005300000004251D0000745D00006450
          002DA181009A9A7B007E5C49003E9A7F0BB2D6B210FFE5B700FFA9C191FFA0D6
          D6FFA2B173FF96DBE4FF90CDC6FF91B587FF79D7EDFFA5AD52FFD4AF0AFFA2A1
          37FC947E0DC0B89300D3D6AB00FFA28100B80000000C292100007F6600006652
          003DCCA300EEE8BA00FFCDA300EDB6A632FB9EC8B7FFAFB362FFA2C09BFFA4EC
          FFFF9BE9FEFF94EAFFFF8BE8FFFF80E4FFFF76DFFAFF7DB597FF73BAA5FF62BD
          BEFFC5A913FFE2B400FFC29B00E7755E004FDDB00000161300001E1900000000
          00038B70006ECCA300E9ECBB00FFD9B20AFFA2C4A5FFA4E6F8FFA5EAFBFFA0EC
          FFFF96EAFFFF8DE8FFFF83E6FFFF7AE4FFFF70E3FFFF65E0FFFF59D8FAFF85A8
          68FFD4A900FFC6A003FE7860007A00000000FFFF0000C49D0000FFFF00000000
          00040000000D8D7509A8B6AE47FFB7AF47FFA1B98DFFA7EDFFFFA1ECFFFF98EA
          FFFF8EE8FFFF85E6FFFF7BE5FFFF72E3FFFF68E1FFFF5FDFFFFF54DBFDFF61B4
          A5FF64B298FF66A57DFF907908C290730094927500956B5500547F66006EA987
          00ADA88600B7B69508E9A1B98EFFA0DEECFFA5E8F8FFA3EDFFFF99EBFFFF90E9
          FFFF86E7FFFF7CE4FEFF73E2FEFF6AE1FFFF60DFFFFF57DDFFFF4EDBFFFF42D9
          FFFF43C2D6FF88A351FFCEA500FFD3A800FFC59E00FF816700A2957800B7D3A9
          00FFDFB300FFE2B400FFCDA709FF9FB485FFA2EBFFFF9AEBFFFF91E9FFFF88E7
          FFFF7ADDF6FF66C7DFFF5EC4DEFF5DD5F3FF59DEFFFF4FDCFFFF46DAFFFF3AD6
          FFFF63A37BFFBA9C0AFFCAA301FFA78500D6856A007D4235001A433600198268
          0067A18100BCBCA31FFEA9B571FF9ACBBFFF9BEBFFFF92E9FFFF89E7FFFF7FE5
          FFFF68C7DFFF66D5F1FF5FD6F4FF4EC1DEFF50DAFDFF47DAFFFF3ED8FFFF34D6
          FFFF30C8E8FF3BB7C3FF74924CFE634D006EFFFF05005B49000057460000FFFF
          0200634D00629D9841FA9AC9BFFF97DBE5FF94E9FFFF8BE8FFFF81E6FFFF78E4
          FFFF61C6DFFF60D4F2FF58D5F5FF47BFDDFF48D9FDFF3FD8FFFF36D6FFFF2CD5
          FFFF38BACAFF63A47AFF9A9627FFA07F00D5876C0090544400334F3F00259174
          0093B49000E1CFA601FEC3A009FF93A86EFF8AE5FDFF83E6FFFF79E4FFFF70E3
          FFFF62D7F5FF51C2DFFF48C0DEFF46D0F3FF41D9FFFF37D7FFFF2ED5FFFF28D4
          FFFF4EA695FFAF940CFFC99F00FFC59E00FFBE9800FF896E00D57C63009CC19B
          00FFCCA400FFC8A000FFA7A646FF86CCCEFF83E6FFFF7BE5FFFF71E2FFFF68E1
          FFFF5FDFFFFF55DCFEFF4BDAFEFF42D9FFFF39D7FFFF30D5FFFF2AD4FFFF2AD0
          F9FF29C7EEFF4BA89AFF94800DE5866A00A2876C0093665200595A4700358066
          006D816700737F6804A389A372FF89BA9FFF7EB5A0FF71DFFBFF69E1FFFF60DF
          FFFF56DDFFFF4DDBFFFF44D9FFFF3AD7FFFF31D5FFFF2BD4FFFF28D4FFFF49A7
          9BFF7C9649FF77964EFF76660CBB00000011FFFF00008B6F0000634F0000BD97
          0000000000006E580075B39103FBC19A00FF8C9E57FF66D9F6FF60DFFFFF58DE
          FFFF4FDBFFFF45DAFFFF3CD8FFFF32D6FFFF2BD4FFFF2AD2FDFF28CEF8FF42AF
          B0FFAA920FFFC29800FFAF8C00F77D6400941B15000C322700001A140000E0B4
          00006C570056B18E00EFC79F00FFB1940DFF6DB8B2FF6BB8B0FF69AA92FF4FD6
          F7FF45D9FFFF3CD8FFFF33D6FFFF2AD3FFFF28D4FFFF43ACA9FF69965DFF3AB0
          BAFF72873FF7987700DCAF8C00FBA38200FA584700527D6400001D1600000000
          0007856A00AAB28E00F9997A00C471610CA0848A3AF5B0950FFF8B963FFF45CB
          ECFF59A591FF41B7C2FF30C7E9FF599A76FF35BACDFF48ABA2FFB08E01FFA18C
          10FF6E620DB52C2100286953005E6F59007E4A3B00295E4B00001C1500000000
          0001584600385F4C00462E250015382C002C9E7D00E2C19800FF849341FF56A6
          98FFA58C0DFF649D6EFF37B6C5FFA38B0CFF7A9447FF4F967CFF9C8005F9B691
          00FF947600D7403300237B620000D0A600006D570000AE8B00001C1500000000
          0000725A00006F59000093760000705A006DB49000FFA78500EF695B0AA28774
          0CE0B99300FF8E8821FD5F814CF6AB8A02FCAE8B00FF6F5E07AF564500649779
          00E1A48400FF634F00618D700000000000000000000000000000000000000000
          00000000000000000000F2C200006F59007F9C7D00F0705A007A000000087E64
          00A4B49000FF8A6E00CB473500538D7000D0AF8C00FF765E0090FFFF01005443
          0041745D00A25443004577600000000000000000000000000000000000000000
          00000000000000000000725B0000453600214C3D003D00000005FFFF00007B62
          0096A68500FF705A007DFFFF02006D5700799E7E00FF735C0089FFFF00007E64
          0000000000040000000000000000000000000000000000000000000000000000
          000000000000000000009E7D00004C3D00005C490000221B0000796100005645
          00516F5900B540330023403300002E250016614D008E4F3F00406F590000110D
          0000151100001411000015110000000000000000000000000000
        }
      end
    end
    object MenuItemHelp: TMenuItem
      Caption = 'Help'
      object MenuItemAbout: TMenuItem
        Caption = 'About'
        Bitmap.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000064000000640000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000009F5800009C5700009E5600009E5700000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000009E590000A157000090630000975D0000A05700009D59
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000009E590000A15700039B5A00629B590047757100009E59
          00009D5A00000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000009D590000A5530009965E00BA916200E99A5B0063A64F
          00049D5900009D5A000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000FF0000009D5A0000FF0000009861009D8F6E00FF916700F3995D
          0082A151000E986100009D5900009C5800009D5A000099530000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000995E00009F5900009D580000971A00039C6400A8987700FF937600FF946D
          00FB976500B1995E00649D58002BA44B00069A5D00009D5900009B5800009C5A
          0000804000000000000000000000000000000000000000000000000000009F57
          000097470000A05D0000974C000FA0610075A47600EFA38200FF9E7E00FF9979
          00FF947400FF936E00FE956700E5986100AB9B5B005B9E5600198E7300009C5A
          00009D5A00009C5A0000AA5500000000000000000000000000009C5A0000964F
          0000AC7100009C57002EA86E00B1B18400FBB28E00FFAF8C02FFB69927FFC1AB
          53FFBFAA56FFAE9532FF9A7D08FF937200FF946C00FA966400D09A5D007E9D57
          002811FF00009D590000A15700009D5900000000000000000000934F0000C993
          0000A05D0047B47C00D5C29700FFC39C00FFBD9700FFC4A425FFF2EBD2FFFEFD
          FBFFFEFDFBFFF7F5EAFFDED4AAFFB39B3CFF997B00FF957500FF946F00FF9666
          00DE9A5E00819E56001F9A6100009D5800009D5A000080400000B6760000A25F
          0047BE8600E1D3A700FFD2A900FFCEA400FFC89F00FFD1B236FFFBF9F0FFFFFF
          FFFFFFFEFDFFE1D39AFFD7C47AFFE5DAB0FFCAB86FFFA4850CFF9A7B00FF9778
          00FF967000FF986500CF9C5B00569F4B00049D5800009D5A00009A56002BC186
          00D2E2B300FFE2B500FFDDB100FFD9AD00FFD4A900FFD4AD14FFF5ECC8FFFFFF
          FFFFFEFEFDFFD4BC5CFFB69000FFBC9B19FFD8C67DFFD9CA8FFFAB8C10FFA181
          00FF9D7E00FF997800FF996D00F39B5F00829D52000B9D580000B373009AE6B2
          00FFF2C200FFEDBD00FFE8BA00FFE4B600FFDFB200FFDAAE00FFE5C855FFFDFC
          F5FFFFFFFFFFE5D38CFFC39C00FFBE9800FFBC9807FFDDCA82FFD5C37BFFAE8C
          04FFA88600FFA38300FF9F7F00FF9D7300FB9D6000839C4C0006C78B00DFFBC8
          00FFFCC900FFF8C600FFF3C300FFEFBF00FFEABB00FFE5B700FFE2B709FFF2E0
          96FFFFFFFFFFF7EFD2FFD4AF1DFFCAA100FFC59D00FFC49E0AFFDBC672FFC9AD
          40FFB38E00FFAF8C00FFAA8800FFA58400FFA17300F19D5C0056C98D00E4FDCA
          00FFFFCC00FFFFCC00FFFDCA00FFF9C800FFF5C400FFF1C000FFECBC00FFEAC0
          18FFFAEFC6FFFFFFFFFFECD785FFD6AC04FFD1A700FFCCA200FFCBA50DFFCBA9
          20FFBE9800FFBA9400FFB59100FFB18D00FFAB8500FFA16800B4B67600A3EFB9
          00FFFFCD00FFFFCC00FFFFCC00FFFFCC00FFFECB00FFFBC900FFF7C600FFF2C2
          00FFF3CD38FFFAEAABFFFAF1CCFFE5C02BFFDBAF00FFD7AC00FFD2A800FFCEA4
          00FFCAA100FFC59D00FFC09A00FFBC9600FFB69000FFA77000D89B57002AC588
          00C7F3BE00FFFFCD00FFFFCC00FFFFCC00FFFFCC00FFFFCC00FFFECB00FFFCCA
          00FFF9C600FFF5C70FFFF3CB29FFECBE06FFE7B800FFE2B500FFDDB100FFD9AD
          00FFD4AA00FFD0A600FFCBA200FFC79F00FFC09600FFA86F00C4AC6A00009D58
          002CBE8000B3E4AC00FBFAC700FFFFCD00FFFFCD00FFFFCC00FFFFCC00FFFFCC
          00FFFFCB00FFFED226FFFCE89AFFF8D652FFF2C203FFEDBE00FFE9BA00FFE4B6
          00FFDFB300FFDBAF00FFD7AC00FFD1A700FFBB8700F2A1610061530A0000A562
          00008C450010AA680065C58800C4DFA600F5F2BC00FFFCC800FFFFCD00FFFFCE
          00FFFFCD00FFFFCE04FFFFE472FFFFF1B5FFFCD225FFF9C700FFF5C400FFF0C1
          00FFECBD00FFE5B600FFD7A600FFBE8800E5A666006C904500069C5C0000A15E
          00009C580000C28200008A420012A3600049B576008DC68A00C3D59B00E5E1A9
          00F7EAB300FFEFB900FFF3BF02FFF5C411FFF5C206FFF3BE00FFEDB800FFE3AE
          00FDD59D00F2C38900D2B07100909E5A00342D0000019A540000000000000000
          00009C5A0000985A00009D590000A8660000FFFF00008238000E98520028A360
          0048AC6A0066B373007DB778008DB9790096B97A0096B778008DB373007CAA68
          0061A05D003C914A001800000001A15F0000995500009C590000000000000000
          00000000000000000000A25D0000985700009D5900009D580000A05C0000A563
          0000B2710000D79C0000FFFF00000000000000000000FFFF0000D59A0000AE6E
          0000A36000009E5A00009C5900009D5900009C5C000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000974F
          0000944800009D5900009D5A00009E5900009D5900009C5A00009C590000AE60
          0000A25D00000000000000000000000000000000000000000000
        }
        OnClick = MenuItemAboutClick
      end
    end
  end
  object SaveDialog1: TSaveDialog
    Left = 112
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 200
  end
end
