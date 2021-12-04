unit RaccoonUnit;

{$mode objfpc}{$H+}

interface

uses
  Windows, Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs,
  ExtCtrls, Interfaces, Grids, StdCtrls, ComCtrls, Buttons, Menus, BASS,
  types, Messages, Math, Mp3FileUtils, Id3v2Frames, Inifiles, Unit1, Basswma,
  bass_spx, Bass_alac, Bass_aac, bassflac, bass_ape, bass_ac3, bass_mpc,
  bassopus, Basscd, bass_wadsp;

type
  TID3v1Tag = record
    ID: string[3];
    Title: string[30];
    Artist: string[30];
    Album: string[30];
    Year: string[4];
    Comment: string[30];
    Genre: byte;
  end;

  { TRaccoonForm1 }

  TRaccoonForm1 = class(TForm)
    AboutBoxButtonX: TImage;
    AlbumZ: TLabel;
    BackHelpXEQ1: TPanel;
    BackHelpXEQ2: TPanel;
    BackHelpXEQ3: TPanel;
    BackHelpXEQ4: TPanel;
    BackHelpXEQ5: TPanel;
    BackHelpXTrackEcho: TPanel;
    BackHelpXTrackChorus: TPanel;
    BackHelpXTrackFlanger: TPanel;
    BackHelpXTrackReverberation: TPanel;
    BorderMessagesPanel: TPanel;
    BorderParametrs: TPanel;
    BorderAboutBox: TPanel;
    BorderSettingBox: TPanel;
    HintNullPlaylist: TLabel;
    HintNullPlaylistPanel: TPanel;
    SelectSchemeButtonX: TPanel;
    StandartSchemeButtonX: TPanel;
    LoadPluginDSPButtonX: TPanel;
    StartPluginDSPButtonX: TPanel;
    SelectLyricsPathButtonX: TPanel;
    EQ1Value: TPanel;
    EQ2Value: TPanel;
    EQ3Value: TPanel;
    EQ4Value: TPanel;
    EQ5Value: TPanel;
    TrackEchoValue: TPanel;
    TrackChorusValue: TPanel;
    TrackFlangerValue: TPanel;
    TrackReverberationValue: TPanel;
    OnSingerFlagOff: TImage;
    OnAlbumFlagOff: TImage;
    OnSortPopularFlagOff: TImage;
    OnInfobarFlagOff: TImage;
    OnLyricsShowFlagOff: TImage;
    OnYearFlagOff: TImage;
    OnFullTimeFlagOff: TImage;
    OnEchoFlagOff: TImage;
    OnChorusFlagOff: TImage;
    OnFlangerFlagOff: TImage;
    OnReverberationFlagOff: TImage;
    OnPluginsDSPFlagOff: TImage;
    LoadPluginDSPWithAppFlagOff: TImage;
    OnSingerFlagOn: TImage;
    OnAlbumFlagOn: TImage;
    OnSortPopularFlagOn: TImage;
    OnInfobarFlagOn: TImage;
    OnLyricsShowFlagOn: TImage;
    OnYearFlagOn: TImage;
    OnFullTimeFlagOn: TImage;
    OnEchoFlagOn: TImage;
    OnChorusFlagOn: TImage;
    OnFlangerFlagOn: TImage;
    OnReverberationFlagOn: TImage;
    OnPluginsDSPFlagOn: TImage;
    LoadPluginDSPWithAppFlagOn: TImage;
    StandartSettingEQButtonX: TPanel;
    OnSingerLabel: TLabel;
    LoadPluginDSPWithAppLabel: TLabel;
    OnSortPopularLabel: TLabel;
    OnInfobarLabel: TLabel;
    OnLyricsShowLabel: TLabel;
    OnAlbumLabel: TLabel;
    OnYearLabel: TLabel;
    OnFullTimeLabel: TLabel;
    TrackEchoLabel: TLabel;
    TrackChorusLabel: TLabel;
    TrackFlangerLabel: TLabel;
    TrackReveberationLabel: TLabel;
    OnPluginsDSPLabel: TLabel;
    XEQ1: TPanel;
    XEQ2: TPanel;
    XEQ3: TPanel;
    XEQ4: TPanel;
    XEQ5: TPanel;
    XTrackEcho: TPanel;
    XTrackChorus: TPanel;
    XTrackFlanger: TPanel;
    XTrackReverberation: TPanel;
    XProgressValue: TPanel;
    MainAnimationForm: TTimer;
    BorderLyricsPanel: TPanel;
    BackHelpXFindTime: TPanel;
    BackHelpXVolume: TPanel;
    XFindTime: TPanel;
    XProgress: TPanel;
    XVolume: TPanel;
    FindTimeValue: TPanel;
    VolumeValue: TPanel;
    StandartSettingEQ: TButton;
    SelectSchemeButton: TButton;
    StandartSchemeButton: TButton;
    LoadPluginDSPButton: TButton;
    StartPluginDSPButton: TButton;
    SelectLyricsPathButton: TButton;
    OnChorus: TCheckBox;
    OnFlanger: TCheckBox;
    OnReverberation: TCheckBox;
    OnPluginsDSP: TCheckBox;
    LoadPluginDSPWithApp: TCheckBox;
    OnLyricsShow: TCheckBox;
    OnSinger: TCheckBox;
    OnAlbum: TCheckBox;
    OnYear: TCheckBox;
    OnFullTime: TCheckBox;
    OnSortPopular: TCheckBox;
    OnInfobar: TCheckBox;
    OnEcho: TCheckBox;
    NamePluginsDSP: TEdit;
    LyricsPathName: TEdit;
    MinimazeZ: TImage;
    FullFormZ: TImage;
    AppCloseZ: TImage;
    MinimazeX: TImage;
    FullFormX: TImage;
    AppCloseX: TImage;
    Raccoon: TLabel;
    InfobarSettingsLabel: TLabel;
    FXSettingsLabel: TLabel;
    UsingSchemeLabel: TLabel;
    PluginsDSPSettingsLabel: TLabel;
    LyricsSettingsLabel: TLabel;
    LyricsPathHint: TLabel;
    LyricsLabel: TLabel;
    SchemeOpenDialog: TOpenDialog;
    ControlPanel: TPanel;
    FileEnd: TLabel;
    FileStart: TLabel;
    FindTime: TTrackBar;
    RaccoonNameLabel: TImage;
    FullInformationPanelImage: TImage;
    RaccoonImageLoad: TImage;
    ImageAlbumX: TImage;
    AlbumLabelX: TLabel;
    YearLabelX: TLabel;
    FileSizeLabelX: TLabel;
    FileNameLabelX: TLabel;
    ParametrsLabel: TLabel;
    EQLabel: TLabel;
    EQ1Label: TLabel;
    EQ2Label: TLabel;
    EQ3Label: TLabel;
    NameSongLabel: TLabel;
    EQ4Label: TLabel;
    EQ5Label: TLabel;
    PlaylistPanelSettingLabel: TLabel;
    HintPlaylistPanelSetting: TLabel;
    ProgramName: TLabel;
    Version: TLabel;
    Copyright: TLabel;
    Build: TLabel;
    AboutBoxLabel: TLabel;
    BitrateLabel: TLabel;
    SingerLabel: TLabel;
    BitrateLabelX: TLabel;
    FrequencyLabel: TLabel;
    FreqencyLabelX: TLabel;
    SortPopularLabel: TLabel;
    MessagesPanelCaption: TLabel;
    MessagesPanelNote: TLabel;
    SchemeLabel: TLabel;
    AlbumLabel: TLabel;
    YearLabel: TLabel;
    FileSizeLabel: TLabel;
    FileNameLabel: TLabel;
    NameSongLabelX: TLabel;
    SingerLabelX: TLabel;
    License: TMemo;
    AddButton: TMenuItem;
    DeleteButton: TMenuItem;
    UploadButton: TMenuItem;
    CleanButton: TMenuItem;
    SaveButton: TMenuItem;
    NextX: TImage;
    OpenPluginsDSP: TOpenDialog;
    LyricsPanel: TPanel;
    AboutBox: TPanel;
    Parametrs: TPanel;
    LoadPanel: TPanel;
    FullInformationPanel: TPanel;
    FullInformationCaptionPanel: TPanel;
    MessagesPanel: TPanel;
    MainPanel: TPanel;
    CaptionForm: TPanel;
    ControlFormPanel: TPanel;
    PauseX: TImage;
    PrevioussX: TImage;
    RandomZ: TImage;
    PopupMenuPlaylist: TPopupMenu;
    RandomS: TImage;
    RepeatZ: TImage;
    RepeatS: TImage;
    RuntimeInterface: TTimer;
    SettingsBox: TScrollBox;
    SelectLyricsPath:
    TSelectDirectoryDialog;
    SettingsButtonZ: TImage;
    AboutBoxButtonZ: TImage;
    SettingsButtonX: TImage;
    StartZ: TImage;
    StartX: TImage;
    PrevioussZ: TImage;
    NextZ: TImage;
    PauseZ: TImage;
    ImageAlbumZ: TImage;
    VolumeLabel: TLabel;
    NameSongZ: TLabel;
    InformationPanel: TPanel;
    Playlist: TStringGrid;
    SingerZ: TLabel;
    LoadTimer: TTimer;
    LoadInspector: TTimer;
    LoadAnimation: TTimer;
    InfobarTimer: TTimer;
    LyricsTimer: TTimer;
    EQ1: TTrackBar;
    EQ2: TTrackBar;
    EQ3: TTrackBar;
    EQ4: TTrackBar;
    EQ5: TTrackBar;
    TrackEcho: TTrackBar;
    TrackChorus: TTrackBar;
    TrackFlanger: TTrackBar;
    TrackReverberation: TTrackBar;
    Volume: TTrackBar;
    MainOpenDialog: TOpenDialog;
    PlaylistOpenDialog: TOpenDialog;
    EnginePanel: TPanel;
    procedure AboutBoxButtonXMouseLeave(Sender: TObject);
    procedure AboutBoxButtonXMouseMove(Sender: TObject; Shift: TShiftState;X, Y: integer);
    procedure AboutBoxButtonZClick(Sender: TObject);
    procedure AboutBoxButtonZMouseMove(Sender: TObject; Shift: TShiftState;X, Y: integer);
    procedure AlbumZMouseLeave(Sender: TObject);
    procedure AlbumZMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure LoadPluginDSPButtonXMouseLeave(Sender: TObject);
    procedure LoadPluginDSPButtonXMouseMove(Sender: TObject;Shift: TShiftState; X, Y: Integer);
    procedure LoadPluginDSPWithAppFlagOffClick(Sender: TObject);
    procedure LoadPluginDSPWithAppFlagOnClick(Sender: TObject);
    procedure OnAlbumFlagOnClick(Sender: TObject);
    procedure OnChorusFlagOnClick(Sender: TObject);
    procedure OnEchoFlagOnClick(Sender: TObject);
    procedure OnFlangerFlagOnClick(Sender: TObject);
    procedure OnFullTimeFlagOnClick(Sender: TObject);
    procedure OnInfobarFlagOnClick(Sender: TObject);
    procedure OnLyricsShowFlagOnClick(Sender: TObject);
    procedure OnPluginsDSPFlagOnClick(Sender: TObject);
    procedure OnReverberationFlagOnClick(Sender: TObject);
    procedure OnSingerFlagOnClick(Sender: TObject);
    procedure OnSortPopularChange(Sender: TObject);
    procedure OnSortPopularFlagOnClick(Sender: TObject);
    procedure OnYearFlagOnClick(Sender: TObject);
    procedure SelectLyricsPathButtonXMouseLeave(Sender: TObject);
    procedure SelectLyricsPathButtonXMouseMove(Sender: TObject;Shift: TShiftState; X, Y: Integer);
    procedure SelectSchemeButtonXMouseLeave(Sender: TObject);
    procedure SelectSchemeButtonXMouseMove(Sender: TObject; Shift: TShiftState;X, Y: Integer);
    procedure StandartSchemeButtonXMouseLeave(Sender: TObject);
    procedure StandartSchemeButtonXMouseMove(Sender: TObject;Shift: TShiftState; X, Y: Integer);
    procedure StandartSettingEQButtonXMouseLeave(Sender: TObject);
    procedure StandartSettingEQButtonXMouseMove(Sender: TObject; Shift: TShiftState; X,Y: Integer);
    procedure MainAnimationFormTimer(Sender: TObject);
    procedure NameSongZMouseLeave(Sender: TObject);
    procedure NameSongZMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure ProgressPanelMouseDown(Sender: TObject; Button: TMouseButton;  Shift: TShiftState; X, Y: Integer);
    procedure SingerZMouseLeave(Sender: TObject);
    procedure SingerZMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure StandartSettingEQClick(Sender: TObject);
    procedure SelectSchemeButtonClick(Sender: TObject);
    procedure StandartSchemeButtonClick(Sender: TObject);
    procedure LoadPluginDSPButtonClick(Sender: TObject);
    procedure StartPluginDSPButtonClick(Sender: TObject);
    procedure SelectLyricsPathButtonClick(Sender: TObject);
    procedure OnChorusChange(Sender: TObject);
    procedure OnFlangerChange(Sender: TObject);
    procedure OnReverberationChange(Sender: TObject);
    procedure OnPluginsDSPChange(Sender: TObject);
    procedure OnEchoChange(Sender: TObject);
    procedure ControlPanelMouseLeave(Sender: TObject);
    procedure ControlPanelMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure EnginePanelDblClick(Sender: TObject);
    procedure EnginePanelMouseLeave(Sender: TObject);
    procedure EnginePanelMouseMove(Sender: TObject; Shift: TShiftState; X, Y: integer);
    procedure FileEndMouseLeave(Sender: TObject);
    procedure FileEndMouseMove(Sender: TObject; Shift: TShiftState; X, Y: integer);
    procedure FileStartMouseLeave(Sender: TObject);
    procedure FileStartMouseMove(Sender: TObject; Shift: TShiftState; X, Y: integer);
    procedure FindTimeMouseDown(Sender: TObject; Button: TMouseButton;Shift: TShiftState; X, Y: integer);
    procedure FindTimeMouseMove(Sender: TObject; Shift: TShiftState; X, Y: integer);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormMouseLeave(Sender: TObject);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure FormMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure FormResize(Sender: TObject);
    procedure FormWindowStateChange(Sender: TObject);
    procedure MinimazeZClick(Sender: TObject);
    procedure MinimazeZMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure FullInformationPanelImageClick(Sender: TObject);
    procedure FullFormZClick(Sender: TObject);
    procedure FullFormZMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure AppCloseZClick(Sender: TObject);
    procedure AppCloseZMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure MinimazeXMouseLeave(Sender: TObject);
    procedure MinimazeXMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure FullFormXMouseLeave(Sender: TObject);
    procedure FullFormXMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure AppCloseXMouseLeave(Sender: TObject);
    procedure AppCloseXMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure Label1MouseLeave(Sender: TObject);
    procedure Label1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: integer);
    procedure Label37MouseDown(Sender: TObject; Button: TMouseButton;Shift: TShiftState; X, Y: Integer);
    procedure LoadTimerStartTimer(Sender: TObject);
    procedure LoadStopTimer(Sender: TObject);
    procedure AddButtonClick(Sender: TObject);
    procedure DeleteButtonClick(Sender: TObject);
    procedure StartPluginDSPButtonXMouseLeave(Sender: TObject);
    procedure StartPluginDSPButtonXMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure TrackChorusChange(Sender: TObject);
    procedure TrackFlangerChange(Sender: TObject);
    procedure TrackReverberationChange(Sender: TObject);
    procedure UploadButtonClick(Sender: TObject);
    procedure CleanButtonClick(Sender: TObject);
    procedure SaveButtonClick(Sender: TObject);
    procedure NextXMouseLeave(Sender: TObject);
    procedure NextXMouseMove(Sender: TObject; Shift: TShiftState; X, Y: integer);
    procedure NextZClick(Sender: TObject);
    procedure NextZMouseMove(Sender: TObject; Shift: TShiftState; X, Y: integer);
    procedure InformationPanelClick(Sender: TObject);
    procedure InformationPanelMouseLeave(Sender: TObject);
    procedure InformationPanelMouseMove(Sender: TObject; Shift: TShiftState; X, Y: integer);
    procedure Panel2DblClick(Sender: TObject);
    procedure FullInformationCaptionPanelClick(Sender: TObject);
    procedure MessagesPanelClick(Sender: TObject);
    procedure CaptionFormDblClick(Sender: TObject);
    procedure CaptionFormMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure PauseXMouseLeave(Sender: TObject);
    procedure PauseXMouseMove(Sender: TObject; Shift: TShiftState; X, Y: integer);
    procedure PauseZClick(Sender: TObject);
    procedure PauseZMouseMove(Sender: TObject; Shift: TShiftState; X, Y: integer);
    procedure PlaylistDblClick(Sender: TObject);
    procedure PlaylistMouseMove(Sender: TObject; Shift: TShiftState; X, Y: integer);
    procedure PlaylistSelectCell(Sender: TObject; aCol, aRow: integer; var CanSelect: boolean);
    procedure PrevioussXMouseLeave(Sender: TObject);
    procedure PrevioussXMouseMove(Sender: TObject; Shift: TShiftState; X, Y: integer);
    procedure PrevioussZClick(Sender: TObject);
    procedure PrevioussZMouseMove(Sender: TObject; Shift: TShiftState; X, Y: integer);
    procedure Random1MouseLeave(Sender: TObject);
    procedure Random1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: integer);
    procedure RandomZClick(Sender: TObject);
    procedure RandomZMouseLeave(Sender: TObject);
    procedure RandomZMouseMove(Sender: TObject; Shift: TShiftState; X, Y: integer);
    procedure RepeatZClick(Sender: TObject);
    procedure Repeat1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: integer);
    procedure Repeat2MouseLeave(Sender: TObject);
    procedure Repeat2MouseMove(Sender: TObject; Shift: TShiftState; X, Y: integer);
    procedure RuntimeInterfaceTimer(Sender: TObject);
    procedure SettingsBoxMouseWheelDown(Sender: TObject; Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
    procedure SettingsBoxMouseWheelUp(Sender: TObject; Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
    procedure SettingsButtonXMouseLeave(Sender: TObject);
    procedure SettingsButtonXMouseMove(Sender: TObject; Shift: TShiftState; X, Y: integer);
    procedure SettingsButtonZClick(Sender: TObject);
    procedure SettingsButtonZMouseMove(Sender: TObject; Shift: TShiftState; X, Y: integer);
    procedure StartXMouseLeave(Sender: TObject);
    procedure StartXMouseMove(Sender: TObject; Shift: TShiftState; X, Y: integer);
    procedure StartZClick(Sender: TObject);
    procedure StartZMouseMove(Sender: TObject; Shift: TShiftState; X, Y: integer);
    procedure StopZClick(Sender: TObject);
    procedure LoadInspectorTimer(Sender: TObject);
    procedure LoadAnimationTimer(Sender: TObject);
    procedure InfobarTimerTimer(Sender: TObject);
    procedure LyricsTimerTimer(Sender: TObject);
    procedure EQ1Change(Sender: TObject);
    procedure EQ2Change(Sender: TObject);
    procedure EQ3Change(Sender: TObject);
    procedure EQ4Change(Sender: TObject);
    procedure EQ5Change(Sender: TObject);
    procedure MessageDlgX1(CaptionX: string; NoteX: string; Sender: TObject);
    procedure LyricsShow(TextX: string; Sender: TObject);
    procedure TrackEchoChange(Sender: TObject);
    procedure GridSort(StrGrid: TStringGrid; NoColumn: Integer; IsMore: boolean);
    procedure EQ(Sender: TObject);
    procedure SchemeF(Sender: TObject);
    function Engine(Sender: TObject; filename: string): integer;
    function ReaderID3v1Tag(filename: string): TID3v1Tag;
    procedure VolumeMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: integer);
    procedure VolumeMouseWheelDown(Sender: TObject; Shift: TShiftState; MousePos: TPoint; var Handled: boolean);
    procedure VolumeMouseWheelUp(Sender: TObject; Shift: TShiftState; MousePos: TPoint; var Handled: boolean);
    function MetaDataFile(filename: string): boolean;
    procedure StopLyrics(Sender: TObject);
    function TimeInfoFile(filename2: string; Sender: TObject): string;
    procedure FXMain(Sender: TObject);
    function Progress(max: integer; value: integer; turn: boolean): boolean;
    function ProgressX(max: integer; value: integer; turn: boolean): boolean;
    function ProgressQ(max: integer; value: integer; turn: boolean): boolean;
    function ProgressEQ1(max: integer; value: integer; turn: boolean): boolean;
    function ProgressEQ2(max: integer; value: integer; turn: boolean): boolean;
    function ProgressEQ3(max: integer; value: integer; turn: boolean): boolean;
    function ProgressEQ4(max: integer; value: integer; turn: boolean): boolean;
    function ProgressEQ5(max: integer; value: integer; turn: boolean): boolean;
    function ProgressTrackEcho(max: integer; value: integer; turn: boolean): boolean;
    function ProgressTrackChorus(max: integer; value: integer; turn: boolean): boolean;
    function ProgressTrackFlanger(max: integer; value: integer; turn: boolean): boolean;
    function ProgressTrackReverberation(max: integer; value: integer; turn: boolean): boolean;
    procedure XEQ1MouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure XEQ1MouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure XEQ2MouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure XEQ2MouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure XEQ3MouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure XEQ3MouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure XEQ4MouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure XEQ4MouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure XEQ5MouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure XEQ5MouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure XTrackChorusMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure XTrackChorusMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure XTrackEchoMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure XTrackEchoMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure XTrackFlangerMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure XTrackFlangerMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure XTrackReverberationMouseWheelDown(Sender: TObject;
      Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
    procedure XTrackReverberationMouseWheelUp(Sender: TObject;
      Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
  private
    procedure WMHotKey(var Messagew: TMessage); message WM_HOTKEY;
  public
  end;

var
  MaxZ, flsT, Ln1, i, i1, n, fc, fls, kod, randomX, repeatX, randomXS, repeatXS, Anmpos1, rt, cop, Load, strZ, strZE, xs, Vols, bf, df1,tp,hg, SysColorZM, SysColorXM, SysColorZ, SysColorX, ActionXInfoBarTime, X0, Y0, dspPlugin, ip, ipX, dl: Integer;
  filename, filename2, dz, dzEng, ArtistE, TitleE, Song, Arts, fsw, NameScheme, AuthorScheme, NameSong0, Singer0, Album0, Year1, dspFile, vl: String;
  ActionX, ActionXStart, ActionXSetting, ActionXAboutBox, ActionXNote, ActionXInfoBar, access,  Draging, ax, ActionXLyrics: Boolean;
  Topos, Toleg, Topos1, Toleg1, TolegZ, Toleg1Z, FltLenR: Double;
  RaccoonConfigIni, RaccoonScheme: TIniFile;
  PictureData,PictureData1, FS1: TStream;
  PNGImage: TPortableNetworkGraphic;
  FX1: array[1..5] of Integer;
  RaccoonForm1: TRaccoonForm1;
  JPEGImage: TJPEGImage;
  inf: BASS_CHANNELINFO;
  Ep: BASS_DX8_PARAMEQ;
  MainSender: TObject;
  Id3v2Tag: TId3v2Tag;
  SourceLyrics: TMemo;
  Volume1: Single;
  Freq: Extended;
  Test: TImage;
  lenR: DWORD;
  FX: HFX;
implementation

{$R *.lfm}

function TRaccoonForm1.Progress(max: integer; value: integer; turn: boolean): boolean;
begin
if turn=true then
begin
XFindTime.Visible:=true;
if (value<=max) and (max<>0) then
FindTimeValue.Width:=round
((XFindTime.Width/max)*value);
end
else
begin
XFindTime.Visible:=false;
FindTimeValue.Width:=0;
end;
result:=true;
end;

function TRaccoonForm1.ProgressX(max: integer; value: integer; turn: boolean): boolean;
begin
if turn=true then
begin
XVolume.Visible:=true;
if (value<=max) and (max<>0) then
VolumeValue.Width:=round
((XVolume.Width/max)*value);
end
else
begin
XVolume.Visible:=false;
VolumeValue.Width:=0;
end;
result:=true;
end;

function TRaccoonForm1.ProgressQ(max: integer; value: integer; turn: boolean): boolean;
begin
if turn=true then
begin
XProgress.Visible:=true;
if (value<=max) and (max<>0) then
XProgressValue.Width:=round
((XProgress.Width/max)*value);
end
else
begin
XProgress.Visible:=false;
XProgressValue.Width:=0;
end;
result:=true;
end;

function TRaccoonForm1.ProgressEQ1(max: integer; value: integer; turn: boolean): boolean;
begin
if turn=true then
begin
XEQ1.Visible:=true;
if (value<=max) and (max<>0) then
begin
EQ1Value.Height:=round
((XEQ1.Height/max)*(max-value));
EQ1Value.Top:=XEQ1.Height-EQ1Value.Height;
end
end
else
begin
XEQ1.Visible:=false;
EQ1Value.Height:=0;
EQ1Value.Top:=XEQ1.Height-EQ1Value.Height;
end;
result:=true;
end;
function TRaccoonForm1.ProgressEQ2(max: integer; value: integer; turn: boolean): boolean;
begin
if turn=true then
begin
XEQ2.Visible:=true;
if (value<=max) and (max<>0) then
begin
EQ2Value.Height:=round
((XEQ2.Height/max)*(max-value));
EQ2Value.Top:=XEQ2.Height-EQ2Value.Height;
end
end
else
begin
XEQ2.Visible:=false;
EQ2Value.Height:=0;
EQ2Value.Top:=XEQ2.Height-EQ2Value.Height;
end;
result:=true;
end;
function TRaccoonForm1.ProgressEQ3(max: integer; value: integer; turn: boolean): boolean;
begin
if turn=true then
begin
XEQ3.Visible:=true;
if (value<=max) and (max<>0) then
begin
EQ3Value.Height:=round
((XEQ3.Height/max)*(max-value));
EQ3Value.Top:=XEQ3.Height-EQ3Value.Height;
end
end
else
begin
XEQ3.Visible:=false;
EQ3Value.Height:=0;
EQ3Value.Top:=XEQ3.Height-EQ3Value.Height;
end;
result:=true;
end;
function TRaccoonForm1.ProgressEQ4(max: integer; value: integer; turn: boolean): boolean;
begin
if turn=true then
begin
XEQ4.Visible:=true;
if (value<=max) and (max<>0) then
begin
EQ4Value.Height:=round
((XEQ4.Height/max)*(max-value));
EQ4Value.Top:=XEQ4.Height-EQ4Value.Height;
end
end
else
begin
XEQ4.Visible:=false;
EQ4Value.Height:=0;
EQ4Value.Top:=XEQ4.Height-EQ4Value.Height;
end;
result:=true;
end;
function TRaccoonForm1.ProgressEQ5(max: integer; value: integer; turn: boolean): boolean;
begin
if turn=true then
begin
XEQ5.Visible:=true;
if (value<=max) and (max<>0) then
begin
EQ5Value.Height:=round
((XEQ5.Height/max)*(max-value));
EQ5Value.Top:=XEQ5.Height-EQ5Value.Height;
end
end
else
begin
XEQ5.Visible:=false;
EQ5Value.Height:=0;
EQ5Value.Top:=XEQ5.Height-EQ5Value.Height;
end;
result:=true;
end;
function TRaccoonForm1.ProgressTrackEcho(max: integer; value: integer; turn: boolean): boolean;
begin
if turn=true then
begin
XTrackEcho.Visible:=true;
if (value<=max) and (max<>0) then
TrackEchoValue.Width:=round
((XTrackEcho.Width/max)*value);
end
else
begin
XTrackEcho.Visible:=false;
TrackEchoValue.Width:=0;
end;
result:=true;
end;
function TRaccoonForm1.ProgressTrackChorus(max: integer; value: integer; turn: boolean): boolean;
begin
if turn=true then
begin
XTrackChorus.Visible:=true;
if (value<=max) and (max<>0) then
TrackChorusValue.Width:=round
((XTrackChorus.Width/max)*value);
end
else
begin
XTrackChorus.Visible:=false;
TrackChorusValue.Width:=0;
end;
result:=true;
end;
function TRaccoonForm1.ProgressTrackFlanger(max: integer; value: integer; turn: boolean): boolean;
begin
if turn=true then
begin
XTrackFlanger.Visible:=true;
if (value<=max) and (max<>0) then
TrackFlangerValue.Width:=round
((XTrackFlanger.Width/max)*value);
end
else
begin
XTrackFlanger.Visible:=false;
TrackFlangerValue.Width:=0;
end;
result:=true;
end;

function TRaccoonForm1.ProgressTrackReverberation(max: integer; value: integer;
  turn: boolean): boolean;
begin
if turn=true then
begin
XTrackReverberation.Visible:=true;
if (value<=max) and (max<>0) then
TrackReverberationValue.Width:=round
((XTrackReverberation.Width/max)*value);
end
else
begin
XTrackReverberation.Visible:=false;
TrackReverberationValue.Width:=0;
end;
result:=true;
end;

procedure TRaccoonForm1.XEQ1MouseWheelDown(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
if  EQ1.Position+1<=30 then
 EQ1.Position:=EQ1.Position+1
 else
 EQ1.Position:=30;
EQ1Change(MainSender);
end;

procedure TRaccoonForm1.XEQ1MouseWheelUp(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
 if  EQ1.Position-1>=0 then
 EQ1.Position:=EQ1.Position-1
 else
 EQ1.Position:=0;
EQ1Change(MainSender);
end;

procedure TRaccoonForm1.XEQ2MouseWheelDown(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
 if EQ2.Position+1<=30 then
 EQ2.Position:=EQ2.Position+1
 else
 EQ2.Position:=30;
EQ2Change(MainSender);
end;

procedure TRaccoonForm1.XEQ2MouseWheelUp(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
  if  EQ2.Position-1>=0 then
 EQ2.Position:=EQ2.Position-1
 else
 EQ2.Position:=0;
EQ2Change(MainSender);
end;

procedure TRaccoonForm1.XEQ3MouseWheelDown(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
 if  EQ3.Position+1<=30 then
 EQ3.Position:=EQ3.Position+1
 else
 EQ3.Position:=30;
EQ3Change(MainSender);
end;

procedure TRaccoonForm1.XEQ3MouseWheelUp(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
  if  EQ3.Position-1>=0 then
 EQ3.Position:=EQ3.Position-1
 else
 EQ3.Position:=0;
EQ3Change(MainSender);
end;

procedure TRaccoonForm1.XEQ4MouseWheelDown(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
 if  EQ4.Position+1<=30 then
 EQ4.Position:=EQ4.Position+1
 else
 EQ4.Position:=30;
EQ4Change(MainSender);
end;

procedure TRaccoonForm1.XEQ4MouseWheelUp(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
  if  EQ4.Position-1>=0 then
 EQ4.Position:=EQ4.Position-1
 else
 EQ4.Position:=0;
EQ4Change(MainSender);
end;

procedure TRaccoonForm1.XEQ5MouseWheelDown(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
 if  EQ5.Position+1<=30 then
 EQ5.Position:=EQ5.Position+1
 else
 EQ5.Position:=30;
EQ5Change(MainSender);
end;

procedure TRaccoonForm1.XEQ5MouseWheelUp(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
  if  EQ5.Position-1>=0 then
 EQ5.Position:=EQ5.Position-1
 else
 EQ5.Position:=0;
EQ5Change(MainSender);
end;

procedure TRaccoonForm1.XTrackChorusMouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
if BackHelpXTrackChorus.Enabled= true then
   if  TrackChorus.Position-2>=0 then
 TrackChorus.Position:=TrackChorus.Position-2
 else
 TrackChorus.Position:=0;
   TrackChorusChange(MainSender);
end;

procedure TRaccoonForm1.XTrackChorusMouseWheelUp(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
if BackHelpXTrackChorus.Enabled= true then
   if  TrackChorus.Position+2<=100 then
 TrackChorus.Position:=TrackChorus.Position+2
 else
 TrackChorus.Position:=100;
   TrackChorusChange(MainSender);
end;

procedure TRaccoonForm1.XTrackEchoMouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
if BackHelpXTrackEcho.Enabled= true then
    if  TrackEcho.Position-2>=0 then
 TrackEcho.Position:=TrackEcho.Position-2
 else
 TrackEcho.Position:=0;
   TrackEchoChange(MainSender);
end;

procedure TRaccoonForm1.XTrackEchoMouseWheelUp(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
if BackHelpXTrackEcho.Enabled= true then
    if  TrackEcho.Position+2<=100 then
 TrackEcho.Position:=TrackEcho.Position+2
 else
 TrackEcho.Position:=100;
   TrackEchoChange(MainSender);
end;

procedure TRaccoonForm1.XTrackFlangerMouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
if BackHelpXTrackFlanger.Enabled= true then
     if  TrackFlanger.Position-2>=0 then
 TrackFlanger.Position:=TrackFlanger.Position-2
 else
 TrackFlanger.Position:=0;
   TrackFlangerChange(MainSender);
end;

procedure TRaccoonForm1.XTrackFlangerMouseWheelUp(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
if BackHelpXTrackFlanger.Enabled= true then
     if  TrackFlanger.Position+2<=100 then
 TrackFlanger.Position:=TrackFlanger.Position+2
 else
 TrackFlanger.Position:=100;
   TrackFlangerChange(MainSender);
end;

procedure TRaccoonForm1.XTrackReverberationMouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
if BackHelpXTrackReverberation.Enabled= true then
     if  TrackReverberation.Position-2>=0 then
 TrackReverberation.Position:=TrackReverberation.Position-2
 else
 TrackReverberation.Position:=0;
   TrackReverberationChange(MainSender);
end;

procedure TRaccoonForm1.XTrackReverberationMouseWheelUp(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
if BackHelpXTrackReverberation.Enabled= true then
      if  TrackReverberation.Position+2<=100 then
 TrackReverberation.Position:=TrackReverberation.Position+2
 else
 TrackReverberation.Position:=100;
   TrackReverberationChange(MainSender);
end;

procedure TRaccoonForm1.SchemeF(Sender: TObject);
 begin
  if fsw='Raccoon' then
   Exit
   else
   begin
    RaccoonScheme:=TIniFile.Create(UTF8ToSys(fsw));
    SysColorZM:=SysColorZ;
    SysColorXM:=SysColorX;
    SysColorZ:=RaccoonScheme.ReadInteger('Param','SysColor',SysColorZ);
    SysColorX:=RaccoonScheme.ReadInteger('Param','SysColor1',SysColorX);
    if (SysColorZ=$002FB0E1) and (SysColorX=$0020A8DB) then
     Exit
    else
    begin
    try
    begin
    Test:=TImage.Create(Owner);
    Test.Picture.LoadFromFile(SysToUTF8(ExtractFilePath(UTF8ToSys(fsw)) + RaccoonScheme.ReadString('Icon','Start','start_0.png')));
    Test.Picture.LoadFromFile(SysToUTF8(ExtractFilePath(UTF8ToSys(fsw)) + RaccoonScheme.ReadString('Icon','Start1','start_1.png')));
    Test.Picture.LoadFromFile(SysToUTF8(ExtractFilePath(UTF8ToSys(fsw)) + RaccoonScheme.ReadString('Icon','Random1','random_1.png')));
    Test.Picture.LoadFromFile(SysToUTF8(ExtractFilePath(UTF8ToSys(fsw)) + RaccoonScheme.ReadString('Icon','Random','random_0.png')));
    Test.Picture.LoadFromFile(SysToUTF8(ExtractFilePath(UTF8ToSys(fsw)) + RaccoonScheme.ReadString('Icon','Repeat','repeat_0.png')));
    Test.Picture.LoadFromFile(SysToUTF8(ExtractFilePath(UTF8ToSys(fsw)) + RaccoonScheme.ReadString('Icon','Repeat1','repeat_1.png')));
    Test.Picture.LoadFromFile(SysToUTF8(ExtractFilePath(UTF8ToSys(fsw)) + RaccoonScheme.ReadString('Icon','Previous','previous_0.png')));
    Test.Picture.LoadFromFile(SysToUTF8(ExtractFilePath(UTF8ToSys(fsw)) + RaccoonScheme.ReadString('Icon','Previous1','previous_1.png')));
    Test.Picture.LoadFromFile(SysToUTF8(ExtractFilePath(UTF8ToSys(fsw)) + RaccoonScheme.ReadString('Icon','Next','next_0.png')));
    Test.Picture.LoadFromFile(SysToUTF8(ExtractFilePath(UTF8ToSys(fsw)) + RaccoonScheme.ReadString('Icon','Next1','next_1.png')));
    Test.Picture.LoadFromFile(SysToUTF8(ExtractFilePath(UTF8ToSys(fsw)) + RaccoonScheme.ReadString('Icon','Pause','pause_0.png')));
    Test.Picture.LoadFromFile(SysToUTF8(ExtractFilePath(UTF8ToSys(fsw)) + RaccoonScheme.ReadString('Icon','Pause1','pause_1.png')));
    Test.Picture.LoadFromFile(SysToUTF8(ExtractFilePath(UTF8ToSys(fsw)) + RaccoonScheme.ReadString('Icon','Setting1','setting_1.png')));
    Test.Picture.LoadFromFile(SysToUTF8(ExtractFilePath(UTF8ToSys(fsw)) + RaccoonScheme.ReadString('Icon','Setting','setting_0.png')));
    Test.Picture.LoadFromFile(SysToUTF8(ExtractFilePath(UTF8ToSys(fsw)) + RaccoonScheme.ReadString('Icon','Info','info_0.png')));
    Test.Picture.LoadFromFile(SysToUTF8(ExtractFilePath(UTF8ToSys(fsw)) + RaccoonScheme.ReadString('Icon','Info1','info_1.png')));
    Test.Picture.LoadFromFile(SysToUTF8(ExtractFilePath(UTF8ToSys(fsw)) + RaccoonScheme.ReadString('Icon','Panel','panel_0.png')));
    Test.Picture.LoadFromFile(SysToUTF8(ExtractFilePath(UTF8ToSys(fsw)) + RaccoonScheme.ReadString('Icon','Minimize','mini_0.png')));
    Test.Picture.LoadFromFile(SysToUTF8(ExtractFilePath(UTF8ToSys(fsw)) + RaccoonScheme.ReadString('Icon','Maximize','maxi_0.png')));
    Test.Picture.LoadFromFile(SysToUTF8(ExtractFilePath(UTF8ToSys(fsw)) + RaccoonScheme.ReadString('Icon','Close','close_0.png')));
    Test.Picture.LoadFromFile(SysToUTF8(ExtractFilePath(UTF8ToSys(fsw)) + RaccoonScheme.ReadString('Icon','Minimize1','mini_1.png')));
    Test.Picture.LoadFromFile(SysToUTF8(ExtractFilePath(UTF8ToSys(fsw)) + RaccoonScheme.ReadString('Icon','Maximize1','maxi_1.png')));
    Test.Picture.LoadFromFile(SysToUTF8(ExtractFilePath(UTF8ToSys(fsw)) + RaccoonScheme.ReadString('Icon','Close1','close_1.png')));
    Test.Picture.LoadFromFile(SysToUTF8(ExtractFilePath(UTF8ToSys(fsw)) + RaccoonScheme.ReadString('Icon','CheckBox1','checkbox_1.png')));
    Test.Picture.LoadFromFile(SysToUTF8(ExtractFilePath(UTF8ToSys(fsw)) + RaccoonScheme.ReadString('Icon','CheckBox','checkbox_0.png')));
    Test.Destroy;
    end;
    except
    begin
    MessageDlgX1('Ошибка', 'Цветовая схема не загружена, так как не является пригодной для загрузки. Попробуйте снова.',MainSender);
    SysColorZ:=SysColorZM;
    SysColorX:=SysColorXM;
    Test.Destroy;
    Exit;
    end;
    end;
    try
    begin
    StartZ.Picture.LoadFromFile(SysToUTF8(ExtractFilePath(UTF8ToSys(fsw)) + RaccoonScheme.ReadString('Icon','Start','start_0.png')));
    StartX.Picture.LoadFromFile(SysToUTF8(ExtractFilePath(UTF8ToSys(fsw)) + RaccoonScheme.ReadString('Icon','Start1','start_1.png')));
    RandomS.Picture.LoadFromFile(SysToUTF8(ExtractFilePath(UTF8ToSys(fsw)) + RaccoonScheme.ReadString('Icon','Random1','random_1.png')));
    RandomZ.Picture.LoadFromFile(SysToUTF8(ExtractFilePath(UTF8ToSys(fsw)) + RaccoonScheme.ReadString('Icon','Random','random_0.png')));
    RepeatZ.Picture.LoadFromFile(SysToUTF8(ExtractFilePath(UTF8ToSys(fsw)) + RaccoonScheme.ReadString('Icon','Repeat','repeat_0.png')));
    RepeatS.Picture.LoadFromFile(SysToUTF8(ExtractFilePath(UTF8ToSys(fsw)) + RaccoonScheme.ReadString('Icon','Repeat1','repeat_1.png')));
    PrevioussZ.Picture.LoadFromFile(SysToUTF8(ExtractFilePath(UTF8ToSys(fsw)) + RaccoonScheme.ReadString('Icon','Previous','previous_0.png')));
    PrevioussX.Picture.LoadFromFile(SysToUTF8(ExtractFilePath(UTF8ToSys(fsw)) + RaccoonScheme.ReadString('Icon','Previous1','previous_1.png')));
    NextZ.Picture.LoadFromFile(SysToUTF8(ExtractFilePath(UTF8ToSys(fsw)) + RaccoonScheme.ReadString('Icon','Next','next_0.png')));
    NextX.Picture.LoadFromFile(SysToUTF8(ExtractFilePath(UTF8ToSys(fsw)) + RaccoonScheme.ReadString('Icon','Next1','next_1.png')));
    PauseZ.Picture.LoadFromFile(SysToUTF8(ExtractFilePath(UTF8ToSys(fsw)) + RaccoonScheme.ReadString('Icon','Pause','pause_0.png')));
    PauseX.Picture.LoadFromFile(SysToUTF8(ExtractFilePath(UTF8ToSys(fsw)) + RaccoonScheme.ReadString('Icon','Pause1','pause_1.png')));
    SettingsButtonX.Picture.LoadFromFile(SysToUTF8(ExtractFilePath(UTF8ToSys(fsw)) + RaccoonScheme.ReadString('Icon','Setting1','setting_1.png')));
    SettingsButtonZ.Picture.LoadFromFile(SysToUTF8(ExtractFilePath(UTF8ToSys(fsw)) + RaccoonScheme.ReadString('Icon','Setting','setting_0.png')));
    AboutBoxButtonZ.Picture.LoadFromFile(SysToUTF8(ExtractFilePath(UTF8ToSys(fsw)) + RaccoonScheme.ReadString('Icon','Info','info_0.png')));
    AboutBoxButtonX.Picture.LoadFromFile(SysToUTF8(ExtractFilePath(UTF8ToSys(fsw)) + RaccoonScheme.ReadString('Icon','Info1','info_1.png')));
    FullInformationPanelImage.Picture.LoadFromFile(SysToUTF8(ExtractFilePath(UTF8ToSys(fsw)) + RaccoonScheme.ReadString('Icon','Panel','panel_0.png')));
    MinimazeZ.Picture.LoadFromFile(SysToUTF8(ExtractFilePath(UTF8ToSys(fsw)) + RaccoonScheme.ReadString('Icon','Minimize','mini_0.png')));
    FullFormZ.Picture.LoadFromFile(SysToUTF8(ExtractFilePath(UTF8ToSys(fsw)) + RaccoonScheme.ReadString('Icon','Maximize','maxi_0.png')));
    AppCloseZ.Picture.LoadFromFile(SysToUTF8(ExtractFilePath(UTF8ToSys(fsw)) + RaccoonScheme.ReadString('Icon','Close','close_0.png')));
    MinimazeX.Picture.LoadFromFile(SysToUTF8(ExtractFilePath(UTF8ToSys(fsw)) + RaccoonScheme.ReadString('Icon','Minimize1','mini_1.png')));
    FullFormX.Picture.LoadFromFile(SysToUTF8(ExtractFilePath(UTF8ToSys(fsw)) + RaccoonScheme.ReadString('Icon','Maximize1','maxi_1.png')));
    AppCloseX.Picture.LoadFromFile(SysToUTF8(ExtractFilePath(UTF8ToSys(fsw)) + RaccoonScheme.ReadString('Icon','Close1','close_1.png')));
    Form1.Previouss.Picture.LoadFromFile(SysToUTF8(ExtractFilePath(UTF8ToSys(fsw)) + RaccoonScheme.ReadString('Icon','Previous','previous_0.png')));
    Form1.Previouss1.Picture.LoadFromFile(SysToUTF8(ExtractFilePath(UTF8ToSys(fsw)) + RaccoonScheme.ReadString('Icon','Previous1','previous_1.png')));
    Form1.Nextt.Picture.LoadFromFile(SysToUTF8(ExtractFilePath(UTF8ToSys(fsw)) + RaccoonScheme.ReadString('Icon','Next','next_0.png')));
    Form1.Nextt1.Picture.LoadFromFile(SysToUTF8(ExtractFilePath(UTF8ToSys(fsw)) + RaccoonScheme.ReadString('Icon','Next1','next_1.png')));
    OnSingerFlagOff.Picture.LoadFromFile(SysToUTF8(ExtractFilePath(UTF8ToSys(fsw)) + RaccoonScheme.ReadString('Icon','CheckBox','checkbox_0.png')));
    OnSingerFlagOn.Picture.LoadFromFile(SysToUTF8(ExtractFilePath(UTF8ToSys(fsw)) + RaccoonScheme.ReadString('Icon','CheckBox1','checkbox_1.png')));
    OnAlbumFlagOff.Picture.LoadFromFile(SysToUTF8(ExtractFilePath(UTF8ToSys(fsw)) + RaccoonScheme.ReadString('Icon','CheckBox','checkbox_0.png')));
    OnAlbumFlagOn.Picture.LoadFromFile(SysToUTF8(ExtractFilePath(UTF8ToSys(fsw)) + RaccoonScheme.ReadString('Icon','CheckBox1','checkbox_1.png')));
    OnSortPopularFlagOff.Picture.LoadFromFile(SysToUTF8(ExtractFilePath(UTF8ToSys(fsw)) + RaccoonScheme.ReadString('Icon','CheckBox','checkbox_0.png')));
    OnSortPopularFlagOn.Picture.LoadFromFile(SysToUTF8(ExtractFilePath(UTF8ToSys(fsw)) + RaccoonScheme.ReadString('Icon','CheckBox1','checkbox_1.png')));
    OnInfobarFlagOff.Picture.LoadFromFile(SysToUTF8(ExtractFilePath(UTF8ToSys(fsw)) + RaccoonScheme.ReadString('Icon','CheckBox','checkbox_0.png')));
    OnInfobarFlagOn.Picture.LoadFromFile(SysToUTF8(ExtractFilePath(UTF8ToSys(fsw)) + RaccoonScheme.ReadString('Icon','CheckBox1','checkbox_1.png')));
    OnLyricsShowFlagOff.Picture.LoadFromFile(SysToUTF8(ExtractFilePath(UTF8ToSys(fsw)) + RaccoonScheme.ReadString('Icon','CheckBox','checkbox_0.png')));
    OnLyricsShowFlagOn.Picture.LoadFromFile(SysToUTF8(ExtractFilePath(UTF8ToSys(fsw)) + RaccoonScheme.ReadString('Icon','CheckBox1','checkbox_1.png')));
    OnYearFlagOff.Picture.LoadFromFile(SysToUTF8(ExtractFilePath(UTF8ToSys(fsw)) + RaccoonScheme.ReadString('Icon','CheckBox','checkbox_0.png')));
    OnYearFlagOn.Picture.LoadFromFile(SysToUTF8(ExtractFilePath(UTF8ToSys(fsw)) + RaccoonScheme.ReadString('Icon','CheckBox1','checkbox_1.png')));
    OnFullTimeFlagOff.Picture.LoadFromFile(SysToUTF8(ExtractFilePath(UTF8ToSys(fsw)) + RaccoonScheme.ReadString('Icon','CheckBox','checkbox_0.png')));
    OnFullTimeFlagOn.Picture.LoadFromFile(SysToUTF8(ExtractFilePath(UTF8ToSys(fsw)) + RaccoonScheme.ReadString('Icon','CheckBox1','checkbox_1.png')));
    OnEchoFlagOff.Picture.LoadFromFile(SysToUTF8(ExtractFilePath(UTF8ToSys(fsw)) + RaccoonScheme.ReadString('Icon','CheckBox','checkbox_0.png')));
    OnEchoFlagOn.Picture.LoadFromFile(SysToUTF8(ExtractFilePath(UTF8ToSys(fsw)) + RaccoonScheme.ReadString('Icon','CheckBox1','checkbox_1.png')));
    OnChorusFlagOff.Picture.LoadFromFile(SysToUTF8(ExtractFilePath(UTF8ToSys(fsw)) + RaccoonScheme.ReadString('Icon','CheckBox','checkbox_0.png')));
    OnChorusFlagOn.Picture.LoadFromFile(SysToUTF8(ExtractFilePath(UTF8ToSys(fsw)) + RaccoonScheme.ReadString('Icon','CheckBox1','checkbox_1.png')));
    OnFlangerFlagOff.Picture.LoadFromFile(SysToUTF8(ExtractFilePath(UTF8ToSys(fsw)) + RaccoonScheme.ReadString('Icon','CheckBox','checkbox_0.png')));
    OnFlangerFlagOn.Picture.LoadFromFile(SysToUTF8(ExtractFilePath(UTF8ToSys(fsw)) + RaccoonScheme.ReadString('Icon','CheckBox1','checkbox_1.png')));
    OnReverberationFlagOff.Picture.LoadFromFile(SysToUTF8(ExtractFilePath(UTF8ToSys(fsw)) + RaccoonScheme.ReadString('Icon','CheckBox','checkbox_0.png')));
    OnReverberationFlagOn.Picture.LoadFromFile(SysToUTF8(ExtractFilePath(UTF8ToSys(fsw)) + RaccoonScheme.ReadString('Icon','CheckBox1','checkbox_1.png')));
    OnPluginsDSPFlagOff.Picture.LoadFromFile(SysToUTF8(ExtractFilePath(UTF8ToSys(fsw)) + RaccoonScheme.ReadString('Icon','CheckBox','checkbox_0.png')));
    OnPluginsDSPFlagOn.Picture.LoadFromFile(SysToUTF8(ExtractFilePath(UTF8ToSys(fsw)) + RaccoonScheme.ReadString('Icon','CheckBox1','checkbox_1.png')));
    LoadPluginDSPWithAppFlagOff.Picture.LoadFromFile(SysToUTF8(ExtractFilePath(UTF8ToSys(fsw)) + RaccoonScheme.ReadString('Icon','CheckBox','checkbox_0.png')));
    LoadPluginDSPWithAppFlagOn.Picture.LoadFromFile(SysToUTF8(ExtractFilePath(UTF8ToSys(fsw)) + RaccoonScheme.ReadString('Icon','CheckBox1','checkbox_1.png')));
    end;
    except
    begin
    MessageDlgX1('Ошибка', 'Цветовая схема не загружена, так как не является пригодной для загрузки. Попробуйте снова.',MainSender);
    SysColorZ:=SysColorZM;
    SysColorX:=SysColorXM;
    Exit;
    end;
    end;
    begin
    NameScheme:=RaccoonScheme.ReadString('Info','Name',NameScheme);
    AuthorScheme:=RaccoonScheme.ReadString('Info','Author',AuthorScheme);
    SelectSchemeButton.Caption:=NameScheme;
    end;
    begin
    EnginePanel.Color:=SysColorZ;
    InformationPanel.Color:=SysColorZ;
    FullInformationCaptionPanel.Color:=SysColorZ;
    Playlist.SelectedColor:=SysColorZ;
    ControlPanel.Color:=SysColorZ;
    ParametrsLabel.Font.Color:=SysColorZ;
    AboutBoxLabel.Font.Color:=SysColorZ;
    NameSongLabelX.Font.Color:=SysColorZ;
    SingerLabelX.Font.Color:=SysColorZ;
    YearLabelX.Font.Color:=SysColorZ;
    AlbumLabelX.Font.Color:=SysColorZ;
    FileSizeLabelX.Font.Color:=SysColorZ;
    FileNameLabelX.Font.Color:=SysColorZ;
    FrequencyLabel.Font.Color:=SysColorZ;
    BitrateLabelX.Font.Color:=SysColorZ;
    MessagesPanelCaption.Font.Color:=SysColorZ;
    LyricsLabel.Font.Color:=SysColorZ;
    BorderLyricsPanel.Color:=SysColorZ;
    BorderMessagesPanel.Color:=SysColorZ;
    BorderAboutBox.Color:=SysColorZ;
    BorderParametrs.Color:=SysColorZ;
    Form1.Color:=SysColorZ;
    MainPanel.Color:=SysColorZ;
    CaptionForm.Color:=SysColorZ;
    Form1.ControlPanel.Color:=SysColorZ;
    StandartSettingEQButtonX.Color:=SysColorZ;
    SelectSchemeButtonX.Color:=SysColorZ;
    StandartSchemeButtonX.Color:=SysColorZ;
    LoadPluginDSPButtonX.Color:=SysColorZ;
    StartPluginDSPButtonX.Color:=SysColorZ;
    SelectLyricsPathButtonX.Color:=SysColorZ;
    end;
    Volume.TickStyle:=tsManual;
    FindTime.TickStyle:=tsManual;
    Volume.TickStyle:=tsNone;
    FindTime.TickStyle:=tsNone;
    RaccoonScheme.Free;
   end;
   end;
   end;
procedure TRaccoonForm1.MessageDlgX1(CaptionX: string; NoteX: string; Sender: TObject);
begin
   MessagesPanelCaption.Caption:=CaptionX;
   MessagesPanelNote.Caption:=NoteX;
   ActionXNote:=True;
end;

procedure TRaccoonForm1.StopLyrics(Sender: TObject);
begin
  begin
  LyricsTimer.Enabled:=False;
  ActionXNote:= False;
  ActionXLyrics:= False;
  vl:='';
  LyricsPanel.Refresh;
  end;
end;

procedure TRaccoonForm1.LyricsShow(TextX: string; Sender: TObject);
begin
 LyricsLabel.Caption:=TextX;
 ActionXLyrics:=True;
end;
procedure TRaccoonForm1.TrackEchoChange(Sender: TObject);
begin
  FXMain(MainSender);
  ProgressTrackEcho(100,TrackEcho.Position,true);
end;

procedure TRaccoonForm1.FXMain(Sender: TObject);
begin
 if OnEcho.Checked=true then
 OnEchoChange(MainSender);
 if OnChorus.Checked=true then
 OnChorusChange(MainSender);
 if OnFlanger.Checked=true then
 OnFlangerChange(MainSender);
 if OnReverberation.Checked=true then
 OnReverberationChange(MainSender);
end;

function TRaccoonForm1.Engine(Sender: TObject; filename: string): integer;
begin
 StopLyrics(MainSender);
  if not FileExists(filename) then
  begin
    StopZClick(MainSender);
    MessageDlgX1('Ошибка', 'Файл не найден! Попробуйте удалить его из списка воспроизведения и загрузить снова.', MainSender);
    Exit;
  end
  else
  begin
    BASS_StreamFree(i);
    if not BASS_Init(-1, 48000, 0, Handle, nil) then
    begin
    MessageDlgX1('Ошибка', 'Невозможно загрузить обработчик аудиофайлов. Проверьте аудиосистему компьютера на исправность и попробуйте снова.', MainSender);
    Exit;
    end;
    try
    i:=BASS_AC3_StreamCreateFile(false,PChar(filename),0,0,0);
      if i = 0 then
       begin
     i:=BASS_AAC_StreamCreateFile(false,PChar(filename),0,0,0);
       end;
      if i = 0 then
       begin
     i:=BASS_ALAC_StreamCreateFile(false,PChar(filename),0,0,0);
       end;
      if i = 0 then
       begin
     i:=BASS_APE_StreamCreateFile(false,PChar(filename),0,0,0);
       end;
     if i = 0 then
      begin
     i:=BASS_MPC_StreamCreateFile(false,PChar(filename),0,0,0);
      end;
     if i = 0 then
      begin
     i:=BASS_SPX_StreamCreateFile(false,PChar(filename),0,0,0);
      end;
     if i = 0 then
      begin
     i:=BASS_CD_StreamCreateFile(PChar(filename),0);
      end;
     if i = 0 then
      begin
     i:= BASS_WMA_StreamCreateFile(false,PChar(filename),0,0,0);
      end;
     if i = 0 then
      begin
     i:=BASS_FLAC_StreamCreateFile(false,PChar(filename),0,0,0);
      end;
     if i = 0 then
      begin
     i:=BASS_OPUS_StreamCreateFile(false,PChar(filename),0,0,0);
      end;
     if i = 0 then
     begin
     i:=BASS_StreamCreateFile(false,PChar(filename),0,0,0);
     end;
    except
      begin
        MessageDlgX1('Ошибка', 'Файл невозможно воспроизвести! Попробуйте удалить его из списка воспроизведения и загрузить снова.',MainSender);
        BASS_PluginFree(i);
        Exit;
      end;
    end;
    if i=0 then
    begin
    MessageDlgX1('Ошибка', 'Файл невозможно воспроизвести! Попробуйте удалить его из списка воспроизведения и загрузить снова.',MainSender);
    Exit;
    end;
  xs:=0;
  {if OnSortPopular.Checked=true then}
 for fc:=0 to Playlist.RowCount-1 do
  begin
  if SysToUTF8(Playlist.Cells[2,fc])=SysToUTF8(filename) then
   begin
     if  TryStrToInt(Playlist.Cells[7, Playlist.RowCount - 1],xs)=false then
     begin
       Playlist.Cells[7, Playlist.RowCount - 1]:='0';
     end;
     Playlist.Cells[7,fc]:=IntToStr(StrToInt(Playlist.Cells[7,fc])+1);
   end;
  end;
    EQ(MainSender);
    try
      begin
        Volume.Position := volS;
        BASS_ChannelSetAttribute(i, BASS_ATTRIB_VOL, round(Volume.Position) / 100);
      end;
    except
      begin
        Volume.Position := 50;
        BASS_ChannelSetAttribute(i, BASS_ATTRIB_VOL, round(Volume.Position) / 100);
      end;
    end;
    RaccoonForm1.Caption := ExtractFileName(SysToUTF8(filename)) + ' - Raccoon';
    begin
    RaccoonConfigIni.WriteString('History', 'LastFile', SysToUTF8(filename));
    end;
    begin
    FindTime.Min := 0;
    FindTime.Max := round(BASS_ChannelBytes2Seconds(i, BASS_ChannelGetLength(i, 0)));
    end;
    begin
    FileSizeLabelX.Caption := FloatToStr(roundTo((((FileSize(SysToUTF8(filename))
    / 1024 / 1024) * 10) / 10), -1)) + ' Мб';
    end;
    ImageAlbumX.Visible := False;
    FileNameLabelX.Caption := SysToUTF8(filename);
    begin
    BASS_ChannelGetInfo(i, inf);
    FreQ := inf.freq;
    FrequencyLabel.Caption := IntToStr(Round(Freq)) + ' Гц';
    end;
    begin
    Ln1 := 0;
    Ln1 := BASS_ChannelGetLength(i, BASS_POS_BYTE);
    if Ln1 < 0 then
      Ln1 := 0;
    FltLenR := BASS_ChannelBytes2Seconds(i, Ln1);
    lenR := BASS_StreamGetFilePosition(i, BASS_FILEPOS_END);
    BitrateLabelX.Caption := IntToStr(Round(lenR / (125 * FltLenR) + 0.5)) + ' кБит';
    end;
    MetaDataFile(filename);
    begin
    NameSongZ.Caption := NameSong0;
    SingerZ.Caption := Singer0;
    AlbumZ.Caption := Album0;
    NameSongLabelX.Caption := NameSong0;
    SingerLabelX.Caption := Singer0;
    AlbumLabelX.Caption := Album0;
    YearLabelX.Caption := Year1;
    end;
    FXMain(MainSender);
           if SingerZ.Caption = 'Неизвестный исполнитель' then
        begin
          SingerZ.Caption := ArtistE;
          SingerLabelX.Caption := ArtistE;
        end;
        if AlbumZ.Caption = 'Неизвестный альбом' then
        begin
          AlbumLabelX.Caption := 'Неизвестно';
        end;
        if NameSongLabelX.Caption = ExtractFileName(SysToUTF8(filename)) then
        begin
          NameSongLabelX.Caption := TitleE;
          NameSongZ.Caption := TitleE;
        end;
        if NameSongLabelX.Caption = 'Неизвестно' then
        begin
          NameSongLabelX.Caption := TitleE;
          NameSongZ.Caption := TitleE;
        end;
        if SingerZ.Caption = '' then
        begin
          SingerZ.Caption := 'Неизвестный исполнитель';
          SingerLabelX.Caption := 'Неизвестно';
        end;
        if NameSongZ.Caption = '' then
        begin
          NameSongLabelX.Caption := ExtractFileName(SysToUTF8(filename));
          NameSongZ.Caption := ExtractFileName(SysToUTF8(filename));
        end;
       if NameSongZ.Caption = 'Неизвестное название' then
        begin
         NameSongLabelX.Caption := StringReplace(ExtractFilename(SysToUTF8(filename)),
      ExtractFileExt(SysToUTF8(filename)), '', []);
         NameSongZ.Caption := StringReplace(ExtractFilename(SysToUTF8(filename)),
      ExtractFileExt(SysToUTF8(filename)), '', []);
        end;
     begin
    NameSongLabelX.Hint := NameSongLabelX.Caption;
    SingerLabelX.Hint := SingerLabelX.Caption;
    AlbumLabelX.Hint := AlbumLabelX.Caption;
    YearLabelX.Hint := YearLabelX.Caption;
    FileSizeLabelX.Hint := FileSizeLabelX.Caption;
    FileNameLabelX.Hint := FileNameLabelX.Caption;
    end;
    begin
    ax:=false;
    FS1 := TFileStream.Create(filename, fmOpenRead or fmShareDenyWrite);
    Id3v2Tag.ReadFromStream(FS1);
    FS1.Free;
    PictureData := TMemoryStream.Create;
    id3v2Tag.GetPicture(PictureData, '*');
    PictureData1 := TMemoryStream.Create;
    id3v2Tag.GetPicture(PictureData1, '*');
    try
      PictureData.Seek(0, soFromBeginning);
      JPEGImage := TJPEGImage.Create;
      try
        try
          JPEGImage.LoadFromStream(PictureData);
          ImageAlbumX.Picture.Bitmap.Assign(JPEGImage);
          ImageAlbumX.Visible := True;
          Form1.ImageAlbum1.Picture.Bitmap.Assign(JPEGImage);
          Form1.ImageAlbum1.Visible := True;
          ax:= true;
        except
          ImageAlbumX.Visible := False;
          ImageAlbumX.Picture.Assign(nil);
          Form1.ImageAlbum1.Visible := False;
          Form1.ImageAlbum1.Picture.Assign(nil);
        end;
      finally
        JPEGImage.Free;
      end;
    finally
      PictureData.Free;
    end;
    if ax<>true then
    try
      PictureData1.Seek(0, soFromBeginning);
      PNGImage := TPortableNetworkGraphic.Create;
      try
        try
          PNGImage.LoadFromStream(PictureData1);
          ImageAlbumX.Picture.Bitmap.Assign(PNGImage);
          ImageAlbumX.Visible := True;
          Form1.ImageAlbum1.Picture.Bitmap.Assign(PNGImage);
          Form1.ImageAlbum1.Visible := True;
        except
          ImageAlbumX.Visible := False;
          ImageAlbumX.Picture.Assign(nil);
          Form1.ImageAlbum1.Visible := False;
          Form1.ImageAlbum1.Picture.Assign(nil);
        end;
      finally
        PNGImage.Free;
      end;
    finally
      PictureData1.Free;
    end;
    end;
    try
    if OnLyricsShow.Checked=true then
    begin
     if not FileExists(UTF8ToSys(SelectLyricsPath.FileName+'\'+StringReplace(ExtractFilename(SysToUTF8(filename)),ExtractFileExt(filename),'',[])+'.lrc')) then
     begin
      if not FileExists(UTF8ToSys(StringReplace(SysToUTF8(filename),ExtractFileExt(filename),'',[])+'.lrc')) then
       begin
        SourceLyrics.Clear;
        LyricsTimer.Enabled:=false;
        LyricsLabel.Caption:='';
       end
      else
       begin
        SourceLyrics.Lines.LoadFromFile((StringReplace(SysToUTF8(filename),ExtractFileExt(filename),'',[])+'.lrc'));
        LyricsTimer.Enabled:=true;
       end;
     end
     else
      begin
       SourceLyrics.Lines.LoadFromFile((SelectLyricsPath.FileName+'\'+StringReplace(ExtractFilename(SysToUTF8(filename)),ExtractFileExt(filename),'',[])+'.lrc'));
       LyricsTimer.Enabled:=true;
      end;
    end
    except
    end;
    try
     begin
    BASS_WADSP_ChannelSetDSP(dspPlugin,i, 0);
    BASS_WADSP_SetSongTitle(dspPlugin,PChar(SingerZ.Caption+' - '+NameSongZ.Caption));
     end;
    except
    end;
    Bass_ChannelPlay(i, False);
    Form1.Singer1.Caption:=SingerZ.Caption;
    Form1.NameSong1.Caption:=NameSongZ.Caption;
    if (RaccoonForm1.WindowState<>wsMaximized) and
    (RaccoonForm1.WindowState<>wsFullScreen) then
    if OnInfobar.Checked=true then
    begin
    ActionXInfoBar:=true;
    ActionXInfoBarTime:=0;
    end;
  end;
end;

function TRaccoonForm1.MetaDataFile(filename: string): boolean;
var
  TitleOne, ArtistOne, AlbumOne, YearOne : string;
begin
 begin
    ArtistE := '';
    TitleE := '';
    dzEng := StringReplace(ExtractFilename(SysToUTF8(filename)),
      ExtractFileExt(SysToUTF8(filename)), '', []);
    for strZE := 0 to length(dzEng) - 1 do
    begin
      if copy(dzEng, strZE, 1) = '-' then
      begin
        ArtistE := copy(dzEng, 0, strZE - 1);
        if copy(copy(dzEng, strZE + 1, (length(dzEng) - 1 - strZE + 1)), 0, 1) = ' ' then
          TitleE := copy(dzEng, strZE + 2, (length(dzEng) - 1 - strZE + 1))
        else
          TitleE := copy(dzEng, strZE + 1, (length(dzEng) - 1 - strZE + 1));
      end;
    end;
 end;
 begin
  FS1 := TFileStream.Create(filename, fmOpenRead or fmShareDenyWrite);
  Id3v2Tag.ReadFromStream(FS1);
  FS1.Free;
   if Id3v2Tag.TagExists = true then
    begin
  TitleOne:=SysToUTF8(Id3v2Tag.Title);
  ArtistOne:=SysToUTF8(Id3v2Tag.Artist);
  AlbumOne:=SysToUTF8(Id3v2Tag.Album);
  YearOne:=SysToUTF8(Id3v2Tag.Year);
  end;
   end;
     NameSong0:= 'Неизвестное название';
     Singer0:= 'Неизвестный исполнитель';
     Album0:='Неизвестный альбом' ;
     Year1:='Неизвестно';
  with ReaderID3v1Tag(filename) do
   begin
     if TitleE<>'' then
      NameSong0:=TitleE;
     if (ID='TAG') and ((TrimRight(Title)<>'')) then
      NameSong0:=SysToUTF8(TrimRight(Title));
     if TitleOne<>'' then
      NameSong0:=TrimRight(TitleOne);

     if  ArtistE<>'' then
      Singer0:=ArtistE;
     if  (ID='TAG') and ((TrimRight(Artist)<>'')) then
      Singer0:=SysToUTF8(TrimRight(Artist));
     if  ArtistOne<>'' then
      Singer0:=TrimRight(ArtistOne);

      if (ID='TAG') and ((TrimRight(Album)<>'')) then
      Album0:=SysToUTF8(TrimRight(Album));
      if AlbumOne<>'' then
      Album0:=TrimRight(AlbumOne);
      try
       kod := StrToInt(Year);
       Year1:= SysToUTF8(Year);
      except
       Year1 := 'Неизвестно';
      end;
       if  YearOne<>'' then
      Year1:=YearOne
      else
       Year1 := 'Неизвестно';
     end;
       if NameSong0 = 'Неизвестное название' then
        begin
         NameSong0:=StringReplace(ExtractFilename(SysToUTF8(filename)),
      ExtractFileExt(SysToUTF8(filename)), '', []);;
        end;
       Result:= true;
   end;

procedure TRaccoonForm1.LoadInspectorTimer(Sender: TObject);
begin
  if Load >= 4 then
  begin
    LoadAnimation.Enabled := True;
    ActionXStart := False;
    EnginePanelDblClick(MainSender);
    LoadInspector.Enabled:=false;
  end
  else
  begin
    LoadPanel.Visible := True;
  end;
end;
procedure TRaccoonForm1.LoadAnimationTimer(Sender: TObject);
begin
  if ActionXStart = False then
    if LoadPanel.Top < MainPanel.Width then
    begin
      LoadPanel.Top := LoadPanel.Top + 20;
    end
    else
    begin
      LoadPanel.Top := MainPanel.Width;
      LoadPanel.Visible := False;
      LoadAnimation.Enabled := False;
      LoadPanel.Destroying;
    end;
end;

procedure TRaccoonForm1.InfobarTimerTimer(Sender: TObject);
begin
  begin
    RaccoonConfigIni.WriteInteger('History', 'LastFileTime', FindTime.Position);
    RaccoonConfigIni.WriteInteger('EQ', '1', EQ1.Position);
    RaccoonConfigIni.WriteInteger('EQ', '2', EQ2.Position);
    RaccoonConfigIni.WriteInteger('EQ', '3', EQ3.Position);
    RaccoonConfigIni.WriteInteger('EQ', '4', EQ4.Position);
    RaccoonConfigIni.WriteInteger('EQ', '5', EQ5.Position);
    RaccoonConfigIni.WriteBool('Settings', 'OnSinger', OnSinger.Checked);
    RaccoonConfigIni.WriteBool('Settings', 'InfoBar', OnInfobar.Checked);
    RaccoonConfigIni.WriteBool('Settings', 'LyricsOn', OnLyricsShow.Checked);
    RaccoonConfigIni.WriteString('Settings', 'LyricsPath', SelectLyricsPath.FileName);
    RaccoonConfigIni.WriteBool('Settings', 'OnAlbum', OnSinger.Checked);
    RaccoonConfigIni.WriteBool('Settings', 'OnYear', OnYear.Checked);
    RaccoonConfigIni.WriteBool('Settings', 'OnAllTime', OnFullTime.Checked);
    RaccoonConfigIni.WriteBool('Settings', 'SortPopular', OnSortPopular.Checked);
    RaccoonConfigIni.WriteString('Settings', 'WinampDSPFileName', dspFile);
    RaccoonConfigIni.WriteBool('Settings', 'AutoRunWinampDSP', LoadPluginDSPWithApp.Checked);
    RaccoonConfigIni.WriteBool('Settings', 'OnWinampDSP', OnPluginsDSP.Checked);
    RaccoonConfigIni.WriteString('Scheme', 'Path', fsw);
    RaccoonConfigIni.WriteBool('FX', 'Echo', OnEcho.Checked);
    RaccoonConfigIni.WriteBool('FX', 'Chorus', OnChorus.Checked);
    RaccoonConfigIni.WriteBool('FX', 'Flanger', OnFlanger.Checked);
    RaccoonConfigIni.WriteBool('FX', 'Reverberation', OnReverberation.Checked);
    RaccoonConfigIni.WriteInteger('FX', 'EchoX', TrackEcho.Position);
    RaccoonConfigIni.WriteInteger('FX', 'ChorusX', TrackChorus.Position);
    RaccoonConfigIni.WriteInteger('FX', 'FlangerX', TrackFlanger.Position);
    RaccoonConfigIni.WriteInteger('FX', 'ReverberationX', TrackReverberation.Position);
    RaccoonConfigIni.WriteInteger('Engine', 'Repeat', repeatX);
    RaccoonConfigIni.WriteInteger('Engine', 'Random', randomX);
    RaccoonConfigIni.WriteInteger('Engine', 'Volume', volS);
      end;

  if ActionXInfoBar=true then
    ActionXInfoBarTime:=ActionXInfoBarTime+1
  else
   ActionXInfoBarTime:=0;

   if ActionXInfoBarTime >=7 then
  begin
  ActionXInfoBar:=false;
  ActionXInfoBarTime:=0;
  end;
end;

procedure TRaccoonForm1.LyricsTimerTimer(Sender: TObject);
begin
  if OnLyricsShow.Checked=true then
  begin
  for ip:=0 to SourceLyrics.Lines.Count-1 do
   begin
   for ipX:=0 to length(SourceLyrics.Lines.Strings[ip])-1 do
    begin
   if copy(SourceLyrics.Lines.Strings[ip],ipX,5)=copy(FormatDateTime('hh:mm:ss',
   (BASS_ChannelBytes2Seconds(i,BASS_ChannelGetPosition(i,0)))/(24 * 3600)),4,5)
   then
    begin
    vl:=copy(SourceLyrics.Lines.Strings[ip],0,length(SourceLyrics.Lines.Strings[ip]));
    for dl:=0 to length(vl) do
     begin
      if copy(vl,length(vl)-dl,1)=']' then
       begin
       vl:=copy(vl,length(vl)-dl+1,dl);
      end;
     end;
    end;
   end;
  end;
  if ActionXLyrics=false then
  LyricsShow(vl,MainSender)
  else
  LyricsLabel.Caption:=vl;
 end;
end;

procedure TRaccoonForm1.EQ1Change(Sender: TObject);
begin
  BASS_FXGetParameters(FX1[1], @Ep);
  Ep.fgain := 15 - EQ1.position;
  BASS_FXSetParameters(FX1[1], @Ep);
  ProgressEQ1(30,EQ1.position,true);
end;

procedure TRaccoonForm1.EQ2Change(Sender: TObject);
begin
  BASS_FXGetParameters(FX1[2], @Ep);
  Ep.fgain := 15 - EQ2.position;
  BASS_FXSetParameters(FX1[2], @Ep);
   ProgressEQ2(30,EQ2.position,true);
end;

procedure TRaccoonForm1.EQ3Change(Sender: TObject);
begin
  BASS_FXGetParameters(FX1[3], @Ep);
  Ep.fgain := 15 - EQ3.position;
  BASS_FXSetParameters(FX1[3], @Ep);
   ProgressEQ3(30,EQ3.position,true);
end;

procedure TRaccoonForm1.EQ4Change(Sender: TObject);
begin
  BASS_FXGetParameters(FX1[4], @Ep);
  Ep.fgain := 15 - EQ4.position;
  BASS_FXSetParameters(FX1[4], @Ep);
   ProgressEQ4(30,EQ4.position,true);
end;

procedure TRaccoonForm1.EQ5Change(Sender: TObject);
begin
  BASS_FXGetParameters(FX1[5], @Ep);
  Ep.fgain := 15 - EQ5.position;
  BASS_FXSetParameters(FX1[5], @Ep);
   ProgressEQ5(30,EQ5.position,true);
end;

function TRaccoonForm1.ReaderID3v1Tag(filename: string): TID3v1Tag;
var
  FS: TFileStream;
  Buf: array [1..128] of char;
begin
  FS := TFileStream.Create(filename, fmOpenRead or fmShareDenyWrite);
  try
    FS.Seek(-128, soFromEnd);
    FS.Read(Buf, 128);
    with Result do
    begin
      ID := Copy(Buf, 1, 3);
      Title := Copy(Buf, 4, 30);
      Artist := Copy(Buf, 34, 30);
      Album := Copy(Buf, 64, 30);
      Year := Copy(Buf, 94, 4);
      Comment := Copy(Buf, 98, 30);
      Genre := Ord(Buf[128]);
    end;
  finally
    FS.Free;
  end;
end;

procedure TRaccoonForm1.WMHotKey(var Messagew: TMessage);
begin
  if (HiWORD(Messagew.lParam) = VK_MEDIA_NEXT_TRACK) or
    (HiWORD(Messagew.lParam) = VK_F9) then
  begin
    NextZClick(MainSender);
  end;
  if (HiWORD(Messagew.lParam) = VK_MEDIA_PREV_TRACK) or
    (HiWORD(Messagew.lParam) = VK_F7) then
  begin
    PrevioussZClick(MainSender);
  end;
  if (HiWORD(Messagew.lParam) = VK_MEDIA_PLAY_PAUSE) or
    (HiWORD(Messagew.lParam) = VK_F8) or
    (HiWORD(Messagew.lParam) = VK_SPACE) then
  begin
    case BASS_ChannelIsActive(i) of
      0:
      begin
        StartZClick(MainSender);
        ControlPanelMouseLeave(MainSender);
      end;
      1:
      begin
        PauseZClick(MainSender);
        ControlPanelMouseLeave(MainSender);
      end;
      3:
      begin
        StartZClick(MainSender);
        ControlPanelMouseLeave(MainSender);
      end;
    end;
  end;
end;

procedure TRaccoonForm1.VolumeMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: integer);
var
  nb1: real;
begin
  if BASS_ChannelIsActive(i) = (BASS_ACTIVE_STOPPED)then  exit;
  nb1 := Volume.Max / XVolume.Width;
  Volume.Position := round(x * nb1);
  BASS_ChannelSetAttribute(i, BASS_ATTRIB_VOL, round(Volume.Position) / 100);
  XVolume.Hint := 'Громкость: ' + FloatToStr(round(Volume.Position)) + '%';
  if BASS_ChannelIsActive(i) <> (BASS_ACTIVE_STOPPED) then
  begin
    if Volume.Position=0 then
  PauseZClick(MainSender)
  else
  StartZClick(MainSender);
  end;
end;

procedure TRaccoonForm1.VolumeMouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: boolean);
begin
  if BASS_ChannelIsActive(i) = (BASS_ACTIVE_STOPPED)then  exit;
  try
    Volume.Position := Volume.Position - 2;
  except
    Volume.Position := 0;
  end;
  BASS_ChannelSetAttribute(i, BASS_ATTRIB_VOL, round(Volume.Position) / 100);
  XVolume.Hint := 'Громкость: ' + FloatToStr(round(Volume.Position)) + '%';
    if BASS_ChannelIsActive(i) <> (BASS_ACTIVE_STOPPED) or (BASS_ACTIVE_PAUSED)then
    begin
      if Volume.Position=0 then
    PauseZClick(MainSender)
    else
    StartZClick(MainSender);
    end;
    ControlPanelMouseLeave(MainSender);
  end;

procedure TRaccoonForm1.VolumeMouseWheelUp(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: boolean);
begin
    if BASS_ChannelIsActive(i) = (BASS_ACTIVE_STOPPED)then  exit;
  try

  Volume.Position := Volume.Position + 2;
  except
    Volume.Position := 100;
  end;
  BASS_ChannelSetAttribute(i, BASS_ATTRIB_VOL, round(Volume.Position) / 100);
  XVolume.Hint := 'Громкость: ' + FloatToStr(round(Volume.Position)) + '%';
    if BASS_ChannelIsActive(i) <> (BASS_ACTIVE_STOPPED)then
    begin
      if Volume.Position=0 then
    PauseZClick(MainSender)
    else
    StartZClick(MainSender);
    end;
    ControlPanelMouseLeave(MainSender);
  end;

procedure TRaccoonForm1.FormWindowStateChange(Sender: TObject);
begin
  Playlist.Left:=5;
  MainPanel.Height:=RaccoonForm1.Height-30;
  MainPanel.Width:=RaccoonForm1.Width;
  Playlist.Height := MainPanel.Height - 83;
  Playlist.Width := MainPanel.Width-10;
  EnginePanel.Width := MainPanel.Width;
  EnginePanel.Height := MainPanel.Height - 378;
  EnginePanel.Top := MainPanel.Height - 83;
  Volume.Left := MainPanel.Width - 93;
  VolumeLabel.Left := MainPanel.Width - 118;
  FileEnd.Left := MainPanel.Width - 198;
  FindTime.Width := EnginePanel.Width - 208 - FindTime.Left;
  ControlPanel.Left := round(FindTime.Width / 2) + FindTime.Left -
    round(ControlPanel.Width / 2);
  FullInformationPanel.Top := EnginePanel.Top;
  SettingsButtonZ.Left := MainPanel.Width - 54;
  AboutBoxButtonZ.Left := MainPanel.Width - 96;
  SettingsButtonX.Left := MainPanel.Width - 54;
  AboutBoxButtonX.Left := MainPanel.Width - 96;
  Parametrs.Width := MainPanel.Width-10;
  SettingsBox.Width:=Parametrs.Width-2;
  License.Left:=Parametrs.Width-432;
  AboutBox.Width := MainPanel.Width-10;
  XFindTime.Refresh;
  ActionX := False;
  ActionXNote:= False;
end;

procedure TRaccoonForm1.EQ(Sender: TObject);
begin
  FX1[1] := BASS_ChannelSetFX(i, BASS_FX_DX8_PARAMEQ, 1);
  FX1[2] := BASS_ChannelSetFX(i, BASS_FX_DX8_PARAMEQ, 1);
  FX1[3] := BASS_ChannelSetFX(i, BASS_FX_DX8_PARAMEQ, 1);
  FX1[4] := BASS_ChannelSetFX(i, BASS_FX_DX8_PARAMEQ, 1);
  FX1[5] := BASS_ChannelSetFX(i, BASS_FX_DX8_PARAMEQ, 1);
  Ep.fGain := 15 - RaccoonForm1.EQ1.Position;
  Ep.fBandwidth := 3;
  Ep.fCenter := 60;
  BASS_FXSetParameters(FX1[1], @Ep);
  Ep.fGain := 15 - RaccoonForm1.EQ2.Position;
  Ep.fBandwidth := 3;
  Ep.fCenter := 230;
  BASS_FXSetParameters(FX1[2], @Ep);
  Ep.fGain := 15 - RaccoonForm1.EQ3.Position;
  Ep.fBandwidth := 3;
  Ep.fCenter := 910;
  BASS_FXSetParameters(FX1[3], @Ep);
  Ep.fGain := 15 - RaccoonForm1.EQ4.Position;
  Ep.fBandwidth := 3;
  Ep.fCenter := 4000;
  BASS_FXSetParameters(FX1[4], @Ep);
  Ep.fGain := 15 - RaccoonForm1.EQ5.Position;
  Ep.fBandwidth := 3;
  Ep.fCenter := 14000;
  BASS_FXSetParameters(FX1[5], @Ep);
  RaccoonForm1.EQ1Change(MainSender);
  RaccoonForm1.EQ2Change(MainSender);
  RaccoonForm1.EQ3Change(MainSender);
  RaccoonForm1.EQ4Change(MainSender);
  RaccoonForm1.EQ5Change(MainSender);
end;

procedure TRaccoonForm1.MinimazeZClick(Sender: TObject);
begin
Application.Minimize;
ActionXInfoBar:=false;
end;

procedure TRaccoonForm1.MinimazeZMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 MinimazeX.Visible:=true;
 MinimazeZ.Visible:=false;
end;

procedure TRaccoonForm1.FullInformationPanelImageClick(Sender: TObject);
begin
  ActionX := False;
end;

procedure TRaccoonForm1.FullFormZClick(Sender: TObject);
begin
CaptionFormDblClick(MainSender);
end;

procedure TRaccoonForm1.FullFormZMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 FullFormX.Visible:=true;
 FullFormZ.Visible:=false;
end;

procedure TRaccoonForm1.AppCloseZClick(Sender: TObject);
begin
  RaccoonForm1.Close;
end;

procedure TRaccoonForm1.AppCloseZMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 AppCloseX.Visible:=true;
 AppCloseZ.Visible:=false;
end;

procedure TRaccoonForm1.MinimazeXMouseLeave(Sender: TObject);
begin
 MinimazeZ.Visible:=true;
 MinimazeX.Visible:=false;
end;

procedure TRaccoonForm1.MinimazeXMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 MinimazeX.Visible:=true;
 MinimazeZ.Visible:=false;
end;

procedure TRaccoonForm1.FullFormXMouseLeave(Sender: TObject);
begin
 FullFormZ.Visible:=true;
 FullFormX.Visible:=false;
end;

procedure TRaccoonForm1.FullFormXMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 FullFormX.Visible:=true;
 FullFormZ.Visible:=false;
end;

procedure TRaccoonForm1.AppCloseXMouseLeave(Sender: TObject);
begin
 AppCloseZ.Visible:=true;
 AppCloseX.Visible:=false;
end;

procedure TRaccoonForm1.AppCloseXMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 AppCloseX.Visible:=true;
 AppCloseZ.Visible:=false;
end;
procedure TRaccoonForm1.Label1MouseLeave(Sender: TObject);
begin
  VolumeLabel.Font.Color := clWhite;
end;

procedure TRaccoonForm1.Label1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: integer);
begin
  VolumeLabel.Font.Color := $006B6B6B;
end;

procedure TRaccoonForm1.Label37MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
ReleaseCapture;
RaccoonForm1.Perform(WM_SysCommand,$F012,0);
end;

procedure TRaccoonForm1.LoadTimerStartTimer(Sender: TObject);
begin
  if Load = 2 then
    LoadTimer.Enabled := False;
end;

procedure TRaccoonForm1.LoadStopTimer(Sender: TObject);
begin
  Load := Load + 1;
end;

function TRaccoonForm1.TimeInfoFile(filename2: string; Sender: TObject): string;
begin
    try
     begin
      BASS_StreamFree(i1);
      BASS_Init(-1, 48000, 0, Handle, nil);
      i1:=BASS_AC3_StreamCreateFile(false,PChar(filename2),0,0,0);
      if i1 = 0 then
       begin
     i1:=BASS_AAC_StreamCreateFile(false,PChar(filename2),0,0,0);
       end;
      if i1 = 0 then
       begin
     i1:=BASS_ALAC_StreamCreateFile(false,PChar(filename2),0,0,0);
       end;
      if i1 = 0 then
       begin
     i1:=BASS_APE_StreamCreateFile(false,PChar(filename2),0,0,0);
       end;
     if i1 = 0 then
      begin
     i1:=BASS_MPC_StreamCreateFile(false,PChar(filename2),0,0,0);
      end;
     if i1 = 0 then
      begin
     i1:=BASS_SPX_StreamCreateFile(false,PChar(filename2),0,0,0);
      end;
     if i1 = 0 then
      begin
     i1:=BASS_CD_StreamCreateFile(PChar(filename2),0);
      end;
     if i1 = 0 then
      begin
     i1:= BASS_WMA_StreamCreateFile(false,PChar(filename2),0,0,0);
      end;
     if i1 = 0 then
      begin
     i1:=BASS_FLAC_StreamCreateFile(false,PChar(filename2),0,0,0);
      end;
     if i1 = 0 then
      begin
     i1:=BASS_OPUS_StreamCreateFile(false,PChar(filename2),0,0,0);
      end;
     if i1 = 0 then
     begin
     i1:=BASS_StreamCreateFile(false,PChar(filename2),0,0,0);
     end;
     TolegZ := BASS_ChannelBytes2Seconds(i1, BASS_ChannelGetLength(i1, 0));
     Toleg1Z := TolegZ / (24 * 3600);
     Result := copy(FormatDateTime('hh:mm:ss', Toleg1Z), 4, 5);
     if TolegZ>3599 then
       Result :='>59:59';
     end;
    finally
     BASS_StreamFree(i1);
    end;
end;

procedure TRaccoonForm1.AddButtonClick(Sender: TObject);
var
  df: integer;
begin
  rt := 0;
  bf := 0;
  if not MainOpenDialog.Execute then exit;
  Playlist.ScrollBars:=ssNone;
  Playlist.Enabled:=false;
  for fls := 0 to MainOpenDialog.Files.Count - 1 do
  begin
    access := True;
    for cop := 0 to Playlist.RowCount - 1 do
    begin
      if Playlist.Cells[2, cop] = UTF8ToSys(MainOpenDialog.Files.Strings[fls]) then
      begin
        rt := rt + 1;
        access := False;
      end;
    end;
    if access = True then
    begin
      if not FileExists(UTF8ToSys(MainOpenDialog.Files.Strings[fls])) then
      begin
        bf := bf + 1;
      end
      else
      begin
        Playlist.RowCount := Playlist.RowCount + 1;
        Playlist.Cells[2, Playlist.RowCount - 1] :=
          UTF8ToSys(MainOpenDialog.Files.Strings[fls]);
        Playlist.Cells[0, Playlist.RowCount - 1] :=
        IntToStr(Playlist.RowCount - 1);
        Playlist.Cells[3, Playlist.RowCount - 1] :=
          ExtractFileName((MainOpenDialog.Files.Strings[fls]));
        Playlist.Cells[7, Playlist.RowCount - 1] :='0';
        filename2 := UTF8ToSys(MainOpenDialog.Files.Strings[fls]);

        Playlist.Cells[6, Playlist.RowCount - 1]:=TimeInfoFile(filename2,MainSender);

         MetaDataFile(UTF8ToSys(MainOpenDialog.Files.Strings[fls]));
        if Year1 = 'Неизвестно' then
        Playlist.Cells[5, Playlist.RowCount - 1] := ''
        else
        Playlist.Cells[5, Playlist.RowCount - 1] := Year1;

        if Album0 = 'Неизвестный альбом' then
        Playlist.Cells[4, Playlist.RowCount - 1] := ''
        else
        Playlist.Cells[4, Playlist.RowCount - 1] := Album0;

        if  Singer0='Неизвестный исполнитель' then
        Playlist.Cells[1, Playlist.RowCount - 1] :=''
        else
        Playlist.Cells[1, Playlist.RowCount - 1] := Singer0;

        if NameSong0='Неизвестное название' then
        Playlist.Cells[3, Playlist.RowCount - 1] :=''
        else
        Playlist.Cells[3, Playlist.RowCount - 1] := NameSong0;
     end;
     flsT:=fls+1;
     MaxZ:=MainOpenDialog.Files.Count;
     ProgressQ(MaxZ, flsT, true);
     Application.ProcessMessages;
    end;
  end;
  ProgressQ(MaxZ, flsT, false);
  if rt > 0 then
  begin
    MessageDlgX1('Сообщение', 'В список воспроизведения не было загружено следующее количество файлов: ' + IntToStr(rt) + ' по причине нахождения этих файлов в списке.',MainSender);
  end;
  if bf > 0 then
  begin
    MessageDlgX1('Сообщение', 'В список воспроизведения не было загружено следующее количество файлов: ' + IntToStr(bf) + ' по причине отсутствия файла под данным именем.',MainSender);
  end;
  if OnSortPopular.Checked = false then
  begin
  for df := 1 to Playlist.RowCount - 1 do
  Playlist.Cells[7, df] :='0';
  GridSort(Playlist,1,true);
  for df := 1 to Playlist.RowCount - 1 do
  Playlist.Cells[0, df] := IntToStr(df);
  end;
  for fc:=0 to Playlist.RowCount-1 do
  begin
  if Playlist.Cells[2,fc]=UTF8ToSys(MainOpenDialog.FileName) then
  begin
  Playlist.Row:=fc-1;
  Playlist.Row:=fc;
  end;
  end;
  Playlist.ScrollBars:=ssAutoVertical;
  Playlist.Enabled:=true;
  MainOpenDialog.Files.Clear;
  begin
  try
  Playlist.SaveToCSVFile(SysToUTF8(ExtractFilePath
  (Application.ExeName) + 'Playlist.rpl'));
  except
  end;
  end;
end;
procedure TRaccoonForm1.DeleteButtonClick(Sender: TObject);
var
  df, df1, ds: integer;
begin
  for df1 := 1 to Playlist.RowCount - 1 do
  begin
    if Playlist.IsCellSelected[2, df1] = True then
    begin
      ds := df1;
    end;
  end;
  if SysToUTF8(Playlist.Cells[2, ds]) = SysToUTF8(filename) then
  begin
    StopZClick(MainSender);
  end;
  Playlist.DeleteRow(ds);
  for df := 1 to Playlist.RowCount - 1 do
    Playlist.Cells[0, df] := IntToStr(df);
  begin
  try
  Playlist.SaveToCSVFile(SysToUTF8(ExtractFilePath
  (Application.ExeName) + 'Playlist.rpl'));
  except
  end;
  end;
end;

procedure TRaccoonForm1.StartPluginDSPButtonXMouseLeave(Sender: TObject);
begin
  StartPluginDSPButtonX.Color:=SysColorZ;
end;

procedure TRaccoonForm1.StartPluginDSPButtonXMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  if StartPluginDSPButtonX.Enabled=true then
  StartPluginDSPButtonX.Color:=SysColorX;
end;

procedure TRaccoonForm1.TrackChorusChange(Sender: TObject);
begin
  FXMain(MainSender);
  ProgressTrackChorus(100,TrackChorus.Position,true);
end;

procedure TRaccoonForm1.TrackFlangerChange(Sender: TObject);
begin
  FXMain(MainSender);
  ProgressTrackFlanger(100,TrackFlanger.Position,true);
end;

procedure TRaccoonForm1.TrackReverberationChange(Sender: TObject);
begin
  FXMain(MainSender);
  ProgressTrackReverberation(100,TrackReverberation.Position,true);
end;

procedure TRaccoonForm1.UploadButtonClick(Sender: TObject);
var
  Strings: TMemo;
  df,kol,kol1, rf: integer;
begin
  if not PlaylistOpenDialog.Execute then
    Exit
  else
  begin
    if ExtractFileExt(LowerCase(SysToUTF8(PlaylistOpenDialog.FileName)))='.m3u' then
      if not FileExists(UTF8ToSys(PlaylistOpenDialog.FileName)) then
      Exit
    else
    begin
    Strings:= TMemo.Create(Owner);
    Strings.Visible:=false;
    Playlist.Clean;
    Playlist.RowCount := 1;
    StopZClick(MainSender);
    Strings.Lines.LoadFromFile(PlaylistOpenDialog.FileName);
    for df:=0 to Strings.Lines.Count-1 do
    begin
      if copy(Strings.Lines.Strings[df],0,1)<>'#' then
    MainOpenDialog.Files.Add(SysToUTF8(Strings.Lines.Strings[df]));
    end;
  rt := 0;
  bf := 0;
  Playlist.ScrollBars:=ssNone;
  Playlist.Enabled:=false;
  for fls := 0 to MainOpenDialog.Files.Count - 1 do
  begin
    access := True;
    for cop := 0 to Playlist.RowCount - 1 do
    begin
      if Playlist.Cells[2, cop] = UTF8ToSys(MainOpenDialog.Files.Strings[fls]) then
      begin
        rt := rt + 1;
        access := False;
      end;
    end;
    if access = True then
    begin
      if not FileExists(UTF8ToSys(MainOpenDialog.Files.Strings[fls])) then
      begin
        bf := bf + 1;
      end
      else
      begin
        Playlist.RowCount := Playlist.RowCount + 1;
        Playlist.Cells[2, Playlist.RowCount - 1] :=
          UTF8ToSys(MainOpenDialog.Files.Strings[fls]);
        Playlist.Cells[0, Playlist.RowCount - 1] :=
        IntToStr(Playlist.RowCount - 1);
        Playlist.Cells[3, Playlist.RowCount - 1] :=
          ExtractFileName((MainOpenDialog.Files.Strings[fls]));
        Playlist.Cells[7, Playlist.RowCount - 1] :='0';
        filename2 := UTF8ToSys(MainOpenDialog.Files.Strings[fls]);

        Playlist.Cells[6, Playlist.RowCount - 1]:=TimeInfoFile(filename2,MainSender);

        MetaDataFile(UTF8ToSys(MainOpenDialog.Files.Strings[fls]));
       if Year1 = 'Неизвестно' then
       Playlist.Cells[5, Playlist.RowCount - 1] := ''
       else
       Playlist.Cells[5, Playlist.RowCount - 1] := Year1;

       if Album0 = 'Неизвестный альбом' then
       Playlist.Cells[4, Playlist.RowCount - 1] := ''
       else
       Playlist.Cells[4, Playlist.RowCount - 1] := Album0;

       if  Singer0='Неизвестный исполнитель' then
       Playlist.Cells[1, Playlist.RowCount - 1] :=''
       else
       Playlist.Cells[1, Playlist.RowCount - 1] := Singer0;

       if NameSong0='Неизвестное название' then
       Playlist.Cells[3, Playlist.RowCount - 1] :=''
       else
       Playlist.Cells[3, Playlist.RowCount - 1] := NameSong0;
      end;
      flsT:=fls+1;
      MaxZ:=MainOpenDialog.Files.Count;
     ProgressQ(MaxZ, flsT, true);
     Application.ProcessMessages;
    end;
  end;
  ProgressQ(MaxZ, flsT, false);
  if rt > 0 then
  begin
    MessageDlgX1('Сообщение', 'В список воспроизведения не было загружено следующее количество файлов: ' + IntToStr(rt) + ' по причине нахождения этих файлов в списке.',MainSender);
  end;
  if bf > 0 then
  begin
    MessageDlgX1('Сообщение', 'В список воспроизведения не было загружено следующее количество файлов: ' + IntToStr(bf) + ' по причине отсутствия файла под данным именем.',MainSender);
  end;
  if OnSortPopular.Checked = false then
  begin
  for df := 1 to Playlist.RowCount - 1 do
  Playlist.Cells[7, df] :='0';
  GridSort(Playlist,1,true);
  for df := 1 to Playlist.RowCount - 1 do
  Playlist.Cells[0, df] := IntToStr(df);
  end;
  for fc:=0 to Playlist.RowCount-1 do
  begin
  if Playlist.Cells[2,fc]=UTF8TOSys(MainOpenDialog.FileName) then
  begin
  Playlist.Row:=fc-1;
  Playlist.Row:=fc;
  end;
  end;
  Playlist.ScrollBars:=ssAutoVertical;
  Playlist.Enabled:=true;
  MainOpenDialog.Files.Clear;
    begin
  try
  Playlist.SaveToCSVFile(SysToUTF8(ExtractFilePath
  (Application.ExeName) + 'Playlist.rpl'));
  except
  end;
  end;
    end;

    if ExtractFileExt(LowerCase(SysToUTF8(PlaylistOpenDialog.FileName)))='.pls' then
      if not FileExists(UTF8ToSys(PlaylistOpenDialog.FileName)) then
      Exit
    else
    begin
    Strings:= TMemo.Create(Owner);
    Strings.Visible:=false;
    Playlist.Clean;
    Playlist.RowCount := 1;
    kol:=0;
    kol1:=kol;
    StopZClick(MainSender);
    Strings.Lines.LoadFromFile(PlaylistOpenDialog.FileName);
     for df:=0 to Strings.Lines.Count-1 do
    begin
      if copy(Strings.Lines.Strings[df],0,15)='NumberOfEntries' then
    kol:=StrToInt(copy(Strings.Lines.Strings[df],17,length(Strings.Lines.Strings[df])-16));
    kol1:=kol;
    end;
    for df:=0 to Strings.Lines.Count-1 do
    begin
      if copy(Strings.Lines.Strings[df],0,4)='File' then
      begin
      rf:=4+length(IntToStr(kol-(kol1-1)))+2;
    MainOpenDialog.Files.Add(SysToUTF8(copy(Strings.Lines.Strings[df],rf,length(Strings.Lines.Strings[df])-rf+1)));
      kol1:=kol1-1;
      end;
    end;
  rt := 0;
  bf := 0;
  Playlist.ScrollBars:=ssNone;
  Playlist.Enabled:=false;
  for fls := 0 to MainOpenDialog.Files.Count - 1 do
  begin
    access := True;
    for cop := 0 to Playlist.RowCount - 1 do
    begin
      if Playlist.Cells[2, cop] = UTF8ToSys(MainOpenDialog.Files.Strings[fls]) then
      begin
        rt := rt + 1;
        access := False;
      end;
    end;
    if access = True then
    begin
      if not FileExists(UTF8ToSys(MainOpenDialog.Files.Strings[fls])) then
      begin
        bf := bf + 1;
      end
      else
      begin
        Playlist.RowCount := Playlist.RowCount + 1;
        Playlist.Cells[2, Playlist.RowCount - 1] :=
          UTF8ToSys(MainOpenDialog.Files.Strings[fls]);
        Playlist.Cells[0, Playlist.RowCount - 1] :=
        IntToStr(Playlist.RowCount - 1);
        Playlist.Cells[3, Playlist.RowCount - 1] :=
          ExtractFileName((MainOpenDialog.Files.Strings[fls]));
        Playlist.Cells[7, Playlist.RowCount - 1] :='0';
        filename2 := UTF8ToSys(MainOpenDialog.Files.Strings[fls]);

        Playlist.Cells[6, Playlist.RowCount - 1]:=TimeInfoFile(filename2,MainSender);

        MetaDataFile(UTF8ToSys(MainOpenDialog.Files.Strings[fls]));
       if Year1 = 'Неизвестно' then
       Playlist.Cells[5, Playlist.RowCount - 1] := ''
       else
       Playlist.Cells[5, Playlist.RowCount - 1] := Year1;

       if Album0 = 'Неизвестный альбом' then
       Playlist.Cells[4, Playlist.RowCount - 1] := ''
       else
       Playlist.Cells[4, Playlist.RowCount - 1] := Album0;

       if  Singer0='Неизвестный исполнитель' then
       Playlist.Cells[1, Playlist.RowCount - 1] :=''
       else
       Playlist.Cells[1, Playlist.RowCount - 1] := Singer0;

       if NameSong0='Неизвестное название' then
       Playlist.Cells[3, Playlist.RowCount - 1] :=''
       else
       Playlist.Cells[3, Playlist.RowCount - 1] := NameSong0;
       end;
      flsT:=fls+1;
      MaxZ:=MainOpenDialog.Files.Count;
     ProgressQ(MaxZ, flsT, true);
     Application.ProcessMessages;
    end;
  end;
  ProgressQ(MaxZ, flsT, false);
  if rt > 0 then
  begin
    MessageDlgX1('Сообщение', 'В список воспроизведения не было загружено следующее количество файлов: ' + IntToStr(rt) + ' по причине нахождения этих файлов в списке.',MainSender);
  end;
  if bf > 0 then
  begin
    MessageDlgX1('Сообщение', 'В список воспроизведения не было загружено следующее количество файлов: ' + IntToStr(bf) + ' по причине отсутствия файла под данным именем.',MainSender);
  end;
  if OnSortPopular.Checked = false then
  begin
  for df := 1 to Playlist.RowCount - 1 do
  Playlist.Cells[7, df] :='0';
  GridSort(Playlist,1,true);
  for df := 1 to Playlist.RowCount - 1 do
  Playlist.Cells[0, df] := IntToStr(df);
  end;
  for fc:=0 to Playlist.RowCount-1 do
  begin
  if Playlist.Cells[2,fc]=UTF8TOSys(MainOpenDialog.FileName) then
  begin
  Playlist.Row:=fc-1;
  Playlist.Row:=fc;
  end;
  end;
  Playlist.ScrollBars:=ssAutoVertical;
  Playlist.Enabled:=true;
  MainOpenDialog.Files.Clear;
    begin
  try
  Playlist.SaveToCSVFile(SysToUTF8(ExtractFilePath
  (Application.ExeName) + 'Playlist.rpl'));
  except
  end;
  end;
    end;

 if ExtractFileExt(LowerCase(SysToUTF8(PlaylistOpenDialog.FileName)))='.rpl' then
    if not FileExists(UTF8ToSys(PlaylistOpenDialog.FileName)) then
      exit
    else
    begin
      StopZClick(MainSender);
      Playlist.Clean;
      Playlist.RowCount := 1;
      StopZClick(MainSender);
      try
        Playlist.ScrollBars:=ssNone;
        Playlist.LoadFromCSVFile((PlaylistOpenDialog.FileName));
        Playlist.Row := Playlist.RowCount - 1;
        Playlist.ScrollBars:=ssAutoVertical;
      except
        MessageDlgX1('Ошибка', 'Список воспроизведения не был загружен! Проверьте целостность файла и попробуйте загрузить его снова.',MainSender);
        Playlist.ScrollBars:=ssAutoVertical;
        exit;
      end;
        begin
       try
      Playlist.SaveToCSVFile(SysToUTF8(ExtractFilePath
      (Application.ExeName) + 'Playlist.rpl'));
       except
       end;
      end;
    end;
  end;
end;

procedure TRaccoonForm1.CleanButtonClick(Sender: TObject);
begin
  Playlist.Clean;
  Playlist.RowCount := 1;
  StopZClick(MainSender);
end;

procedure TRaccoonForm1.SaveButtonClick(Sender: TObject);
var
df: integer;
Strings1: TMemo;
begin
  if not PlaylistOpenDialog.Execute then
    Exit;
  if ExtractFileExt(SysToUTF8(PlaylistOpenDialog.FileName))='.m3u' then
  begin
   Strings1:= TMemo.Create(Owner);
   Strings1.Visible:=false;
   Strings1.Clear;
   Strings1.Lines.Add('#EXTM3U');
    for df:=1 to Playlist.RowCount-1 do
    begin
    Strings1.Lines.Add((Playlist.Cells[2,df]));
    end;
    Strings1.Lines.SaveToFile(PlaylistOpenDialog.FileName);
  end;
    if ExtractFileExt(SysToUTF8(PlaylistOpenDialog.FileName))='.pls' then
  begin
   Strings1:= TMemo.Create(Owner);
   Strings1.Visible:=false;
   Strings1.Clear;
   Strings1.Lines.Add('[playlist]');
   Strings1.Lines.Add('NumberOfEntries='+IntToStr(Playlist.RowCount-1));
    for df:=1 to Playlist.RowCount-1 do
    begin
    Strings1.Lines.Add('File'+IntToStr(df)+'='+(Playlist.Cells[2,df]));
    end;
    Strings1.Lines.SaveToFile(PlaylistOpenDialog.FileName);
  end;
  if ExtractFileExt(SysToUTF8(PlaylistOpenDialog.FileName))='.rpl' then
  Playlist.SaveToCSVFile((PlaylistOpenDialog.FileName));
end;

procedure TRaccoonForm1.NameSongZMouseLeave(Sender: TObject);
begin
  NameSongZ.Font.Color := clWhite;
end;

procedure TRaccoonForm1.NameSongZMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: integer);
begin
  InformationPanel.Color := SysColorX;
end;

procedure TRaccoonForm1.ProgressPanelMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  nb: real;
begin
  nb := FindTime.Max / XFindTime.Width;
  FindTime.Position := round(x * nb);
  BASS_ChannelSetPosition(i, BASS_ChannelSeconds2Bytes(i, FindTime.Position), 0);
end;

procedure TRaccoonForm1.NextXMouseLeave(Sender: TObject);
begin
  NextZ.Visible := True;
  NextX.Visible := False;
end;

procedure TRaccoonForm1.NextXMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: integer);
begin
  NextZ.Visible := False;
  NextX.Visible := True;
end;

procedure TRaccoonForm1.MainAnimationFormTimer(Sender: TObject);
begin
     if (ActionX) = True then
  begin
    FullInformationPanel.Visible := True;
    if FullInformationPanel.Top > EnginePanel.Top - 382 then
      FullInformationPanel.Top := FullInformationPanel.Top - 15
    else
      FullInformationPanel.Top := EnginePanel.Top - 382;
  end;
  if (ActionX) = False then
    if FullInformationPanel.Top < EnginePanel.Top then
      FullInformationPanel.Top := FullInformationPanel.Top + 15
    else
    begin
      FullInformationPanel.Top := EnginePanel.Top;
      FullInformationPanel.Visible := False;
    end;

  if (ActionXNote = True) then
  begin
    MessagesPanel.Visible := True;
    if MessagesPanel.Top < 0 then
      MessagesPanel.Top := MessagesPanel.Top + 5
    else
      MessagesPanel.Top := 0;
  end;
  if (ActionXNote = False) then
  begin
    if MessagesPanel.Top > -82 then
      MessagesPanel.Top := MessagesPanel.Top - 5
    else
    begin
      MessagesPanel.Top := -82;
      MessagesPanel.Visible := False;
      MessagesPanelCaption.Caption:='';
      MessagesPanelNote.Caption:='';
    end;
    end;
    if (ActionXLyrics = True)then
  begin
    LyricsPanel.Visible := True;
    if LyricsPanel.Top < 0 then
      LyricsPanel.Top := LyricsPanel.Top + 5
    else
      LyricsPanel.Top := 0;
  end;
  if (ActionXLyrics = False) then
  begin
    if LyricsPanel.Top > -36 then
      LyricsPanel.Top := LyricsPanel.Top - 5
    else
    begin
      LyricsPanel.Top := -36;
      LyricsPanel.Visible := False;
      LyricsLabel.Caption:='';
    end;
    end;
    if (ActionXInfoBar = True) then
  begin
    Form1.Visible := True;
    if Form1.Top < 0 then
      Form1.Top := Form1.Top + 5
    else
      Form1.Top := 0;
  end;
     if (ActionXInfoBar = False) then
    if Form1.Top > -80 then
      Form1.Top := Form1.Top - 5
    else
    begin
      Form1.Top := -80;
      Form1.Visible := False;
      Form1.NameSong1.Caption:='Неизвестное название';
      Form1.Singer1.Caption:='Неизвестный исполнитель';
      Form1.Bitrate.Caption:='Неизвестно';
      Form1.Frequency.Caption:='Неизвестно';
    end;

      if (ActionXSetting = True) then
  begin
    Parametrs.Visible := True;
    if Parametrs.Top < 0 then
      Parametrs.Top := Parametrs.Top + 15
    else
      Parametrs.Top := 0;
  end;
  if ActionXSetting = False then
    if Parametrs.Top > -330 then
      Parametrs.Top := Parametrs.Top - 15
    else
    begin
      Parametrs.Top := -330;
      SettingsBox.HorzScrollBar.Position:=0;
      Parametrs.Visible := False;
    end;

  if (ActionXAboutBox = True) then
  begin
    AboutBox.Visible := True;
    if AboutBox.Top < 0 then
      AboutBox.Top := AboutBox.Top + 15
    else
      AboutBox.Top := 0;
  end;
  if (ActionXAboutBox = False) then
    if AboutBox.Top > -330 then
      AboutBox.Top := AboutBox.Top - 15
    else
    begin
      AboutBox.Top := -330;
      AboutBox.Visible := False;
    end;
end;

procedure TRaccoonForm1.StandartSettingEQClick(Sender: TObject);
begin
  EQ1.Position := 15;
  EQ2.Position := 15;
  EQ3.Position := 15;
  EQ4.Position := 15;
  EQ5.Position := 15;
end;

procedure TRaccoonForm1.SelectSchemeButtonClick(Sender: TObject);
begin
  if not SchemeOpenDialog.Execute then exit
  else
  fsw:=(SchemeOpenDialog.FileName);
  SchemeF(MainSender);
end;

procedure TRaccoonForm1.StandartSchemeButtonClick(Sender: TObject);
begin
   fsw:='Raccoon';
   MessageDlgX1('Сообщение', 'Цветовая схема сброшена к стандартной. Перезагрузите, пожалуйста, проигрыватель.',MainSender);
end;

procedure TRaccoonForm1.LoadPluginDSPButtonClick(Sender: TObject);
begin
  try
 begin
  if not OpenPluginsDSP.Execute then exit
  else
  dspFile:=UTF8ToSys(OpenPluginsDSP.FileName);
  dspPlugin := BASS_WADSP_Load(PChar(dspFile), 5, 5, 100, 100, nil);
  BASS_WADSP_PluginInfoLoad(PChar(dspFile));
  NamePluginsDSP.Text:=BASS_WADSP_PluginInfoGetName;
 end;
except
begin
  MessageDlgX1('Ошибка', 'Невозможно загрузить и(или) запустить плагин Winamp DSP. Проверьте правильность выбора плагина.',MainSender);
end;
end;
end;
procedure TRaccoonForm1.StartPluginDSPButtonClick(Sender: TObject);
begin
 try
 begin
  if dspFile<>'' then
  begin
  BASS_WADSP_Free();
  BASS_WADSP_Init( Handle );
  dspPlugin := BASS_WADSP_Load(PChar(dspFile), 5, 5, 100, 100, nil);
  BASS_WADSP_PluginInfoLoad(PChar(dspFile));
  NamePluginsDSP.Text:=BASS_WADSP_PluginInfoGetName;
  BASS_WADSP_Start(dspPlugin, 0, 0);
  BASS_WADSP_ChannelSetDSP(dspPlugin,i, 0);
  end;
end
 except
 begin
 MessageDlgX1('Ошибка', 'Невозможно загрузить и(или) запустить плагин Winamp DSP. Проверьте правильность выбора плагина.',MainSender);
 end;
end;
end;

procedure TRaccoonForm1.SelectLyricsPathButtonClick(Sender: TObject);
begin
  if not SelectLyricsPath.Execute then
   exit;
end;

procedure TRaccoonForm1.OnChorusChange(Sender: TObject);
var
PE: BASS_DX8_PARAMEQ;
begin
if OnChorus.Checked=true then
begin
OnEcho.Checked:=false;
OnFlanger.Checked:=false;
OnReverberation.Checked:=false;
BASS_ChannelRemoveFX(i, FX);
TrackChorus.Enabled:=true;
BackHelpXTrackChorus.Enabled:=true;
FX := BASS_ChannelSetFX(i,BASS_FX_DX8_CHORUS, 1);
PE.fCenter := TrackChorus.Position;
PE.fGain := 80;
BASS_FXSetParameters(FX,@PE);
end
else
begin
TrackChorus.Position:=50;
TrackChorus.Enabled:=false;
BackHelpXTrackChorus.Enabled:=false;
BASS_ChannelRemoveFX(i,FX);
end;
end;

procedure TRaccoonForm1.OnFlangerChange(Sender: TObject);
var
PE: BASS_DX8_PARAMEQ;
begin
if OnFlanger.Checked=true then
begin
OnEcho.Checked:=false;
OnChorus.Checked:=false;
OnReverberation.Checked:=false;
BASS_ChannelRemoveFX(i,FX);
TrackFlanger.Enabled:=true;
BackHelpXTrackFlanger.Enabled:=true;
FX := BASS_ChannelSetFX(i,BASS_FX_DX8_FLANGER, 1);
PE.fCenter := TrackFlanger.Position;
PE.fGain := 80;
BASS_FXSetParameters(FX, @PE);
end
else
begin
TrackFlanger.Position:=50;
TrackFlanger.Enabled:=false;
BackHelpXTrackFlanger.Enabled:=false;
BASS_ChannelRemoveFX(i, FX);
end;
end;

procedure TRaccoonForm1.OnReverberationChange(Sender: TObject);
var
PE: BASS_DX8_PARAMEQ;
begin
if OnReverberation.Checked=true then
begin
OnEcho.Checked:=false;
OnChorus.Checked:=false;
OnFlanger.Checked:=false;
BASS_ChannelRemoveFX(i, FX);
TrackReverberation.Enabled:=true;
BackHelpXTrackReverberation.Enabled:=true;
FX:= BASS_ChannelSetFX(i,BASS_FX_DX8_REVERB, 1);
PE.fCenter := TrackReverberation.Position;
PE.fGain := 80;
BASS_FXSetParameters(FX, @PE);
end
else
begin
TrackReverberation.Position:=50;
TrackReverberation.Enabled:=false;
BackHelpXTrackReverberation.Enabled:=false;
BASS_ChannelRemoveFX(i, FX);
end;
end;

procedure TRaccoonForm1.OnPluginsDSPChange(Sender: TObject);
begin
  if OnPluginsDSP.Checked=true then
  begin
  BASS_WADSP_Init(Handle);
  LoadPluginDSPWithApp.Enabled:=true;
  NamePluginsDSP.Enabled:=true;
  LoadPluginDSPButton.Enabled:=true;
  StartPluginDSPButton.Enabled:=true;
  LoadPluginDSPButtonX.Enabled:=true;
  StartPluginDSPButtonX.Enabled:=true;
  end
  else
  begin
  BASS_WADSP_Free();
  LoadPluginDSPWithApp.Enabled:=false;
  NamePluginsDSP.Enabled:=false;
  NamePluginsDSP.Text:='';
  dspFile:='';
  LoadPluginDSPButton.Enabled:=false;
  StartPluginDSPButton.Enabled:=false;
  LoadPluginDSPButtonX.Enabled:=false;
  StartPluginDSPButtonX.Enabled:=false;
  end;
end;

procedure TRaccoonForm1.OnEchoChange(Sender: TObject);
var
PE: BASS_DX8_PARAMEQ;
begin
if OnEcho.Checked=true then
begin
OnChorus.Checked:=false;
OnFlanger.Checked:=false;
OnReverberation.Checked:=false;
BASS_ChannelRemoveFX(i, FX);
TrackEcho.Enabled:=true;
BackHelpXTrackEcho.Enabled:=true;
FX := BASS_ChannelSetFX(i,BASS_FX_DX8_ECHO, 1);
PE.fCenter := TrackEcho.Position;
PE.fGain := 80;
BASS_FXSetParameters(FX, @PE);
end
else
begin
TrackEcho.Position:=50;
TrackEcho.Enabled:=false;
BackHelpXTrackEcho.Enabled:=false;
BASS_ChannelRemoveFX(i, FX);
end;
end;
procedure TRaccoonForm1.AlbumZMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: integer);
begin
  InformationPanel.Color := SysColorX;
end;

procedure TRaccoonForm1.LoadPluginDSPButtonXMouseLeave(Sender: TObject);
begin
  LoadPluginDSPButtonX.Color:=SysColorZ;
end;

procedure TRaccoonForm1.LoadPluginDSPButtonXMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
if  LoadPluginDSPButtonX.Enabled=true then
 LoadPluginDSPButtonX.Color:=SysColorX;
end;

procedure TRaccoonForm1.LoadPluginDSPWithAppFlagOffClick(Sender: TObject);
begin
if LoadPluginDSPWithApp.Checked=false then
begin
 LoadPluginDSPWithApp.Checked:=true
 end
 else
 begin
 LoadPluginDSPWithApp.Checked:=false;
end;
end;
procedure TRaccoonForm1.LoadPluginDSPWithAppFlagOnClick(Sender: TObject);
begin
if LoadPluginDSPWithApp.Checked=false then
begin
 LoadPluginDSPWithApp.Checked:=true
 end
 else
 begin
 LoadPluginDSPWithApp.Checked:=false;
end;
end;

procedure TRaccoonForm1.OnAlbumFlagOnClick(Sender: TObject);
begin
 if OnAlbum.Checked=false then
begin
 OnAlbum.Checked:=true
 end
 else
 begin
 OnAlbum.Checked:=false;
end;
end;

procedure TRaccoonForm1.OnChorusFlagOnClick(Sender: TObject);
begin
  if OnChorus.Checked=false then
begin
 OnChorus.Checked:=true
 end
 else
 begin
 OnChorus.Checked:=false;
end;
end;

procedure TRaccoonForm1.OnEchoFlagOnClick(Sender: TObject);
begin
  if OnEcho.Checked=false then
begin
 OnEcho.Checked:=true
 end
 else
 begin
 OnEcho.Checked:=false;
end;
end;

procedure TRaccoonForm1.OnFlangerFlagOnClick(Sender: TObject);
begin
  if OnFlanger.Checked=false then
begin
 OnFlanger.Checked:=true
 end
 else
 begin
 OnFlanger.Checked:=false;
end;
end;

procedure TRaccoonForm1.OnFullTimeFlagOnClick(Sender: TObject);
begin
  if OnFullTime.Checked=false then
begin
 OnFullTime.Checked:=true
 end
 else
 begin
 OnFullTime.Checked:=false;
end;
end;

procedure TRaccoonForm1.OnInfobarFlagOnClick(Sender: TObject);
begin
  if OnInfobar.Checked=false then
 begin
  OnInfobar.Checked:=true
  end
  else
  begin
  OnInfobar.Checked:=false;
 end;
end;

procedure TRaccoonForm1.OnLyricsShowFlagOnClick(Sender: TObject);
begin
  if OnLyricsShow.Checked=false then
begin
 OnLyricsShow.Checked:=true
 end
 else
 begin
 OnLyricsShow.Checked:=false;
end;
end;

procedure TRaccoonForm1.OnPluginsDSPFlagOnClick(Sender: TObject);
begin
  if OnPluginsDSP.Checked=false then
begin
 OnPluginsDSP.Checked:=true
 end
 else
 begin
 OnPluginsDSP.Checked:=false;
end;
end;

procedure TRaccoonForm1.OnReverberationFlagOnClick(Sender: TObject);
begin
  if OnReverberation.Checked=false then
begin
 OnReverberation.Checked:=true
 end
 else
 begin
 OnReverberation.Checked:=false;
end;
end;

procedure TRaccoonForm1.OnSingerFlagOnClick(Sender: TObject);
begin
  if OnSinger.Checked=false then
begin
 OnSinger.Checked:=true
 end
 else
 begin
 OnSinger.Checked:=false;
end;
end;

procedure TRaccoonForm1.OnSortPopularChange(Sender: TObject);
var
df: integer;
begin
     if OnSortPopular.Checked = false then
    begin
     GridSort(Playlist,1,true);
    for df := 1 to Playlist.RowCount - 1 do
     Playlist.Cells[0, df] := IntToStr(df);
    end;
      if OnSortPopular.Checked = true then
    begin
     GridSort(Playlist,7,false);
    for df := 1 to Playlist.RowCount - 1 do
     Playlist.Cells[0, df] := IntToStr(df);
    end;
      EnginePanelDblClick(MainSender);
end;

procedure TRaccoonForm1.OnSortPopularFlagOnClick(Sender: TObject);
begin
  if OnSortPopular.Checked=false then
begin
 OnSortPopular.Checked:=true
 end
 else
 begin
 OnSortPopular.Checked:=false;
end;
end;

procedure TRaccoonForm1.OnYearFlagOnClick(Sender: TObject);
begin
  if OnYear.Checked=false then
begin
 OnYear.Checked:=true
 end
 else
 begin
 OnYear.Checked:=false;
end;
end;

procedure TRaccoonForm1.SelectLyricsPathButtonXMouseLeave(Sender: TObject);
begin
  SelectLyricsPathButtonX.Color:=SysColorZ;
end;

procedure TRaccoonForm1.SelectLyricsPathButtonXMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 SelectLyricsPathButtonX.Color:=SysColorX;
end;

procedure TRaccoonForm1.SelectSchemeButtonXMouseLeave(Sender: TObject);
begin
  SelectSchemeButtonX.Color:=SysColorZ;
end;

procedure TRaccoonForm1.SelectSchemeButtonXMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  SelectSchemeButtonX.Color:=SysColorX;
end;

procedure TRaccoonForm1.StandartSchemeButtonXMouseLeave(Sender: TObject);
begin
  StandartSchemeButtonX.Color:=SysColorZ;
end;

procedure TRaccoonForm1.StandartSchemeButtonXMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  StandartSchemeButtonX.Color:=SysColorX;
end;

procedure TRaccoonForm1.StandartSettingEQButtonXMouseLeave(Sender: TObject);
begin
 StandartSettingEQButtonX.Color:=SysColorZ;
end;

procedure TRaccoonForm1.StandartSettingEQButtonXMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  StandartSettingEQButtonX.Color:=SysColorX;
end;

procedure TRaccoonForm1.AlbumZMouseLeave(Sender: TObject);
begin
  AlbumZ.Font.Color := clWhite;
end;

procedure TRaccoonForm1.AboutBoxButtonZClick(Sender: TObject);
begin
  ActionXSetting := False;
  if ActionXAboutBox = False then
    ActionXAboutBox := True
  else
    ActionXAboutBox := False;
end;

procedure TRaccoonForm1.AboutBoxButtonZMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: integer);
begin
  AboutBoxButtonX.Visible := True;
  AboutBoxButtonZ.Visible := False;
  SettingsButtonX.Visible := False;
  SettingsButtonZ.Visible := True;
end;

procedure TRaccoonForm1.AboutBoxButtonXMouseLeave(Sender: TObject);
begin
  AboutBoxButtonZ.Visible := True;
  AboutBoxButtonX.Visible := False;
end;

procedure TRaccoonForm1.AboutBoxButtonXMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: integer);
begin
  AboutBoxButtonZ.Visible := False;
  AboutBoxButtonX.Visible := True;
end;

procedure TRaccoonForm1.ControlPanelMouseLeave(Sender: TObject);
begin
  if BASS_ChannelIsActive(i) = BASS_ACTIVE_PLAYING then
  begin
    PauseZ.Visible := True;
    PauseX.Visible := False;
    StartZ.Visible := False;
    StartX.Visible := False;
  end;
  if BASS_ChannelIsActive(i) = BASS_ACTIVE_PAUSED then
  begin
    PauseZ.Visible := False;
    PauseX.Visible := False;
    StartZ.Visible := True;
    StartX.Visible := False;
  end;
  if BASS_ChannelIsActive(i) = BASS_ACTIVE_STOPPED then
  begin
    PauseZ.Visible := False;
    PauseX.Visible := False;
    StartZ.Visible := True;
    StartX.Visible := False;
  end;
  NextZ.Visible := True;
  NextX.Visible := False;
  PrevioussZ.Visible := True;
  PrevioussX.Visible := False;
  InformationPanel.Color := SysColorZ;
  SettingsButtonX.Visible := False;
  AboutBoxButtonX.Visible := False;
  SettingsButtonZ.Visible := True;
  AboutBoxButtonZ.Visible := True;
end;

procedure TRaccoonForm1.ControlPanelMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
AppCloseZ.Visible:=true;
   AppCloseX.Visible:=false;
   FullFormZ.Visible:=true;
   FullFormX.Visible:=false;
   MinimazeZ.Visible:=true;
   MinimazeX.Visible:=false;
end;

procedure TRaccoonForm1.EnginePanelDblClick(Sender: TObject);
begin
 for fc:=0 to Playlist.RowCount-1 do
  begin
  if Playlist.Cells[2,fc]=filename then
   begin
    Playlist.Row:=fc-1;
    Playlist.Row:=fc;
   end;
  end;
end;

procedure TRaccoonForm1.EnginePanelMouseLeave(Sender: TObject);
begin
  if BASS_ChannelIsActive(i) = BASS_ACTIVE_PLAYING then
  begin
    PauseZ.Visible := True;
    PauseX.Visible := False;
    StartZ.Visible := False;
    StartX.Visible := False;
  end;
  if BASS_ChannelIsActive(i) = BASS_ACTIVE_PAUSED then
  begin
    PauseZ.Visible := False;
    PauseX.Visible := False;
    StartZ.Visible := True;
    StartX.Visible := False;
  end;
  if BASS_ChannelIsActive(i) = BASS_ACTIVE_STOPPED then
  begin
    PauseZ.Visible := False;
    PauseX.Visible := False;
    StartZ.Visible := True;
    StartX.Visible := False;
  end;
  NextZ.Visible := True;
  NextX.Visible := False;
  PrevioussZ.Visible := True;
  PrevioussX.Visible := False;
  InformationPanel.Color := SysColorZ;
  SettingsButtonX.Visible := False;
  AboutBoxButtonX.Visible := False;
  SettingsButtonZ.Visible := True;
  AboutBoxButtonZ.Visible := True;
end;

procedure TRaccoonForm1.EnginePanelMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: integer);
begin
  if BASS_ChannelIsActive(i) = BASS_ACTIVE_PLAYING then
  begin
    PauseZ.Visible := True;
    PauseX.Visible := False;
    StartZ.Visible := False;
    StartX.Visible := False;
  end;
  if BASS_ChannelIsActive(i) = BASS_ACTIVE_PAUSED then
  begin
    PauseZ.Visible := False;
    PauseX.Visible := False;
    StartZ.Visible := True;
    StartX.Visible := False;
  end;
  if BASS_ChannelIsActive(i) = BASS_ACTIVE_STOPPED then
  begin
    PauseZ.Visible := False;
    PauseX.Visible := False;
    StartZ.Visible := True;
    StartX.Visible := False;
  end;
  InformationPanel.Color := SysColorZ;
  ControlPanelMouseLeave(MainSender);
   AppCloseZ.Visible:=true;
   AppCloseX.Visible:=false;
   FullFormZ.Visible:=true;
   FullFormX.Visible:=false;
   MinimazeZ.Visible:=true;
   MinimazeX.Visible:=false;
end;

procedure TRaccoonForm1.FileEndMouseLeave(Sender: TObject);
begin
  FileEnd.Font.Color := clWhite;
end;

procedure TRaccoonForm1.FileEndMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: integer);
begin
  FileEnd.Font.Color := $006B6B6B;
end;

procedure TRaccoonForm1.FileStartMouseLeave(Sender: TObject);
begin
  FileStart.Font.Color := clWhite;
end;

procedure TRaccoonForm1.FileStartMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: integer);
begin
  FileStart.Font.Color := $006B6B6B;
end;

 procedure TRaccoonForm1.GridSort(StrGrid: TStringGrid; NoColumn: Integer; IsMore: boolean);
var
  Line, PosActual: Integer;
  Row: TStringList;
  Renglon :TStringList;
begin
  Renglon := TStringList.Create;
  Row := TStringList.Create;
  case IsMore of
    true:
    begin
    for Line := 1 to StrGrid.RowCount-1 do
  begin
    PosActual := Line;
    Row.Assign(StrGrid.Rows[PosActual]);
    while True do
    begin
      if (PosActual = 1) or
         (Row.Strings[NoColumn] >= StrGrid.Cells[NoColumn,PosActual-1])
        then break;
      StrGrid.Rows[PosActual] := StrGrid.Rows[PosActual-1];
      Dec(PosActual);
    end;
    if (Row.Strings[NoColumn] < StrGrid.Cells[NoColumn,PosActual])
      then StrGrid.Rows[PosActual].Assign(Row);
      end;
      end;
    false:
    begin
    for Line := 1 to StrGrid.RowCount-1 do
  begin
    PosActual := Line;
    Row.Assign(StrGrid.Rows[PosActual]);
    while True do
    begin
      if (PosActual = 1) or
         (Row.Strings[NoColumn] <= StrGrid.Cells[NoColumn,PosActual-1])
        then break;
      StrGrid.Rows[PosActual] := StrGrid.Rows[PosActual-1];
      Dec(PosActual);
    end;
    if (Row.Strings[NoColumn] > StrGrid.Cells[NoColumn,PosActual])
      then StrGrid.Rows[PosActual].Assign(Row);
  end;
  end;
  end;
  Row.Free;
  Renglon.Free;
end;
procedure TRaccoonForm1.FindTimeMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: integer);
var
  nb: real;
begin
  nb := FindTime.Max / FindTime.Width;
  FindTime.Position := round(x * nb);
  BASS_ChannelSetPosition(i, BASS_ChannelSeconds2Bytes(i, FindTime.Position), 0);
end;

procedure TRaccoonForm1.FindTimeMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: integer);
begin
  if ssLeft in Shift then
  begin
    BASS_ChannelSetPosition(i, BASS_ChannelSeconds2Bytes(i, FindTime.Position), 0);
  end
  else
    Exit;
end;

procedure TRaccoonForm1.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  UnregisterHotKey(RaccoonForm1.Handle, 1);
  UnregisterHotKey(RaccoonForm1.Handle, 2);
  UnregisterHotKey(RaccoonForm1.Handle, 3);
  UnregisterHotKey(RaccoonForm1.Handle, 4);
  UnregisterHotKey(RaccoonForm1.Handle, 5);
  UnregisterHotKey(RaccoonForm1.Handle, 6);
  begin
    BASS_WADSP_Free();
    RaccoonConfigIni.WriteInteger('EQ', '1', EQ1.Position);
    RaccoonConfigIni.WriteInteger('EQ', '2', EQ2.Position);
    RaccoonConfigIni.WriteInteger('EQ', '3', EQ3.Position);
    RaccoonConfigIni.WriteInteger('EQ', '4', EQ4.Position);
    RaccoonConfigIni.WriteInteger('EQ', '5', EQ5.Position);
    RaccoonConfigIni.WriteBool('Settings', 'OnSinger', OnSinger.Checked);
    RaccoonConfigIni.WriteBool('Settings', 'InfoBar', OnInfobar.Checked);
    RaccoonConfigIni.WriteBool('Settings', 'LyricsOn', OnLyricsShow.Checked);
    RaccoonConfigIni.WriteString('Settings', 'LyricsPath', SelectLyricsPath.FileName);
    RaccoonConfigIni.WriteBool('Settings', 'OnAlbum', OnSinger.Checked);
    RaccoonConfigIni.WriteBool('Settings', 'OnYear', OnYear.Checked);
    RaccoonConfigIni.WriteBool('Settings', 'OnAllTime', OnFullTime.Checked);
    RaccoonConfigIni.WriteBool('Settings', 'SortPopular', OnSortPopular.Checked);
    RaccoonConfigIni.WriteString('Settings', 'WinampDSPFileName', dspFile);
    RaccoonConfigIni.WriteBool('Settings', 'AutoRunWinampDSP', LoadPluginDSPWithApp.Checked);
    RaccoonConfigIni.WriteBool('Settings', 'OnWinampDSP', OnPluginsDSP.Checked);
    RaccoonConfigIni.WriteString('Scheme', 'Path', fsw);
    RaccoonConfigIni.WriteBool('FX', 'Echo', OnEcho.Checked);
    RaccoonConfigIni.WriteBool('FX', 'Chorus', OnChorus.Checked);
    RaccoonConfigIni.WriteBool('FX', 'Flanger', OnFlanger.Checked);
    RaccoonConfigIni.WriteBool('FX', 'Reverberation', OnReverberation.Checked);
    RaccoonConfigIni.WriteInteger('FX', 'EchoX', TrackEcho.Position);
    RaccoonConfigIni.WriteInteger('FX', 'ChorusX', TrackChorus.Position);
    RaccoonConfigIni.WriteInteger('FX', 'FlangerX', TrackFlanger.Position);
    RaccoonConfigIni.WriteInteger('FX', 'ReverberationX', TrackReverberation.Position);
    RaccoonConfigIni.WriteInteger('Engine', 'Repeat', repeatX);
    RaccoonConfigIni.WriteInteger('Engine', 'Random', randomX);
    RaccoonConfigIni.WriteInteger('Engine', 'Volume', volS);
      try
        Playlist.SaveToCSVFile(SysToUTF8(ExtractFilePath
        (Application.ExeName) + 'Playlist.rpl'));
      except
      end;
    RaccoonConfigIni.Free;
  end;
end;

procedure TRaccoonForm1.FormCreate(Sender: TObject);
var
  df: integer;
  accessX: boolean;
begin
  Application.CreateForm(TForm1, Form1);
  SchemeOpenDialog.InitialDir:=SysToUTF8(ExtractFilePath(Application.ExeName));
  SysColorZ:=$002FB0E1;
  SysColorX:=$0020A8DB;
  fsw:='Raccoon';
  Id3v2Tag := TId3v2Tag.Create;
  BASS_Init(-1, 48000, 0, Handle, nil);
  BASS_StreamFree(i);
  RuntimeInterface.Enabled := True;
  Playlist.SelectedColor := SysColorZ;
  FullInformationPanel.Top := EnginePanel.Top;
  MessagesPanel.Top := -82;
  LyricsPanel.Top:= -36;
  Application.Title:='Raccoon';
  FullInformationPanelImage.Left := round((FullInformationCaptionPanel.Width / 2)
  - (FullInformationPanelImage.Width / 2));
  NameSongLabelX.Hint := NameSongLabelX.Caption ;
  SingerLabelX.Hint := SingerLabelX.Caption;
  AlbumLabelX.Hint := AlbumLabelX.Caption;
  YearLabelX.Hint := YearLabelX.Caption;
  FileSizeLabelX.Hint := FileSizeLabelX.Caption;
  FileNameLabelX.Hint := FileNameLabelX.Caption;
  RegisterHotKey(RaccoonForm1.Handle, 1, 0, VK_MEDIA_NEXT_TRACK);
  RegisterHotKey(RaccoonForm1.Handle, 2, 0, VK_MEDIA_PREV_TRACK);
  RegisterHotKey(RaccoonForm1.Handle, 3, 0, VK_MEDIA_PLAY_PAUSE);
  RegisterHotKey(RaccoonForm1.Handle, 4, 0, VK_F7);
  RegisterHotKey(RaccoonForm1.Handle, 5, 0, VK_F8);
  RegisterHotKey(RaccoonForm1.Handle, 6, 0, VK_F9);
  Form1.ImageAlbum.Picture:=ImageAlbumZ.Picture;
  Form1.ImageAlbum1.Picture:=ImageAlbumZ.Picture;
  ImageAlbumX.Picture:=ImageAlbumZ.Picture;
  RaccoonImageLoad.Picture:=ImageAlbumZ.Picture;
  randomX := 0;
  repeatX := 0;
  Load := 0;
  ProgressEQ1(30,EQ1.position,true);
  ProgressEQ2(30,EQ2.position,true);
  ProgressEQ3(30,EQ3.position,true);
  ProgressEQ4(30,EQ4.position,true);
  ProgressEQ5(30,EQ5.position,true);
  LoadPanel.Top := 0;
  LoadPanel.Left := 5;
  LoadPanel.Height := MainPanel.Height;
  LoadPanel.Width := MainPanel.Width-10;
  SourceLyrics:=TMemo.Create(Owner);
  RaccoonImageLoad.Left := round(MainPanel.Width - (LoadPanel.Width / 2) - (RaccoonImageLoad.Width / 2));
  RaccoonImageLoad.Top := round(MainPanel.Height - (LoadPanel.Height / 2) - (RaccoonImageLoad.Height / 2));
  begin
   RaccoonConfigIni := TIniFile.Create(ExtractFilePath(Application.ExeName) +
      'RaccoonConfig.ini');
    begin
      try
        EQ1.Position := RaccoonConfigIni.ReadInteger('EQ', '1', 15);
      except
        EQ1.Position := 15;
      end;
      try
        EQ2.Position := RaccoonConfigIni.ReadInteger('EQ', '2', 15);
      except
        EQ2.Position := 15;
      end;
      try
        EQ3.Position := RaccoonConfigIni.ReadInteger('EQ', '3', 15);
      except
        EQ3.Position := 15;
      end;
      try
        EQ4.Position := RaccoonConfigIni.ReadInteger('EQ', '4', 15);
      except
        EQ4.Position := 15;
      end;
      try
        EQ5.Position := RaccoonConfigIni.ReadInteger('EQ', '5', 15);
      except
        EQ5.Position := 15;
      end;
      try
        TrackEcho.Position := RaccoonConfigIni.ReadInteger('FX', 'EchoX', 50);
      except
        TrackEcho.Position := 50;
      end;
      try
        TrackChorus.Position := RaccoonConfigIni.ReadInteger('FX', 'ChorusX', 50);
      except
        TrackChorus.Position := 50;
      end;
      try
        TrackFlanger.Position := RaccoonConfigIni.ReadInteger('FX', 'FlangerX', 50);
      except
        TrackFlanger.Position := 50;
      end;
      try
        TrackReverberation.Position := RaccoonConfigIni.ReadInteger('FX', 'ReverberationX', 50);
      except
        TrackReverberation.Position := 50;
      end;
      try
        OnSinger.Checked := RaccoonConfigIni.ReadBool('Settings',
          'OnSinger', OnSinger.Checked);
      except
        OnSinger.Checked := True;
      end;
            try
        OnEcho.Checked := RaccoonConfigIni.ReadBool('FX',
          'Echo', OnEcho.Checked);
      except
        OnEcho.Checked := False;
      end;
            try
        OnChorus.Checked := RaccoonConfigIni.ReadBool('FX',
          'Chorus', OnChorus.Checked);
      except
        OnChorus.Checked := False;
      end;
            try
        OnFlanger.Checked := RaccoonConfigIni.ReadBool('FX',
          'Flanger', OnFlanger.Checked);
      except
        OnFlanger.Checked := False;
      end;
            try
        OnReverberation.Checked := RaccoonConfigIni.ReadBool('FX',
          'Reverberation', OnReverberation.Checked);
      except
        OnReverberation.Checked := False;
      end;
      try
        OnInfobar.Checked := RaccoonConfigIni.ReadBool('Settings',
          'InfoBar', OnInfobar.Checked);
      except
        OnInfobar.Checked := True;
      end;
      try
        OnLyricsShow.Checked := RaccoonConfigIni.ReadBool('Settings',
          'LyricsOn', OnLyricsShow.Checked);
      except
        OnLyricsShow.Checked := False;
      end;
      try
        SelectLyricsPath.FileName:= RaccoonConfigIni.ReadString('Settings',
          'LyricsPath','');
      except
        SelectLyricsPath.FileName:='';
      end;
      try
        LoadPluginDSPWithApp.Checked := RaccoonConfigIni.ReadBool('Settings',
          'AutoRunWinampDSP', LoadPluginDSPWithApp.Checked);
      except
        LoadPluginDSPWithApp.Checked := False;
      end;
      try
        OnPluginsDSP.Checked := RaccoonConfigIni.ReadBool('Settings',
          'OnWinampDSP', OnPluginsDSP.Checked);
      except
        OnPluginsDSP.Checked := False;
      end;
      try
        dspFile := RaccoonConfigIni.ReadString('Settings',
          'WinampDSPFileName','');
      except
        dspFile:='';
      end;
      try
        OnSortPopular.Checked := RaccoonConfigIni.ReadBool('Settings',
          'SortPopular', OnSortPopular.Checked);
      except
        OnSortPopular.Checked := False;
      end;
      try
        fsw:= RaccoonConfigIni.ReadString('Scheme',
          'Path', fsw);
        SchemeF(MainSender);
        StopZClick(MainSender);
      except
        fsw:='Raccoon';
        SchemeF(MainSender);
        StopZClick(MainSender);
      end;
      try
        OnAlbum.Checked := RaccoonConfigIni.ReadBool('Settings', 'OnAlbum',
          OnAlbum.Checked);
      except
        OnAlbum.Checked := True;
      end;
      try
        OnYear.Checked := RaccoonConfigIni.ReadBool('Settings', 'OnYear',
          OnYear.Checked);
      except
        OnYear.Checked := True;
      end;
      try
        OnFullTime.Checked := RaccoonConfigIni.ReadBool('Settings',
          'OnAllTime', OnFullTime.Checked);
      except
        OnFullTime.Checked := True;
      end;
      if (RaccoonConfigIni.ReadInteger('Engine', 'Repeat', 0) <> 1) and
        (RaccoonConfigIni.ReadInteger('Engine', 'Repeat', 0) <> 0) then
        repeatXS := 0
      else
        repeatXS := round(RaccoonConfigIni.ReadInteger('Engine', 'Repeat', 0));
      if (RaccoonConfigIni.ReadInteger('Engine', 'Random', 0) <> 1) and
        (RaccoonConfigIni.ReadInteger('Engine', 'Random', 0) <> 0) then
        randomXS := 0
      else
        randomXS := round(RaccoonConfigIni.ReadInteger('Engine', 'Random', 0));
      if (RaccoonConfigIni.ReadInteger('Engine', 'Volume', 50) < 0) or
        (RaccoonConfigIni.ReadInteger('Engine', 'Volume', 50) > 0) then
        try
          volS := round(RaccoonConfigIni.ReadInteger('Engine', 'Volume', 50));
        except
          volS := RaccoonConfigIni.ReadInteger('Engine', 'Volume', 50);
        end
      else
        volS := RaccoonConfigIni.ReadInteger('Engine', 'Volume', 50);
    end;
    begin
      try
        Playlist.LoadFromCSVFile(SysToUTF8(ExtractFilePath(Application.ExeName) + 'Playlist.rpl'));
        if OnSortPopular.Checked=true then
        begin
        GridSort(Playlist,7, false);
        for df := 1 to Playlist.RowCount - 1 do
        Playlist.Cells[0, df] := IntToStr(df);
        end;
      except
      end;
    end;
    if (Playlist.RowCount>1) then
    begin
      accessX:=false;
      filename := UTF8ToSys(RaccoonConfigIni.ReadString('History','LastFile', ''));
      for df:=0 to Playlist.RowCount-1 do
      begin
      if filename=Playlist.Cells[2,df] then
      accessX:=true;
      end;
    if (filename<>'') and(accessX=true) then
    begin
    EnginePanelDblClick(MainSender);
    if Playlist.Cells[2,n]=filename then
    begin
    StartZClick(MainSender);
    try
    FindTime.Position:=RaccoonConfigIni.ReadInteger('History', 'LastFileTime', FindTime.Position);
    BASS_ChannelSetPosition(i, BASS_ChannelSeconds2Bytes(i, FindTime.Position), 0);
    except
    FindTime.Position:=0;
    BASS_ChannelSetPosition(i, BASS_ChannelSeconds2Bytes(i, FindTime.Position), 0);
    end;
    ActionXInfoBar:=false;
    PauseZClick(MainSender);
    StartX.Visible := False;
    StartZ.Visible := True;
    EnginePanelDblClick(MainSender);
    end
    else
    StopZClick(MainSender);
    end;
    end;
     if (OnPluginsDSP.Checked=true) and (LoadPluginDSPWithApp.Checked=true)
      and (dspFile <> '') then
     begin
     if FileExists(dspFile)=true then
     begin
     StartPluginDSPButtonClick(MainSender);
     end;
     end;
    if repeatXS + randomXS = 2 then
      exit
    else
    begin
      if repeatXS = 1 then
        RepeatZClick(MainSender);
      if randomXS = 1 then
        RandomZClick(MainSender);
    end;
  end;
  ActionXStart := True;
  LoadTimer.Enabled := True;
end;

procedure TRaccoonForm1.FormMouseLeave(Sender: TObject);
begin
  if BASS_ChannelIsActive(i) = BASS_ACTIVE_PLAYING then
  begin
    PauseZ.Visible := True;
    PauseX.Visible := False;
    StartZ.Visible := False;
    StartX.Visible := False;
  end;
  if BASS_ChannelIsActive(i) = BASS_ACTIVE_PAUSED then
  begin
    PauseZ.Visible := False;
    PauseX.Visible := False;
    StartZ.Visible := True;
    StartX.Visible := False;
  end;
  if BASS_ChannelIsActive(i) = BASS_ACTIVE_STOPPED then
  begin
    PauseZ.Visible := False;
    PauseX.Visible := False;
    StartZ.Visible := True;
    StartX.Visible := False;
  end;
  NextZ.Visible := True;
  NextX.Visible := False;
  PrevioussZ.Visible := True;
  PrevioussX.Visible := False;
  InformationPanel.Color := SysColorZ;
  SettingsButtonX.Visible := False;
  AboutBoxButtonX.Visible := False;
  SettingsButtonZ.Visible := True;
  AboutBoxButtonZ.Visible := True;
   AppCloseZ.Visible:=true;
   AppCloseX.Visible:=false;
   FullFormZ.Visible:=true;
   FullFormX.Visible:=false;
   MinimazeZ.Visible:=true;
   MinimazeX.Visible:=false;
end;

procedure TRaccoonForm1.FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
   AppCloseZ.Visible:=true;
   AppCloseX.Visible:=false;
   FullFormZ.Visible:=true;
   FullFormX.Visible:=false;
   MinimazeZ.Visible:=true;
   MinimazeX.Visible:=false;
   if Draging = true then
  begin
    RaccoonForm1.Left := RaccoonForm1.Left + X - X0;
    RaccoonForm1.top := RaccoonForm1.top + Y - Y0;
  end;
end;

procedure TRaccoonForm1.FormMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Draging := false;
end;

procedure TRaccoonForm1.FormResize(Sender: TObject);
begin
  ActionX := False;
  ActionXNote := False;
  MainPanel.Height:=RaccoonForm1.Height-28;
  MainPanel.Width:=RaccoonForm1.Width;
end;

procedure TRaccoonForm1.NextZClick(Sender: TObject);
begin
 for fc:=0 to Playlist.RowCount-1 do
  begin
  if Playlist.Cells[2,fc]=filename then
   begin
    Playlist.Row:=fc-1;
    Playlist.Row:=fc;
   end;
  end;
  StopZClick(MainSender);
  if (Playlist.RowCount - 1 <= n + 1) and (Playlist.RowCount - 1 = 0) then
  begin
    MessageDlgX1('Сообщение', 'Список воспроизведения пуст. Невозможен переход на следующую композицию.',MainSender);
    exit;
  end;
  if Playlist.RowCount - 1 = n then
  begin
    filename := (Playlist.Cells[2, 0]);
    n := 0;
    Engine(MainSender, filename);
    StartZ.Visible := False;
    PauseZ.Visible := True;
  end;
  if Playlist.RowCount - 1 > n then
  begin
    filename := (Playlist.Cells[2, n + 1]);
    n := n + 1;
    Engine(MainSender, filename);
    StartZ.Visible := False;
    PauseZ.Visible := True;
  end;
end;

procedure TRaccoonForm1.NextZMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: integer);
begin
  NextZ.Visible := False;
  NextX.Visible := True;
end;

procedure TRaccoonForm1.InformationPanelClick(Sender: TObject);
begin
  if ActionX = True then
    ActionX := False
  else
    ActionX := True;
end;

procedure TRaccoonForm1.InformationPanelMouseLeave(Sender: TObject);
begin
  InformationPanel.Color := SysColorZ;
end;

procedure TRaccoonForm1.InformationPanelMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: integer);
begin
  InformationPanel.Color := SysColorX;
   AppCloseZ.Visible:=true;
   AppCloseX.Visible:=false;
   FullFormZ.Visible:=true;
   FullFormX.Visible:=false;
   MinimazeZ.Visible:=true;
   MinimazeX.Visible:=false;
end;

procedure TRaccoonForm1.Panel2DblClick(Sender: TObject);
begin
  ActionX := False;
end;

procedure TRaccoonForm1.FullInformationCaptionPanelClick(Sender: TObject);
begin
  ActionX := False;
end;

procedure TRaccoonForm1.MessagesPanelClick(Sender: TObject);
begin
 ActionXNote := False;
end;

procedure TRaccoonForm1.CaptionFormDblClick(Sender: TObject);
begin
 Draging:=false;
 if LoadPanel.Visible <> true then
 begin
  if RaccoonForm1.WindowState=wsMaximized then
   RaccoonForm1.WindowState:=wsNormal
   else
   RaccoonForm1.WindowState:=wsMaximized;
 end;
  ActionXInfoBar:=false;
end;

procedure TRaccoonForm1.CaptionFormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 if RaccoonForm1.WindowState=wsMaximized then
 begin
  Exit;
 end
 else
 begin
 Draging := true;
 x0 := x;
 y0 := y;
 end;
end;

procedure TRaccoonForm1.PauseXMouseLeave(Sender: TObject);
begin
  if PauseX.Visible <> False then
  begin
    PauseX.Visible := False;
    PauseZ.Visible := True;
  end;
end;

procedure TRaccoonForm1.PauseXMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: integer);
begin
  PauseZ.Visible := False;
  PauseX.Visible := True;
end;

procedure TRaccoonForm1.PauseZClick(Sender: TObject);
begin
  Bass_Pause();
  PauseX.Visible := False;
  StartX.Visible := True;
end;

procedure TRaccoonForm1.PauseZMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: integer);
begin
  PauseZ.Visible := False;
  PauseX.Visible := True;
end;

procedure TRaccoonForm1.PlaylistDblClick(Sender: TObject);
begin
  filename := Playlist.Cells[2, n];
  BASS_Free();
  Engine(MainSender, filename);
  StartZ.Visible := False;
  PauseZ.Visible := True;
end;

procedure TRaccoonForm1.PlaylistMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: integer);
begin
   InformationPanel.Color := SysColorZ;
   AppCloseZ.Visible:=true;
   AppCloseX.Visible:=false;
   FullFormZ.Visible:=true;
   FullFormX.Visible:=false;
   MinimazeZ.Visible:=true;
   MinimazeX.Visible:=false;
     if BASS_ChannelIsActive(i) = BASS_ACTIVE_PLAYING then
  begin
    PauseZ.Visible := True;
    PauseX.Visible := False;
    StartZ.Visible := False;
    StartX.Visible := False;
  end;
  if BASS_ChannelIsActive(i) = BASS_ACTIVE_PAUSED then
  begin
    PauseZ.Visible := False;
    PauseX.Visible := False;
    StartZ.Visible := True;
    StartX.Visible := False;
  end;
  if BASS_ChannelIsActive(i) = BASS_ACTIVE_STOPPED then
  begin
    PauseZ.Visible := False;
    PauseX.Visible := False;
    StartZ.Visible := True;
    StartX.Visible := False;
  end;
end;

procedure TRaccoonForm1.PlaylistSelectCell(Sender: TObject;
  aCol, aRow: integer; var CanSelect: boolean);
begin
  n := aRow;
end;

procedure TRaccoonForm1.PrevioussXMouseLeave(Sender: TObject);
begin
  PrevioussX.Visible := False;
  PrevioussZ.Visible := True;
end;

procedure TRaccoonForm1.PrevioussXMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: integer);
begin
  PrevioussZ.Visible := False;
  PrevioussX.Visible := True;
end;

procedure TRaccoonForm1.PrevioussZClick(Sender: TObject);
begin
 for fc:=0 to Playlist.RowCount-1 do
  begin
  if Playlist.Cells[2,fc]=filename then
   begin
    Playlist.Row:=fc-1;
    Playlist.Row:=fc;
   end;
  end;
  StopZClick(MainSender);
  if Playlist.RowCount - 1= 0 then
  begin
    MessageDlgX1('Сообщение', 'Список воспроизведения пуст. Невозможен переход на предыдущую композицию.',MainSender);
    Exit;
  end;
  if n - 1 = 0 then
  begin
    filename := (Playlist.Cells[2, n]);
    n := n;
    Engine(MainSender, filename);
    StartZ.Visible := False;
    PauseZ.Visible := True;
  end;
  if n - 1 > 0 then
  begin
    filename := (Playlist.Cells[2, n - 1]);
    n := n - 1;
    Engine(MainSender, filename);
    StartZ.Visible := False;
    PauseZ.Visible := True;
  end;
end;

procedure TRaccoonForm1.PrevioussZMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: integer);
begin
  PrevioussZ.Visible := False;
  PrevioussX.Visible := True;
end;

procedure TRaccoonForm1.Random1MouseLeave(Sender: TObject);
begin
  RandomS.Visible := False;
  RandomZ.Visible := True;
end;

procedure TRaccoonForm1.Random1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: integer);
begin
  RandomZ.Visible := False;
  RandomS.Visible := True;
