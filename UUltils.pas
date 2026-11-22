unit UUltils;

interface

function GerarUUID: string;

implementation

uses
  System.SysUtils;

function GerarUUID: string;
var
  GUID: TGUID;
begin
  if CreateGUID(GUID) = 0 then
    Result := GUIDToString(GUID)
  else
    raise Exception.Create('Erro ao gerar UUID');
end;

end.
