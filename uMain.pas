unit uMain;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, FMX.ListView.Types,
  FMX.ListView.Appearances, FMX.ListView.Adapters.Base, FMX.ListView,
  FMX.Objects, FMX.MultiView, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.FMXUI.Wait,
  Data.DB, FireDAC.Comp.Client, System.IOUtils, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs;

type
  TFMain = class(TForm)
    ToolBarMain: TToolBar;
    lbAppName: TLabel;
    LayoutMain: TLayout;
    MultiViewMain: TMultiView;
    RectangleImg: TRectangle;
    RectangleLogin: TRectangle;
    RectangleCadastro: TRectangle;
    RectangleConsulta: TRectangle;
    RectangleIndex: TRectangle;
    ImageLogo: TImage;
    LabelLogin: TLabel;
    LabelCadastro: TLabel;
    LabelConsulta: TLabel;
    LabelIndex: TLabel;
    procedure RectangleLoginClick(Sender: TObject);
    procedure RectangleCadastroClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMain: TFMain;

implementation

{$R *.fmx}

uses uCadastroUsuario, uLogin, uDM;



procedure TFMain.RectangleCadastroClick(Sender: TObject);
begin
  if not Assigned(FCadastroUsuario) then
    FCadastroUsuario := TFCadastroUsuario.Create(nil);
  FCadastroUsuario.ShowModal(
    procedure(ModalResult: TModalResult)
    begin

    end);
end;

procedure TFMain.RectangleLoginClick(Sender: TObject);
begin
  if not Assigned(FLogin) then
    FLogin := TFLogin.Create(nil);
  FLogin.ShowModal(
    procedure(ModalResult: TModalResult)
    begin

    end);
end;

end.