end;

procedure TRaccoonForm1.RandomZClick(Sender: TObject);
begin
  if RepeatS.Visible = True then
    RepeatZClick(MainSender);
  if randomX = 0 then
  begin
    randomX := 1;
    RandomS.Visible := True;
    RandomZ.Visible := False;
    RandomZ.Hint := 'Выключить случайное воспроизведение';
    RandomS.Hint := 'Выключить случайное воспроизведение';
  end
  else
  begin
    randomX := 0;
    RandomZ.Visible := True;
    RandomS.Visible := False;
    RandomZ.Hint := 'Включить случайное воспроизведение';
    RandomS.Hint := 'Включить случайное воспроизведение';
  end;
end;

procedure TRaccoonForm1.RandomZMouseLeave(Sender: TObject);
begin
  RandomS.Visible := False;
  RandomZ.Visible := True;
end;

procedure TRaccoonForm1.RandomZMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: integer);
begin
  RandomZ.Visible := False;
  RandomS.Visible := True;
end;

procedure TRaccoonForm1.RepeatZClick(Sender: TObject);
begin
  if RandomS.Visible = True then
    RandomZClick(MainSender);
  if repeatX = 0 then
  begin
    repeatX := 1;
    RepeatZ.Visible := False;
    RepeatS.Visible := True;
    RepeatZ.Hint := 'Выключить повтор';
    RepeatS.Hint := 'Выключить повтор';
  end
  else
  begin
    repeatX := 0;
    RepeatS.Visible := False;
    RepeatZ.Visible := True;
    RepeatZ.Hint := 'Включить повтор';
    RepeatS.Hint := 'Включить повтор';
  end;
