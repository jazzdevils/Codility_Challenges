program Codility_Challenges;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  EMemLeaks,
  EResLeaks,
  EDialogWinAPIMSClassic,
  EDialogWinAPIEurekaLogDetailed,
  EDialogWinAPIStepsToReproduce,
  EDebugExports,
  EFixSafeCallException,
  EMapWin32,
  EAppVCL,
  ExceptionLog7,
  System.SysUtils,
  System.Generics.Collections;

function CountDiv_solution(A, B, K: Integer): Integer;
var
  C,i, Count: Integer;

begin
  C := B - A;
  Count := 0;

  while A + Count * K <= B do begin
    Inc(Count);
  end;

  Result := Count;
end;

function BinaryGap_solution(N: Integer): Integer;
var
  Bin: String;
  iMax, iStart, iEnd: Integer;
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

function CyclicRotation_solution(A: array of LongInt; N: LongInt; K: LongInt): TArray<LongInt>;
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

function MissingInteger_solution(A: array of Integer; N: Integer): Integer;
var
  i, iValue: Integer;
begin
  TArray.Sort<Integer>(A);

  iVAlue := A[0];

  for i := 0 to N - 1 do begin
    if (A[i] = iVAlue) or (A[i] = iValue + 1) then
      iValue := A[i]
    else begin
      Result := iValue + 1;
      Break;
    end;
  end;
end;

function OddOccurrencesInArray_solution(A: array of Integer; N: Integer): Integer;
var
  i: Integer;
  aa : Integer;
begin
  TArray.Sort<Integer>(A); //sort

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

function PermMissingElem_solution(A: array of Integer; N: Integer): Integer;
var
  i, firstValue: Integer;
begin
  TArray.Sort<Integer>(A);
  firstValue := A[0];

  for i := 0 to N - 1 do begin
    if i + firstValue <> A[i] then begin
      Result := i + firstValue;

      Break;
    end;
  end;
end;

function TapeEquilibrium_solution(A: array of Integer; N: Integer): Integer;
var
  iMin, i, Index, Sum, iTmp, iTmp1: Integer;
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

var
  A: array of Integer;
begin
  try
    Writeln('BinaryGap : ' + IntToStr(BinaryGap_solution(1041)));

    Writeln('CountDiv : ' + IntToStr(CountDiv_solution(0, 102, 2)));

    A := [1, 3, 6, 4, 1, 2];
    Writeln('MissingInteger : ' + IntToStr(MissingInteger_solution(A, 6)));

    A := [9, 3, 9, 3, 9, 2, 9];
    Writeln('OddOccurrencesInArray : ' + IntToStr(OddOccurrencesInArray_solution(A, 7)));

    A := [2, 3, 1, 5];
    Writeln('PermMissingElem : ' + IntToStr(PermMissingElem_solution(A, 4)));

    A := [3, 1, 2, 4, 3];
    Writeln('TapeEquilibrium : ' + IntToStr(TapeEquilibrium_solution(A, 5)));
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
