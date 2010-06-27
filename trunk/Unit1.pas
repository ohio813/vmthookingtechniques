unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,DXInput, StdCtrls,DirectX, ExtCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure Panel1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Panel2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  lplpDirectInputDevice:IDirectInputDeviceA;

function DirectInputCreateA(hinst: THandle; dwVersion: DWORD;
      out ppDI: IDirectInputA;
      punkOuter: IUnknown) : HResult;stdcall;external 'DInput.dll' ;

implementation

{$R *.dfm}

procedure TForm1.Panel2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
  var
  wsp:TDIMOUSESTATE;
  result:hresult;
  p:tpoint;
begin
result:=lplpDirectInputDevice.GetDeviceState(sizeof(wsp),@wsp);
if result=DI_OK then
label1.Caption:=(inttostr(wsp.lX)+' '+inttostr(wsp.lY))
else
showmessage(DIErrorString(result));
getcursorpos(p);
label2.Caption:=(inttostr(p.X)+' '+inttostr(p.Y));
end;


procedure TForm1.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
  var
  wsp:TDIMOUSESTATE;
  result:hresult;
  p:tpoint;
begin
result:=lplpDirectInputDevice.GetDeviceState(sizeof(wsp),@wsp);
if result=DI_OK then
label1.Caption:=(inttostr(wsp.lX)+' '+inttostr(wsp.lY))
else
showmessage(DIErrorString(result));
getcursorpos(p);
label2.Caption:=(inttostr(p.X)+' '+inttostr(p.Y));
end;

procedure TForm1.Panel1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
  var
  wsp:TDIMOUSESTATE;
  result:hresult;
  p:tpoint;
begin
result:=lplpDirectInputDevice.GetDeviceState(sizeof(wsp),@wsp);
if result=DI_OK then
label1.Caption:=(inttostr(wsp.lX)+' '+inttostr(wsp.lY))
else
showmessage(DIErrorString(result));
getcursorpos(p);
label2.Caption:=(inttostr(p.X)+' '+inttostr(p.Y));
end;

procedure TForm1.FormCreate(Sender: TObject);
var
mouse:IDirectInput;
dwVersion: DWORD;
punkOuter: IUnknown;
result:Hresult;

begin
dwVersion:=DIRECTINPUT_VERSION;
punkouter:=nil;
sleep(500);
result:=DirectInputCreateA(hinstance,dwVersion,mouse,punkOuter);
if result=DI_OK then
  showmessage('DirectInputCreateA works fine.')
else
begin
  showmessage(DIErrorString(result));
  exit;
end;

result:=mouse.CreateDevice(GUID_SysMouse,lplpDirectInputDevice,nil);
if result=DI_OK then
  showmessage('CreateDevice works fine.')
else
begin
  showmessage(DIErrorString(result));
  exit;
end;

lplpDirectInputDevice.SetDataFormat(c_dfDIMouse );
lplpDirectInputDevice.Acquire();

end;


end.
