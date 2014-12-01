unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls;

type
  TForm5 = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    procedure Image5MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image5MouseEnter(Sender: TObject);
    procedure Image5MouseLeave(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image5MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

procedure TForm5.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
ReleaseCapture;
Form5.perform(WM_SysCommand,$F012,0);
end;

procedure TForm5.Image5Click(Sender: TObject);
begin
Form5.ModalResult := mrCancel;
end;

procedure TForm5.Image5MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
Image5.Picture.LoadFromFile('Images/atcelt_pressed.bmp');
end;

procedure TForm5.Image5MouseEnter(Sender: TObject);
begin
Image5.Picture.LoadFromFile('Images/atcelt_hover.bmp');
end;

procedure TForm5.Image5MouseLeave(Sender: TObject);
begin
Image5.Picture.LoadFromFile('Images/atcelt_normal.bmp');
end;

procedure TForm5.Image5MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
Image5.Picture.LoadFromFile('Images/atcelt_hover.bmp');
end;

end.
