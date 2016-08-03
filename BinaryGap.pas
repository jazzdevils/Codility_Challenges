unit BinaryGap;

interface

  function BinaryGap_solution(N: Integer): Integer;

implementation

function BinaryGap_solution(N: Integer): Integer;
var
  Bin: String;
  iStart, iEnd: Integer;
  zeroStr: String;
begin
  Bin := '';
  while N > 0 do begin
    if N and 1 = 1 then
      Bin := '1' + Bin
    else
      Bin := '0' + Bin;
    N := N Shr 1;
  end;

  Result := 0;

  while Pos('1', Bin) > 0 do begin
    iStart := Pos('1', Bin);
    Delete(Bin, 1, iStart);
    iEnd := Pos('1', Bin);

    if iEnd < 0  then
      Break;

    if iStart < iEnd then begin
      zeroStr := Copy(Bin, 1, iEnd - 1);
      Delete(Bin, 1, iEnd -1 );

      if Result < Length(zeroStr) then
        Result := Length(zeroStr);
    end;
  end;
end;

end.
