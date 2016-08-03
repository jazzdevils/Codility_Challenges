unit Distinct;

interface

  function Distinct_solution(A: array of Integer; N: Integer): Integer;

implementation

uses
  System.Generics.Collections;

function Distinct_solution(A: array of Integer; N: Integer): Integer;
var
  i, tmpValue: Integer;
begin
  TArray.Sort<Integer>(A);

  tmpValue := A[0];
  Result := 1;
  for i := 1 to High(A) do begin
    if A[i] <> tmpValue then begin
      tmpValue := A[i];
      Inc(Result);
    end;
  end;
end;

end.
