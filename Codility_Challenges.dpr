program Codility_Challenges;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  BinaryGap in 'BinaryGap.pas',
  CountDiv in 'CountDiv.pas',
  CyclicRotation in 'CyclicRotation.pas',
  MissingInteger in 'MissingInteger.pas',
  OddOccurrencesInArray in 'OddOccurrencesInArray.pas',
  PermMissingElem in 'PermMissingElem.pas',
  TapeEquilibrium in 'TapeEquilibrium.pas',
  Distinct in 'Distinct.pas',
  MaxProductOfThree in 'MaxProductOfThree.pas';

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

    A := [2, 1, 1, 2, 3, 1];
    Writeln('Distinct : ' + IntToStr(Distinct_solution(A, 6)));

    A := [-3, -1, 2, -2, 5, 6];
    Writeln('Distinct : ' + IntToStr(MaxProductOfThree_solution(A, 6)));

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.

