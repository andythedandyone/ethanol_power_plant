unit UnitLancCana;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Db, DBTables, Grids,
  DBGrids;

type
  TFormLancCana = class(TForm)
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
    DataSource1: TDataSource;
    QLocaliza: TQuery;
    Panel1: TPanel;
    TFuncionario: TTable;
    TFuncionarioCod: TAutoIncField;
    TFuncionarioCodigo: TFloatField;
    TFuncionarioEndereco: TStringField;
    TFuncionarioCidade: TStringField;
    TFuncionarioRg: TStringField;
    TFuncionarioCpf: TStringField;
    TFuncionarioNome: TStringField;
    TFuncionarioCnh: TStringField;
    TFuncionarioCnh_L: TStringField;
    TFuncionarioCnhV: TDateField;
    TFuncionarioCarteira_Trab: TStringField;
    TFuncionarioData_Adm: TDateField;
    TFuncionarioFone_R: TStringField;
    TFuncionarioFone_C: TStringField;
    TFuncionarioLancamento_N: TFloatField;
    DataFuncionario: TDataSource;
    TPropriedade: TTable;
    TPropriedadeCod: TAutoIncField;
    TPropriedadeCodigo: TFloatField;
    TPropriedadePropriedade: TStringField;
    TPropriedadeDistancia: TFloatField;
    TPropriedadeValor: TCurrencyField;
    TPropriedadeCod_Prop: TFloatField;
    TPropriedadeUsina: TStringField;
    DataPropriedade: TDataSource;
    DataCanaPreta: TDataSource;
    TCanaPreta: TTable;
    TCanaPretaCod: TAutoIncField;
    TCanaPretaCodigo: TFloatField;
    TCanaPretaFrota_N: TStringField;
    TCanaPretaModelo: TStringField;
    TCanaPretaPlaca: TStringField;
    TCanaPretaNome_Funcionario: TStringField;
    TCanaPretaCod_Propriedade: TFloatField;
    TCanaPretaPropriedade: TStringField;
    TCanaPretaPeso: TFloatField;
    TCanaPretaData: TDateField;
    TCanaPretaCod_Funcionario: TFloatField;
    TCanaPretaNumero_Nota: TFloatField;
    DataSource2: TDataSource;
    TFrota: TTable;
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
    Edit1: TEdit;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Edit2: TEdit;
    DBEdit6: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    Edit3: TEdit;
    DBEdit11: TDBEdit;
    DBEdit10: TDBEdit;
    Label10: TLabel;
    Label11: TLabel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    DBGrid1: TDBGrid;
    TCanaPretaViagem: TFloatField;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    TCanaPretaValor: TCurrencyField;
    TAlterar: TTable;
    DataSource3: TDataSource;
    TAlterarCod: TAutoIncField;
    TAlterarCodigo: TFloatField;
    TAlterarFrota_N: TStringField;
    TAlterarModelo: TStringField;
    TAlterarPlaca: TStringField;
    TAlterarNome_Funcionario: TStringField;
    TAlterarCod_Propriedade: TFloatField;
    TAlterarPropriedade: TStringField;
    TAlterarPeso: TFloatField;
    TAlterarData: TDateField;
    TAlterarCod_Funcionario: TFloatField;
    TAlterarNumero_Nota: TFloatField;
    TAlterarViagem: TFloatField;
    TAlterarValor: TCurrencyField;
    Label9: TLabel;
    DBGrid2: TDBGrid;
    procedure Sair1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLancCana: TFormLancCana;

implementation

uses UnitRelatLancItem;

{$R *.DFM}

procedure TFormLancCana.Sair1Click(Sender: TObject);
begin
close;
end;

procedure TFormLancCana.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_return then
   SelectNext(ActiveControl, true, true);
end;

procedure TFormLancCana.SpeedButton1Click(Sender: TObject);
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
DbEdit7.SetFocus;
TCanaPreta.Append;
end;

