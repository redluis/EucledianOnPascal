function OriginalEucledianGCD(a, b : integer) : integer;
begin
    while (a <> b) do
    begin
        (a, b) := (min(a, b), abs(a - b)); 
    end;
    Result := a;
end;

function ModifiedEucledianGCD(a, b : integer) : integer;
begin
    if a > b then
        Swap(a, b);
        
    while (b <> 0) do
    begin    
       (a, b) := (b, a mod b);
    end;
    
    Result := a;
end;

Begin
    var (a, b) := ReadInteger2;
    Println('Eucledian GCD (original): ', OriginalEucledianGCD(a, b));
    Println('Eucledian GCD (modified): ', ModifiedEucledianGCD(a, b))
End.