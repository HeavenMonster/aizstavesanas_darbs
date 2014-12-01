unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, pngimage, Menus, StdCtrls, AppEvnts, ComCtrls, ImgList,
  Grids, DB, ADODB, DBGrids, Mask, DBCtrls;

type
  TForm2 = class(TForm)
    Image1: TImage;
    Image4: TImage;
    Image3: TImage;
    Image2: TImage;
    Image5: TImage;
    Image6: TImage;
    Image8: TImage;
    PopupMenu2: TPopupMenu;
    Atceltfiltrus1: TMenuItem;
    N1: TMenuItem;
    Valoda1: TMenuItem;
    Latvie1: TMenuItem;
    N2: TMenuItem;
    ADOQuery1: TADOQuery;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    ADOConnection1: TADOConnection;
    Image7: TImage;
    Image10: TImage;
    Image11: TImage;
    ComboBox1: TComboBox;
    Edit2: TEdit;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    CheckBox1: TCheckBox;
    Image12: TImage;
    Label1: TLabel;
    Edit1: TEdit;
    Image13: TImage;
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image8MouseLeave(Sender: TObject);
    procedure Image8MouseEnter(Sender: TObject);
    procedure Image5MouseLeave(Sender: TObject);
    procedure Image5MouseEnter(Sender: TObject);
    procedure Image6MouseLeave(Sender: TObject);
    procedure Image6MouseEnter(Sender: TObject);
    procedure Image2MouseEnter(Sender: TObject);
    procedure Image2MouseLeave(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image8Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Latvie1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Atceltfiltrus1Click(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DateTimePicker2Change(Sender: TObject);
    procedure Image7MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image7MouseEnter(Sender: TObject);
    procedure Image7MouseLeave(Sender: TObject);
    procedure Image7MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image10MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image10MouseLeave(Sender: TObject);
    procedure Image10MouseEnter(Sender: TObject);
    procedure Image10MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image11MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image11MouseEnter(Sender: TObject);
    procedure Image11MouseLeave(Sender: TObject);
    procedure Image11MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image7Click(Sender: TObject);
    procedure Image11Click(Sender: TObject);
    procedure Image10Click(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure DBGrid1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    s1:string;
  end;

var
  Form2: TForm2;
  filR,filA,filD, filV:string;

implementation

uses Unit1, Unit3, Unit4, Unit6, Unit7, Unit8, Unit9;

{$R *.dfm}

procedure TForm2.Atceltfiltrus1Click(Sender: TObject);
begin
filR := 'Rubrika <> ''''';
filA := 'Autors <> ''''';
filD := 'Datums > ''1900.01.01.''';

Edit2.Text := '';
ComboBox1.ItemIndex := 0;
CheckBox1.Checked := false;

ADOQuery1.Filter := filR + ' and ' + filA + ' and ' + filV;
ADOQuery1.Filtered := true;
end;

procedure TForm2.CheckBox1Click(Sender: TObject);
begin
if CheckBox1.Checked then
begin
DateTimePicker1.Enabled := true;
DateTimePicker2.Enabled := true;
filD := 'Datums >= ''' + FormatDateTime('yyyy.mm.dd.',DateTimePicker1.Date)
+ ''' and Datums <= ''' + FormatDateTime('yyyy.mm.dd.',DateTimePicker2.Date) + ''''
end else
begin
DateTimePicker1.Enabled := false;
DateTimePicker2.Enabled := false;
filD := 'Datums > ''1900.01.01.''';
end;

ADOQuery1.Filter := filR + ' and ' + filA + ' and ' + filV + ' and ' + filD;
ADOQuery1.Filtered := true;

end;

procedure TForm2.ComboBox1Change(Sender: TObject);
begin
ADOQuery1.Filtered := false;
if ComboBox1.Text <> 'Visas rubrikas' then
filR := 'Rubrika = ''' + ComboBox1.Text + ''''
else
filR := 'Rubrika <> ''''';
ADOQuery1.Filter := filR + ' and ' + filA + ' and ' + filV + ' and ' + filD;

ADOQuery1.Filtered := true;

end;

procedure TForm2.DateTimePicker1Change(Sender: TObject);
begin
ADOQuery1.Filtered := false;
if CheckBox1.Checked then
filD := 'Datums >= ''' + FormatDateTime('yyyy.mm.dd.',DateTimePicker1.Date)
+ ''' and Datums <= ''' + FormatDateTime('yyyy.mm.dd.',DateTimePicker2.Date) + '''';

ADOQuery1.Filter := filR + ' and ' + filA + ' and ' + filV + ' and ' + filD;
ADOQuery1.Filtered := true;
end;

procedure TForm2.DateTimePicker2Change(Sender: TObject);
begin
ADOQuery1.Filtered := false;
if CheckBox1.Checked then
filD := 'Datums >= ''' + FormatDateTime('yyyy.mm.dd.',DateTimePicker1.Date)
+ ''' and Datums <= ''' + FormatDateTime('yyyy.mm.dd.',DateTimePicker2.Date) + '''';

ADOQuery1.Filter := filR + ' and ' + filA + ' and ' + filV + ' and ' + filD;
ADOQuery1.Filtered := true;
end;

procedure TForm2.DBGrid1DblClick(Sender: TObject);
begin
ADOQuery1.Active := false;
ADOQuery1.Active := true;
end;

procedure TForm2.DBGrid1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var
  pt: TGridcoord;
begin
  pt:= DBGrid1.MouseCoord(x, y);

  if pt.y=0 then
    DBGrid1.Cursor:=crHandPoint
  else
    DBGrid1.Cursor:=crDefault;
end;

procedure TForm2.DBGrid1TitleClick(Column: TColumn);
begin
case Column.Index of
0: if ADOQuery1.Sort = 'Raksta_ID ASC' then ADOQuery1.Sort := 'Raksta_ID DESC' else ADOQuery1.Sort := 'Raksta_ID ASC';
1: if ADOQuery1.Sort = 'Virsraksts ASC' then ADOQuery1.Sort := 'Virsraksts DESC' else ADOQuery1.Sort := 'Virsraksts ASC';
2: if ADOQuery1.Sort = 'Rubrika ASC' then ADOQuery1.Sort := 'Rubrika DESC' else ADOQuery1.Sort := 'Rubrika ASC';
3: if ADOQuery1.Sort = 'Autors ASC' then ADOQuery1.Sort := 'Autors DESC' else ADOQuery1.Sort := 'Autors ASC';
4: if ADOQuery1.Sort = 'Datums ASC' then ADOQuery1.Sort := 'Datums DESC' else ADOQuery1.Sort := 'Datums ASC';
end;
end;

procedure TForm2.Edit1Change(Sender: TObject);
begin
if edit1.Text <> '' then
if not ADOQuery1.Locate('Virsraksts',Edit1.Text,[loPartialKey,loCaseInsensitive]) then
Form9.ShowModal;
end;

procedure TForm2.Edit2Change(Sender: TObject);
begin
ADOQuery1.Filtered := false;
if Edit2.Text <> '' then
filA := 'Autors LIKE ''' + Edit2.Text + '%'''
else
filA := 'Autors <> ''''';
ADOQuery1.Filter := filR + ' and ' + filA + ' and ' + filV + ' and ' + filD;

ADOQuery1.Filtered := true;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
ShowWindow(Application.Handle, SW_SHOW);
ADOQuery1.Sort := 'Raksta_ID ASC';
filR := 'Rubrika <> ''''';
filA := 'Autors <> ''''';
filD := 'Datums > ''1900.01.01.''';
filV := 'Valoda = ''LV''';
ADOQuery1.Filter := filR + ' and ' + filA + ' and ' + filV;
ADOQuery1.Filtered := true;
end;

procedure TForm2.Image10Click(Sender: TObject);
begin
Form8.ShowModal;
end;

procedure TForm2.Image10MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
Image10.Picture.LoadFromFile('Images/dzest_pressed.bmp');
end;

procedure TForm2.Image10MouseEnter(Sender: TObject);
begin
Image10.Picture.LoadFromFile('Images/dzest_hover.bmp');
end;

procedure TForm2.Image10MouseLeave(Sender: TObject);
begin
Image10.Picture.LoadFromFile('Images/dzest_normal.bmp');
end;

procedure TForm2.Image10MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
Image10.Picture.LoadFromFile('Images/dzest_hover.bmp');
end;

procedure TForm2.Image11Click(Sender: TObject);
begin
s1 := DBGrid1.Fields[5].AsString;
Form7.ShowModal;
end;

procedure TForm2.Image11MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
Image11.Picture.LoadFromFile('Images/atvert_pressed.bmp');
end;

procedure TForm2.Image11MouseEnter(Sender: TObject);
begin
Image11.Picture.LoadFromFile('Images/atvert_hover.bmp');
end;

procedure TForm2.Image11MouseLeave(Sender: TObject);
begin
Image11.Picture.LoadFromFile('Images/atvert_normal.bmp');
end;

procedure TForm2.Image11MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
Image11.Picture.LoadFromFile('Images/atvert_hover.bmp');
end;

procedure TForm2.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
ReleaseCapture;
Form2.perform(WM_SysCommand,$F012,0);
end;

procedure TForm2.Image2Click(Sender: TObject);
begin
Form1.Edit1.Text := '';
Form1.Edit2.Text := '';
Form6.ShowModal;
end;

procedure TForm2.Image2MouseEnter(Sender: TObject);
begin
Image2.Picture.LoadFromFile('Images/iziet_hover.bmp');
end;

procedure TForm2.Image2MouseLeave(Sender: TObject);
begin
Image2.Picture.LoadFromFile('Images/iziet.bmp');
end;

procedure TForm2.Image3Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure TForm2.Image4Click(Sender: TObject);
begin
Application.Minimize;
end;

procedure TForm2.Image5Click(Sender: TObject);
begin
Form3.ShowModal;
end;

procedure TForm2.Image5MouseEnter(Sender: TObject);
begin
Image5.Picture.LoadFromFile('Images/lietotajs_hover.bmp');
end;

procedure TForm2.Image5MouseLeave(Sender: TObject);
begin
Image5.Picture.LoadFromFile('Images/lietotajs.bmp');
end;

procedure TForm2.Image6Click(Sender: TObject);
begin
Form4.ShowModal;
end;

procedure TForm2.Image6MouseEnter(Sender: TObject);
begin
Image6.Picture.LoadFromFile('Images/pievienot_hover.bmp');
end;

procedure TForm2.Image6MouseLeave(Sender: TObject);
begin
Image6.Picture.LoadFromFile('Images/pievienot.bmp');
end;

procedure TForm2.Image7Click(Sender: TObject);
begin
Form4.ShowModal;
end;

procedure TForm2.Image7MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
Image7.Picture.LoadFromFile('Images/add_pressed.bmp');
end;

procedure TForm2.Image7MouseEnter(Sender: TObject);
begin
Image7.Picture.LoadFromFile('Images/add_hover.bmp');
end;

procedure TForm2.Image7MouseLeave(Sender: TObject);
begin
Image7.Picture.LoadFromFile('Images/add_normal.bmp');
end;

procedure TForm2.Image7MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
Image7.Picture.LoadFromFile('Images/add_hover.bmp');
end;

procedure TForm2.Image8Click(Sender: TObject);
begin
PopupMenu2.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TForm2.Image8MouseEnter(Sender: TObject);
begin
Image8.Picture.LoadFromFile('Images/arhivs_hover.bmp');
end;

procedure TForm2.Image8MouseLeave(Sender: TObject);
begin
Image8.Picture.LoadFromFile('Images/arhivs.bmp');
end;

procedure TForm2.Latvie1Click(Sender: TObject);
begin
ADOQuery1.Filtered := false;
filV := 'Valoda = ''LV''';
ADOQuery1.Filter := filR + ' and ' + filA + ' and ' + filV + ' and ' + filD;
ADOQuery1.Filtered := true;
ComboBox1.Clear;
ComboBox1.Items.Add('Visas rubrikas');
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
end;

procedure TForm2.N2Click(Sender: TObject);
begin
ADOQuery1.Filtered := false;
filV := 'Valoda = ''RUS''';
ADOQuery1.Filter := filR + ' and ' + filA + ' and ' + filV + ' and ' + filD;
ADOQuery1.Filtered := true;
ComboBox1.Clear;
ComboBox1.Items.Add('Все рубрики');
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

end.
