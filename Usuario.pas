unit Usuario;

interface

type TUsuario = class
  private
    FNome: string;
    FSenha: integer;
    FLogin: string;
    procedure SetNome(const Value: string);
    procedure SetLogin(const Value: string);
    procedure SetSenha(const Value: integer);
  public
  procedure Logar();
  property Nome:string read FNome write SetNome;
  property Login:string read FLogin write SetLogin;
  property Senha:integer read FSenha write SetSenha;








end;
implementation

uses
  System.SysUtils;

{ TUsuario }

procedure TUsuario.Logar;
begin
  if (FNome <> 'GABRIEL') or (FSenha <> 123) then begin
    raise Exception.Create('Erro');
  end;

end;

procedure TUsuario.SetLogin(const Value: string);
begin
  FLogin := Value;
end;

procedure TUsuario.SetNome(const Value: string);
begin
  FNome := Value;
end;

procedure TUsuario.SetSenha(const Value: integer);
begin
  FSenha := Value;
end;

end.
