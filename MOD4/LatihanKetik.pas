program LatihanKetik;

var
  bil1, bil2: integer;

begin
  repeat
    write('Masukkan bilangan pertama = ');
    readln(bil1);

    write('Masukkan bilangan kedua   = ');
    readln(bil2);
    writeln;

    if (bil1 mod 2 <> 0) and (bil2 mod 2 <> 0) then
      break;
  until false;

  writeln('Anda memasukkan dua bilangan ganjil secara bersamaan!');
end.