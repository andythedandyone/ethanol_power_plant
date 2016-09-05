unit UnitCadPropriedade;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, ExtCtrls, StdCtrls, Mask, DBCtrls, Db, DBTables, Grids, DBGrids;

type
  TFormCadPropriedade = class(TForm)
    Panel1: TPanel;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    SpeedButton14: TSpeedButton;
    SpeedButton15: TSpeedButton;
    SpeedButton16: TSpeedButton;
    SpeedButton17: TSpeedButton;
    SpeedButton18: TSpeedButton;
    SpeedButton19: TSpeedButton;
    SpeedButton20: TSpeedButton;
    SpeedButton21: TSpeedButton;
    SpeedButton22: TSpeedButton;
    Panel4: TPanel;
    Label6: TLabel;
    Label13: TLabel;
    DBEdit6: TDBEdit;
    DBEdit13: TDBEdit;
    Panel5: TPanel;
    SpeedButton23: TSpeedButton;
    SpeedButton24: TSpeedButton;
    Panel2: TPanel;
    Table1: TTable;
    DataSource1: TDataSource;
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
    Table2: TTable;
    DataSource2: TDataSource;
    DBGrid1: TDBGrid;
    Table2Cod: TAutoIncField;
    Table2Codigo: TFloatField;
    Table2Propriedade: TStringField;
    Table2Distancia: TFloatField;
    Table2Valor: TCurrencyField;
    Table2Cod_Prop: TFloatField;
    Table2Usina: TStringField;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure SpeedButton15Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton23Click(Sender: TObject);
    procedure SpeedButton24Click(Sender: TObject);
    procedure SpeedButton16Click(Sender: TObject);
    procedure SpeedButton17Click(Sender: TObject);
    procedure SpeedButton18Click(Sender: TObject);
    procedure SpeedButton19Click(Sender: TObject);
    procedure SpeedButton20Click(Sender: TObject);
    procedure SpeedButton22Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton21Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadPropriedade: TFormCadPropriedade;

implementation

uses UnitRelatLancItem;

{$R *.DFM}

procedure TFormCadPropriedade.SpeedButton1Click(Sender: TObject);
begin
SpeedButton12.Enabled := False;
SpeedButton13.Enabled := True;
SpeedButton14.Enabled := False;
SpeedButton15.Enabled := True;
SpeedButton16.Enabled := False;
SpeedButton17.Enabled := False;
SpeedButton18.Enabled := False;
SpeedButton19.Enabled := False;
SpeedButton20.Enabled := False;
SpeedButton21.Enabled := False;
SpeedButton22.Enabled := False;
//*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*\\
DbEdit2.Setfocus;
Table2.Append;


end;

procedure TFormCadPropriedade.SpeedButton14Click(Sender: TObject);
begin
SpeedButton12.Enabled := False;
SpeedButton13.Enabled := True;
SpeedButton14.Enabled := False;
SpeedButton15.Enabled := True;
SpeedButton16.Enabled := False;
SpeedButton17.Enabled := False;
SpeedButton18.Enabled := False;
SpeedButton19.Enabled := False;
SpeedButton20.Enabled := False;
SpeedButton21.Enabled := False;
SpeedButton22.Enabled := False;
Table2.Edit;
end;

procedure TFormCadPropriedade.SpeedButton13Click(Sender: TObject);
begin
SpeedButton12.Enabled := True;
SpeedButton13.Enabled := False;
SpeedButton14.Enabled := True;
SpeedButton15.Enabled := False;
SpeedButton16.Enabled := True;
SpeedButton17.Enabled := True;
SpeedButton18.Enabled := True;
SpeedButton19.Enabled := True;
SpeedButton20.Enabled := True;
SpeedButton21.Enabled := True;
SpeedButton22.Enabled := True;
Table2.Post;
end;

procedure TFormCadPropriedade.SpeedButton15Click(Sender: TObject);
begin
SpeedButton12.Enabled := True;
SpeedButton13.Enabled := False;
SpeedButton14.Enabled := True;
SpeedButton15.Enabled := False;
SpeedButton16.Enabled := True;
SpeedButton17.Enabled := True;
SpeedButton18.Enabled := True;
SpeedButton19.Enabled := True;
SpeedButton20.Enabled := True;
SpeedButton21.Enabled := True;
SpeedButton22.Enabled := True;
Table2.Cancel;
end;

procedure TFormCadPropriedade.FormCreate(Sender: TObject);
begin
SpeedButton12.Enabled := True;
SpeedButton13.Enabled := False;
SpeedButton14.Enabled := True;
SpeedButton15.Enabled := False;
SpeedButton16.Enabled := True;
SpeedButton17.Enabled := True;
SpeedButton18.Enabled := True;
SpeedButton19.Enabled := True;
SpeedButton20.Enabled := True;
SpeedButton21.Enabled := True;
SpeedButton22.Enabled := True;
end;

procedure TFormCadPropriedade.SpeedButton23Click(Sender: TObject);
begin
Table1.Prior;
end;

procedure TFormCadPropriedade.SpeedButton24Click(Sender: TObject);
begin
Table1.Next;
end;

procedure TFormCadPropriedade.SpeedButton16Click(Sender: TObject);
begin
Table2.Delete;
end;

procedure TFormCadPropriedade.SpeedButton17Click(Sender: TObject);
begin
Table2.First;
end;

procedure TFormCadPropriedade.SpeedButton18Click(Sender: TObject);
begin
Table2.Prior;
end;

procedure TFormCadPropriedade.SpeedButton19Click(Sender: TObject);
begin
Table2.Next;
end;

procedure TFormCadPropriedade.SpeedButton20Click(Sender: TObject);
begin
Table2.Last;
end;

procedure TFormCadPropriedade.SpeedButton22Click(Sender: TObject);
begin
Close;
end;

procedure TFormCadPropriedade.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_return then
   SelectNext(ActiveControl, true, true);
end;

procedure TFormCadPropriedade.SpeedButton21Click(Sender: TObject);
begin
Form1.impressao.close;
Form1.impressao.SQL.Clear;
Form1.impressao.sql.add('select Codigo, Propriedade, Distancia, Valor from Cad_Propriedade.db');
Form1.impressao.sql.add('order by codigo');
Form1.impressao.Open;
Form1.QuickRep5.preview;
end;

end.