end;

procedure TRaccoonForm1.Repeat1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: integer);
begin
  RepeatZ.Visible := False;
  RepeatS.Visible := True;
end;

procedure TRaccoonForm1.Repeat2MouseLeave(Sender: TObject);
begin
  RepeatS.Visible := False;
  RepeatZ.Visible := True;
end;

procedure TRaccoonForm1.Repeat2MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: integer);
begin
  RepeatZ.Visible := False;
  RepeatS.Visible := True;
end;

procedure TRaccoonForm1.RuntimeInterfaceTimer(Sender: TObject);
var
  df: integer;
begin
  Topos := BASS_ChannelBytes2Seconds(i, BASS_ChannelGetPosition(i, 0));
  Topos1 := Topos / (24 * 3600);
  Toleg := BASS_ChannelBytes2Seconds(i, BASS_ChannelGetLength(i, 0));
  Toleg1 := Toleg / (24 * 3600);
  FileStart.Caption := copy(FormatDateTime('hh:mm:ss', Topos1), 4, 5);
  FileEnd.Caption := copy(FormatDateTime('hh:mm:ss', Toleg1), 4, 5);
  if FindTime.Max>3600 then
  begin
   FileEnd.Caption :='>59:59';
  end;
  FindTime.Position := round(BASS_ChannelBytes2Seconds(i,
    BASS_ChannelGetPosition(i, 0)));
  Progress(FindTime.Max, FindTime.Position, true);
    if FindTime.Position>3599 then
    begin
   FileStart.Caption :='>59:59';
    end;
  BASS_ChannelGetAttribute(i, BASS_ATTRIB_VOL, Volume1);
  Volume.Position := round(Volume1 * 100);
  ProgressX(Volume.Max, Volume.Position, true);
  VolumeLabel.Caption := IntToStr(Volume.Position);
  if BASS_ChannelIsActive(i) <> BASS_ACTIVE_STOPPED then
    volS := Volume.Position;
  NameSongLabelX.Hint := NameSongLabelX.Caption;
  SingerLabelX.Hint := SingerLabelX.Caption;
  AlbumLabelX.Hint := AlbumLabelX.Caption;
  YearLabelX.Hint := YearLabelX.Caption;
  FileSizeLabelX.Hint := FileSizeLabelX.Caption;
  FileNameLabelX.Hint := FileNameLabelX.Caption;
  NameSongZ.Hint:=NameSongZ.Caption;
  SingerZ.Hint := SingerZ.Caption;
  AlbumZ.Hint := AlbumZ.Caption;
  MainPanel.Height:=RaccoonForm1.Height-30;
  MainPanel.Width:=RaccoonForm1.Width;
  CaptionForm.Width:=RaccoonForm1.Width;
  Raccoon.Left:=round(CaptionForm.Width/2-(Raccoon.Width/2));
  ControlFormPanel.Left:=CaptionForm.Width-95;
  BorderLyricsPanel.Top:=LyricsPanel.Height-2;
  BorderLyricsPanel.Width:=LyricsPanel.Width;
  BorderMessagesPanel.Top:=MessagesPanel.Height-2;
  BorderMessagesPanel.Width:=MessagesPanel.Width;
  BorderAboutBox.Top:=AboutBox.Height-2;
  BorderAboutBox.Width:=AboutBox.Width;
  BorderParametrs.Top:=Parametrs.Height-2;
  BorderParametrs.Width:=Parametrs.Width;
  Form1.Bitrate.Caption:=BitrateLabelX.Caption;
  Form1.Frequency.Caption:=FrequencyLabel.Caption;
  Form1.FileTime.Caption:=FileEnd.Caption;
  XFindTime.Width:=FindTime.Width;
  BackHelpXFindTime.Width:=XFindTime.Width;
  XVolume.Width:=Volume.Width;
  XProgress.Width:=RaccoonForm1.Width-10;
  BackHelpXVolume.Width:=XVolume.Width;
  BackHelpXVolume.Left:=Volume.Left+2;
  Form1.NameSong1.Left:=round(Form1.Width/2-300);
  Form1.Singer1.Left:=Form1.NameSong1.Left;
  Form1.Bitrate.Left:=Form1.Width-120;
  Form1.Frequency.Left:=Form1.Width-120;
  Form1.ControlPanel.Left:=Form1.Width-320;
  Playlist.Left:=5;
  SelectSchemeButtonX.Caption:=SelectSchemeButton.Caption;
  HintNullPlaylistPanel.Left:=round(MainPanel.Width/2-(HintNullPlaylistPanel.Width/2));
  HintNullPlaylistPanel.Top:=round(Playlist.Height/2);
  if (Playlist.RowCount - 1 = 0) then
  begin
  HintNullPlaylistPanel.Visible:=true;
  end
  else
  begin
  HintNullPlaylistPanel.Visible:=false;
  end;

  ProgressTrackEcho(100,TrackEcho.Position,true);
  ProgressTrackChorus(100,TrackChorus.Position,true);
  ProgressTrackFlanger(100,TrackFlanger.Position,true);
  ProgressTrackReverberation(100,TrackReverberation.Position,true);

  begin
