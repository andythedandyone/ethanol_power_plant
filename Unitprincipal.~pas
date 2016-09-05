unit Unitprincipal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, ToolWin, ComCtrls, Menus, Grids, Calendar;

type
  TFormGerencia = class(TForm)
    MainMenu1: TMainMenu;
    CADASTRO1: TMenuItem;
    Proprietario1: TMenuItem;
    Veiculos2: TMenuItem;
    Itens2: TMenuItem;
    TabeladeFretes2: TMenuItem;
    Funcionrios2: TMenuItem;
    Sair1: TMenuItem;
    LANAMENTOS1: TMenuItem;
    Itens1: TMenuItem;
    Cana1: TMenuItem;
    CanaUsina1: TMenuItem;
    ITENS3: TMenuItem;
    Impresso1: TMenuItem;
    Pesquisa1: TMenuItem;
    SAIR2: TMenuItem;
    CadastrodePropriedades1: TMenuItem;
    Cotao1: TMenuItem;
    Combustivel1: TMenuItem;
    Combustivel2: TMenuItem;
    N21: TMenuItem;
    LANCAMENTOPORDATA1: TMenuItem;
    N2428Gerra1: TMenuItem;
    N2219FNV1: TMenuItem;
    FrotaMotorista1: TMenuItem;
    Frota1: TMenuItem;
    Motorista1: TMenuItem;
    Datas1: TMenuItem;
    CanaPlantada1: TMenuItem;
    procedure SpeedButton10Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure SAIR2Click(Sender: TObject);
    procedure Proprietario1Click(Sender: TObject);
    procedure Veiculos2Click(Sender: TObject);
    procedure Itens2Click(Sender: TObject);
    procedure TabeladeFretes2Click(Sender: TObject);
    procedure Funcionrios2Click(Sender: TObject);
    procedure Itens1Click(Sender: TObject);
    procedure Cana1Click(Sender: TObject);
    procedure CadastrodePropriedades1Click(Sender: TObject);
    procedure Cotao1Click(Sender: TObject);
    procedure Combustivel1Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure CanaUsina1Click(Sender: TObject);
    procedure LANCAMENTOPORDATA1Click(Sender: TObject);
    procedure N2428Gerra1Click(Sender: TObject);
    procedure N2219FNV1Click(Sender: TObject);
    procedure FrotaMotorista1Click(Sender: TObject);
    procedure Frota1Click(Sender: TObject);
    procedure Motorista1Click(Sender: TObject);
    procedure Datas1Click(Sender: TObject);
    procedure CanaPlantada1Click(Sender: TObject);
    procedure Pesquisa1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormGerencia: TFormGerencia;

implementation

uses UnitCadProp, UnitCadVeic, UnitCadItens, UnitTabFrete, UnitCadFunc,
  UnitLancItem, UnitLancCana, UnitCadPropriedade, UnitCadTipoItem, UnitLancCombustivel,
  UnitDataRelatorio, UnitLancCanaPreta, UnitRelatCana, UnitPlantio,
  UnitRelatLancItem;

{$R *.DFM}

procedure TFormGerencia.SpeedButton10Click(Sender: TObject);
begin
close
end;

procedure TFormGerencia.Sair1Click(Sender: TObject);
begin
close;
end;

procedure TFormGerencia.SAIR2Click(Sender: TObject);
begin
close;
end;

procedure TFormGerencia.Proprietario1Click(Sender: TObject);
begin
FormCadProp.showmodal;
end;

procedure TFormGerencia.Veiculos2Click(Sender: TObject);
begin
FormCadVeic.ShowModal;
end;

procedure TFormGerencia.Itens2Click(Sender: TObject);
begin
FormCadItens.showmodal;
end;

procedure TFormGerencia.TabeladeFretes2Click(Sender: TObject);
begin
FormTabFrete.ShowModal;
end;

procedure TFormGerencia.Funcionrios2Click(Sender: TObject);
begin
FormCadFunc.ShowModal;
end;

procedure TFormGerencia.Itens1Click(Sender: TObject);
begin
FormLancItem.ShowModal;
end;

procedure TFormGerencia.Cana1Click(Sender: TObject);
begin
FormLancCana.ShowModal;
end;

procedure TFormGerencia.CadastrodePropriedades1Click(Sender: TObject);
begin
FormCadPropriedade.showmodal;
end;

procedure TFormGerencia.Cotao1Click(Sender: TObject);
begin
  formCadTipoItem.showmodal;
end;

procedure TFormGerencia.Combustivel1Click(Sender: TObject);
begin
FormLancCombustivel.showmodal;
end;

procedure TFormGerencia.N21Click(Sender: TObject);
begin
  FormDataRelatorio.ShowModal;
end;

procedure TFormGerencia.CanaUsina1Click(Sender: TObject);
begin
FormLancCanaPreta.ShowModal;
end;

procedure TFormGerencia.LANCAMENTOPORDATA1Click(Sender: TObject);
begin
FormRelatCana.BitBtn5.Enabled := True;
FormRelatCana.ShowModal;
end;

procedure TFormGerencia.N2428Gerra1Click(Sender: TObject);
begin
FormRelatCana.BitBtn7.Enabled := True;
FormRelatCana.ShowModal;
end;

procedure TFormGerencia.N2219FNV1Click(Sender: TObject);
begin
FormRelatCana.BitBtn6.Enabled := True;
FormRelatCana.ShowModal;
end;

procedure TFormGerencia.FrotaMotorista1Click(Sender: TObject);
begin

FormRelatCana.Edit4.Enabled := True;
FormRelatCana.BitBtn4.Enabled := True;
FormRelatCana.Edit5.Enabled := True;
FormRelatCana.ShowModal;
end;

procedure TFormGerencia.Frota1Click(Sender: TObject);
begin
FormRelatCana.BitBtn2.Enabled := True;
FormRelatCana.Edit4.Enabled := True;
FormRelatCana.ShowModal;
end;

procedure TFormGerencia.Motorista1Click(Sender: TObject);
begin
FormRelatCana.BitBtn3.Enabled := True;
FormRelatCana.Edit5.Enabled := True;
FormRelatCana.ShowModal;
end;

procedure TFormGerencia.Datas1Click(Sender: TObject);
begin
FormRelatCana.BitBtn1.Enabled := True;
FormRelatCana.ShowModal;
end;

procedure TFormGerencia.CanaPlantada1Click(Sender: TObject);
begin
FormPlantio.ShowModal;
end;

procedure TFormGerencia.Pesquisa1Click(Sender: TObject);
begin
    With Form1.impressao do
      begin
        Close;
        Form1.impressao.Sql.Clear;
        Form1.impressao.Sql.Add('Select Modelo, Placa, Data, Litros, Media, Media_Litro, Valor_Total from combustivel');
        Form1.impressao.Sql.Add('Select * from Plantio.db where');
        Form1.impressao.SQL.ADD('Data>=:Data0 and');
        Form1.impressao.SQL.ADD('Data<=:Data1 and');
//        Form1.impressao.SQL.ADD('Modelo = M. BENZ/L 2219');
//        form1.impressao.sql.add('order by Data');
//        Form1.impressao.Params[0].asdatetime := StrtoDate(Mask1.text);
//        Form1.impressao.Params[1].asdatetime := StrtoDate(Mask2.text);
//        Form1.impressao.Params[2].asstring := ComboBox1.Text;
        Form1.impressao.Sql.Add('Group by Modelo');
        Form1.impressao.Sql.Add('Order by Data');
        Open;
      end;
   form1.quickrep7.preview;
end;

end.
