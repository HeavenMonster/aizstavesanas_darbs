unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls;

type
  TForm8 = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    procedure Image2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image2MouseEnter(Sender: TObject);
    procedure Image2MouseLeave(Sender: TObject);
    procedure Image2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image3MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image3MouseLeave(Sender: TObject);
    procedure Image3MouseEnter(Sender: TObject);
    procedure Image3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm8.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
ReleaseCapture;
Form8.perform(WM_SysCommand,$F012,0);
end;

procedure TForm8.Image2Click(Sender: TObject);
begin
Form8.ModalResult := mrCancel;
end;

procedure TForm8.Image2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
Image2.Picture.LoadFromFile('Images/ne_pressed.bmp');
end;

procedure TForm8.Image2MouseEnter(Sender: TObject);
begin
Image2.Picture.LoadFromFile('Images/ne_hover.bmp');
end;

procedure TForm8.Image2MouseLeave(Sender: TObject);
begin
Image2.Picture.LoadFromFile('Images/ne_normal.bmp');
end;

procedure TForm8.Image2MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
Image2.Picture.LoadFromFile('Images/ne_hover.bmp');
end;

procedure TForm8.Image3Click(Sender: TObject);
begin
DeleteFile(Form2.DBGrid1.Fields[5].AsString);
Form2.DBGrid1.DataSource.DataSet.Delete;
Form8.ModalResult := mrCancel;
end;

procedure TForm8.Image3MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
Image3.Picture.LoadFromFile('Images/ja_pressed.bmp');
end;

procedure TForm8.Image3MouseEnter(Sender: TObject);
begin
Image3.Picture.LoadFromFile('Images/ja_hover.bmp');
end;

procedure TForm8.Image3MouseLeave(Sender: TObject);
begin
Image3.Picture.LoadFromFile('Images/ja_normal.bmp');
end;

procedure TForm8.Image3MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
Image3.Picture.LoadFromFile('Images/ja_hover.bmp');
end;

end.
