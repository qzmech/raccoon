unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls;

type
  TForm1 = class(TForm)
    ControlPanel: TPanel;
    ImageAlbum: TImage;
    ImageAlbum1: TImage;
    NameSong1: TLabel;
    Nextt: TImage;
    Nextt1: TImage;
    Previouss: TImage;
    Previouss1: TImage;
    Singer1: TLabel;
    Bitrate: TLabel;
    Frequency: TLabel;
    FileTime: TLabel;
    procedure ControlPanelMouseLeave(Sender: TObject);
    procedure FormClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure Nextt1Click(Sender: TObject);
    procedure Nextt1MouseLeave(Sender: TObject);
    procedure Nextt1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure NexttMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure Pause1Click(Sender: TObject);
    procedure Previouss1Click(Sender: TObject);
    procedure Previouss1MouseLeave(Sender: TObject);
    procedure Previouss1MouseMove(Sender: TObject; Shift: TShiftState; X,Y: Integer);
    procedure PrevioussMouseMove(Sender: TObject; Shift: TShiftState; X,Y: Integer);
    procedure Start1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation
uses
  RaccoonUnit;
{$R *.lfm}
procedure TForm1.FormClick(Sender: TObject);
begin
 ActionXInfoBar:=false;
end;

procedure TForm1.ControlPanelMouseLeave(Sender: TObject);
begin
  Previouss1.Visible := False;
  Previouss.Visible := True;
  Nextt1.Visible := False;
  Nextt.Visible := True;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Form1.Width:=Screen.Width;
  Form1.Top:=-80;
  Form1.Left:=0;
end;

procedure TForm1.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if  ActionXInfoBar<>false then
  ActionXInfoBarTime:=0;
  Previouss1.Visible := False;
  Previouss.Visible := True;
  Nextt1.Visible := False;
  Nextt.Visible := True;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  Form1.ImageAlbum.Refresh;
  Form1.ImageAlbum1.Refresh;
  Form1.NameSong1.Refresh;
  Form1.Singer1.Refresh;
  Form1.Bitrate.Refresh;
  Form1.Frequency.Refresh;
  Form1.FileTime.Refresh;
end;

procedure TForm1.Nextt1Click(Sender: TObject);
begin
 RaccoonForm1.NextZClick(MainSender);
end;

procedure TForm1.Nextt1MouseLeave(Sender: TObject);
begin
  Nextt1.Visible := False;
  Nextt.Visible := True;
end;

procedure TForm1.Nextt1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Nextt.Visible := False;
  Nextt1.Visible := True;
    if  ActionXInfoBar<>false then
  ActionXInfoBarTime:=0;
end;

procedure TForm1.NexttMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Nextt.Visible := False;
  Nextt1.Visible := True;
end;

procedure TForm1.Pause1Click(Sender: TObject);
begin
  RaccoonForm1.PauseZClick(MainSender);
end;

procedure TForm1.Previouss1Click(Sender: TObject);
begin
  RaccoonForm1.PrevioussZClick(MainSender);
end;

procedure TForm1.Previouss1MouseLeave(Sender: TObject);
begin
  Previouss1.Visible := False;
  Previouss.Visible := True;
end;

procedure TForm1.Previouss1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Previouss.Visible := False;
  Previouss1.Visible := True;
    if  ActionXInfoBar<>false then
  ActionXInfoBarTime:=0;
end;

procedure TForm1.PrevioussMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Previouss.Visible := False;
  Previouss1.Visible := True;
end;

procedure TForm1.Start1Click(Sender: TObject);
begin
 RaccoonForm1.StartZClick(MainSender);
end;

end.

