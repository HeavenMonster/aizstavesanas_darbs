unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, pngimage, DB, ADODB;

type
  TForm3 = class(TForm)
    Image1: TImage;
    Edit1: TEdit;
    Edit2: TEdit;
    Image2: TImage;
    Image3: TImage;
    Label1: TLabel;
    Label2: TLabel;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    procedure Image3Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image2MouseEnter(Sender: TObject);
    procedure Image3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image3MouseEnter(Sender: TObject);
    procedure Image3MouseLeave(Sender: TObject);
    procedure Image2MouseLeave(Sender: TObject);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image3MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses Unit10, Unit1;

{$R *.dfm}

procedure TForm3.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
ReleaseCapture;
Form3.perform(WM_SysCommand,$F012,0);
end;

procedure TForm3.Image2Click(Sender: TObject);
begin
if (Edit1.Text <> '') and (Edit2.Text <> '') then
begin
  if Edit1.Text = Edit2.Text then
  begin
  ADOQuery1.Active := false;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('UPDATE LIETOTAJI SET Parole=''' + Edit1.Text + ''' WHERE (Lietotajvards=''admin'')');
  ADOQuery1.ExecSQL;

  Form3.ModalResult := mrCancel;
  Edit1.Text := '';
  Edit2.Text := '';
  end;
end else
  begin
  Beep;
  Form10.ShowModal;
  end;
end;

procedure TForm3.Image2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
Image2.Picture.LoadFromFile('Images/apstiprinat_pressed.bmp');
end;

procedure TForm3.Image2MouseEnter(Sender: TObject);
begin
Image2.Picture.LoadFromFile('Images/apstiprinat_hover.bmp');
end;

procedure TForm3.Image2MouseLeave(Sender: TObject);
begin
Image2.Picture.LoadFromFile('Images/apstiprinat_normal.bmp');
end;

procedure TForm3.Image2MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
Image2.Picture.LoadFromFile('Images/apstiprinat_hover.bmp');
end;

procedure TForm3.Image3Click(Sender: TObject);
begin
Form3.ModalResult := mrCancel;
end;

procedure TForm3.Image3MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
Image3.Picture.LoadFromFile('Images/atcelt_pressed.bmp');
end;

procedure TForm3.Image3MouseEnter(Sender: TObject);
begin
Image3.Picture.LoadFromFile('Images/atcelt_hover.bmp');
end;

procedure TForm3.Image3MouseLeave(Sender: TObject);
begin
Image3.Picture.LoadFromFile('Images/atcelt_normal.bmp');
end;

procedure TForm3.Image3MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
Image3.Picture.LoadFromFile('Images/atcelt_hover.bmp');
end;

end.
