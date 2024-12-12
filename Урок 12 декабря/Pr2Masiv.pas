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
Дан массив целых чисел a1,...,an. Найти минимальный и 
максимальный элементы массива и вычислить сумму элементов, расположенных между ними (считать, что они не повторяются).


}

var MassivA: array of real;
 N,Vibor,i,NumMax, NumMin: Int64;
 Max, Min: real;
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
            Min:=MassivA.Min;
            var KolMax:=0;
            var KolMin:=0;
            
            
              Writeln('Исходный массив:');
            for  i:=0 to N-1 do
              begin
           //   writeln('А[',i,']=',MassivA[i]); 
                if MassivA[i]=Max then
                    KolMax+=1;
                if MassivA[i]=Min then
                    KolMin+=1;
              end;
              if (KolMax>1) or (KolMin>1) then
                writeln('Условие задачи не вып. Им повторные экстр.!')
              else
              begin
                NumMax:=MassivA.IndexMax;
                NumMin:=MassivA.IndexMin;
                if NumMin>NumMax then
                begin
                  var Temp:=NumMin;
                  NumMin:=NumMax;
                  NumMax:=Temp;
                end;
                NumMin+=1; 
                NumMax-=1;
                Var Sum:=0.0;
                writeln(NumMin,' - ', NumMax);
                for i:=NumMin to NumMax do
                  Sum+=MassivA[i];
                
                writeln('Сумма элем-ов между Max и Min = ',Sum);
              end;
          
    
       
          
    
      
end.
