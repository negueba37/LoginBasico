unit untLogin;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Edit, FMX.Layouts, FMX.Objects, FMX.Controls.Presentation;

type
  TForm3 = class(TForm)
    StyleBook1: TStyleBook;
    Panel1: TPanel;
    Rectangle3: TRectangle;
    Layout1: TLayout;
    Layout2: TLayout;
    Layout3: TLayout;
    edtSenha: TEdit;
    Label2: TLabel;
    Layout4: TLayout;
    btnEntrar: TButton;
    Layout5: TLayout;
    edtLogin: TEdit;
    Label3: TLabel;
    Layout6: TLayout;
    btnRegistrar: TButton;
    procedure btnEntrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.fmx}

uses Usuario;

procedure TForm3.btnEntrarClick(Sender: TObject);
var
Login:TUsuario;
begin
  Login := TUsuario.Create();
  try
    with Login do begin
      Nome  := edtLogin.Text;
      Senha := StrToInt(edtSenha.Text);
      try
        Logar
      except on E: Exception do begin
          ShowMessage(e.Message);
          exit;
        end;
      end;
      ShowMessage('Sucesso');

    end;

  finally
    FreeAndNil(Login);
  end;


end;

end.
