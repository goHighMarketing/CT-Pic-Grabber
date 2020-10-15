unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus, ExtCtrls,
  ComCtrls, StdCtrls, unit2;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Image1: TImage;
    MainMenu1: TMainMenu;
    MenuItemAbout: TMenuItem;
    MenuItemHelp: TMenuItem;
    MenuItemFile: TMenuItem;
    MenuItemPrefs: TMenuItem;
    MenuItemEdit: TMenuItem;
    MenuItemQuit: TMenuItem;
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    procedure Button1Click(Sender: TObject);
    procedure MenuItemAboutClick(Sender: TObject);
    procedure MenuItemQuitClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.frm}

{ TForm1 }

procedure TForm1.MenuItemQuitClick(Sender: TObject);
begin
  Form1.Close;
end;

procedure TForm1.MenuItemAboutClick(Sender: TObject);
begin
      unit2.Form2.Show;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin

end;

end.

