import 'package:easal/domain/invoices/invoice.dart';
import 'package:easal/domain/invoices/receipt.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart' as intl;
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';
import 'package:printing/printing.dart';

Future<void> listPrinters() async {}
Future<bool> printReceipt(Receipt receipt, {bool isReceiptNew = false}) async {
  final arabicFont =
      Font.ttf(await rootBundle.load('assets/fonts/Hacen_Tunisia.ttf'));
  final doc = Document();

  doc.addPage(_roll80ReceiptPdfPage(arabicFont, isReceiptNew, receipt));
  return await Printing.layoutPdf(
    onLayout: (PdfPageFormat format) async => doc.save(),
  );
}

Future<bool> printInvoice(Invoice invoice) async {
  final arabicFont =
      Font.ttf(await rootBundle.load('assets/fonts/Hacen_Tunisia.ttf'));
  final doc = Document();

  doc.addPage(_invoicePdfPage(arabicFont, invoice));
  return await Printing.layoutPdf(
    onLayout: (PdfPageFormat format) async => doc.save(),
  );
}

Page _roll80ReceiptPdfPage(
    Font arabicFont, bool isReceiptNew, Receipt receipt) {
  return Page(
      theme: ThemeData.withFont(base: arabicFont),
      pageFormat: PdfPageFormat.roll80,
      textDirection: TextDirection.rtl,
      build: (Context context) {
        return Center(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Center(
              child: Text('بسم الله الرحمن الرحيم',
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.normal,
                  )),
            ),
            Center(
                child: Text(
              'مستشفى ابوحمد التعليمي',
            )),
            isReceiptNew == false
                ? Container(
                    margin: const EdgeInsets.only(top: 10),
                    child: Center(
                        child: Text('نسخة',
                            style: TextStyle(
                              fontSize: 8,
                              fontWeight: FontWeight.normal,
                            ))))
                : SizedBox(height: 10),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(receipt.number.toString()),
              Text('رقم الايصال :',
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.normal,
                  )),
            ]),
            SizedBox(height: 10),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(receipt.clientName),
              Text('الاسم :',
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.normal,
                  )),
            ]),
            SizedBox(height: 10),
            Table(
              border: TableBorder.all(width: .5),
              children: [
                TableRow(children: [
                  Expanded(flex: 2, child: Center(child: Text('البيان'))),
                  Expanded(child: Center(child: Text('القيمة')))
                ]),
                TableRow(children: [
                  Expanded(
                      child: Center(
                          child: Text(receipt.type,
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.normal,
                              )))),
                  Expanded(
                      child: Center(
                          child: Text('${receipt.value} ج',
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.normal,
                              ))))
                ])
              ],
            ),
            SizedBox(height: 10),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(receipt.agentName),
              Text('اسم المتحصل :',
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.normal,
                  )),
            ]),
            SizedBox(height: 10),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(receipt.description ?? "",
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.normal,
                  )),
              Text('التعليق :',
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.normal,
                  )),
            ]),
            SizedBox(height: 10),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(intl.DateFormat.Hms().format(receipt.date),
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.normal,
                  )),
              SizedBox(width: 10),
              Text(intl.DateFormat.yMd().format(receipt.date),
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.normal,
                  )),
              SizedBox(width: 5),
              Text('التاريخ :',
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.normal,
                  )),
            ]),
          ],
        ));
      });
}

