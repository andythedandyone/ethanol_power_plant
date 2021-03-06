unit UnitLancCanaPreta;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Mask, DBCtrls, StdCtrls, Buttons, ExtCtrls, Db, DBTables, Grids, DBGrids;

type
  TFormLancCanaPreta = class(TForm)
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
    Label1: TLabel;
    Label2: TLabel;
    Label7: TLabel;
    Edit1: TEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    DBEdit7: TDBEdit;
    Panel3: TPanel;
    DataFrota: TDataSource;
    TFrota: TTable;
    DataCana: TDataSource;
    TCana: TTable;
    TCanaCod: TAutoIncField;
    TCanaCodigo: TFloatField;
    TCanaFrota_N: TStringField;
    TCanaModelo: TStringField;
    TCanaPlaca: TStringField;
    TCanaNome_Funcionario: TStringField;
    TCanaCod_Propriedade: TFloatField;
    TCanaPropriedade: TStringField;
    TCanaPeso: TFloatField;
    TCanaData: TDateField;
    TCanaCod_Funcionario: TFloatField;
    TCanaNumero_Nota: TFloatField;
    TCanaViagem: TFloatField;
    TCanaValor: TCurrencyField;
    Label9: TLabel;
    DBEdit3: TDBEdit;
    Label10: TLabel;
    DBEdit4: TDBEdit;
    Label12: TLabel;
    DBEdit6: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit8: TDBEdit;
    Label11: TLabel;
    DBEdit9: TDBEdit;
    Label13: TLabel;
    DBEdit10: TDBEdit;
    DBGrid1: TDBGrid;
    QLocaliza: TQuery;
    DataSource1: TDataSource;
    DataFuncionario: TDataSource;
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
    TPropriedade: TTable;
    TPropriedadeCod: TAutoIncField;
    TPropriedadeCodigo: TFloatField;
    TPropriedadePropriedade: TStringField;
    TPropriedadeDistancia: TFloatField;
    TPropriedadeValor: TCurrencyField;
    TPropriedadeCod_Prop: TFloatField;
    TPropriedadeUsina: TStringField;
    DataPropriedade: TDataSource;
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
    Button1: TButton;
    Button2: TButton;
    TCanaMes: TFloatField;
    Label3: TLabel;
    DBEdit11: TDBEdit;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLancCanaPreta: TFormLancCanaPreta;

implementation

{$R *.DFM}

procedure TFormLancCanaPreta.SpeedButton1Click(Sender: TObject);
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
Edit1.SetFocus;

end;

procedure TFormLancCanaPreta.SpeedButton2Click(Sender: TObject);
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

TCanaCodigo.AsString := TFrotaCodigo.AsString;
TCanaFrota_N.AsString := TFrotaFrota_N.AsString;
TCanaModelo.AsString := TFrotaModelo.AsString;
TCanaPlaca.AsString := TFrotaPlaca.AsString;
TCanaCod_Funcionario.AsString := TFuncionarioCodigo.AsString;
TCanaNome_Funcionario.AsString := TFuncionarioNome.AsString;
TCanaCod_Propriedade.AsString := TPropriedadeCodigo.AsString;
TcanaPropriedade.AsString := TPropriedadePropriedade.AsString;
TCanaValor.AsString := TPropriedadeValor.AsString;
TCana.Post;
//Edit1.Text := '';
Edit2.Text := '';
Edit3.Text := '';


end;

procedure TFormLancCanaPreta.SpeedButton3Click(Sender: TObject);
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
TCana.Edit;
end;

procedure TFormLancCanaPreta.SpeedButton4Click(Sender: TObject);
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
TCana.Cancel;
end;

procedure TFormLancCanaPreta.SpeedButton11Click(Sender: TObject);
begin
close;
end;

procedure TFormLancCanaPreta.SpeedButton7Click(Sender: TObject);
begin
TCana.Prior;
end;

procedure TFormLancCanaPreta.SpeedButton8Click(Sender: TObject);
begin
TCana.Next;
end;

procedure TFormLancCanaPreta.Button1Click(Sender: TObject);
begin
TFrota.Prior;
end;

procedure TFormLancCanaPreta.Button2Click(Sender: TObject);
begin
TFrota.Next;
end;

procedure TFormLancCanaPreta.Edit1Exit(Sender: TObject);
begin
if TFrota.Locate('Frota_N', Edit1.text, []) then
  begin
    TCana.Append;
  end
else
  begin
    ShowMessage('Arquivo N�o Encontrado');
    Edit1.SetFocus;
  end;

end;

procedure TFormLancCanaPreta.Edit2Exit(Sender: TObject);
begin
if TFuncionario.Locate('Codigo', Edit2.text, []) then

end;

procedure TFormLancCanaPreta.Edit3Exit(Sender: TObject);
begin
  if TPropriedade.Locate('Codigo', Edit3.text, []) then
    begin
      if MessageDlg('Deseja Inserir outro Registro', mtConfirmation, [mbYes, MbNo], 0)= mrYes then
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
          TCanaCodigo.AsString := TFrotaCodigo.AsString;
          TCanaFrota_N.AsString := TFrotaFrota_N.AsString;
          TCanaModelo.AsString := TFrotaModelo.AsString;
          TCanaPlaca.AsString := TFrotaPlaca.AsString;
          TCanaCod_Funcionario.AsString := TFuncionarioCodigo.AsString;
          TCanaNome_Funcionario.AsString := TFuncionarioNome.AsString;
          TCanaCod_Propriedade.AsString := TPropriedadeCodigo.AsString;
          TcanaPropriedade.AsString := TPropriedadePropriedade.AsString;
          TCanaValor.AsString := TPropriedadeValor.AsString;
          TCana.Post;
          //Edit1.Text := '';
          //Edit2.Text := '';
          //Edit3.Text := '';
          Edit1.SetFocus;
        end
      else
        begin
          showmessage('nao cadastrado');
          panel1.Enabled := false;
        end;
     end;
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
end;

procedure TFormLancCanaPreta.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_return then
   SelectNext(ActiveControl, true, true);
end;

procedure TFormLancCanaPreta.FormCreate(Sender: TObject);
begin
Panel1.Enabled := False;
end;

procedure TFormLancCanaPreta.SpeedButton5Click(Sender: TObject);
begin
TCana.Delete;
end;

end.
