program HitungUangMakanSiang;

type
  DPeg = record
    nik, nama: String;
    hariHadir: integer;
    uangMaksi: longint;
  end;

  TPeg = array [1..30] of DPeg;

var
  tabPeg: TPeg;
  nPeg, i: integer;

procedure IsiData(n: integer; var ArrPeg: TPeg);
{I.S. Belum terdefinisi data kehadiran pegawai
 F.S. Terdefinisi tabel kehadiran n pegawai yang terdiri atas:
      nik, nama, dan hari hadir, dari masukan user }
var
  i: integer;
begin
  for i := 1 to n do
  begin
    writeln('Data Pegawai ke-', i);
    write('NIK: ');
    readln(ArrPeg[i].nik);
    write('Nama: ');
    readln(ArrPeg[i].nama);
    write('Hari Hadir: ');
    readln(ArrPeg[i].hariHadir);
    writeln;
  end;
end;

procedure HitungUangMaksi(n: integer; var ArrPeg: TPeg);
{I.S. Tabel kehadiran pegawai terdefinisi
F.S. Atribut uang makan siang untuk masing-masing pegawai pada
     tabel kehadiran pegawai telah terhitung. }
var
  i: integer;
begin
  for i := 1 to n do
  begin
    ArrPeg[i].uangMaksi := ArrPeg[i].hariHadir * 20000;
  end;
end;

begin
  {Panggil prosedur untuk mengisi data kehadiran n pegawai}
  write('Masukkan jumlah pegawai: ');
  readln(nPeg);
  IsiData(nPeg, tabPeg);

  {Panggil prosedur untuk menghitung uang makan siang setiap pegawai}
  HitungUangMaksi(nPeg, tabPeg);

  {Tampilkan uang makan siang setiap pegawai}
  writeln('Uang Makan Siang Pegawai:');
  writeln('-------------------------');
  for i := 1 to nPeg do
  begin
    writeln('NIK: ', tabPeg[i].nik);
    writeln('Nama: ', tabPeg[i].nama);
    writeln('Uang Makan Siang: ', tabPeg[i].uangMaksi:0);
    writeln('-------------------------');
  end;
end.
