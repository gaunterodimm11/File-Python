program TargetKapital;
var
  sb, x, kapital, target: real;
  periode: integer;
begin
  write('Masukkan suku bunga (dalam desimal)     = ');
  readln(sb);
  write('Masukkan target kali lipat kapital awal = ');
  readln(x);
  kapital := 1000000; // nilai awal kapital
  target := kapital * x; // nilai target kapital

  while kapital < target do
  begin
    kapital := kapital + (kapital * sb); // hitung nilai kapital setelah suku bunga
    periode := periode + 1; // hitung jumlah periode
  end;
  writeln;
  writeln('Nilai awal 1000000 rupiah');
  writeln('Hasil nilai akhir = ', kapital:0:2);
  writeln('Jumlah periode yang dibutuhkan: ', periode);
end.