if LoadPluginDSPWithApp.Checked=true then
  begin
LoadPluginDSPWithAppFlagOn.Visible:=true;
LoadPluginDSPWithAppFlagOff.Visible:=false;
  end
  else
  begin
LoadPluginDSPWithAppFlagOn.Visible:=false;
LoadPluginDSPWithAppFlagOff.Visible:=true;
  end;
if OnAlbum.Checked=true then
  begin
OnAlbumFlagOn.Visible:=true;
OnAlbumFlagOff.Visible:=false;
  end
  else
  begin
  OnAlbumFlagOn.Visible:=false;
OnAlbumFlagOff.Visible:=true;
  end;
if OnChorus.Checked=true then
  begin
OnChorusFlagOn.Visible:=true;
OnChorusFlagOff.Visible:=false;
  end
  else
  begin
  OnChorusFlagOn.Visible:=false;
  OnChorusFlagOff.Visible:=true;
  end;
if OnEcho.Checked=true then
  begin
OnEchoFlagOn.Visible:=true;
OnEchoFlagOff.Visible:=false;
  end
  else
  begin
OnEchoFlagOn.Visible:=false;
OnEchoFlagOff.Visible:=true;
  end;
if OnFlanger.Checked=true then
  begin
OnFlangerFlagOn.Visible:=true;
OnFlangerFlagOff.Visible:=false;
  end
  else
  begin
  OnFlangerFlagOn.Visible:=false;
  OnFlangerFlagOff.Visible:=true;
  end;
