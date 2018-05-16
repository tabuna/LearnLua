-- определяет функцию факториала
function fact(n)
    if n == 0 then
        return 1
    else
        return n * fact(n - 1)
    end
end

print("enter a number:")
a = io.read("*n") -- считывает число

if a < 0 then a = a * -1 end -- только положительные числа

    print(fact(a))