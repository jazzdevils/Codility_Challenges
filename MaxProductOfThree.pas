unit MaxProductOfThree;


interface
  
  function MaxProductOfThree_solution(A: array of Integer; N: Integer): Integer;

implementation

uses
  System.Generics.Collections;
  
function MaxProductOfThree_solution(A: array of Integer; N: Integer): Integer;
var
  i, minusValue: Integer;
begin
// The condition is " A[p] * A[Q] * A[R] (0 <= P < Q < R < N) "
  TArray.Sort<Integer>(A);

  Result := A[N - 3] * A[N - 2] * A[N - 1];

  if (A[0] < 0 ) and (A[1] < 0) then begin
    minusValue := A[0] * A[1] * A[N - 1]; 
    if minusValue > Result then
      Result := minusValue;
  end;
end;

end.

