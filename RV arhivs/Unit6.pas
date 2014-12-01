unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls;

type
  TForm6 = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    procedure Image3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image3MouseEnter(Sender: TObject);
    procedure Image3MouseLeave(Sender: TObject);
    procedure Image3MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image2MouseLeave(Sender: TObject);
    procedure Image2MouseEnter(Sender: TObject);
    procedure Image2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image3Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

uses Unit2, Unit1;

{$R *.dfm}

procedure TForm6.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
ReleaseCapture;
Form6.perform(WM_SysCommand,$F012,0);
end;

procedure TForm6.Image2Click(Sender: TObject);
begin
Form6.ModalResult := mrCancel;
end;

procedure TForm6.Image2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
Image2.Picture.LoadFromFile('Images/ne_pressed.bmp');
end;

procedure TForm6.Image2MouseEnter(Sender: TObject);
begin
Image2.Picture.LoadFromFile('Images/ne_hover.bmp');
end;

procedure TForm6.Image2MouseLeave(Sender: TObject);
begin
Image2.Picture.LoadFromFile('Images/ne_normal.bmp');
end;

procedure TForm6.Image2MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
Image2.Picture.LoadFromFile('Images/ne_hover.bmp');
end;

procedure TForm6.Image3Click(Sender: TObject);
begin
Form2.Hide;
Form1.Show;
Form6.ModalResult := mrCancel;
end;

procedure TForm6.Image3MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
Image3.Picture.LoadFromFile('Images/ja_pressed.bmp');
end;

procedure TForm6.Image3MouseEnter(Sender: TObject);
begin
Image3.Picture.LoadFromFile('Images/ja_hover.bmp');
end;

procedure TForm6.Image3MouseLeave(Sender: TObject);
begin
Image3.Picture.LoadFromFile('Images/ja_normal.bmp');
end;

procedure TForm6.Image3MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
Image3.Picture.LoadFromFile('Images/ja_hover.bmp');
end;

end.
