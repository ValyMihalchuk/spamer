'valy 1337 moses(C)
Option Explicit
 
Dim WshShell, my_arr(900), index,i,a 'массив в 900 элемнтов слишком много,но я забью
 
' Создаем ссылку на объект
Set WshShell = WScript.CreateObject("WScript.Shell")
 
'Определяем элементы массива


For i=0 to 100

my_arr(a) =CStr(i) 'перевод в строку из числа
my_arr(a+1) =CStr(i)
my_arr(a+2) =CStr(i)
my_arr(a+3) = "="
my_arr(a+4) =CStr(3*i)
my_arr(a+5) = "{ENTER 2}"
a=a+6
next


 


 
'Делаем задержку в 2 секунды
WScript.Sleep 2000       
 
' Используем цикл для перебора элементов массива
For each index in my_arr
     ' Имитируем нажатие клавиши
     WshShell.SendKeys(index)
     ' Делаем задержку в 500 миллисекунд
     WScript.Sleep 500
Next
