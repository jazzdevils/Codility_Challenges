unit MissingInteger;

interface

  function MissingInteger_solution(A: array of Integer; N: Integer): Integer;

implementation

uses
  System.Generics.Collections;

function MissingInteger_solution(A: array of Integer; N: Integer): Integer;
var
  i, iValue: Integer;
begin
  TArray.Sort<Integer>(A);

  iVAlue := A[0];
  Result := 0;

  for i := 0 to N - 1 do begin
    if (A[i] = iVAlue) or (A[i] = iValue + 1) then
      iValue := A[i]
    else begin
      Result := iValue + 1;
      Break;
    end;
  end;
end;

end.