if OnFullTime.Checked=true then
  begin
OnFullTimeFlagOn.Visible:=true;
OnFullTimeFlagOff.Visible:=false;
  end
  else
  begin
OnFullTimeFlagOn.Visible:=false;
OnFullTimeFlagOff.Visible:=true;
  end;
if OnInfobar.Checked=true then
  begin
OnInfobarFlagOn.Visible:=true;
OnInfobarFlagOff.Visible:=false;
  end
  else
  begin
  OnInfobarFlagOn.Visible:=false;
  OnInfobarFlagOff.Visible:=true;
  end;
if OnLyricsShow.Checked=true then
  begin
OnLyricsShowFlagOn.Visible:=true;
OnLyricsShowFlagOff.Visible:=false;
  end
  else
  begin
OnLyricsShowFlagOn.Visible:=false;
OnLyricsShowFlagOff.Visible:=true;
  end;
if OnPluginsDSP.Checked=true then
  begin
OnPluginsDSPFlagOn.Visible:=true;
OnPluginsDSPFlagOff.Visible:=false;
  end
  else
  begin
  OnPluginsDSPFlagOn.Visible:=false;
OnPluginsDSPFlagOff.Visible:=true;
  end;
  if OnReverberation.Checked=true then
  begin
OnReverberationFlagOn.Visible:=true;
OnReverberationFlagOff.Visible:=false;
  end
  else
  begin
