// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';

import 'package:tugas_flutter/main.dart';

void main() {
  testWidgets('Menampilkan profil mahasiswa', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    expect(find.text('Profil Mahasiswa'), findsOneWidget);
    expect(find.text('Joko Widodo'), findsOneWidget);
    expect(find.text('NIM: 25.22.0000'), findsOneWidget);
    expect(find.text('S1 Informatika'), findsOneWidget);
    expect(find.text('joko@students.amikom.ac.id'), findsOneWidget);
    expect(find.text('Yogyakarta'), findsOneWidget);
    expect(find.text('Edit'), findsOneWidget);
    expect(find.text('Bagikan'), findsOneWidget);
    expect(find.byTooltip('Instagram'), findsOneWidget);
    expect(find.byTooltip('LinkedIn'), findsOneWidget);
    expect(find.byTooltip('GitHub'), findsOneWidget);
    expect(find.byTooltip('Tentang aplikasi'), findsOneWidget);
  });

  testWidgets('Ikon sosial menampilkan SnackBar', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    final instagramButton = find.byTooltip('Instagram');
    await tester.ensureVisible(instagramButton);
    await tester.tap(instagramButton);
    await tester.pump();

    expect(find.text('Instagram'), findsOneWidget);
  });

  testWidgets('Halaman tentang dapat dibuka dan ditutup', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());

    await tester.tap(find.byTooltip('Tentang aplikasi'));
    await tester.pumpAndSettle();
    expect(find.text('Tentang Aplikasi'), findsOneWidget);

    await tester.tap(find.text('Kembali'));
    await tester.pumpAndSettle();
    expect(find.text('Profil Mahasiswa'), findsOneWidget);
  });
}
