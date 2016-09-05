unit UnitLancItem;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, StdCtrls, Mask, DBCtrls, ExtCtrls, Db, DBTables, QuickRpt, Qrctrls,
  Buttons, Grids, DBGrids;

type
  TFormLancItem = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
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
    Table1: TTable;
    DataSource1: TDataSource;
    Table1Cod: TAutoIncField;
    Table1Data: TDateField;
    Table1Frota_N: TStringField;
    Table1Km_Atual: TFloatField;
    Table1Item: TStringField;
    Table1Nome: TStringField;
    Table1Quantidade: TFloatField;
    Table1Vr_Unit: TCurrencyField;
    Table1Vr_Total: TCurrencyField;
    Table1Km_Total: TFloatField;
    Table1Km_Media: TFloatField;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    Label12: TLabel;
    DBEdit11: TDBEdit;
    qconsulta: TQuery;
    Table2: TTable;
    DataSource2: TDataSource;
    DBGrid1: TDBGrid;
    Table2Cod: TAutoIncField;
    Table2Codigo: TFloatField;
    Table2Descricao: TStringField;
    Table2Vr_Compra: TCurrencyField;
    Table2Tipo_Produto: TStringField;
    Table2Codigo_Produto: TStringField;
    Table2Vr_Total: TCurrencyField;
    Table2Quantidade: TFloatField;
    Table2Data_Compra: TFloatField;
    Table2Saldo: TFloatField;
    Table2Data: TDateField;
    procedure Sair1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBEdit5Enter(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLancItem: TFormLancItem;

implementation

uses UnitRelatLancItem;

{$R *.DFM}

procedure TFormLancItem.Sair1Click(Sender: TObject);
begin
close;
end;

procedure TFormLancItem.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_return then
   SelectNext(ActiveControl, true, true);
end;

procedure TFormLancItem.SpeedButton4Click(Sender: TObject);
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
Table1.Cancel;
Panel1.Enabled := False;
end;

procedure TFormLancItem.SpeedButton3Click(Sender: TObject);
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
Table1.Edit;
Panel1.Enabled := True;
end;

procedure TFormLancItem.SpeedButton2Click(Sender: TObject);
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
Table1.Post;
Table2.Post;
Panel1.Enabled := False;
end;

procedure TFormLancItem.SpeedButton1Click(Sender: TObject);
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
Table1.Append;
Panel1.Enabled := True;
DbEdit2.SetFocus;
end;

procedure TFormLancItem.SpeedButton11Click(Sender: TObject);
begin
close;
end;

procedure TFormLancItem.FormCreate(Sender: TObject);
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

procedure TFormLancItem.DBEdit3Exit(Sender: TObject);
var
frota : string;
begin
with qconsulta do
  begin
    close;
    sql.Clear;
    sql.Add('select frota_N, modelo from frota.db where frota_N='''+dbedit3.text+'''');
    open;
    frota := fieldbyname('modelo').asstring;
    dbedit6.text := frota;
  end;  
end;

procedure TFormLancItem.DBEdit5Enter(Sender: TObject);
 var
  nome : string;
begin
  nome := '';
  if InputQuery('Localizar', 'Nome',Nome) then
    begin
     WITH QCONSULTA DO
       BEGIN
         CLOSE;
         SQL.Clear;
         SQL.Add('SELECT DESCRICAO, CODIGO_PRODUTO, VR_COMPRA FROM CAD_ITEM.DB WHERE CODIGO_PRODUTO LIKE ''%'+NOME+'%''');
         OPEN;
         DBEDIT5.Text := FIELDBYNAME('DESCRICAO').ASSTRING;
         DBEDIT8.Text := FIELDBYNAME('VR_COMPRA').ASSTRING;
       END;

    end;

   if not table2.locate('Codigo_Produto', nome,[locaseinsensitive, lopartialkey]) then
      showmessage('Codigo não encontrado');

end;


procedure TFormLancItem.SpeedButton5Click(Sender: TObject);
begin
Table1.Delete;
end;

procedure TFormLancItem.SpeedButton6Click(Sender: TObject);
begin
Table1.First;
end;

procedure TFormLancItem.SpeedButton7Click(Sender: TObject);
begin
Table1.Prior;
end;

procedure TFormLancItem.SpeedButton8Click(Sender: TObject);
begin
Table1.Next;
end;

procedure TFormLancItem.SpeedButton9Click(Sender: TObject);
begin
Table1.Last;
end;

procedure TFormLancItem.DBEdit7Exit(Sender: TObject);
begin
  DbEdit9.Text := FloatToStr(StrToFloat(DbEdit7.Text) * StrToFloat(DbEdit8.Text));
  DbEdit11.Text := FloatToStr(StrToFloat(Table2Saldo.AsString) - StrToFloat(DbEdit7.Text));
  TABLE2.Edit;
  TABLE2SALDO.VALUE := StrToFloat(DBEDIT11.Text);
end;

procedure TFormLancItem.SpeedButton10Click(Sender: TObject);
begin
Form1.impressao.close;
Form1.impressao.SQL.Clear;
//form2.query1.sql.add('select codigo, data, pago, total, dadosfundo.codigo, dadosfundo.fundo, dadosfundo.proprietario,dadosfundo.sacarose from pagamento.db inner join dadosfundo.db on codigo = dadosfundo.codigo where');
//form1.query1.sql.add('select codigo, fundo, proprietario, sacarose, pagamento.codigo, pagamento.data, pagamento.pago, pagamento.pago, pagamento.total from dadosfundo join pagamento on codigo = pagamento.codigo SUM(PAGO) where');
//Form2.Query1.SQL.ADD('Select * from pagamento.db,  dadosfundo.db where');
Form1.impressao.sql.add('select  * from item.db ');
//Form1.Query1.SQL.ADD('Data=:Data0 AND');
//Form1.Query1.SQL.ADD('Data=:Data1');
//form2.query1.sql.add('order by Codigo');
//Form1.Query1.Params[0].asdatetime := StrtoDate(Edit1.text);
//Form1.Query1.Params[1].asdatetime := StrtoDate(Edit2.text);

Form1.impressao.Open;
Form1.QuickRep1.preview;

//form2.showmodal;
end;

end.