procedure TFormLancCana.SpeedButton2Click(Sender: TObject);
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
//+_+_+_+_+_+_+_+_+_+_+_+_+_+_+
TCanaPretaCodigo.AsString := TFrotaCodigo.AsString;
TCanaPretaFrota_N.AsString := TFrotaFrota_N.AsString;
TCanaPretaModelo.AsString := TFrotaModelo.AsString;
TCanaPretaPlaca.AsString := TFrotaPlaca.AsString;
TCanaPretaCod_Funcionario.AsString := TFuncionarioCodigo.AsString;
TCanaPretaNome_Funcionario.AsString := TFuncionarioNome.AsString;
TCanaPretaCod_Propriedade.AsString := TPropriedadeCodigo.AsString;
TcanaPretaPropriedade.AsString := TPropriedadePropriedade.AsString;
TCanaPretaValor.AsString := TPropriedadeValor.AsString;
TCanaPreta.Post;

//_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_
Edit1.Text := '';
Edit2.Text := '';
Edit3.Text := '';
Panel1.Enabled := False;

end;

procedure TFormLancCana.SpeedButton3Click(Sender: TObject);
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
tcanapreta.edit;

end;

procedure TFormLancCana.SpeedButton4Click(Sender: TObject);
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
TCanaPreta.Cancel;

end;

procedure TFormLancCana.SpeedButton11Click(Sender: TObject);
begin
close;
end;

procedure TFormLancCana.FormCreate(Sender: TObject);
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

end;

procedure TFormLancCana.Edit1Exit(Sender: TObject);
begin
if TFrota.Locate('Frota_N', Edit1.text, []) then
Edit2.SetFocus;
end;

procedure TFormLancCana.Edit2Exit(Sender: TObject);
begin
if TFuncionario.Locate('Codigo', Edit2.text, []) then
Edit3.SetFocus;
end;

procedure TFormLancCana.Edit3Exit(Sender: TObject);
begin
if TPropriedade.Locate('Codigo', Edit3.text, []) then
end;

procedure TFormLancCana.SpeedButton6Click(Sender: TObject);
begin
TCanaPreta.First;
end;

procedure TFormLancCana.SpeedButton7Click(Sender: TObject);
begin
TCanaPreta.Prior;
end;

procedure TFormLancCana.SpeedButton8Click(Sender: TObject);
begin
TCanaPreta.Next;
end;

procedure TFormLancCana.SpeedButton9Click(Sender: TObject);
begin
TCanaPreta.Last;
end;

