-- Упражнение 3.7. Что напечатает следующий скрипт? Объясните.


--[[
-- Мы обращаемся по значению переменных
-- ]]

sunday = "monday"
monday = "sunday"

t = {
    sunday = "monday",
    [sunday] = monday
}

print(t.sunday, t[sunday], t[t.sunday])

