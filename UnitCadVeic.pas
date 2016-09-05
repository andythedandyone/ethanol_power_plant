unit UnitCadVeic;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, StdCtrls, Mask, DBCtrls, ExtCtrls, Db, DBTables, Buttons, Grids,
  DBGrids;

type
  TFormCadVeic = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    Panel2: TPanel;
    Label6: TLabel;
    DBEdit12: TDBEdit;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    Label12: TLabel;
    DBEdit8: TDBEdit;
    DBEdit7: TDBEdit;
    Label11: TLabel;
    Panel3: TPanel;
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
    Table2: TTable;
    DataSource2: TDataSource;
    Query1: TQuery;
    DataSource3: TDataSource;
    Table2Cod: TAutoIncField;
    Table2Codigo: TFloatField;
    Table2Nome: TStringField;
    Table1Cod: TAutoIncField;
    Table1Codigo: TFloatField;
    Table1Frota_N: TStringField;
    Table1Proprietario: TStringField;
    Table1Modelo: TStringField;
    Table1Placa: TStringField;
    Table1Chassis_N: TStringField;
    Table1Ano: TDateField;
    Table1Km_Inicial: TFloatField;
    Table1Tipo_Medidor: TStringField;
    Table1Data_Compra: TDateField;
    Table1Cor: TStringField;
    Panel4: TPanel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    Panel5: TPanel;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    DBGrid1: TDBGrid;
    procedure Sair1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadVeic: TFormCadVeic;

implementation

{$R *.DFM}

procedure TFormCadVeic.Sair1Click(Sender: TObject);
begin
close;
end;

procedure TFormCadVeic.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_return then
   SelectNext(ActiveControl, true, true);
end;

procedure TFormCadVeic.SpeedButton1Click(Sender: TObject);
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
Panel5.Enabled := False;
DbEdit2.SetFocus;
//-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*\\
Table1.Append;
end;

procedure TFormCadVeic.SpeedButton2Click(Sender: TObject);
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
Panel5.Enabled := True;
Table1.Post;
end;

procedure TFormCadVeic.SpeedButton3Click(Sender: TObject);
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
Panel5.Enabled := False;
Table1.Edit;
end;

procedure TFormCadVeic.SpeedButton4Click(Sender: TObject);
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
Panel5.Enabled := True;
Table1.Cancel;
end;

procedure TFormCadVeic.SpeedButton11Click(Sender: TObject);
begin
close;
end;

procedure TFormCadVeic.FormCreate(Sender: TObject);
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
Panel4.Enabled := False;
Panel5.Enabled := True;

end;

procedure TFormCadVeic.SpeedButton5Click(Sender: TObject);
begin
Table1.Delete;
end;

procedure TFormCadVeic.SpeedButton6Click(Sender: TObject);
begin
Table1.First;
end;

procedure TFormCadVeic.SpeedButton7Click(Sender: TObject);
begin
Table1.Prior;
end;

procedure TFormCadVeic.SpeedButton8Click(Sender: TObject);
begin
Table1.Next;
end;

procedure TFormCadVeic.SpeedButton9Click(Sender: TObject);
begin
Table1.Last;
end;

procedure TFormCadVeic.DBEdit3Exit(Sender: TObject);
begin
with query1 do
  begin
    close;
    sql.Clear;
    sql.Add('select cod, nome from proprietario.db where cod='''+dbedit2.text+'''');
    open;
    dbedit13.text := fieldbyname('nome').asstring
  end;
end;
procedure TFormCadVeic.Edit1Exit(Sender: TObject);
begin
with query1 do
  begin
    close;
    sql.Clear;
    sql.Add('select cod, nome from proprietario.db where cod='''+dbedit2.text+'''');
    open;
    dbedit13.text := fieldbyname('nome').asstring
  end;
end;

procedure TFormCadVeic.SpeedButton12Click(Sender: TObject);
begin
Table2.Prior;
end;

procedure TFormCadVeic.SpeedButton13Click(Sender: TObject);
begin
Table2.Next;
end;

end.