procedure TFormLancCana.SpeedButton10Click(Sender: TObject);
begin
{ with form1.impressao do
    begin
      Form1.impressao.close;
      Form1.impressao.SQL.Clear;
      Form1.impressao.sql.add('select modelo, Frota_N, sum(Combustivel.Litros) as somalitro, Sum(Combustivel.Valor_Total) as valor_total, sum(cana_preta.peso) as somapeso, count(cod) as contaregistro from cana_preta, Combustivel where');
      Form1.impressao.SQL.ADD('Data>=:Data0 and');
      Form1.impressao.SQL.ADD('Data<=:Data1 and');
      form1.impressao.sql.add('Frota_N =:Frota_N');
//      Form1.impressao.Params[0].asdatetime := StrtoDate(Mask1.text);
//      Form1.impressao.Params[1].asdatetime := StrtoDate(Mask2.text);
      Form1.impressao.Params[2].asstring := Edit4.Text;
      form1.impressao.sql.add('group by modelo, Frota_N, Valor_Total');
      Form1.impressao.sql.add('order by Data');

      Form1.impressao.Open;

      Form1.Contador1.Caption := FloatToStr(Form1.impressao.FieldByName('contaregistro').Value);
      Form1.TotalTon.caption := FloatToStr(Form1.impressao.FieldByName('somapeso').value);
      form1.TotalLiquido.caption := FloatToStr(form1.impressao.FieldByName('somapeso').value - form1.impressao.FieldByName('contaregistro').value);
      form1.Litros1.caption := floattostr(form1.impressao.fieldbyname('somalitro').value);
      form1.Valor1.caption := floattostr(form1.impressao.fieldbyname('valor_total').value);
    end;
   {
    With Form1.impressao do
      begin
  Form1.impressao.close;
  Form1.impressao.SQL.Clear;
  Form1.impressao.sql.add('select  * from Cana_Preta.db, Dados.db where Placa in ("GTD-0198", "BWG-9442", "MUI-6095") And');
  Form1.impressao.SQL.ADD('Data>=:Data0 and');
  Form1.impressao.SQL.ADD('Data<=:Data1');
  Form1.impressao.sql.add('order by Data');
  Form1.impressao.Params[0].asdatetime := StrtoDate(Mask1.text);
  Form1.impressao.Params[1].asdatetime := StrtoDate(Mask2.text);
//  form1.QRLabel20.Caption := 'Frota por ordem de data';



  Form1.QuickRep6.Preview;
}
end;

procedure TFormLancCana.BitBtn1Click(Sender: TObject);
begin  {
Form1.impressao.close;
Form1.impressao.SQL.Clear;
Form1.impressao.sql.add('select  * from Cana_Preta.db, DADOS.DB WHERE');
Form1.impressao.SQL.ADD('Data>=:Data0 and');
Form1.impressao.SQL.ADD('Data<=:Data1');
form1.impressao.sql.add('order by Data');
Form1.impressao.Params[0].asdatetime := StrtoDate(Mask1.text);
Form1.impressao.Params[1].asdatetime := StrtoDate(Mask2.text);
Form1.impressao.Open;
form1.QRLabel20.Caption := 'Datas';
Form1.QuickRep2.preview;}
end;

procedure TFormLancCana.BitBtn2Click(Sender: TObject);
begin
 { with Form1.impressao do
    begin
      Form1.impressao.close;
      Form1.impressao.SQL.Clear;
Form1.impressao.sql.add('select  * from Cana_Preta.db, DADOS.DB WHERE');
      //      Form1.impressao.sql.add('select Viagem, Data, Cod_Funcionario, Nome_Funcionario, Frota_N, Modelo, Placa, Cod_Propriedade, Peso, Propriedade, Cad_Propriedade.Valor, Cad_Propriedade.Propriedade, Cad_Propriedade.Codigo from Cana_Preta.db');
//      Form1.impressao.sql.add('inner join Cad_Propriedade.db on Cod_Propriedade = Codigo where');
//form2.query1.sql.add('select codigo, data, pago, total, dadosfundo.codigo, dadosfundo.fundo, dadosfundo.proprietario,dadosfundo.sacarose from pagamento.db                                                             inner join dadosfundo.db on codigo = dadosfundo.codigo where');
      Form1.impressao.SQL.ADD('Data>=:Data0 and');
      Form1.impressao.SQL.ADD('Data<=:Data1 and');
      Form1.impressao.SQL.ADD('Frota_N =:Frota_N');
      form1.impressao.sql.add('order by Data');
      Form1.impressao.Params[0].asdatetime := StrtoDate(Mask1.text);
      Form1.impressao.Params[1].asdatetime := StrtoDate(Mask2.text);
      Form1.impressao.Params[2].asstring := Edit4.text;
      form1.QRLabel20.Caption := 'Frota';
      Form1.impressao.Open;
    end;
  Form1.QuickRep2.preview;}
end;

procedure TFormLancCana.BitBtn3Click(Sender: TObject);
begin  {
Form1.impressao.close;
Form1.impressao.SQL.Clear;
Form1.impressao.sql.add('select  * from Cana_Preta.db , dados.db where');
Form1.impressao.SQL.ADD('Data>=:Data0 and');
Form1.impressao.SQL.ADD('Data<=:Data1 and');
Form1.impressao.SQL.ADD('Cod_Funcionario =:Cod_Funcionario');
form1.impressao.sql.add('order by DATA');
Form1.impressao.Params[0].asdatetime := StrtoDate(Mask1.text);
Form1.impressao.Params[1].asdatetime := StrtoDate(Mask2.text);
Form1.impressao.Params[2].asinteger := StrToInt(Edit5.text);
Form1.impressao.Open;
form1.QRLabel20.Caption := 'Motoristas';
Form1.QuickRep2.preview;

{
Form1.impressao.Active := False;
Form1.impressao.SQL.Clear;
Form1.impressao.sql.add('select * from cana_preta.db where Cod_Funcionario=:Cod_Funcionario');
Form1.impressao.Params[0].asinteger := StrToInt(Edit5.text);
If Not Form1.impressao.Prepared Then Form1.impressao.Prepare;
Form1.impressao.Active := True;
Form1.QuickRep2.Preview;    }
end;

procedure TFormLancCana.BitBtn4Click(Sender: TObject);
begin  {
Form1.impressao.close;
Form1.impressao.SQL.Clear;
Form1.impressao.sql.add('select  * from Cana_Preta.db, dados.db where');
Form1.impressao.SQL.ADD('Data>=:Data0 and');
Form1.impressao.SQL.ADD('Data<=:Data1 and');
Form1.impressao.SQL.ADD('Frota_N =:Frota_N and');
Form1.impressao.SQL.ADD('Cod_Funcionario =:Cod_Funcionario');
form1.impressao.sql.add('order by Data');
Form1.impressao.Params[0].asdatetime := StrtoDate(Mask1.text);
Form1.impressao.Params[1].asdatetime := StrtoDate(Mask2.text);
Form1.impressao.Params[2].asstring := Edit4.text;
Form1.impressao.Params[3].asinteger := StrToInt(Edit5.text);
form1.QRLabel20.Caption := 'Frota';
Form1.impressao.Open;
Form1.QuickRep2.preview;    }
end;

procedure TFormLancCana.BitBtn6Click(Sender: TObject);
begin   {
  Form1.impressao.close;
  Form1.impressao.SQL.Clear;
  Form1.impressao.sql.add('select  * from Cana_Preta.db, Dados.db where Placa in ("BJC-8534", "CLZ-8169") And');
  Form1.impressao.SQL.ADD('Data>=:Data0 and');
  Form1.impressao.SQL.ADD('Data<=:Data1');
  Form1.impressao.sql.add('order by Data');
  Form1.impressao.Params[0].asdatetime := StrtoDate(Mask1.text);
  Form1.impressao.Params[1].asdatetime := StrtoDate(Mask2.text);
  form1.QRLabel20.Caption := 'Frota por ordem de data';
  Form1.impressao.Open;
  Form1.QuickRep6.preview;      }
end;

procedure TFormLancCana.BitBtn5Click(Sender: TObject);
begin       {
  Form1.impressao.close;
  Form1.impressao.SQL.Clear;
  Form1.impressao.sql.add('select  * from Cana_Preta.db, Dados.db where Placa in ("GTD-0198", "BWG-9442", "MUI-6095") And');
  Form1.impressao.SQL.ADD('Data>=:Data0 and');
  Form1.impressao.SQL.ADD('Data<=:Data1');
  Form1.impressao.sql.add('order by Data');
  Form1.impressao.Params[0].asdatetime := StrtoDate(Mask1.text);
  Form1.impressao.Params[1].asdatetime := StrtoDate(Mask2.text);
  form1.QRLabel20.Caption := 'Frota por ordem de data';
  Form1.impressao.Open;
  Form1.QuickRep6.preview; }
end;

procedure TFormLancCana.BitBtn7Click(Sender: TObject);
begin      {
  Form1.impressao.close;
  Form1.impressao.SQL.Clear;
  Form1.impressao.sql.add('select  * from Cana_Preta.db, Dados.db where Placa in ("CNR-2770", "CNR-2836") And');
  Form1.impressao.SQL.ADD('Data>=:Data0 and');
  Form1.impressao.SQL.ADD('Data<=:Data1');
  Form1.impressao.sql.add('order by Data');
  Form1.impressao.Params[0].asdatetime := StrtoDate(Mask1.text);
  Form1.impressao.Params[1].asdatetime := StrtoDate(Mask2.text);
  form1.QRLabel20.Caption := 'Frota por ordem de data';
  Form1.impressao.Open;
  Form1.QuickRep2.preview;   }
end;

procedure TFormLancCana.SpeedButton5Click(Sender: TObject);
begin
TCanaPreta.Delete;
end;

end.
