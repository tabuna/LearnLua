--
-- Упражнение 2.1.
-- Что является значением выражения type(nil)==nil?
-- (Вы можете использовать Lua для проверки своего ответа.)
-- Можете ли вы объяснить результат?
--

print(type(nil) == nil) -- false


print(type(nil) == 'nil') -- true

-- Функция type возвращает строку