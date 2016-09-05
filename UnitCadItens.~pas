unit UnitCadItens;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, StdCtrls, Mask, DBCtrls, ExtCtrls, Db, DBTables, Grids, DBGrids,
  Buttons;

type
  TFormCadItens = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
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
    SpeedButton12: TSpeedButton;
    Table1: TTable;
    DataSource1: TDataSource;
    Table1Cod: TAutoIncField;
    Table1Codigo: TFloatField;
    Table1Descricao: TStringField;
    Table1Vr_Compra: TCurrencyField;
    Table1Tipo_Produto: TStringField;
    Table1Codigo_Produto: TStringField;
    Table1Vr_Total: TCurrencyField;
    Table1Quantidade: TFloatField;
    Table1Data_Compra: TFloatField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
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
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Table1Saldo: TFloatField;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Table1Data: TDateField;
    procedure Sair1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadItens: TFormCadItens;

implementation

uses UnitCadTipoItem;

{$R *.DFM}

procedure TFormCadItens.Sair1Click(Sender: TObject);
begin
close;
end;

procedure TFormCadItens.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_return then
   SelectNext(ActiveControl, true, true);
end;

procedure TFormCadItens.SpeedButton1Click(Sender: TObject);
begin
FormCadTipoItem.Showmodal;
end;

procedure TFormCadItens.SpeedButton2Click(Sender: TObject);
begin
SpeedButton2.Enabled := False;
SpeedButton3.Enabled := True;
SpeedButton4.Enabled := False;
SpeedButton5.Enabled := True;
SpeedButton6.Enabled := False;
SpeedButton7.Enabled := False;
SpeedButton8.Enabled := False;
SpeedButton9.Enabled := False;
SpeedButton10.Enabled := False;
SpeedButton11.Enabled := False;
SpeedButton12.Enabled := False;
Panel1.Enabled := True;
DbEdit8.SetFocus;
Table1.Append;
end;

procedure TFormCadItens.SpeedButton3Click(Sender: TObject);
begin
SpeedButton2.Enabled := True;
SpeedButton3.Enabled := False;
SpeedButton4.Enabled := True;
SpeedButton5.Enabled := False;
SpeedButton6.Enabled := True;
SpeedButton7.Enabled := True;
SpeedButton8.Enabled := True;
SpeedButton9.Enabled := True;
SpeedButton10.Enabled := True;
SpeedButton11.Enabled := True;
SpeedButton12.Enabled := True;
Panel1.Enabled := False;
Table1.Post;
end;

procedure TFormCadItens.SpeedButton4Click(Sender: TObject);
begin
SpeedButton2.Enabled := False;
SpeedButton3.Enabled := True;
SpeedButton4.Enabled := False;
SpeedButton5.Enabled := True;
SpeedButton6.Enabled := False;
SpeedButton7.Enabled := False;
SpeedButton8.Enabled := False;
SpeedButton9.Enabled := False;
SpeedButton10.Enabled := False;
SpeedButton11.Enabled := False;
SpeedButton12.Enabled := False;
Panel1.Enabled := True;
Table1.Edit;
end;

procedure TFormCadItens.SpeedButton5Click(Sender: TObject);
begin
SpeedButton2.Enabled := True;
SpeedButton3.Enabled := False;
SpeedButton4.Enabled := True;
SpeedButton5.Enabled := False;
SpeedButton6.Enabled := True;
SpeedButton7.Enabled := True;
SpeedButton8.Enabled := True;
SpeedButton9.Enabled := True;
SpeedButton10.Enabled := True;
SpeedButton11.Enabled := True;
SpeedButton12.Enabled := True;
Panel1.Enabled := False;
Table1.Cancel;
end;

procedure TFormCadItens.SpeedButton12Click(Sender: TObject);
begin
close;
end;

procedure TFormCadItens.FormCreate(Sender: TObject);
begin
SpeedButton2.Enabled := True;
SpeedButton3.Enabled := False;
SpeedButton4.Enabled := True;
SpeedButton5.Enabled := False;
SpeedButton6.Enabled := True;
SpeedButton7.Enabled := True;
SpeedButton8.Enabled := True;
SpeedButton9.Enabled := True;
SpeedButton10.Enabled := True;
SpeedButton11.Enabled := True;
SpeedButton12.Enabled := True;
Panel1.Enabled := False;
end;

procedure TFormCadItens.SpeedButton6Click(Sender: TObject);
begin
Table1.Delete;
end;

procedure TFormCadItens.SpeedButton7Click(Sender: TObject);
begin
Table1.First;
end;

procedure TFormCadItens.SpeedButton8Click(Sender: TObject);
begin
Table1.Prior;
end;

procedure TFormCadItens.SpeedButton9Click(Sender: TObject);
begin
Table1.Next;
end;

procedure TFormCadItens.SpeedButton10Click(Sender: TObject);
begin
Table1.Last;
end;

procedure TFormCadItens.DBEdit7Exit(Sender: TObject);
begin
if Table1Saldo.Value = 0 then
   DbEdit9.Text := DbEdit7.Text
else
DbEdit9.Text := FloatToStr(StrToFloat(DbEdit7.Text) + StrToFloat(Table1Saldo.AsString));
end;

procedure TFormCadItens.DBEdit3Exit(Sender: TObject);
begin
DbEdit6.Text:= FloatToStr(StrToFloat(Table1Quantidade.AsString) * StrToFloat(Table1Vr_Compra.AsString));
end;

end.
