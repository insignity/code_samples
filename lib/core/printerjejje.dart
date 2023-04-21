import 'package:esc_pos_printer/esc_pos_printer.dart';
import 'package:esc_pos_utils/esc_pos_utils.dart';

Future printit() async {
  const PaperSize paper = PaperSize.mm80;
  final profile = await CapabilityProfile.load();
  final printer = NetworkPrinter(paper, profile);

  final PosPrintResult res = await printer.connect('192.168.1.105', port: 6001);

  if (res == PosPrintResult.success) {
    await testReceipt(printer);
    printer.disconnect();
  }
  print('Print result: ${res.msg}');
}

Future testReceipt(NetworkPrinter printer) async {
  List<int> bytes = [];

  printer.text(
      'Regular: aA bB cC dD eE fF gG hH iI jJ kK lL mM nN oO pP qQ rR sS tT uU vV wW xX yY zZ');
  // printer.text('Special 1: àÀ èÈ éÉ ûÛ üÜ çÇ ôÔ',
  //     styles: PosStyles(codeTable: 'CP1252'));
  // printer.text('Special 2: blåbærgrød', styles: PosStyles(codeTable: 'CP1252'));
  //
  // printer.text('Bold text', styles: PosStyles(bold: true));
  // printer.text('Reverse text', styles: PosStyles(reverse: true));
  // printer.text('Underlined text',
  //     styles: PosStyles(underline: true), linesAfter: 1);
  // printer.text('Align left', styles: PosStyles(align: PosAlign.left));
  //
  // printer.text('Align center', styles: PosStyles(align: PosAlign.center));
  // printer.text('Align right',
  //     styles: PosStyles(align: PosAlign.right), linesAfter: 1);

  printer.hr(ch: '#');
  printer.hr(ch: '-');
  printer.row([
    PosColumn(
      text: 'col3',
      width: 3,
      styles: PosStyles(align: PosAlign.center, underline: true),
    ),
    PosColumn(
      text: 'col6',
      width: 7,
      styles: PosStyles(align: PosAlign.center, underline: true),
    ),
    PosColumn(
      text: 'col3',
      width: 2,
      styles: PosStyles(align: PosAlign.center, underline: true),
    ),
  ]);

  printer.text(List.generate(42, (index) => '#').join());
  printer.text(List.generate(30, (index) => '#').join());
  printer.text(List.generate(15, (index) => '#').join());

  printer.text('Text size 200%',
      styles: PosStyles(
        height: PosTextSize.size2,
        width: PosTextSize.size2,
      ));

// Print barcode
  final List<int> barData = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0, 4];
  printer.barcode(Barcode.upcA(barData));

  printer.feed(2);
  printer.cut();
}
