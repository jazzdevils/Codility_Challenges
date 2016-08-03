unit PermMissingElem;

interface

  function PermMissingElem_solution(A: array of Integer; N: Integer): Integer;

implementation

uses
  System.Generics.Collections;

function PermMissingElem_solution(A: array of Integer; N: Integer): Integer;
var
  i, firstValue: Integer;
begin
  TArray.Sort<Integer>(A);
  firstValue := A[0];

  Result := 0;

  for i := 0 to N - 1 do begin
    if i + firstValue <> A[i] then begin
      Result := i + firstValue;

      Break;
    end;
  end;
end;

end.
