program cari_terbesar;
var
  a, b, c, terbesar: integer;
begin
  write('Masukkan bilangan pertama: ');
  readln(a);
  write('Masukkan bilangan kedua  : ');
  readln(b);
  write('Masukkan bilangan ketiga : ');
  readln(c);

  terbesar := a;
  if b > terbesar then
    terbesar := b;
  if c > terbesar then
    terbesar := c;

  writeln;
  writeln('Bilangan terbesar adalah : ', terbesar);
end.