OnReverberationFlagOn.Visible:=false;
OnReverberationFlagOff.Visible:=true;
  end;
if OnSinger.Checked=true then
  begin
OnSingerFlagOn.Visible:=true;
OnSingerFlagOff.Visible:=false;
  end
  else
  begin
OnSingerFlagOn.Visible:=false;
OnSingerFlagOff.Visible:=true;
  end;
if OnSortPopular.Checked=true then
  begin
OnSortPopularFlagOn.Visible:=true;
OnSortPopularFlagOff.Visible:=false;
  end
  else
  begin
OnSortPopularFlagOn.Visible:=false;
OnSortPopularFlagOff.Visible:=true;
  end;
if OnYear.Checked=true then
  begin
OnYearFlagOn.Visible:=true;
OnYearFlagOff.Visible:=false;
  end
  else
  begin
OnYearFlagOn.Visible:=false;
OnYearFlagOff.Visible:=true;
  end;
  end;

  if OnLyricsShow.Checked<>true then
    begin
    ActionXLyrics:=false;
    end;
  LyricsPathName.Text:=SelectLyricsPath.FileName;
  begin
    Playlist.Columns.Items[0].Title.Caption := '№';
    Playlist.Columns.Items[1].Title.Caption := 'Исполнитель';
    Playlist.Columns.Items[2].Title.Caption := 'Полное имя файла';
    Playlist.Columns.Items[3].Title.Caption := 'Композиция';
    Playlist.Columns.Items[4].Title.Caption := 'Альбом';
    Playlist.Columns.Items[5].Title.Caption := 'Год';
    Playlist.Columns.Items[6].Title.Caption := 'Длительность';
    Playlist.Columns.Items[7].Title.Caption := 'Популярность';
  end;
  if Playlist.RowCount = 1 then
    DeleteButton.Enabled := False;
  if Playlist.RowCount > 1 then
    DeleteButton.Enabled := True;
  begin
    Playlist.Height := MainPanel.Height - 83;
    Playlist.Width := MainPanel.Width-10;
    EnginePanel.Width := MainPanel.Width;
    EnginePanel.Height := MainPanel.Height - 378;
    EnginePanel.Top := MainPanel.Height - 83;
    Volume.Left := MainPanel.Width - 93;
    VolumeLabel.Left := MainPanel.Width - 118;
    FileEnd.Left := MainPanel.Width - 198;
    MessagesPanel.Width:=MainPanel.Width-10;
    LyricsPanel.Width:=MainPanel.Width-10;
    MessagesPanelCaption.Left:=round(MainPanel.Width - (MessagesPanel.Width / 2) -(MessagesPanelCaption.Width / 2));
    MessagesPanelNote.Left:=round(MainPanel.Width - (MessagesPanel.Width / 2) -(MessagesPanelNote.Width / 2));
    LyricsLabel.Left:=round(MainPanel.Width - (LyricsPanel.Width / 2) -(LyricsLabel.Width / 2));
    FindTime.Width := EnginePanel.Width - 208 - FindTime.Left;
    ControlPanel.Left := round(FindTime.Width / 2) + FindTime.Left -
      round(ControlPanel.Width / 2);
      if LoadAnimation.Enabled <> True then
    begin
      LoadPanel.Height := MainPanel.Height;
      LoadPanel.Width := MainPanel.Width-10;
      LoadPanel.Top := 0;
      LoadPanel.Left := 5;
      RaccoonImageLoad.Left := round(MainPanel.Width - (LoadPanel.Width / 2) -
        (RaccoonImageLoad.Width / 2));
      RaccoonImageLoad.Top := round(MainPanel.Height - (LoadPanel.Height / 2) -
        (RaccoonImageLoad.Height / 2));
      RaccoonNameLabel.Left := round(MainPanel.Width - (LoadPanel.Width / 2) -
        (RaccoonNameLabel.Width / 2));
      RaccoonNameLabel.Top := round(MainPanel.Height - (LoadPanel.Height / 2) -
        (RaccoonNameLabel.Height / 2)+120);
      SettingsButtonZ.Left := MainPanel.Width - 54;
      AboutBoxButtonZ.Left := MainPanel.Width - 96;
      SettingsButtonX.Left := MainPanel.Width - 54;
      AboutBoxButtonX.Left := MainPanel.Width - 96;
      Parametrs.Width := MainPanel.Width-10;
      SettingsBox.Width:=Parametrs.Width-2;
      AboutBox.Width := MainPanel.Width-10;
    end;

      XEQ1.Hint := IntToStr(30-EQ1.Position);
      XEQ2.Hint := IntToStr(30-EQ2.Position);
      XEQ3.Hint := IntToStr(30-EQ3.Position);
      XEQ4.Hint := IntToStr(30-EQ4.Position);
      XEQ5.Hint := IntToStr(30-EQ5.Position);
      EQ1Value.Hint := IntToStr(30-EQ1.Position);
      EQ2Value.Hint := IntToStr(30-EQ2.Position);
      EQ3Value.Hint := IntToStr(30-EQ3.Position);
      EQ4Value.Hint := IntToStr(30-EQ4.Position);
      EQ5Value.Hint := IntToStr(30-EQ5.Position);

    if OnSinger.Checked <> True then
      Playlist.Columns.Items[1].Visible := False
    else
      Playlist.Columns.Items[1].Visible := True;

    if OnAlbum.Checked <> True then
      Playlist.Columns.Items[4].Visible := False
    else
      Playlist.Columns.Items[4].Visible := True;

    if OnYear.Checked <> True then
      Playlist.Columns.Items[5].Visible := False
    else
      Playlist.Columns.Items[5].Visible := True;

    if OnFullTime.Checked <> True then
      Playlist.Columns.Items[6].Visible := False
    else
      Playlist.Columns.Items[6].Visible := True;

      Playlist.Row := n;
  end;
  if BASS_ChannelIsActive(i) = BASS_ACTIVE_STOPPED then
    if RaccoonForm1.Caption = 'Raccoon' then
    begin
      Exit;
    end
    else
    begin
      for fc:=0 to Playlist.RowCount-1 do
      begin
        if Playlist.Cells[2,fc]=filename then
        begin
          Playlist.Row:=fc-1;
          Playlist.Row:=fc;
        end;
      end;
      StopZClick(MainSender);
      if (randomX = 1) and (repeatX = 0) then
      begin
        Randomize;
        n := Random(Playlist.RowCount);
        repeat
        begin
          Randomize;
          n := Random(Playlist.RowCount);
        end;
        until n <> 0;
        PlaylistDblClick(MainSender);
        ControlPanelMouseLeave(MainSender);
        Exit;
      end;
      if (repeatX = 1) and (randomX = 0) then
      begin
        StopZClick(MainSender);
        StartZClick(MainSender);
        ControlPanelMouseLeave(Sender);
        Exit;
      end;
      NextZClick(MainSender);
      ControlPanelMouseLeave(MainSender);
    end;
