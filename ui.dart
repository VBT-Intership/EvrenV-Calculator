import 'dart:io';

abstract class UI {
  void drawMenu() {
    print("");
    print("**** Hesap Makinesi Menü ****");
    print("1) Toplama");
    print("2) Çıkarma");
    print("3) Çarpma");
    print("4) Bölme");
    print("5) Çıkış");
    print("");
  }

  void writeEndMessage() {
    print("Uygulama Sonlandı.");
    print("");
  }

  void writeInvalidMessage() {
    print("");
    print("GEÇERSİZ BİR İŞLEM GERÇEKLEŞTİRDİNİZ.");
    print("");
  }

  void writeResult(final result) {
    print("");
    print("Sonuç: $result");
    print("");
  }

  static void inputMessage({String message = "Lütfen bir tuşa basınız: "}) {
    print("");
    stdout.write(message);
  }
}
