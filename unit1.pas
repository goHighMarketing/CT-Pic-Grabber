unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus, ExtCtrls,
  ComCtrls, StdCtrls, unit2, openssl, opensslsockets, fphttpclient, LCLType,
  Spin;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    BtnBack: TButton;
    BtnForward: TButton;
    EditSearch: TEdit;
    Image1: TImage;
    LabelPicNumber: TLabel;
    LabelTotal: TLabel;
    LabelSaved: TLabel;
    MainMenu1: TMainMenu;
    MenuItemSave: TMenuItem;
    MenuItemAbout: TMenuItem;
    MenuItemHelp: TMenuItem;
    MenuItemFile: TMenuItem;
    MenuItemPrefs: TMenuItem;
    MenuItemEdit: TMenuItem;
    MenuItemQuit: TMenuItem;
    Panel1: TPanel;
    SaveDialog1: TSaveDialog;
    SpinEdit1: TSpinEdit;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    procedure BtnBackClick(Sender: TObject);
    procedure BtnForwardClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure EditSearchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MenuItemAboutClick(Sender: TObject);
    procedure MenuItemQuitClick(Sender: TObject);
    procedure MenuItemSaveClick(Sender: TObject);
    procedure SpinEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Timer1Timer(Sender: TObject);
  private
    function getHTML(): string;
    function getHTML2(aURL: string): string;
    procedure getPic(url: string);
    procedure getRandomPic(links: TStringList);
    function getURLs(html: string): TStringList;
    function getURLs2(html: string): string;

  public

  end;

var
  Form1: TForm1;
  newURLs: TStringStream;
  inx: integer;
  links: TStringList;

implementation

{$R *.frm}

{ TForm1 }

procedure TForm1.MenuItemQuitClick(Sender: TObject);
begin
  Form1.Close;
end;

procedure TForm1.MenuItemSaveClick(Sender: TObject);
var
  filename, url: string;
  sections: TStringArray;
begin
    url:= Statusbar1.Panels.Items[1].Text;
    sections:= url.Split('/');
    filename:= sections[4] + '.jpg';
    if filename = '.jpg' then
    begin
      ShowMessage('No Pic Found!' + sLineBreak + 'Grab a picture first and try again.');
      exit;
    end;
    SaveDialog1.FileName:= GetUserDir + 'Pictures/' + filename;
    if SaveDialog1.Execute then
    begin
         newURLs.SaveToFile(SaveDialog1.Filename);
         LabelSaved.Caption:= 'Pic saved as: ' + SaveDialog1.FileName;
         Timer1.Interval:= 10000;
         Timer1.Enabled:= true;
    end;
end;

procedure TForm1.SpinEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if links = nil then exit;
    if key = VK_Return then
    begin
      if SpinEdit1.Value - 1 > links.Count - 1 then exit;

      inx:= SpinEdit1.Value - 1;
      GetPic(links[inx]);
      SpinEdit1.Value:= inx + 1;
      LabelPicNumber.Caption:= IntToStr(inx + 1);
    end;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
     Timer1.Enabled:= false;
     LabelSaved.Caption:= '';
end;

procedure TForm1.MenuItemAboutClick(Sender: TObject);
begin
      unit2.Form2.Show;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  html: string;
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

procedure TForm1.BtnBackClick(Sender: TObject);
begin
     if links = nil then exit;
     if links.Count = 0 then exit;
     if inx > 0 then
        dec(inx)
     else
        inx:= links.Count -1;
     if links.Count > 0 then
     begin
        GetPic(links[inx]);
        labelPicNumber.Caption:= IntToStr(inx + 1);
        SpinEdit1.Value:= inx + 1;
     end;
end;

procedure TForm1.BtnForwardClick(Sender: TObject);
begin
     if links = nil then exit;
     if links.Count = 0 then exit;
     if inx < links.Count -1 then
        inc(inx)
     else
        inx:= 0;
     if links.Count > 0 then
     begin
        GetPic(links[inx]);
        labelPicNumber.Caption:= IntToStr(inx + 1);
        SpinEdit1.Value:= inx + 1;
     end;
end;

procedure TForm1.EditSearchKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if EditSearch.Text = '' then exit;
     if Key = VK_Return then
        Button1.Click;
end;

function TForm1.getHTML(): string;
var
   cli: TFPHTTPClient;
   url, html, search: string;

begin
      InitSSLInterface;
      search:= EditSearch.Text;
      if EditSearch.Text = '' then
         search:= ''
      else
          search:= 's/photos/' + search.Replace(' ', '-');
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
   //  StatusBar1.Panels.Items[1].Text:= url;
     pic_html:= getHTML2(url);
     LabelTotal.Caption:= 'Total Pics: ' + IntToStr(links.Count);
     labelPicNumber.Caption:= IntToStr(inx + 1);
     SpinEdit1.Value:= inx + 1;
  //   WriteLn(pic_html);
     url2:= getURLs2(pic_html);
     WriteLn('URL2 is: ' + url);
     StatusBar1.Panels.Items[1].Text:= url;
     client.SimpleGet(url2, newURLs);
     newURLs.Position:= 0;
     Image1.Picture.LoadFromStream(newURLs);
     Image1.Stretch:= true;
     Image1.Proportional:= true;
end;


procedure Tform1.getPic(url: string);
var
   url2, pic_html: string;
   client: TFPHTTPClient;
begin
     url:= url.Replace('/download', '');
     client := TFPHTTPClient.Create(nil);
     newURLs := TStringStream.Create('');
   //  StatusBar1.Panels.Items[1].Text:= url;
     pic_html:= getHTML2(url);
     LabelTotal.Caption:= 'Total Pics: ' + IntToStr(links.Count);
  //   WriteLn(pic_html);
     url2:= getURLs2(pic_html);
     WriteLn('URL2 is: ' + url);
     StatusBar1.Panels.Items[1].Text:= url;
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

