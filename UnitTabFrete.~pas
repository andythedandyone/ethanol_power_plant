unit UnitTabFrete;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, ExtCtrls, StdCtrls, Buttons, Db, DBTables, Mask, DBCtrls, Grids,
  DBGrids;

type
  TFormTabFrete = class(TForm)
    Panel1: TPanel;
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
    Panel3: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Panel4: TPanel;
    DBEdit6: TDBEdit;
    Label6: TLabel;
    DBEdit7: TDBEdit;
    Label7: TLabel;
    DBEdit8: TDBEdit;
    Label8: TLabel;
    Table1: TTable;
    DataSource1: TDataSource;
    Table2: TTable;
    DataSource2: TDataSource;
    Panel5: TPanel;
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
    DBGrid1: TDBGrid;
    procedure Sair2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure SpeedButton15Click(Sender: TObject);
    procedure SpeedButton16Click(Sender: TObject);
    procedure SpeedButton17Click(Sender: TObject);
    procedure SpeedButton18Click(Sender: TObject);
    procedure SpeedButton19Click(Sender: TObject);
    procedure SpeedButton20Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTabFrete: TFormTabFrete;

implementation

{$R *.DFM}

procedure TFormTabFrete.Sair2Click(Sender: TObject);
begin
close;
end;

procedure TFormTabFrete.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_return then
   SelectNext(ActiveControl, true, true);
end;

procedure TFormTabFrete.SpeedButton11Click(Sender: TObject);
begin
close;
end;

procedure TFormTabFrete.SpeedButton1Click(Sender: TObject);
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
Panel3.Enabled := True;
Table1.Append;
DbEdit5.SetFocus;

end;

procedure TFormTabFrete.SpeedButton2Click(Sender: TObject);
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
Panel3.Enabled := False;
Table1.Post;
end;

procedure TFormTabFrete.SpeedButton3Click(Sender: TObject);
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
Panel3.Enabled := False;
Table1.Edit;
end;

procedure TFormTabFrete.SpeedButton4Click(Sender: TObject);
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
Panel3.Enabled := False;
Table1.Cancel;
end;

procedure TFormTabFrete.FormCreate(Sender: TObject);
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
Panel5.Enabled := False;
Panel3.Enabled := False;
DbGrid1.Enabled := False;

end;

procedure TFormTabFrete.SpeedButton5Click(Sender: TObject);
begin
Table1.Delete;
end;

procedure TFormTabFrete.SpeedButton6Click(Sender: TObject);
begin
Table1.First;
end;

procedure TFormTabFrete.SpeedButton7Click(Sender: TObject);
begin
Table1.Prior;
end;

procedure TFormTabFrete.SpeedButton8Click(Sender: TObject);
begin
Table1.Next;
end;

procedure TFormTabFrete.SpeedButton9Click(Sender: TObject);
begin
Table1.Last;
end;

procedure TFormTabFrete.SpeedButton12Click(Sender: TObject);
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
Panel5.Enabled := True;
Table2.Append;
DbEdit8.SetFocus;
end;

procedure TFormTabFrete.SpeedButton13Click(Sender: TObject);
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
Panel5.Enabled := False;
Table2.Post;
end;

procedure TFormTabFrete.SpeedButton14Click(Sender: TObject);
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
Panel5.Enabled := True;
Table2.Edit;
end;

procedure TFormTabFrete.SpeedButton15Click(Sender: TObject);
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
Panel5.Enabled := False;
Table2.Cancel;
end;

procedure TFormTabFrete.SpeedButton16Click(Sender: TObject);
begin
Table2.Delete;
end;

procedure TFormTabFrete.SpeedButton17Click(Sender: TObject);
begin
Table2.First;
end;

procedure TFormTabFrete.SpeedButton18Click(Sender: TObject);
begin
Table2.Prior;
end;

procedure TFormTabFrete.SpeedButton19Click(Sender: TObject);
begin
Table2.Next;
end;

procedure TFormTabFrete.SpeedButton20Click(Sender: TObject);
begin
Table2.Last;
end;

end.