Page _a3InvoicePdfPage(
  Font font,
  Invoice invoice,
) {
  int resedents = 0;
  int ampulance = 0;
  int ekg = 0;
  int records = 0;
  int fitness = 0;
  int teeth = 0;
  int changes = 0;
  int ultrasonic = 0;
  int radiation = 0;
  int majoror = 0;
  int minoror = 0;
  int checkups = 0;
  int total = 0;

  return Page(
      theme: ThemeData.withFont(base: font),
      textDirection: TextDirection.rtl,
      pageFormat: PdfPageFormat.a3,
      orientation: PageOrientation.landscape,
      build: (context) {
        return Center(
            child: Column(
          children: [
            Text('بسم الله الرحمن الرحيم',
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.normal,
                )),
            Text(
              'مستشفى ابوحمد التعليمي',
            ),
            Table(
              border: TableBorder.all(width: .5),
              children: [
                TableRow(children: [
                  Expanded(
                    flex: 2,
                    child: Center(child: Text(invoice.date.toString())),
                  ),
                  Expanded(
                    child: Center(child: Text('التاريخ')),
                  ),
                  Expanded(
                    flex: 2,
                    child: Center(child: Text(invoice.agent.name)),
                  ),
                  Expanded(child: Center(child: Text("المتحصل"))),
                ])
              ],
            ),
            SizedBox(height: 10),
            Table(
              border: TableBorder.all(width: .5),
              children: [
                TableRow(children: [
                  Expanded(
                      flex: 3,
                      child: Center(
                          child: Text('التعليق',
                              style: const TextStyle(fontSize: 11)))),
                  Expanded(
                      flex: 3,
                      child: Center(
                          child: Text('المجموع',
                              style: const TextStyle(fontSize: 11)))),
                  Expanded(
                      flex: 5,
                      child: Center(
                          child: Text('الاقامات',
                              style: const TextStyle(fontSize: 11)))),
                  Expanded(
                      flex: 3,
                      child: Center(
                          child: Text('اسعاف',
                              style: const TextStyle(fontSize: 11)))),
                  Expanded(
                      flex: 3,
                      child: Center(
                          child: Text('رسم قلب',
                              style: const TextStyle(fontSize: 11)))),
                  Expanded(
                      flex: 5,
                      child: Center(
                          child: Text('السجلات',
                              style: const TextStyle(fontSize: 11)))),
                  Expanded(
                      flex: 5,
                      child: Center(
                          child: Text('لياقة طبية',
                              style: const TextStyle(fontSize: 11)))),
                  Expanded(
                      flex: 4,
                      child: Center(
                          child: Text('الاسنان',
                              style: const TextStyle(fontSize: 11)))),
                  Expanded(
                      flex: 4,
                      child: Center(
                          child: Text('الغيارات',
                              // ignore: prefer_const_constructors
                              style: TextStyle(fontSize: 11)))),
                  Expanded(
                      flex: 5,
                      child: Center(
                          child: Text('الموجات الصوتية',
                              style: const TextStyle(fontSize: 11)))),
                  Expanded(
                      flex: 3,
                      child: Center(
                          child: Text('الاشعة',
                              style: const TextStyle(fontSize: 11)))),
                  Expanded(
                      flex: 5,
                      child: Center(
                          child: Text('عمليات كبرى',
                              style: const TextStyle(fontSize: 11)))),
                  Expanded(
                      flex: 5,
                      child: Center(
                          child: Text('عمليات صغرى',
                              style: const TextStyle(fontSize: 11)))),
                  Expanded(
                      flex: 8,
                      child: Center(
                          child: Text('الكشف والمقابلة والاقامة',
                              style: const TextStyle(fontSize: 11)))),
                  Expanded(
                      flex: 6,
                      child: Center(
                          child: Text('وصل من',
                              style: const TextStyle(fontSize: 11)))),
                  Expanded(
                      flex: 6,
                      child: Center(
                          child: Text('رقم الايصال',
                              style: const TextStyle(fontSize: 11)))),
                  Expanded(flex: 1, child: Center(child: Text('#'))),
                ]),
                ...invoice.receipts.map<TableRow>((e) {
                  if (_receiptGroub(e.typeId) == 'resedents') {
                    resedents = resedents + e.value;
                  }
                  if (_receiptGroub(e.typeId) == 'ampulance') {
                    ampulance = ampulance + e.value;
                  }
                  if (_receiptGroub(e.typeId) == 'ekg') ekg = ekg + e.value;
                  if (_receiptGroub(e.typeId) == 'records') {
                    records = records + e.value;
                  }
                  if (_receiptGroub(e.typeId) == 'fitness') {
                    fitness = fitness + e.value;
                  }
                  if (_receiptGroub(e.typeId) == 'teeth') {
                    teeth = teeth + e.value;
                  }
                  if (_receiptGroub(e.typeId) == 'changes') {
                    changes = changes + e.value;
                  }
                  if (_receiptGroub(e.typeId) == 'ultrasonic') {
                    ultrasonic = ultrasonic + e.value;
                  }
                  if (_receiptGroub(e.typeId) == 'radiation') {
                    radiation = radiation + e.value;
                  }
                  if (_receiptGroub(e.typeId) == 'majoror') {
                    majoror = majoror + e.value;
                  }
                  if (_receiptGroub(e.typeId) == 'minoror') {
                    minoror = minoror + e.value;
                  }
                  if (_receiptGroub(e.typeId) == 'checkups') {
                    checkups = checkups + e.value;
                  }
                  total = total + e.value;

                  return TableRow(children: [
                    Center(
                        child: Text(e.description ?? '',
                            style: const TextStyle(fontSize: 9))),
                    Center(
                        child: Text(e.value.toString(),
                            style: const TextStyle(fontSize: 9))),
                    Center(
                        child: Text(
                            _receiptGroub(e.typeId) == 'resedants'
                                ? e.value.toString()
                                : 0.toString(),
                            style: const TextStyle(fontSize: 9))),
                    Center(
                        child: Text(
                            _receiptGroub(e.typeId) == 'ampulance'
                                ? e.value.toString()
                                : 0.toString(),
                            style: const TextStyle(fontSize: 9))),
                    Center(
                        child: Text(
                            _receiptGroub(e.typeId) == 'ekg'
                                ? e.value.toString()
                                : 0.toString(),
                            style: const TextStyle(fontSize: 9))),
                    Center(
                        child: Text(
                            _receiptGroub(e.typeId) == 'records'
                                ? e.value.toString()
                                : 0.toString(),
                            style: const TextStyle(fontSize: 9))),
                    Center(
                        child: Text(
                            _receiptGroub(e.typeId) == 'fitness'
                                ? e.value.toString()
                                : 0.toString(),
                            style: const TextStyle(fontSize: 9))),
                    Center(
                        child: Text(
                            _receiptGroub(e.typeId) == 'teeth'
                                ? e.value.toString()
                                : 0.toString(),
                            style: const TextStyle(fontSize: 9))),
                    Center(
                        child: Text(
                            _receiptGroub(e.typeId) == 'changes'
                                ? e.value.toString()
                                : 0.toString(),
                            style: const TextStyle(fontSize: 9))),
                    Center(
                        child: Text(
                            _receiptGroub(e.typeId) == 'ultrasonic'
                                ? e.value.toString()
                                : 0.toString(),
                            style: const TextStyle(fontSize: 9))),
                    Center(
                        child: Text(
                            _receiptGroub(e.typeId) == 'radiation'
                                ? e.value.toString()
                                : 0.toString(),
                            style: const TextStyle(fontSize: 9))),
                    Center(
                        child: Text(
                            _receiptGroub(e.typeId) == 'majoror'
                                ? e.value.toString()
                                : 0.toString(),
                            style: const TextStyle(fontSize: 9))),
                    Center(
                        child: Text(
                            _receiptGroub(e.typeId) == 'minoror'
                                ? e.value.toString()
                                : 0.toString(),
                            style: const TextStyle(fontSize: 9))),
                    Center(
                        child: Text(
                            _receiptGroub(e.typeId) == 'checkups'
                                ? e.value.toString()
                                : 0.toString(),
                            style: const TextStyle(fontSize: 9))),
                    Center(
                        child: Text(e.clientName,
                            style: const TextStyle(fontSize: 9))),
                    Center(
                        child: Text(e.number.toString(),
                            style: const TextStyle(fontSize: 9))),
                    Center(
                        child: Text(
                            (invoice.receipts.indexOf(e) + 1).toString(),
                            style: const TextStyle(fontSize: 9))),
                  ]);
                }),
                TableRow(children: [
                  Center(child: Text('', style: const TextStyle(fontSize: 11))),
                  Center(
                      child: Text(total.toString(),
                          style: const TextStyle(fontSize: 11))),
                  Center(
                      child: Text(resedents.toString(),
                          style: const TextStyle(fontSize: 11))),
                  Center(
                      child: Text(ampulance.toString(),
                          style: const TextStyle(fontSize: 11))),
                  Center(
                      child: Text(ekg.toString(),
                          style: const TextStyle(fontSize: 11))),
                  Center(
                      child: Text(records.toString(),
                          style: const TextStyle(fontSize: 11))),
                  Center(
                      child: Text(fitness.toString(),
                          style: const TextStyle(fontSize: 11))),
                  Center(
                      child: Text(teeth.toString(),
                          style: const TextStyle(fontSize: 11))),
                  Center(
                      child: Text(changes.toString(),
                          style: const TextStyle(fontSize: 11))),
                  Center(
                      child: Text(ultrasonic.toString(),
                          style: const TextStyle(fontSize: 11))),
                  Center(
                      child: Text(radiation.toString(),
                          style: const TextStyle(fontSize: 11))),
                  Center(
                      child: Text(majoror.toString(),
                          style: const TextStyle(fontSize: 11))),
                  Center(
                      child: Text(minoror.toString(),
                          style: const TextStyle(fontSize: 11))),
                  Center(
                      child: Text(checkups.toString(),
                          style: const TextStyle(fontSize: 11))),
                  Center(child: Text('', style: const TextStyle(fontSize: 11))),
                  Center(
                      child: Text('المجموع الكلي',
                          style: const TextStyle(fontSize: 11))),
                  Center(child: Text('', style: const TextStyle(fontSize: 11))),
                ])
              ],
            ),
          ],
        ));
      });
}

