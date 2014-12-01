unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, DSCommonServer, DSServer, DB, ADODB,
  GIFImg;

type
  TForm4 = class(TForm)
    OpenDialog1: TOpenDialog;
    Image1: TImage;
    Edit1: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    ComboBox1: TComboBox;
    DateTimePicker1: TDateTimePicker;
    ComboBox2: TComboBox;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    ADOConnection1: TADOConnection;
    procedure Image3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image3MouseEnter(Sender: TObject);
    procedure Image3MouseLeave(Sender: TObject);
    procedure Image4MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image4MouseEnter(Sender: TObject);
    procedure Image4MouseLeave(Sender: TObject);
    procedure Image2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image2MouseEnter(Sender: TObject);
    procedure Image2MouseLeave(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image3MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image4MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ComboBox2Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses Unit2, Unit10;

{$R *.dfm}

procedure TForm4.ComboBox2Change(Sender: TObject);
begin
if ComboBox2.ItemIndex = 0 then
begin
ComboBox1.Clear;
ComboBox1.Items.Add('Īsziņas');
ComboBox1.Items.Add('Baznīсas ziņas');
ComboBox1.Items.Add('Hallo "RV" klausās');
ComboBox1.Items.Add('Rēzeknes novadā un novada domē');
ComboBox1.Items.Add('Viļānu novadā un novada domē');
ComboBox1.Items.Add('Iepirkumi, konkursi');
ComboBox1.Items.Add('"Rēzeknes Vēstīm" - 70');
ComboBox1.Items.Add('Latvijā un pasaulē');
ComboBox1.Items.Add('Pēc lasītāju lūguma');
ComboBox1.Items.Add('"RV" pasta kastē');
ComboBox1.Items.Add('Jautājat? Atbildam!');
ComboBox1.Items.Add('Reģīnas kundzes rubrika');
ComboBox1.Items.Add('Kultūra');
ComboBox1.Items.Add('Izglītība');
ComboBox1.Items.Add('Sports');
ComboBox1.Items.Add('Afiša');
ComboBox1.Items.Add('Rēzeknes augstskolā');
ComboBox1.Items.Add('Lūgums palīdzēt');
ComboBox1.ItemIndex := 0;
end else
ComboBox1.Clear;
ComboBox1.Items.Add('Новости : коротко');
ComboBox1.Items.Add('Новости церкви');
ComboBox1.Items.Add('Алло "РВ" слушают');
ComboBox1.Items.Add('Резекненском крае и краевой думе');
ComboBox1.Items.Add('Вилянском крае и краевой думе');
ComboBox1.Items.Add('Закупки, конкурсы');
ComboBox1.Items.Add('"Резекненскем вестям" - 70');
ComboBox1.Items.Add('В Латвии и мире');
ComboBox1.Items.Add('Спросите? Ответим!');
ComboBox1.Items.Add('По просьбе читателей');
ComboBox1.Items.Add('"РВ" почтовым ящике');
ComboBox1.Items.Add('Рубрики Регины');
ComboBox1.Items.Add('Культура');
ComboBox1.Items.Add('Образование');
ComboBox1.Items.Add('Спорт');
ComboBox1.Items.Add('Афиша');
ComboBox1.Items.Add('В Резекненской высшей школе');
ComboBox1.Items.Add('Просим о помощи');
ComboBox1.ItemIndex := 0;
end;

procedure TForm4.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
ReleaseCapture;
Form4.perform(WM_SysCommand,$F012,0);
end;

procedure TForm4.Image2Click(Sender: TObject);
begin
openDialog1.Execute();
openDialog1.InitialDir := GetCurrentDir;
Edit4.Text := openDialog1.FileName;
end;

procedure TForm4.Image2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
Image2.Picture.LoadFromFile('Images/meklet_pressed.bmp');
end;

procedure TForm4.Image2MouseEnter(Sender: TObject);
begin
Image2.Picture.LoadFromFile('Images/meklet_hover.bmp');
end;

procedure TForm4.Image2MouseLeave(Sender: TObject);
begin
Image2.Picture.LoadFromFile('Images/meklet_normal.bmp');
end;

procedure TForm4.Image2MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
Image2.Picture.LoadFromFile('Images/meklet_hover.bmp');
end;

procedure TForm4.Image3Click(Sender: TObject);
begin
Form4.ModalResult := mrCancel;
end;

procedure TForm4.Image3MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
Image3.Picture.LoadFromFile('Images/atcelt_pressed.bmp');
end;

procedure TForm4.Image3MouseEnter(Sender: TObject);
begin
Image3.Picture.LoadFromFile('Images/atcelt_hover.bmp');
end;

procedure TForm4.Image3MouseLeave(Sender: TObject);
begin
Image3.Picture.LoadFromFile('Images/atcelt_normal.bmp');
end;

procedure TForm4.Image3MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
Image3.Picture.LoadFromFile('Images/atcelt_hover.bmp');
end;

procedure TForm4.Image4Click(Sender: TObject);
var
doc:string;
begin
randomize;
if (Edit1.Text <> '') and (Edit3.Text <> '') and (Edit4.Text <> '') then
begin
doc := 'Raksti_' + ComboBox2.Text + '/' + FormatDateTime('yyyy',DateTimePicker1.Date) + '/f' + IntToStr(random(100000)) + '.txt';
with TStringList.Create do
  try
    LoadFromFile(Edit4.Text);
    SaveToFile(doc);
  finally
    Free;
end;
ADOQuery1.Active := false;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('INSERT INTO RAKSTI (Virsraksts, Rubrika, Autors, Datums, Dokuments, Valoda) VALUES (''' + Edit1.Text + ''', ''' + ComboBox1.Text + ''', ''' + Edit3.Text + ''', ''' + FormatDateTime('yyyy.mm.dd.',DateTimePicker1.Date) + ''', ''' + doc + ''', ''' + ComboBox2.Text + ''')');
ADOQuery1.ExecSQL;
Form4.ModalResult := mrCancel;
Edit1.Text := '';
Edit3.Text := '';
Edit4.Text := '';
Combobox1.ItemIndex := 0;
Combobox2.ItemIndex := 0;
end else
begin
Beep;
Form10.ShowModal;
end;
end;

procedure TForm4.Image4MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
Image4.Picture.LoadFromFile('Images/apstiprinat_pressed.bmp');
end;

procedure TForm4.Image4MouseEnter(Sender: TObject);
begin
Image4.Picture.LoadFromFile('Images/apstiprinat_hover.bmp');
end;

procedure TForm4.Image4MouseLeave(Sender: TObject);
begin
Image4.Picture.LoadFromFile('Images/apstiprinat_normal.bmp');
end;

procedure TForm4.Image4MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
Image4.Picture.LoadFromFile('Images/apstiprinat_hover.bmp');
end;

end.
