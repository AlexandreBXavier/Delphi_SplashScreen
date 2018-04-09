program SampleSplash;

uses
     Vcl.Themes,
     Vcl.Styles,
     Vcl.Forms,
     Vcl.Dialogs,
     System.SysUtils,
     Winapi.Windows,
     untMain in 'untMain.pas' {frmMain} ,
     untSplash in 'untSplash.pas' {frmSplash};

{$R *.res}

var
     SystemName: PChar;

begin
     SystemName := 'Sample Splash Screen';
     CreateMutex(Nil, False, SystemName);

     // Verify that the executable has already been started ...
     if (GetLastError <> ERROR_ALREADY_EXISTS) then
     begin
          Application.Initialize;
          Application.MainFormOnTaskbar := True;
          TStyleManager.TrySetStyle('Windows10 Purple');
  Application.Title := 'Sample Splash Screen';
          Application.CreateForm(TfrmMain, frmMain);
          Application.CreateForm(TfrmSplash, frmSplash);
          Application.ProcessMessages;
          // Display Splash Screen...
          try
               frmSplash := TfrmSplash.Create(Application);
               //
               frmSplash.ShowModal;
          finally
               frmSplash.Free;
          end;
          //
          Application.Run;
     end
     else SendMessage(HWND_BROADCAST, RegisterWindowMessage(SystemName), 0, 0);
end.
