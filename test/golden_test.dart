import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_test_sandbox/main.dart';

void main() {
  setUpAll(() async {
    // Load fonts
    final fontFile = File('test/fonts/MaterialIcons-Regular.otf');
    final fontData = await fontFile.readAsBytes();
    final fontLoader = FontLoader('MaterialIcons');
    fontLoader.addFont(Future.value(ByteData.view(fontData.buffer)));
    await fontLoader.load();

    final fontFile2 = File('test/fonts/Roboto-Regular.ttf');
    final fontData2 = await fontFile2.readAsBytes();
    final fontLoader2 = FontLoader('Roboto');
    fontLoader2.addFont(Future.value(ByteData.view(fontData2.buffer)));
    await fontLoader2.load();

    final fontFile3 = File('test/fonts/NotoSans-Regular.ttf');
    final fontData3 = await fontFile3.readAsBytes();
    final fontLoader3 = FontLoader('NotoSans');
    fontLoader3.addFont(Future.value(ByteData.view(fontData3.buffer)));
    await fontLoader3.load();
  });

  testWidgets('App is rendered', (tester) async {
    await tester.pumpWidget(MyApp());

    await expectLater(
      find.byType(Scaffold),
      matchesGoldenFile('home_page.png'),
    );
  });
}
