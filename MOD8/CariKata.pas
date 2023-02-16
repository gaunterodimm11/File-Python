program CariKata;

const
  MAX_N = 20;

type
  StringArray = array[1..MAX_N] of string;

var
  kata: StringArray;
  n, i: integer;
  cari: char;

begin
  write('Masukkan jumlah kata (n): ');
  readln(n);

  writeln('Masukkan ', n, ' kata:');
  for i := 1 to n do
  begin
    readln(kata[i]);
  end;

  write('Masukkan huruf awal yang dicari: ');
  readln(cari);
  
  writeln;
  writeln('Kata-kata yang diawali dengan huruf ', cari, ':');
  for i := 1 to n do
  begin
    if kata[i][1] = cari then
    begin
      writeln(kata[i]);
    end;
  end;
end.
