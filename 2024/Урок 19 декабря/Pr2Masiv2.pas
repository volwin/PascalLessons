{ 
Функция ввода целых чисел
}
function Vvod_Int(Soob:String; Min,Max: Int64):Int64;
var Chislo:Int64;
Flag: boolean;
begin
  repeat
    Flag:=False;
    write(Soob);
    try
      readln(Chislo);
      if (Chislo>=Min) and (Chislo<=Max) then
        Flag:=True
      else
        writeln('Число должно быть в диапозоне от ',  Min,' до ', Max);
    except
      writeln('Данные введены некорректно!!!');
    end;
  until Flag;
   Vvod_Int:=Chislo;
end;

{ 
Функция ввода дробных чисел
}

function Vvod_real(Soob:String; Min,Max: real):real;
var Chislo:real;
Flag: boolean;
begin
  repeat
    Flag:=False;
    write(Soob);
    try
      readln(Chislo);
      if (Chislo>=Min) and (Chislo<=Max) then
        Flag:=True
      else
        writeln('Число должно быть в диапозоне от ',  Min,' до ', Max);
    except
      writeln('Данные введены некорректно!!!');
    end;
  until Flag;
   Vvod_real:=Chislo;
end;

{
Дан двумерный массив. Определить, сумму элементов 4-го
столбца массива, меньших 100.


}

var MassivA: array [,] of real;
 N,M,Vibor,i,j,NumMax, NumMin: Int64;
 Max, Min: real;
begin
         N:=Vvod_Int('Введите число строк массива:',1,Int64.MaxValue); 
         M:=Vvod_Int('Введите число столбцов массива:',4,Int64.MaxValue); 
         Vibor:=Vvod_Int('Введите способ ввода массива [1- с клав, 2 - cл.числа]:',1,2); 
         SetLength(MassivA,N,M);
         if Vibor=2 then
           MassivA:=MatrRandomReal(N,M)
        else
           for  i:=0 to N-1 do
             for  j:=0 to M-1 do
             MassivA[i,j]:=Vvod_real('Введите a['+IntToStr(i)+','+IntToStr(j)+'] элемент:',real.MinValue,real.MaxValue);
    // вывод матрицы:
    var Sum:=0.0;
    var Priznak:=False;
    for  i:=0 to N-1 do
       begin
             for  j:=0 to M-1 do
         //    Write('a['+IntToStr(i)+','+IntToStr(j)+']=',MassivA[i,j]:0:3,'  ');
             if (j=3) and (MassivA[i,j]<100) then 
               begin
                Sum+=MassivA[i,j];
                Priznak:=True;
               end;
          // writeln;  
       end;
      if Priznak then
        if abs(sum)>real.MaxValue then
          writeln('Значение сумма элементов 4-го столбца массива, меньших 100 сл.большое!!!')
        else
         writeln('сумма элементов 4-го столбца массива, меньших 100=',Sum)
      else
        writeln('Нет элементов 4-го столбца массива, меньших 100!!! ;-((');
          
    
      
end.
