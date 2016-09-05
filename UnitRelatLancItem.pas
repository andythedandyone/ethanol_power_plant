unit UnitRelatLancItem;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, Qrctrls, Db, DBTables, ExtCtrls, RLReport, ADODB;

type
  TForm1 = class(TForm)
    QuickRep1: TQuickRep;
    DataSource1: TDataSource;
    impressao: TQuery;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText9: TQRDBText;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QuickRep2: TQuickRep;
    DetailBand2: TQRBand;
    QRDBText6: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    PageHeaderBand2: TQRBand;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    DetailBand3: TQRBand;
    QRExpr1: TQRExpr;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRExpr2: TQRExpr;
    QRLabel27: TQRLabel;
    QRExpr3: TQRExpr;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRExpr6: TQRExpr;
    QuickRep3: TQuickRep;
    QuickRep4: TQuickRep;
    QRBand4: TQRBand;
    DetailBand4: TQRBand;
    QRDBText23: TQRDBText;
    QRDBText29: TQRDBText;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRDBText31: TQRDBText;
    QRDBText39: TQRDBText;
    QRDBText40: TQRDBText;
    QRExpr14: TQRExpr;
    PageFooterBand1: TQRBand;
    QRLabel56: TQRLabel;
    QRLabel57: TQRLabel;
    QRLabel58: TQRLabel;
    QRDBText18: TQRDBText;
    QRLabel60: TQRLabel;
    DataSource2: TDataSource;
    Table1: TTable;
    Table1Cod: TAutoIncField;
    Table1Codigo: TFloatField;
    Table1Propriedade: TStringField;
    Table1Distancia: TFloatField;
    Table1Valor: TCurrencyField;
    Table1Cod_Prop: TFloatField;
    Table1Usina: TStringField;
    QRExpr18: TQRExpr;
    QRExpr19: TQRExpr;
    QuickRep5: TQuickRep;
    QRBand5: TQRBand;
    QRLabel61: TQRLabel;
    QRBand6: TQRBand;
    QRDBText19: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    Table2: TTable;
    Table2Codigo: TAutoIncField;
    Table2Frota_N: TStringField;
    Table2Funcionario: TStringField;
    Table2Data: TDateField;
    Table2Litros: TFloatField;
    Table2Km_Ini: TFloatField;
    Table2Km_Fin: TFloatField;
    Table2Media: TFloatField;
    Table2Media_Litro: TFloatField;
    Table2Valor_Total: TCurrencyField;
    Table2N_Nota_Fiscal: TStringField;
    Table2Placa: TStringField;
    Table2Cod: TFloatField;
    Table2Modelo: TStringField;
    Table3: TTable;
    DataSource3: TDataSource;
    Table3Codigo: TAutoIncField;
    Table3Frota_N: TStringField;
    Table3Funcionario: TStringField;
    Table3Data: TDateField;
    Table3Litros: TFloatField;
    Table3Km_Ini: TFloatField;
    Table3Km_Fin: TFloatField;
    Table3Media: TFloatField;
    Table3Media_Litro: TFloatField;
    Table3Valor_Total: TCurrencyField;
    Table3N_Nota_Fiscal: TStringField;
    Table3Placa: TStringField;
    Table3Cod: TFloatField;
    Table3Modelo: TStringField;
    MediakM: TQRLabel;
    Media: TQRLabel;
    Litros: TQRLabel;
    QRLabel62: TQRLabel;
    SomaValor: TQRLabel;
    Contador: TQRLabel;
    QRShape1: TQRShape;
    QRSysData3: TQRSysData;
    QRSysData4: TQRSysData;
    QRLabel32: TQRLabel;
    QuickRep6: TQuickRep;
    QRBand7: TQRBand;
    QRBand8: TQRBand;
    QRDBText28: TQRDBText;
    QRDBText30: TQRDBText;
    QRLabel65: TQRLabel;
    QRLabel66: TQRLabel;
    QRSubDetail2: TQRSubDetail;
    QRBand9: TQRBand;
    QRLabel53: TQRLabel;
    QRLabel59: TQRLabel;
    QRLabel63: TQRLabel;
    QRLabel64: TQRLabel;
    QRLabel67: TQRLabel;
    QRLabel78: TQRLabel;
    QRLabel79: TQRLabel;
    QRLabel80: TQRLabel;
    QRLabel81: TQRLabel;
    QRLabel82: TQRLabel;
    QRLabel83: TQRLabel;
    QRLabel84: TQRLabel;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRDBText32: TQRDBText;
    QRDBText33: TQRDBText;
    QRDBText34: TQRDBText;
    QRDBText35: TQRDBText;
    QRDBText36: TQRDBText;
    QRDBText37: TQRDBText;
    QRDBText38: TQRDBText;
    QRDBText41: TQRDBText;
    QRDBText42: TQRDBText;
    QRDBText43: TQRDBText;
    QRShape3: TQRShape;
    TotalTon: TQRLabel;
    TotalLiquido: TQRLabel;
    QRLabel71: TQRLabel;
    Contador1: TQRLabel;
    QRLabel76: TQRLabel;
    QRLabel68: TQRLabel;
    QRLabel69: TQRLabel;
    QRLabel70: TQRLabel;
    QRLabel85: TQRLabel;
    QRShape4: TQRShape;
    QRLabel77: TQRLabel;
    QRSysData6: TQRSysData;
    QRSysData5: TQRSysData;
    QRSysData7: TQRSysData;
    pesquisa: TQuery;
    DataSource4: TDataSource;
    Valor1: TQRLabel;
    Litros1: TQRLabel;
    QRBand10: TQRBand;
    QRLabel72: TQRLabel;
    QRLabel73: TQRLabel;
    QRLabel74: TQRLabel;
    QRLabel75: TQRLabel;
    QuickRep7: TQuickRep;
    QRBand11: TQRBand;
    QRBand12: TQRBand;
    QRGroup1: TQRGroup;
    QRLabel86: TQRLabel;
    QRShape2: TQRShape;
    QRDBText44: TQRDBText;
    QRDBText45: TQRDBText;
    QRLabel92: TQRLabel;
    QRLabel93: TQRLabel;
    QRLabel87: TQRLabel;
    QRLabel88: TQRLabel;
    QRBand13: TQRBand;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape5: TQRShape;
    QRDBText46: TQRDBText;
    QRDBText48: TQRDBText;
    QRDBText47: TQRDBText;
    QRDBText49: TQRDBText;
    QRShape8: TQRShape;
    QRLabel91: TQRLabel;
    QRLabel96: TQRLabel;
    QRLabel94: TQRLabel;
    QRLabel95: TQRLabel;
    QRExpr13: TQRExpr;
    QRExpr15: TQRExpr;
    QRLabel90: TQRLabel;
    somatoria: TQuery;
    DataSource5: TDataSource;
    QRSysData8: TQRSysData;
    QRSysData9: TQRSysData;
    QRSysData10: TQRSysData;
    QuickRep8: TQuickRep;
    QRBand14: TQRBand;
    QRLabel89: TQRLabel;
    QRLabel97: TQRLabel;
    QRLabel98: TQRLabel;
    QRSysData11: TQRSysData;
    QRSysData12: TQRSysData;
    QRSysData13: TQRSysData;
    QRBand15: TQRBand;
    QRShape9: TQRShape;
    QRDBText52: TQRDBText;
    QRDBText53: TQRDBText;
    QRGroup2: TQRGroup;
    QRShape11: TQRShape;
    QRBand16: TQRBand;
    QRShape13: TQRShape;
    QRShape10: TQRShape;
    QRLabel100: TQRLabel;
    QRLabel99: TQRLabel;
    QRLabel103: TQRLabel;
    QRLabel104: TQRLabel;
    QRLabel101: TQRLabel;
    QRLabel102: TQRLabel;
    QRLabel106: TQRLabel;
    QRDBText50: TQRDBText;
    QRDBText51: TQRDBText;
    QRDBText54: TQRDBText;
    QRDBText55: TQRDBText;
    QRExpr16: TQRExpr;
    QuickRep9: TQuickRep;
    QRBand17: TQRBand;
    QRGroup3: TQRGroup;
    QRLabel105: TQRLabel;
    QRLabel107: TQRLabel;
    QRLabel108: TQRLabel;
    QRSysData14: TQRSysData;
    QRSysData15: TQRSysData;
    QRSysData16: TQRSysData;
    QRLabel109: TQRLabel;
    QRLabel110: TQRLabel;
    QRLabel115: TQRLabel;
    QRDBText58: TQRDBText;
    QRDBText60: TQRDBText;
    QRShape12: TQRShape;
    QRDBText56: TQRDBText;
    QRBand18: TQRBand;
    QRShape14: TQRShape;
    QRBand19: TQRBand;
    QRLabel116: TQRLabel;
    QRLabel117: TQRLabel;
    QRLabel121: TQRLabel;
    QRLabel123: TQRLabel;
    QRLabel124: TQRLabel;
    QRLabel125: TQRLabel;
    QRLabel126: TQRLabel;
    QRLabel127: TQRLabel;
    QRLabel128: TQRLabel;
    QRLabel129: TQRLabel;
    QRLabel130: TQRLabel;
    QRLabel131: TQRLabel;
    QRLabel132: TQRLabel;
    QRLabel122: TQRLabel;
    QRLabel133: TQRLabel;
    QRLabel134: TQRLabel;
    QRLabel135: TQRLabel;
    QRLabel136: TQRLabel;
    QRLabel137: TQRLabel;
    QRLabel138: TQRLabel;
    QRLabel139: TQRLabel;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRLabel119: TQRLabel;
    QRLabel120: TQRLabel;
    QRLabel118: TQRLabel;
    QRLabel111: TQRLabel;
    QRLabel112: TQRLabel;
    QRLabel113: TQRLabel;
    QRLabel114: TQRLabel;
    QRBand1: TQRBand;
    QRLabel31: TQRLabel;
    QRBand2: TQRBand;
    QRGroup4: TQRGroup;
    QRBand3: TQRBand;
    QRBand20: TQRBand;
    QRBand21: TQRBand;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRExpr7: TQRExpr;
    QRExpr8: TQRExpr;
    QRExpr9: TQRExpr;
    QRExpr10: TQRExpr;
    procedure fortesBeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  soma : real;


implementation

{$R *.DFM}

procedure TForm1.fortesBeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
 impressao.open;
end;

end.