end;

procedure TRaccoonForm1.SettingsBoxMouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
 SettingsBox.VertScrollBar.Position:=0;
 if (SettingsBox.HorzScrollBar.Position+30) <= (SettingsBox.HorzScrollBar.Range) then
  SettingsBox.HorzScrollBar.Position:=SettingsBox.HorzScrollBar.Position+30
  else
  SettingsBox.HorzScrollBar.Position:=SettingsBox.HorzScrollBar.Range;
end;

procedure TRaccoonForm1.SettingsBoxMouseWheelUp(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  SettingsBox.VertScrollBar.Position:=0;
  if (SettingsBox.HorzScrollBar.Position-30) >= 0 then
   SettingsBox.HorzScrollBar.Position:=SettingsBox.HorzScrollBar.Position-30
  else
  SettingsBox.HorzScrollBar.Position:=0;
end;

procedure TRaccoonForm1.SettingsButtonXMouseLeave(Sender: TObject);
begin
  SettingsButtonX.Visible := False;
  SettingsButtonZ.Visible := True;
end;

procedure TRaccoonForm1.SettingsButtonXMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: integer);
begin
  SettingsButtonX.Visible := True;
  SettingsButtonZ.Visible := False;
end;

procedure TRaccoonForm1.SettingsButtonZClick(Sender: TObject);
begin
  ActionXAboutBox := False;
  if ActionXSetting = False then
    ActionXSetting := True
  else
    ActionXSetting := False;
