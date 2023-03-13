program abc;
uses crt;
var a,l,r:int64; s:char; i:integer;
begin
   writeLn('Введи правую границу диапазона: от 1 до n, - и загадай число на этом промежутке.');
   write('=> ');
   readLn(a);
   r:=a;
   l:=0;
   a:=a div 2;
   clrscr;
   write('Больше или меньше числа ');
   writeLn(a);
   i:=1;
   writeLn('(Больше +, меньше -, равно =)');
   repeat
      readLn(s);
      if s='=' then break;
      if s='-' then r:=a else l:=a;
      if s='-' then a:=a-(r-l) div 2 else a:=a+(r-l) div 2;
      write('Больше, меньше или равно числу ');
      writeLn(a);
      Inc(i);
   until s='=';
   clrscr;
   writeLn();
   writeLn('Твоё число - ',a,'. Попыток угадать - ',i,'.');
   writeLn();
   repeat until keypressed;
end.