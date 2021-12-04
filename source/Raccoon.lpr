program Raccoon;

{$mode objfpc}{$H+}

uses {$IFDEF UNIX} {$IFDEF UseCThreads}
  cthreads, {$ENDIF} {$ENDIF}
  Interfaces,
  Forms, dbflaz,
  datetimectrls,
  RaccoonUnit,
  unique_utils,
  Unit1;

{$R *.res}
var
  RaccoonX: TUniqueInstance;
begin

  RaccoonX := TUniqueInstance.Create
  ('Raccoon_v1.3.8_build_450.Program_Win32.KMaster');
  if RaccoonX.IsRunInstance then
  begin
    RaccoonX.SendString(ParamStr(1));
    RaccoonX.Free;
    Halt(1);
  end
  else
  begin
    RaccoonX.RunListen;
    RequireDerivedFormResource := True;
    Application.Initialize;
    Application.MainFormOnTaskBar:=true;
    Application.CreateForm(TRaccoonForm1, RaccoonForm1);
    Application.Run;
end;
end.


