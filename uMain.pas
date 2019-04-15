unit uMain;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, FMX.ListView.Types,
  FMX.ListView.Appearances, FMX.ListView.Adapters.Base, FMX.ListView,
  FMX.Objects, FMX.MultiView;

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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMain: TFMain;

implementation

{$R *.fmx}

end.
