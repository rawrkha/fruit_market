import 'dart:io';
import 'constant.dart';
import 'package:fruit_market/fruit_market.dart' as fruit_market;

/*
______          _ _    ___  ___           _        _   
|  ___|        (_) |   |  \/  |          | |      | |  
| |_ _ __ _   _ _| |_  | .  . | __ _ _ __| | _____| |_ 
|  _| '__| | | | | __| | |\/| |/ _` | '__| |/ / _ \ __|
| | | |  | |_| | | |_  | |  | | (_| | |  |   <  __/ |_ 
\_| |_|   \__,_|_|\__| \_|  |_/\__,_|_|  |_|\_\___|\__|

*/

void main(List<String> arguments) {//fungsi main adalah fungsi yang selalu dijalankan//

  /*Konsep penulisan variable
  TipeData namaVariable = value;
  String name = "rakha";

  */
  welcomingMessage;

 
   var inputBuahDipilih = int.parse(stdin.readLineSync()!);
   

  if (inputBuahDipilih > 0) {
    var buahYangDipilih = buah[inputBuahDipilih - 1];
   print('''
    Anda memilih buah $buahYangDipilih

    Berapa buah $buahYangDipilih yang ingin anda beli?
  
    ''');

    var jumlahBuahYangDipilih = int.parse(stdin.readLineSync()!);
    var hargaTotal = jumlahBuahYangDipilih * hargaBuah[buahYangDipilih]!;

    stdout.write('''
    Anda memilih $buahYangDipilih sejumlah $jumlahBuahYangDipilih
    Harga yang harus dibayar adalah Rp$hargaTotal
    Jumlah uang yang dibayarkan:
  ''');

  var jumlahUang = int.parse(stdin.readLineSync()!);
  stdout.write('''
  Anda membayar sebesar: $jumlahUang
  Kembaliannya: ${jumlahUang - hargaTotal}
  
  ''');


   } else {
    print("Tuliskan nomor buah!");
   }

}
