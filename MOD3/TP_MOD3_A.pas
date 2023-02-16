program BungaTahunan;

var
  simpanan: Real;      // nilai awal simpanan
  sb: Real;            // suku bunga
  n: Integer;          // periode waktu (dalam tahun)
  bunga: Real;         // bunga periode
  tahun: Integer;      // tahun periode
  i: Integer;          // variabel iterasi

begin
  // Menerima input dari pengguna
  write('Masukkan nilai awal simpanan         = ');
  readln(simpanan);
  write('Masukkan suku bunga (persentase)     = ');
  readln(sb);
  write('Masukkan periode waktu (dalam tahun) = ');
  readln(n);

  // Menghitung bunga dan menampilkan hasil per tahun
  for i := 1 to n do
  begin
    bunga := simpanan * sb / 100;
    simpanan := simpanan + bunga;

    writeln('Tahun ke-', i, ':');
    writeln('  Uang diakhir tahun = ', simpanan:0:2, ' rupiah');
    writeln('  Bunga periode      = ', bunga:0:2, ' rupiah');
    writeln;
  end;

  // Menampilkan total simpanan setelah periode waktu tertentu
  writeln('Total uang diakhir periode = ', simpanan:0:2, ' rupiah');
end.
