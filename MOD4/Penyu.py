# Input jumlah penyu
n = int(input("Jumlah Penyu: "))

total_telur = 0

# Loop untuk setiap penyu
for i in range(1, n+1):
    # Input umur, berat, dan jenis kelamin penyu
    umur, berat, jenis_kelamin = input(f"Penyu {i} (umur,berat,Jenis kelamin): ").split()

    # Konversi umur dan berat ke tipe data float
    umur = float(umur)
    berat = float(berat)

    # Hanya penyu betina di atas 35 tahun yang dapat menghasilkan telur
    if jenis_kelamin == 'betina' and umur > 35:
        # Hitung jumlah telur yang dihasilkan
        jumlah_telur = 1/berat * (1 + berat/1000) ** (umur/2)

        # Tambahkan jumlah telur ke total_telur
        total_telur += jumlah_telur

        # Tampilkan jumlah telur yang dihasilkan oleh penyu
        print(f"Penyu {i} menghasilkan {jumlah_telur:.0f} telur/tahun\n")

    elif jenis_kelamin == 'betina' and umur < 35:
        print(f'Penyu {i} menghasilkan 0 telur/tahun\n')

    else:
        # Tampilkan pesan bahwa penyu tidak menghasilkan telur
        print(f"Penyu {i} tidak menghasilkan telur\n")

# Tampilkan jumlah seluruh telur penyu
print(f"Jumlah telur penyu adalah {total_telur:.0f}")