end;

procedure TRaccoonForm1.SettingsButtonZMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: integer);
begin
  SettingsButtonZ.Visible := False;
  SettingsButtonX.Visible := True;
  AboutBoxButtonZ.Visible := True;
  AboutBoxButtonX.Visible := False;
end;

procedure TRaccoonForm1.SingerZMouseLeave(Sender: TObject);
begin
  SingerZ.Font.Color := clWhite;
end;

procedure TRaccoonForm1.SingerZMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: integer);
begin
  InformationPanel.Color := SysColorX;
end;

procedure TRaccoonForm1.StartXMouseLeave(Sender: TObject);
begin
  StartX.Visible := False;
  StartZ.Visible := True;
end;

procedure TRaccoonForm1.StartXMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: integer);
begin
  StartZ.Visible := False;
  StartX.Visible := True;
end;

procedure TRaccoonForm1.StartZClick(Sender: TObject);
begin
 if Playlist.RowCount=1 then
 AddButtonClick(MainSender);
  if Playlist.RowCount=1 then
   exit;
  if BASS_ChannelIsActive(i) = BASS_ACTIVE_STOPPED then
  begin
    filename := (Playlist.Cells[2, n]);
    BASS_Free();
    Engine(MainSender, filename);
    StartX.Visible := False;
    PauseX.Visible := True;
  end;
  if BASS_ChannelIsActive(i) = BASS_ACTIVE_PAUSED then
  begin
    BASS_Start();
    StartX.Visible := False;
    PauseX.Visible := True;
  end;
end;

procedure TRaccoonForm1.StartZMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: integer);
begin
  StartZ.Visible := False;
  StartX.Visible := True;
end;

procedure TRaccoonForm1.StopZClick(Sender: TObject);
begin
  RaccoonForm1.Caption := 'Raccoon';
  ImageAlbumX.Visible := False;
  BASS_Free();
  StopLyrics(MainSender);
  StartZ.Visible := True;
  PauseZ.Visible := False;
  NameSongZ.Caption := 'Неизвестное название';
  SingerZ.Caption := 'Неизвестный исполнитель';
  AlbumZ.Caption := 'Неизвестный альбом';
  NameSongLabelX.Caption := 'Неизвестно';
  SingerLabelX.Caption := 'Неизвестно';
  AlbumLabelX.Caption := 'Неизвестно';
  YearLabelX.Caption := 'Неизвестно';
  FileSizeLabelX.Caption := 'Неизвестно';
  FileNameLabelX.Caption := 'Неизвестно';
  BitrateLabelX.Caption := 'Неизвестно';
  FrequencyLabel.Caption := 'Неизвестно';
  Form1.Singer1.Caption:='Неизвестный исполнитель';
  Form1.NameSong1.Caption:='Неизвестное название';
  ActionXInfoBar:=false;
end;

end.
