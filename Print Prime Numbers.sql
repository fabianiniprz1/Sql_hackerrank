/*
Write a query to print all prime numbers less than or equal to 1000. Print your result on a single line, and use the ampersand (&) character as your separator (instead of a space).
For example, the output for all prime numbers <= 10
would be:
2&3&5&7
*/

declare @limite int = 1000, @inicial int = 2, @cadena varchar(1500) = '', @inicial_i int = 1, @acumulado int = 0


while @inicial < = @limite
begin

    while @inicial_i <= @inicial
    begin

        if @inicial % @inicial_i = 0
        begin
         set @acumulado += 1
        end
    set @inicial_i += 1
    end
    
    if @acumulado = 2
    begin
    set @cadena += cast( @inicial as varchar) +'&'
    end
    
    set @acumulado = 0
    set @inicial_i = 1

set @inicial += 1
end


select substring(@cadena,1,len(@cadena)-1);
