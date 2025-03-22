// import 'package:flutter/material.dart';
// import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
//
// class QRScannerPage extends StatelessWidget {
//   const QRScannerPage({Key? key}) : super(key: key);
//
//   Future<void> scanQRCode(BuildContext context) async {
//     try {
//       // Запуск сканирования QR-кода
//       final scannedCode = await FlutterBarcodeScanner.scanBarcode(
//         '#ff6666', // Цвет линии сканирования
//         'Отмена',  // Текст кнопки отмены
//         true,      // Включить/выключить вспышку
//         ScanMode.QR, // Режим сканирования (только QR)
//       );
//
//       // Если код не отменен, показать сообщение
//       if (scannedCode != '-1') {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text('QR-код: $scannedCode')),
//         );
//       }
//     } catch (e) {
//       // Обработка ошибок
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Ошибка: $e')),
//       );
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('QR Сканер')),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () => scanQRCode(context), // Вызываем метод сканирования
//           child: const Text('Сканировать QR-код'),
//         ),
//       ),
//     );
//   }
// }