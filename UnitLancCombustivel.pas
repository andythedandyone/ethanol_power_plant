unit UnitLancCombustivel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, StdCtrls, Mask, DBCtrls, DBTables, Buttons, ExtCtrls, Grids, DBGrids;

type
  TFormLancCombustivel = class(TForm)
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
    Panel3: TPanel;
    TCombustivel: TTable;
    TCombustivelCodigo: TAutoIncField;
    TCombustivelFrota_N: TStringField;
    TCombustivelFuncionario: TStringField;
    TCombustivelData: TDateField;
    TCombustivelLitros: TFloatField;
    TCombustivelKm_Ini: TFloatField;
    TCombustivelKm_Fin: TFloatField;
    TCombustivelMedia: TFloatField;
    TCombustivelValor_Total: TCurrencyField;
    TCombustivelN_Nota_Fiscal: TStringField;
    TCombustivelPlaca: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    TFrota: TTable;
    DataSource2: TDataSource;
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
    Label13: TLabel;
    DBEdit13: TDBEdit;
    Label14: TLabel;
    DBEdit14: TDBEdit;
    Label12: TLabel;
    Label15: TLabel;
    DBEdit12: TDBEdit;
    Edit1: TEdit;
    Edit2: TEdit;
    TFuncionario: TTable;
    DataSource3: TDataSource;
    TFuncionarioCod: TAutoIncField;
    TFuncionarioCodigo: TFloatField;
    TFuncionarioNome: TStringField;
    TFuncionarioEndereco: TStringField;
    TFuncionarioCidade: TStringField;
    TFuncionarioRg: TStringField;
    TFuncionarioCpf: TStringField;
    TFuncionarioCnh: TStringField;
    TFuncionarioCnh_L: TStringField;
    TFuncionarioCnhV: TDateField;
    TFuncionarioCarteira_Trab: TStringField;
    TFuncionarioData_Adm: TDateField;
    TFuncionarioFone_R: TStringField;
    TFuncionarioFone_C: TStringField;
    TFuncionarioLancamento_N: TFloatField;
    Label16: TLabel;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBGrid1: TDBGrid;
    TCombustivelCOD: TFloatField;
    TCombustivelModelo: TStringField;
    Label17: TLabel;
    DBEdit15: TDBEdit;
    DataSource4: TDataSource;
    TDados: TTable;
    TCombustivelMedia_Litro: TFloatField;
    Label18: TLabel;
    DBEdit16: TDBEdit;
    TDadosCodigo: TAutoIncField;
    TDadosRetencao: TFloatField;
    TDadosValor_Litro: TCurrencyField;
    DBGrid2: TDBGrid;
    DataSource5: TDataSource;
    QBusca: TQuery;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBEdit6Exit(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLancCombustivel: TFormLancCombustivel;
  s, x, y, l : string;
  r, t : real;

implementation

uses UnitRelatLancItem;

{$R *.DFM}

procedure TFormLancCombustivel.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_return then
   SelectNext(ActiveControl, true, true);
end;

procedure TFormLancCombustivel.Edit1Exit(Sender: TObject);
begin
if TFrota.Locate('Frota_N', Edit1.text, []) then
   TCombustivel.Append;
end;

procedure TFormLancCombustivel.Edit2Exit(Sender: TObject);
begin
if TFuncionario.Locate('Codigo', Edit2.text, []) then
end;

procedure TFormLancCombustivel.SpeedButton11Click(Sender: TObject);
begin
Close;
end;

procedure TFormLancCombustivel.SpeedButton1Click(Sender: TObject);
begin
SpeedButton1.Enabled := False;
SpeedButton2.Enabled := True;
SpeedButton3.Enabled := False;
SpeedButton4.Enabled := True;
SpeedButton5.Enabled := False;
SpeedButton6.Enabled := False;
SpeedButton7.Enabled := False;
SpeedButton8.Enabled := False;
SpeedButton9.Enabled := False;
SpeedButton10.Enabled := False;
SpeedButton11.Enabled := False;
Panel1.Enabled := True;
Panel3.Enabled := True;
Edit1.SetFocus;

end;

procedure TFormLancCombustivel.SpeedButton2Click(Sender: TObject);
begin
TCombustivelFuncionario.AsString := TFuncionarioNome.AsString;
TCombustivelFrota_N.AsString := TFrotaFrota_N.AsString;
TCombustivelPlaca.AsString := TFrotaPlaca.AsString;
TCombustivelModelo.AsString := TFrotaModelo.AsString;
TCombustivel.Post;

SpeedButton1.Enabled := True;
SpeedButton2.Enabled := False;
SpeedButton3.Enabled := True;
SpeedButton4.Enabled := False;
SpeedButton5.Enabled := True;
SpeedButton6.Enabled := True;
SpeedButton7.Enabled := True;
SpeedButton8.Enabled := True;
SpeedButton9.Enabled := True;
SpeedButton10.Enabled := True;
SpeedButton11.Enabled := True;
//_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_
Edit1.Text := '';
Edit2.Text := '';
Panel1.Enabled := False;
Panel3.Enabled := False;
end;

procedure TFormLancCombustivel.SpeedButton3Click(Sender: TObject);
begin
SpeedButton1.Enabled := False;
SpeedButton2.Enabled := True;
SpeedButton3.Enabled := False;
SpeedButton4.Enabled := True;
SpeedButton5.Enabled := False;
SpeedButton6.Enabled := False;
SpeedButton7.Enabled := False;
SpeedButton8.Enabled := False;
SpeedButton9.Enabled := False;
SpeedButton10.Enabled := False;
SpeedButton11.Enabled := False;
panel1.Enabled := true;
Panel3.Enabled := True;
TCombustivel.Edit;
end;

procedure TFormLancCombustivel.SpeedButton4Click(Sender: TObject);
begin
SpeedButton1.Enabled := True;
SpeedButton2.Enabled := False;
SpeedButton3.Enabled := True;
SpeedButton4.Enabled := False;
SpeedButton5.Enabled := True;
SpeedButton6.Enabled := True;
SpeedButton7.Enabled := True;
SpeedButton8.Enabled := True;
SpeedButton9.Enabled := True;
SpeedButton10.Enabled := True;
SpeedButton11.Enabled := True;
Panel1.Enabled := False;
Panel3.Enabled := False;
TCombustivel.Cancel;

end;

procedure TFormLancCombustivel.SpeedButton5Click(Sender: TObject);
begin
TCombustivel.Delete;
end;

procedure TFormLancCombustivel.SpeedButton6Click(Sender: TObject);
begin
TCombustivel.First;
end;

procedure TFormLancCombustivel.SpeedButton7Click(Sender: TObject);
begin
TCombustivel.Prior;
end;

procedure TFormLancCombustivel.SpeedButton8Click(Sender: TObject);
begin
TCombustivel.Next;
end;

procedure TFormLancCombustivel.SpeedButton9Click(Sender: TObject);
begin
TCombustivel.Last;
end;

procedure TFormLancCombustivel.FormCreate(Sender: TObject);
begin
SpeedButton1.Enabled := True;
SpeedButton2.Enabled := False;
SpeedButton3.Enabled := True;
SpeedButton4.Enabled := False;
SpeedButton5.Enabled := True;
SpeedButton6.Enabled := True;
SpeedButton7.Enabled := True;
SpeedButton8.Enabled := True;
SpeedButton9.Enabled := True;
SpeedButton10.Enabled := True;
SpeedButton11.Enabled := True;
//_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_

Panel1.Enabled := False;
Panel3.Enabled := False;
//DbEdit8.Text := '1,7018';
TCombustivelMedia.DisplayFormat := '00.00';
TCombustivelMedia_Litro.DisplayFormat:= '00.00';
end;

procedure TFormLancCombustivel.BitBtn1Click(Sender: TObject);
begin
TFrota.Prior;
end;

procedure TFormLancCombustivel.BitBtn2Click(Sender: TObject);
begin
TFrota.Next;
end;

procedure TFormLancCombustivel.DBEdit6Exit(Sender: TObject);
begin
  s := TCombustivelKm_Ini.AsString;
  x := TCombustivelKm_Fin.AsString;
  r := StrToFloat(x) - StrToFloat(s);
  DbEdit7.Text := FloatToStr(r);
end;

procedure TFormLancCombustivel.DBEdit4Exit(Sender: TObject);
begin
  DbEdit16.Text := FloatToStr(r / StrToFloat(DbEdit4.Text));
  DbEdit9.Text := FloatToStr(StrToFloat(DbEdit4.Text) * StrToFloat(TDadosValor_Litro.AsString)); 
end;

procedure TFormLancCombustivel.Edit1Change(Sender: TObject);
var
  status : string;
begin
  with QBusca do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select Frota_N, Modelo, Placa from Frota.db where Frota_N like ''%'+edit1.Text+'%''');
      open;
      status := fieldbyname('Frota_N').AsString;
    end;
end;

procedure TFormLancCombustivel.Edit2Change(Sender: TObject);
//var
//  status : real;
//  r : integer;
begin
//  with QBusca do
//    begin
//      Close;
//      SQL.Clear;
//      SQL.Add('select Codigo, Nome from Funcionario.db where Codigo like ''%'+Edit2.Text+'%''');
//      open;
//      status := fieldbyname('Codigo').AsInteger;
//    end;
end;
end.
