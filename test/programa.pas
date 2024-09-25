program programaTeste;

var
	a,b,c,d,i:integer;
	
type TRecordType = record
		Nome: string;
		ValorInt: integer;
		ValorBool: boolean;
	end;

begin
	while(a > b) do 
		begin
			a := a + 1;
			write(a);
		end;

	for i := 0 to 5 do
		begin
			write(i);
		end;

	repeat
		begin
			i := i + a;
		end
	until i >= 5;

	if(a > b  and b <> a) then b := a;
	
	if(b <= a or a = b) then a := b;

	if(not a < b) then 
		d := c 
		else 
			a := b;
	

end.


