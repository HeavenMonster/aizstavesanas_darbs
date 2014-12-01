unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls;

type
  TForm9 = class(TForm)
    Image1: TImage;
    Image2: TImage;
    procedure Image2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image2MouseLeave(Sender: TObject);
    procedure Image2MouseEnter(Sender: TObject);
    procedure Image2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

{$R *.dfm}

procedure TForm9.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
ReleaseCapture;
Form9.perform(WM_SysCommand,$F012,0);
end;

procedure TForm9.Image2Click(Sender: TObject);
begin
Form9.ModalResult := mrCancel;
end;

procedure TForm9.Image2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
Image2.Picture.LoadFromFile('Images/aizvert_pressed.bmp');
end;

procedure TForm9.Image2MouseEnter(Sender: TObject);
begin
Image2.Picture.LoadFromFile('Images/aizvert_hover.bmp');
end;

procedure TForm9.Image2MouseLeave(Sender: TObject);
begin
Image2.Picture.LoadFromFile('Images/aizvert_normal.bmp');
end;

procedure TForm9.Image2MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
Image2.Picture.LoadFromFile('Images/aizvert_hover.bmp');
end;

end.
