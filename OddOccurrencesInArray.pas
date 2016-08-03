unit OddOccurrencesInArray;

interface

  function OddOccurrencesInArray_solution(A: array of Integer; N: Integer): Integer;

implementation

uses
  System.Generics.Collections;

function OddOccurrencesInArray_solution(A: array of Integer; N: Integer): Integer;
var
  i: Integer;
begin
  TArray.Sort<Integer>(A); //sort
  Result := 0;

  i := 0;
  while i < N do begin
    if A[i] = A[i+1] then begin
      A[i] := 0;
      A[i+1] := 0;

      inc(i , 2);
    end
    else begin
      Result := A[i];

      Inc(i);
    end;
  end;
end;

end.
