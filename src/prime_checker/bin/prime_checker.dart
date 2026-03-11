import 'package:prime_checker/prime_checker.dart' as prime_checker;

void main(List<String> arguments) {
print('=== Program Pengecek Bilangan Prima ===');
  // Simulasi input beberapa angka
  cekDanSimpan(7,);  
  cekDanSimpan(10,); 
  cekDanSimpan(2,);  
  cekDanSimpan(1,);  
}

void cekDanSimpan(int angka) {
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
}
