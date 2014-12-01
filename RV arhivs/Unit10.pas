unit Unit10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls;

type
  TForm10 = class(TForm)
    Image1: TImage;
    Image2: TImage;
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image2MouseLeave(Sender: TObject);
    procedure Image2MouseEnter(Sender: TObject);
    procedure Image2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;

implementation

{$R *.dfm}

procedure TForm10.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
ReleaseCapture;
Form10.perform(WM_SysCommand,$F012,0);
end;

procedure TForm10.Image2Click(Sender: TObject);
begin
Form10.ModalResult := mrCancel;
end;

procedure TForm10.Image2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
Image2.Picture.LoadFromFile('Images/aizvert_pressed.bmp');
end;

procedure TForm10.Image2MouseEnter(Sender: TObject);
begin
Image2.Picture.LoadFromFile('Images/aizvert_hover.bmp');
end;

procedure TForm10.Image2MouseLeave(Sender: TObject);
begin
Image2.Picture.LoadFromFile('Images/aizvert_normal.bmp');
end;

procedure TForm10.Image2MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
Image2.Picture.LoadFromFile('Images/aizvert_hover.bmp');
end;

end.
