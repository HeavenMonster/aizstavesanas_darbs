unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, Calendar, ExtCtrls, DBGrids, ComCtrls, pngimage,
  Buttons, Menus, jpeg, MPlayer, DB, ADODB;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Edit2: TEdit;
    Edit1: TEdit;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    ADOConnection1: TADOConnection;
    DBGrid1: TDBGrid;
    procedure Image4Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image2MouseEnter(Sender: TObject);
    procedure Image2MouseLeave(Sender: TObject);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit10;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
ADOQuery1.Active := false;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
ADOQuery1.Active := true;
end;

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
  begin
  ADOQuery1.Active := false;
  ADOQuery1.Active := true;
  if (Edit1.Text = DBGrid1.Fields[0].Value) and (Edit2.Text = DBGrid1.Fields[1].Value) then
  begin
  Form1.Hide;
  Form2.Show;
  end else
  begin
  Beep;
  Form10.ShowModal;
  end;
end;
end;

procedure TForm1.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
begin
ADOQuery1.Active := false;
ADOQuery1.Active := true;
if (Edit1.Text = DBGrid1.Fields[0].Value) and (Edit2.Text = DBGrid1.Fields[1].Value) then
begin
Form1.Hide;
Form2.Show;
end else
begin
Beep;
Form10.ShowModal;
end;
end;
end;

procedure TForm1.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
ReleaseCapture;
Form1.perform(WM_SysCommand,$F012,0);
end;

procedure TForm1.Image2Click(Sender: TObject);
begin
ADOQuery1.Active := false;
ADOQuery1.Active := true;
if (Edit1.Text = DBGrid1.Fields[0].Value) and (Edit2.Text = DBGrid1.Fields[1].Value) then
begin
Form1.Hide;
Form2.Show;
end else
begin
Beep;
Form10.ShowModal;
end;
end;

procedure TForm1.Image2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
Image2.Picture.LoadFromFile('Images/ieiet_pressed.bmp');
end;

procedure TForm1.Image2MouseEnter(Sender: TObject);
begin
Image2.Picture.LoadFromFile('Images/ieiet_hover.bmp');
end;

procedure TForm1.Image2MouseLeave(Sender: TObject);
begin
Image2.Picture.LoadFromFile('Images/ieiet_normal.bmp');
end;

procedure TForm1.Image2MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
Image2.Picture.LoadFromFile('Images/ieiet_hover.bmp');
end;

procedure TForm1.Image3Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure TForm1.Image4Click(Sender: TObject);
begin
Application.Minimize;
end;

end.