Page _invoicePdfPage(
  Font font,
  Invoice invoice,
) {
  // Map<String, int> details = {};
  List<(String, int, int)> details = <(String, int, int)>[];
  return Page(
      theme: ThemeData.withFont(base: font),
      textDirection: TextDirection.rtl,
      pageFormat: PdfPageFormat.a3,
      orientation: PageOrientation.portrait,
      build: (context) {
        return Center(
            child: Column(children: [
          Text('بسم الله الرحمن الرحيم',
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.normal,
              )),
          Text(
            'مستشفى ابوحمد التعليمي',
          ),
          SizedBox(height: 10),
          Table(
            border: TableBorder.all(width: .5),
            children: [
              TableRow(children: [
                Expanded(
                  flex: 2,
                  child: Center(
                      child: Text(
                          '${intl.DateFormat.yMd().format(invoice.date)} ${intl.DateFormat.Hms().format(invoice.date)}')),
                ),
                Expanded(
                  child: Center(child: Text('التاريخ')),
                ),
                Expanded(
                  flex: 2,
                  child: Center(child: Text(invoice.agent.name)),
                ),
                Expanded(child: Center(child: Text("المتحصل"))),
              ])
            ],
          ),
          SizedBox(height: 10),
          Table(border: TableBorder.all(width: .5), children: [
            TableRow(children: [
              Expanded(child: Center(child: Text('التعليق'))),
              Expanded(child: Center(child: Text('التاريخ'))),
              Expanded(child: Center(child: Text('القيمة'))),
              Expanded(child: Center(child: Text('نوع الايصال'))),
              Expanded(child: Center(child: Text('الاسم'))),
              Expanded(child: Center(child: Text('الرقم'))),
            ]),
            ...invoice.receipts
                .where((element) => element.canceled == false)
                .map<TableRow>((e) {
              if (details.indexWhere(
                    (element) => element.$1 == e.type,
                  ) !=
                  -1) {
                details[details.indexWhere(
                  (element) => element.$1 == e.type,
                )] = (
                  e.type,
                  details[details.indexWhere(
                        (element) => element.$1 == e.type,
                      )]
                          .$2 +
                      e.value,
                  details[details.indexWhere(
                        (element) => element.$1 == e.type,
                      )]
                          .$3 +
                      1
                );
              } else {
                details.add((e.type, e.value, 1));
              }
              // details.containsKey(e.type)
              //     ? details[e.type] = details[e.type]! + e.value
              //     : details[e.type] = e.value;
              return TableRow(children: [
                Expanded(
                    flex: 2,
                    child: Center(
                        child: Text(e.description ?? '',
                            textAlign: TextAlign.center,
                            style: const TextStyle(fontSize: 10)))),
                Expanded(
                    child: Center(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                      Text(intl.DateFormat.yMd().format(e.date),
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 10,
                          )),
                      Text(intl.DateFormat.Hms().format(e.date),
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.normal,
                          )),
                    ]))),
                Expanded(
                    child: Center(
                        child: Text(e.value.toString(),
                            textAlign: TextAlign.center,
                            style: const TextStyle(fontSize: 10)))),
                Expanded(
                    flex: 2,
                    child: Center(
                        child: Text(e.type,
                            textAlign: TextAlign.center,
                            style: const TextStyle(fontSize: 10)))),
                Expanded(
                    flex: 2,
                    child: Center(
                        child: Text(e.clientName,
                            textAlign: TextAlign.center,
                            style: const TextStyle(fontSize: 10)))),
                Expanded(
                    child: Center(
                        child: Text(e.number.toString(),
                            textAlign: TextAlign.center,
                            style: const TextStyle(fontSize: 10)))),
              ]);
            })
          ]),
          SizedBox(height: 40),
          Text("احصائيات"),
          SizedBox(height: 20),
          Table(
            border: TableBorder.all(width: .5),
            children: [
              TableRow(children: [
                Expanded(
                  flex: 2,
                  child: Center(child: Text(invoice.totalValue.toString())),
                ),
                Expanded(
                  child: Center(child: Text('القيمة الكلية')),
                ),
                Expanded(
                  flex: 2,
                  child: Center(child: Text(invoice.totalReceipts.toString())),
                ),
                Expanded(child: Center(child: Text("عدد الايصالات"))),
              ])
            ],
          ),
          SizedBox(height: 10),
          Text('تفاصيل'),
          SizedBox(height: 10),
          Table(border: TableBorder.all(width: .5), children: [
            TableRow(children: [
              Expanded(child: Center(child: Text('القيمة الكلية'))),
              Expanded(child: Center(child: Text('العدد'))),
              Expanded(child: Center(child: Text('نوع الايصال'))),
            ]),
            ...details.map<TableRow>((e) => TableRow(children: [
                  Expanded(child: Center(child: Text(e.$2.toString()))),
                  Expanded(child: Center(child: Text(e.$3.toString()))),
                  Expanded(child: Center(child: Text(e.$1))),
                ]))
          ])
        ]));
      });
}

String _receiptGroub(String id) {
  List<String> resedents = [];
  List<String> ampulance = [];
  List<String> ekg = [];
  List<String> records = [];
  List<String> fitness = [];
  List<String> teeth = [];
  List<String> changes = [];
  List<String> ultrasonic = [];
  List<String> radiation = [];
  List<String> majoror = [];
  List<String> minoror = [];
  List<String> checkups = [];

  if (resedents.contains(id)) return 'resedents';
  if (ampulance.contains(id)) return 'ampulance';
  if (ekg.contains(id)) return 'ekg';
  if (records.contains(id)) return 'records';
  if (fitness.contains(id)) return 'fitness';
  if (teeth.contains(id)) return 'teeth';
  if (changes.contains(id)) return 'changes';
  if (ultrasonic.contains(id)) return 'ultrasonic';
  if (radiation.contains(id)) return 'radiation';
  if (majoror.contains(id)) return 'majoror';
  if (minoror.contains(id)) return 'minoror';
  if (checkups.contains(id)) return 'checkups';

  return '';
}
