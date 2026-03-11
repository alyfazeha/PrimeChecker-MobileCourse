import 'package:prime_checker/prime_checker.dart' as prime_checker;

void main(List<String> arguments) {
  // List untuk menyimpan riwayat pengecekan
  List<Map<String, dynamic>> riwayat = [];

  print('=== Program Pengecek Bilangan Prima ===');
  // Simulasi input beberapa angka
  cekDanSimpan(7, riwayat);
  cekDanSimpan(10, riwayat);
  cekDanSimpan(2, riwayat);
  cekDanSimpan(1, riwayat);
  cekDanSimpan(-5, riwayat);

  // Menampilkan riwayat menggunakan PERULANGAN (for-in)
  print('\n=== Riwayat Pengecekan ===');
  for (var item in riwayat) {
    print("Angka: ${item['angka']} | Status: ${item['status']}");
  }
}

void cekDanSimpan(int angka, List<Map<String, dynamic>> riwayat) {
  // PERCABANGAN: Validasi input (Angka harus positif)
  if (angka <= 0) {
    print("Peringatan: Angka ($angka) tidak valid. Masukkan angka > 0.");
    return;
  }

  bool isPrima = true;

  // Logika Bilangan Prima
  if (angka < 2) {
    isPrima = false;
  } else {
    // PERULANGAN: Mengecek apakah angka habis dibagi bilangan lain
    for (int i = 2; i <= angka ~/ 2; i++) {
      if (angka % i == 0) {
        isPrima = false; // Jika habis dibagi, maka bukan prima
        break;
      }
    }
  }

  // PERCABANGAN: Menentukan teks status berdasarkan hasil cek
  String status = isPrima ? "Adalah Bilangan Prima" : "Bukan Bilangan Prima";

  // Menyimpan hasil ke dalam riwayat
  riwayat.add({
    'angka': angka,
    'status': status,
  });
}
