unit CyclicRotation;

interface

  function CyclicRotation_solution(A: array of Integer; N: Integer; K: Integer): TArray<Integer>;

implementation

function CyclicRotation_solution(A: array of Integer; N: Integer; K: Integer): TArray<Integer>;
var
  i, newIndex: Integer;
begin
  SetLength(Result, N);

  for I := 0 to N - 1 do begin
    newIndex := i + K;
    if newIndex >= N then
      newIndex := newIndex - N;

    Result[newIndex] := A[i];
  end;
end;

end.
