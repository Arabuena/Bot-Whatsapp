unit BotWhatsapp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  Data.DB, FireDAC.Comp.Client, FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef,
  FireDAC.Stan.ExprFuncs, FireDAC.Phys.SQLiteWrapper.Stat, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet;

type
  TForm1 = class(TForm)
    FDConnection1: TFDConnection;
    procedure FormCreate(Sender: TObject);
    procedure FDConnection1AfterConnect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


procedure TForm1.FDConnection1AfterConnect(Sender: TObject);
begin
FDConnection1.ExecSQL('CREATE TABLE IF NOT EXISTS Mensagens (' +
                      'Codigo INTEGER PRIMARY KEY AUTOINCREMENT,'+
                      'Nome VARCHAR(50),'+
                      'Telefone VARCHAR(14),'+
                      'Mensagem TEXT )');
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
 FDConnection1.Params.Database := 'mensagem.db';
       FDConnection1.DriverName := 'SQLite';

       FDConnection1.Connected :=  true;
end;

end.
