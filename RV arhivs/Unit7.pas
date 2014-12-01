unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, DBCtrls, Mask, ExtCtrls;

type
  TForm7 = class(TForm)
    Image1: TImage;
    Memo1: TMemo;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBComboBox2: TDBComboBox;
    DateTimePicker1: TDateTimePicker;
    Image2: TImage;
    Image3: TImage;
    DBComboBox1: TDBComboBox;
    procedure Image3MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image3MouseLeave(Sender: TObject);
    procedure Image3MouseEnter(Sender: TObject);
    procedure Image3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image2MouseLeave(Sender: TObject);
    procedure Image2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image2MouseEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure FormHide(Sender: TObject);
    procedure DBComboBox2Change(Sender: TObject);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Memo1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm7.DBComboBox2Change(Sender: TObject);
begin
if DBComboBox2.Text = 'LV' then
begin
DBComboBox1.Clear;
DBComboBox1.Items.Add('Īsziņas');
DBComboBox1.Items.Add('Baznīсas ziņas');
DBComboBox1.Items.Add('Hallo "RV" klausās');
DBComboBox1.Items.Add('Rēzeknes novadā un novada domē');
DBComboBox1.Items.Add('Viļānu novadā un novada domē');
DBComboBox1.Items.Add('Iepirkumi, konkursi');
DBComboBox1.Items.Add('"Rēzeknes Vēstīm" - 70');
DBComboBox1.Items.Add('Latvijā un pasaulē');
DBComboBox1.Items.Add('Pēc lasītāju lūguma');
DBComboBox1.Items.Add('"RV" pasta kastē');
DBComboBox1.Items.Add('Jautājat? Atbildam!');
DBComboBox1.Items.Add('Reģīnas kundzes rubrika');
DBComboBox1.Items.Add('Kultūra');
DBComboBox1.Items.Add('Izglītība');
DBComboBox1.Items.Add('Sports');
DBComboBox1.Items.Add('Afiša');
DBComboBox1.Items.Add('Rēzeknes augstskolā');
DBComboBox1.Items.Add('Lūgums palīdzēt');
end else
begin
DBComboBox1.Clear;
DBComboBox1.Items.Add('Новости : коротко');
DBComboBox1.Items.Add('Новости церкви');
DBComboBox1.Items.Add('Алло "РВ" слушают');
DBComboBox1.Items.Add('Резекненском крае и краевой думе');
DBComboBox1.Items.Add('Вилянском крае и краевой думе');
DBComboBox1.Items.Add('Закупки, конкурсы');
DBComboBox1.Items.Add('"Резекненскем вестям" - 70');
DBComboBox1.Items.Add('В Латвии и мире');
DBComboBox1.Items.Add('Спросите? Ответим!');
DBComboBox1.Items.Add('По просьбе читателей');
DBComboBox1.Items.Add('"РВ" почтовым ящике');
DBComboBox1.Items.Add('Рубрики Регины');
DBComboBox1.Items.Add('Культура');
DBComboBox1.Items.Add('Образование');
DBComboBox1.Items.Add('Спорт');
DBComboBox1.Items.Add('Афиша');
DBComboBox1.Items.Add('В Резекненской высшей школе');
DBComboBox1.Items.Add('Просим о помощи');
end;
end;

procedure TForm7.FormHide(Sender: TObject);
begin
DBEdit1.Enabled := false;
DBEdit2.Enabled := false;
DBComboBox1.Enabled := false;
DBComboBox2.Enabled := false;
DateTimePicker1.Enabled := false;
Image2.Enabled := true;
Image2.Picture.LoadFromFile('Images/rediget_normal.bmp');
end;

procedure TForm7.FormShow(Sender: TObject);
begin
Memo1.Lines.LoadFromFile(Form2.s1);
if DBComboBox2.Text = 'LV' then
begin
DBComboBox1.Clear;
DBComboBox1.Items.Add('Īsziņas');
DBComboBox1.Items.Add('Baznīсas ziņas');
DBComboBox1.Items.Add('Hallo "RV" klausās');
DBComboBox1.Items.Add('Rēzeknes novadā un novada domē');
DBComboBox1.Items.Add('Viļānu novadā un novada domē');
DBComboBox1.Items.Add('Iepirkumi, konkursi');
DBComboBox1.Items.Add('"Rēzeknes Vēstīm" - 70');
DBComboBox1.Items.Add('Latvijā un pasaulē');
DBComboBox1.Items.Add('Pēc lasītāju lūguma');
DBComboBox1.Items.Add('"RV" pasta kastē');
DBComboBox1.Items.Add('Jautājat? Atbildam!');
DBComboBox1.Items.Add('Reģīnas kundzes rubrika');
DBComboBox1.Items.Add('Kultūra');
DBComboBox1.Items.Add('Izglītība');
DBComboBox1.Items.Add('Sports');
DBComboBox1.Items.Add('Afiša');
DBComboBox1.Items.Add('Rēzeknes augstskolā');
DBComboBox1.Items.Add('Lūgums palīdzēt');
end else
begin
DBComboBox1.Clear;
DBComboBox1.Items.Add('Новости : коротко');
DBComboBox1.Items.Add('Новости церкви');
DBComboBox1.Items.Add('Алло "РВ" слушают');
DBComboBox1.Items.Add('Резекненском крае и краевой думе');
DBComboBox1.Items.Add('Вилянском крае и краевой думе');
DBComboBox1.Items.Add('Закупки, конкурсы');
DBComboBox1.Items.Add('"Резекненскем вестям" - 70');
DBComboBox1.Items.Add('В Латвии и мире');
DBComboBox1.Items.Add('Спросите? Ответим!');
DBComboBox1.Items.Add('По просьбе читателей');
DBComboBox1.Items.Add('"РВ" почтовым ящике');
DBComboBox1.Items.Add('Рубрики Регины');
DBComboBox1.Items.Add('Культура');
DBComboBox1.Items.Add('Образование');
DBComboBox1.Items.Add('Спорт');
DBComboBox1.Items.Add('Афиша');
DBComboBox1.Items.Add('В Резекненской высшей школе');
DBComboBox1.Items.Add('Просим о помощи');
end;
DBComboBox1.ItemIndex :=
DBComboBox1.Items.IndexOf(Form2.ADOQuery1.FieldByName('Rubrika').AsString);
end;

