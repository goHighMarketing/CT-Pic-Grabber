unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus, ExtCtrls,
  ComCtrls, StdCtrls, unit2, openssl, opensslsockets, fphttpclient;

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
    function getHTML(): string;
    function getHTML2(aURL: string): string;
    procedure getRandomPic(links: TStringList);
    function getURLs(html: string): TStringList;
    function getURLs2(html: string): string;

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
var
  html: string;
  links: TStringList;
  File1: TextFile;
begin
     links:= TStringList.Create;
     html:= getHTML();
     links:= getURLs(html);
     if links.Count > 0 then
        getRandomPic(links)
     else
      begin
        if IsConsole then
        begin
          WriteLn('Nothing Found' + sLineBreak);
        end
        else
          ShowMessage('Nothing Found'+ sLineBreak);
      end;


end;

function TForm1.getHTML(): string;
var
   cli: TFPHTTPClient;
   url, html, search: string;

begin
      InitSSLInterface;
      search:= '';
      url:= 'https://unsplash.com/'+search;
      cli:= TFPHTTPClient.Create(nil);
      cli.AllowRedirect:= true;
      cli.AddHeader('User-Agent', 'Mozilla/5.0 (Compatible; fpweb)');
      try
        html:= cli.SimpleGet(url);
      except on E:EHttpclient do
      begin
        if IsConsole then
           WriteLn('Exception: ' + E.Message + sLineBreak + 'URL: ' + url)
        else
          ShowMessage('Exception: ' + E.Message + sLineBreak + 'URL: ' + url);
      end;
      end;
   {   if IsConsole then
        WriteLn('HTML: ' + sLineBreak + html)
      else
        ShowMessage('HTML: ' + sLineBreak + html);
   }
      result:= html;
end;

function TForm1.getURLs(html: string): TStringList;
var
   ndx, ndx2: integer;
   picLinks: TStringList;
   url: string;
begin
     ndx:= html.IndexOf('Download photo');
     picLinks:= TStringList.Create;
     while ndx >= 0 do
     begin
          ndx:= html.IndexOf('https', ndx);
          ndx2:= html.IndexOf('?', ndx);
          url:= html.Substring(ndx, ndx2 - ndx);
          picLinks.Add(url);
          ndx:= html.IndexOf('Download photo', ndx2);
     end;
     result:= picLinks;
end;

procedure Tform1.getRandomPic(links: TStringList);
var
   url, url2, pic_html: string;
   client: TFPHTTPClient;
   inx: integer;
   newURLs: TStringStream;
begin
     client := TFPHTTPClient.Create(nil);
     newURLs := TStringStream.Create('');
     url := '';
     randomize;
     inx := Random(links.Count);
     if inx <= 0 then
     begin
       StatusBar1.Panels.Items[1].Text:= 'getRandomPic() - Empty list, no pics found';
       exit;
     end;
     url:= links[inx].Replace('/download', '');
     StatusBar1.Panels.Items[1].Text:= url;
     pic_html:= getHTML2(url);
  //   WriteLn(pic_html);
     url2:= getURLs2(pic_html);
     WriteLn('URL2 is: ' + url2);
     StatusBar1.Panels.Items[1].Text:= url2;
     client.SimpleGet(url2, newURLs);
     newURLs.Position:= 0;
     Image1.Picture.LoadFromStream(newURLs);
     Image1.Stretch:= true;
     Image1.Proportional:= true;
end;

function TForm1.getHTML2(aURL: string): string;
var
   cli: TFPHTTPClient;
   html: string;
   Mstream: TMemoryStream;
begin
      InitSSLInterface;
      cli:= TFPHTTPClient.Create(nil);
      Mstream:= TMemoryStream.Create;
      cli.AllowRedirect:= true;
      cli.AddHeader('User-Agent', 'Mozilla/5.0 (Compatible; fpweb)');
      cli.AddHeader('Accept', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8');
      cli.AddHeader('Accept-Encoding', 'deflate');
      cli.AddHeader('Accept-Language', 'en-US,*');
      try
        cli.Get(aURL, Mstream);
        Mstream.Position:= 0;
        SetLength(html, Mstream.Size);
        Mstream.ReadBuffer(html[1], Mstream.Size);
      except on E:EHttpclient do
      begin
        if IsConsole then
           WriteLn('Exception: ' + E.Message + sLineBreak + 'URL: ' + aURL)
        else
          ShowMessage('Exception: ' + E.Message + sLineBreak + 'URL: ' + aURL);
      end;
      end;

      Mstream.Free;
      cli.Free;
      result:= html;
end;

function TForm1.getURLs2(html: string): string;
var
   ndx, ndx2: integer;
   url: string;
begin
     ndx:= html.IndexOf('<img');
     while ndx >= 0 do
     begin
          ndx:= html.IndexOf('https', ndx);
          ndx2:= html.IndexOf('?', ndx);
          url:= html.Substring(ndx, ndx2 - ndx);
          if url.Contains('photo-') then
             break;
          ndx:= html.IndexOf('<img', ndx2);
     end;
     result:= url;
end;

end.

