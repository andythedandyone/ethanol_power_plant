unit UnitRelatCana;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, Buttons, ExtCtrls;

type
  TFormRelatCana = class(TForm)
    Panel3: TPanel;
    BitBtn1: TBitBtn;
    Mask1: TMaskEdit;
    Mask2: TMaskEdit;
    BitBtn2: TBitBtn;
    Edit4: TEdit;
    BitBtn3: TBitBtn;
    Edit5: TEdit;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatCana: TFormRelatCana;

implementation

uses UnitRelatLancItem;

{$R *.DFM}

procedure TFormRelatCana.Button1Click(Sender: TObject);
begin
FormRelatCana.BitBtn2.Enabled := False;
FormRelatCana.Edit4.Enabled := False;
FormRelatCana.BitBtn3.Enabled := False;
FormRelatCana.Edit5.Enabled := False;
FormRelatCana.BitBtn4.Enabled := False;
FormRelatCana.BitBtn5.Enabled := False;
FormRelatCana.BitBtn6.Enabled := False;
FormRelatCana.BitBtn7.Enabled := false;
FormRelatCana.BitBtn1.Enabled := False;
FormRelatCana.Mask1.Text := '';
FormRelatCana.Mask2.Text := '';
Close;
end;

procedure TFormRelatCana.BitBtn1Click(Sender: TObject);
begin
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
Form1.QuickRep2.preview;
end;

procedure TFormRelatCana.BitBtn2Click(Sender: TObject);
begin
  with Form1.impressao do
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
  Form1.QuickRep2.preview;
end;

procedure TFormRelatCana.BitBtn3Click(Sender: TObject);
begin
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
end;

procedure TFormRelatCana.BitBtn4Click(Sender: TObject);
begin
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
Form1.QuickRep2.preview;
end;

procedure TFormRelatCana.BitBtn5Click(Sender: TObject);
begin
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
  Form1.QuickRep2.preview;
end;

procedure TFormRelatCana.BitBtn6Click(Sender: TObject);
begin
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
  Form1.QuickRep2.preview;
end;

procedure TFormRelatCana.BitBtn7Click(Sender: TObject);
begin
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
  Form1.QuickRep2.preview;
end;

procedure TFormRelatCana.FormCreate(Sender: TObject);
begin
FormRelatCana.BitBtn2.Enabled := False;
FormRelatCana.Edit4.Enabled := False;
FormRelatCana.BitBtn3.Enabled := False;
FormRelatCana.Edit5.Enabled := False;
FormRelatCana.BitBtn4.Enabled := False;
FormRelatCana.BitBtn5.Enabled := False;
FormRelatCana.BitBtn6.Enabled := False;
FormRelatCana.BitBtn7.Enabled := false;
FormRelatCana.BitBtn1.Enabled := False;
end;

end.
