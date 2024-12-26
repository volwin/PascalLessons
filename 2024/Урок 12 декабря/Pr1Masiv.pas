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
Дан одномерный массив целых чисел. Найти максимальный
элемент массива и поменять его местами с первым элементом.


}

var MassivA: array of real;
 N,Vibor,i: Int64;
 Max, FisrtEl: real;
begin
         N:=Vvod_Int('Введите число эл-ов массива:',1,Int64.MaxValue); 
         Vibor:=Vvod_Int('Введите способ ввода массива [1- с клав, 2 - cл.числа]:',1,2); 
         SetLength(MassivA,N);
         if Vibor=2 then
           MassivA:=ArrRandomReal(N,-100,100)
         else
           for  i:=0 to N-1 do
             MassivA[i]:=Vvod_real('Введите a['+IntToStr(i)+'] элемент:',real.MinValue,real.MaxValue);
       
            Max:=MassivA.Max;
            FisrtEl:=MassivA[0];
            var KolMax:=0;
            
            
              Writeln('Исходный массив:');
            for  i:=0 to N-1 do
              begin
             //   writeln('А[',i,']=',MassivA[i]); 
                if MassivA[i]=Max then
                  begin
                    MassivA[i]:=FisrtEl;
                    KolMax+=1;
                  end;
              end;
       
              MassivA[0]:=Max;
       {       Writeln('Рез. массив:');
            for  i:=0 to N-1 do
                writeln('А[',i,']=',MassivA[i]); }
       // Сортировка 
      //    MassivA.SortDescending;
       
          writeln('Кол-во Maх элем-ов=',Max,' составило ',KolMax);
    
      
end.
