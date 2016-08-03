unit CountDiv;

interface

  function CountDiv_solution(A, B, K: Integer): Integer;

implementation

function CountDiv_solution(A, B, K: Integer): Integer;
var
  Count: Integer;

begin
  Count := 0;

  while A + Count * K <= B do begin
    Inc(Count);
  end;

  Result := Count;
end;

end.