procedure TForm7.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
ReleaseCapture;
Form7.perform(WM_SysCommand,$F012,0);
end;

procedure TForm7.Image2Click(Sender: TObject);
begin
if DBComboBox2.Text = 'LV' then
begin
DBComboBox1.Clear;
DBComboBox1.Items.Add('Īsziņas');
DBComboBox1.Items.Add('Baznīсas ziņas');
DBComboBox1.Items.Add('Hallo "RV" klausās');
DBComboBox1.Items.Add('Rēzeknes novadā un novada domē');
DBComboBox1.Items.Add('Viļānu novadā un novada domē');
DBComboBox1.Items.Add('Iepirkumi, konkursi');
DBComboBox1.Items.Add('"Rēzeknes Vēstīm" - 70');
DBComboBox1.Items.Add('Latvijā un pasaulē');
DBComboBox1.Items.Add('Pēc lasītāju lūguma');
DBComboBox1.Items.Add('"RV" pasta kastē');
DBComboBox1.Items.Add('Jautājat? Atbildam!');
DBComboBox1.Items.Add('Reģīnas kundzes rubrika');
DBComboBox1.Items.Add('Kultūra');
DBComboBox1.Items.Add('Izglītība');
DBComboBox1.Items.Add('Sports');
DBComboBox1.Items.Add('Afiša');
DBComboBox1.Items.Add('Rēzeknes augstskolā');
DBComboBox1.Items.Add('Lūgums palīdzēt');
end else
begin
DBComboBox1.Clear;
DBComboBox1.Items.Add('Новости : коротко');
DBComboBox1.Items.Add('Новости церкви');
DBComboBox1.Items.Add('Алло "РВ" слушают');
DBComboBox1.Items.Add('Резекненском крае и краевой думе');
DBComboBox1.Items.Add('Вилянском крае и краевой думе');
DBComboBox1.Items.Add('Закупки, конкурсы');
DBComboBox1.Items.Add('"Резекненскем вестям" - 70');
DBComboBox1.Items.Add('В Латвии и мире');
DBComboBox1.Items.Add('Спросите? Ответим!');
DBComboBox1.Items.Add('По просьбе читателей');
DBComboBox1.Items.Add('"РВ" почтовым ящике');
DBComboBox1.Items.Add('Рубрики Регины');
DBComboBox1.Items.Add('Культура');
DBComboBox1.Items.Add('Образование');
DBComboBox1.Items.Add('Спорт');
DBComboBox1.Items.Add('Афиша');
DBComboBox1.Items.Add('В Резекненской высшей школе');
DBComboBox1.Items.Add('Просим о помощи');
end;

DBEdit1.Enabled := true;
DBEdit2.Enabled := true;
DBComboBox1.Enabled := true;
DBComboBox2.Enabled := true;
DateTimePicker1.Enabled := true;
DateTimePicker1.Date := StrToDate(Form2.DBGrid1.Fields[4].AsString);
Image2.Enabled := false;
Image2.Picture.LoadFromFile('Images/rediget_inactive.bmp');
DBComboBox1.ItemIndex :=
DBComboBox1.Items.IndexOf(Form2.ADOQuery1.FieldByName('Rubrika').AsString);
end;

procedure TForm7.Image2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
if Image2.Enabled then
Image2.Picture.LoadFromFile('Images/rediget_pressed.bmp');
end;

procedure TForm7.Image2MouseEnter(Sender: TObject);
begin
if Image2.Enabled then
Image2.Picture.LoadFromFile('Images/rediget_hover.bmp');
end;

procedure TForm7.Image2MouseLeave(Sender: TObject);
begin
if Image2.Enabled then
Image2.Picture.LoadFromFile('Images/rediget_normal.bmp');
end;

procedure TForm7.Image2MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
if Image2.Enabled then
Image2.Picture.LoadFromFile('Images/rediget_hover.bmp');
end;

procedure TForm7.Image3Click(Sender: TObject);
begin
Form7.ModalResult := mrCancel;
end;

procedure TForm7.Image3MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
Image3.Picture.LoadFromFile('Images/aizvert_pressed.bmp');
end;

procedure TForm7.Image3MouseEnter(Sender: TObject);
begin
Image3.Picture.LoadFromFile('Images/aizvert_hover.bmp');
end;

procedure TForm7.Image3MouseLeave(Sender: TObject);
begin
Image3.Picture.LoadFromFile('Images/aizvert_normal.bmp');
end;

procedure TForm7.Image3MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
Image3.Picture.LoadFromFile('Images/aizvert_hover.bmp');
end;

procedure TForm7.Memo1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
HideCaret(Memo1.Handle);
end;

end.
