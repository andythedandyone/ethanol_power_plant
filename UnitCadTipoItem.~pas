unit UnitCadTipoItem;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Db, DBTables, Buttons, ExtCtrls;

type
  TFormCadTipoItem = class(TForm)
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
    Table1Codigo: TAutoIncField;
    Table1Retencao: TFloatField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Table1Valor_Litro: TCurrencyField;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    procedure BitBtn3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadTipoItem: TFormCadTipoItem;

implementation

{$R *.DFM}

procedure TFormCadTipoItem.BitBtn3Click(Sender: TObject);
begin
close;
end;

procedure TFormCadTipoItem.SpeedButton1Click(Sender: TObject);
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
table1.append;
end;

procedure TFormCadTipoItem.SpeedButton2Click(Sender: TObject);
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
table1.post;
end;

procedure TFormCadTipoItem.SpeedButton3Click(Sender: TObject);
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
table1.edit;
end;

procedure TFormCadTipoItem.SpeedButton4Click(Sender: TObject);
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
end;

procedure TFormCadTipoItem.SpeedButton11Click(Sender: TObject);
begin
close;
end;

procedure TFormCadTipoItem.Panel2Click(Sender: TObject);
begin
table1.cancel;
end;

end.
