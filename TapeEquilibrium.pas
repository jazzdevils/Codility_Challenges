unit TapeEquilibrium;

interface

  function TapeEquilibrium_solution(A: array of Integer; N: Integer): Integer;

implementation

function TapeEquilibrium_solution(A: array of Integer; N: Integer): Integer;
var
  iMin, i, Sum, iTmp, iTmp1: Integer;
  _A: array of Integer;
begin
  Sum := 0;
  SetLength(_A, High(A));
  for i := 0 to High(A) do begin
    _A[i] := Sum + A[i];
    Sum := Sum + A[i];
  end;

  Sum := Sum - A[0];

  iMin := Sum - _A[0];
  for i := 1 to High(_A) do begin
    iTmp1 := Abs(_A[i] - _A[0]);
    iTmp := Abs(_A[i] - (Sum - iTmp1));

    if iTmp < iMin then
      iMin := iTmp;
  end;

  Result := iMin;
end;

end.
