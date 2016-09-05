unit UnitPlantio;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Db, Mask, DBCtrls, DBTables, Buttons, ExtCtrls, Grids, DBGrids;

type
  TFormPlantio = class(TForm)
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    Panel1: TPanel;
    TPlantio: TTable;
    TPlantioCod: TAutoIncField;
    TPlantioPropriedade: TStringField;
    TPlantioPeso: TFloatField;
    TPlantioVr_Total: TCurrencyField;
    TPlantioMes: TFloatField;
    TPlantioFrota: TStringField;
    DataSource1: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    TFrota: TTable;
    DataFrota: TDataSource;
    TFrotaCod: TAutoIncField;
    TFrotaCodigo: TFloatField;
    TFrotaFrota_N: TStringField;
    TFrotaProprietario: TStringField;
    TFrotaModelo: TStringField;
    TFrotaPlaca: TStringField;
    TFrotaChassis_N: TStringField;
    TFrotaAno: TDateField;
    TFrotaKm_Inicial: TFloatField;
    TFrotaTipo_Medidor: TStringField;
    TFrotaData_Compra: TDateField;
    TFrotaCor: TStringField;
    TFrotaLancamento_N: TFloatField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Edit1: TEdit;
    Edit2: TEdit;
    DataSource2: TDataSource;
    TPropriedade: TTable;
    TPropriedadeCod: TAutoIncField;
    TPropriedadeCodigo: TFloatField;
    TPropriedadePropriedade: TStringField;
    TPropriedadeDistancia: TFloatField;
    TPropriedadeValor: TCurrencyField;
    TPropriedadeCod_Prop: TFloatField;
    TPropriedadeUsina: TStringField;
    DBGrid1: TDBGrid;
    Label7: TLabel;
    TPlantioModelo: TStringField;
    TPlantioViagem: TFloatField;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    procedure Edit2Exit(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPlantio: TFormPlantio;

implementation

{$R *.DFM}

procedure TFormPlantio.Edit2Exit(Sender: TObject);
begin
if TFrota.Locate('Frota_N', Edit2.text, []) then
  begin
    TPlantio.Append;
  end
else
  begin
    ShowMessage('Arquivo Não Encontrado');
    Edit1.SetFocus;
  end;
end;

procedure TFormPlantio.Edit1Exit(Sender: TObject);
begin
//  if TPropriedade.Locate('Codigo', Edit1.text, []) then
end;

procedure TFormPlantio.SpeedButton11Click(Sender: TObject);
begin
Close;
end;

procedure TFormPlantio.SpeedButton1Click(Sender: TObject);
begin
Panel1.Enabled := True;
Edit2.SetFocus;
//TPlantio.append;

end;

procedure TFormPlantio.SpeedButton2Click(Sender: TObject);
begin
//TPlantioPropriedade.AsString := TPropriedadePropriedade.AsString;
TPlantioFrota.AsString := TFrotaFrota_N.AsString;
TPlantioPropriedade.AsString := Edit1.Text;

TPlantio.Post;
Label7.Caption := '';
Edit1.Text := '';
Edit2.Text := '';
Panel1.Enabled := False;
end;

procedure TFormPlantio.SpeedButton4Click(Sender: TObject);
begin
TPlantio.Cancel;
end;

procedure TFormPlantio.DBEdit5Exit(Sender: TObject);
begin
if DbEdit5.Text = '1' then
   Label7.Caption := 'Janeiro';
if DbEdit5.Text = '2' then
  Label7.Caption := 'Fevereiro';
if DbEdit5.Text = '3' then
  Label7.Caption := 'Março';
If DbEdit5.Text = '4' then
  Label7.Caption := 'Abril';
If DbEdit5.Text = '5' then
  Label7.Caption := 'Maio';
If DbEdit5.Text = '6'then
  Label7.Caption := 'Junho';
If DbEdit5.Text = '7'then
  Label7.Caption := 'Julho';
If Dbedit5.Text = '8' then
  Label7.Caption := 'Agosto';
If DbEdit5.Text = '9' then
  Label7.Caption := 'Setembro';
If DbEdit5.Text = '10' then
  Label7.Caption := 'Outubro';
If DbEdit5.Text = '11' then
  Label7.Caption := 'Novembro';
If DbEdit5.Text = '12' then
  Label7.Caption := 'Dezembro';


end;

procedure TFormPlantio.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_return then
   SelectNext(ActiveControl, true, true);
end;

procedure TFormPlantio.SpeedButton6Click(Sender: TObject);
begin
TPlantio.Prior;
end;

procedure TFormPlantio.SpeedButton9Click(Sender: TObject);
begin
TPlantio.Next;
end;

procedure TFormPlantio.SpeedButton7Click(Sender: TObject);
begin
TFrota.Prior;
end;

procedure TFormPlantio.SpeedButton8Click(Sender: TObject);
begin
TFrota.Next;
end;

procedure TFormPlantio.SpeedButton5Click(Sender: TObject);
begin
TPlantio.delete;
end;

procedure TFormPlantio.FormCreate(Sender: TObject);
begin
Label7.Caption := '';
Panel1.Enabled := False;
end;

end.
