// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_testing/main.dart';

void main() {
  testWidgets("counter app testing", (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    var appbar = find.byType(AppBar);
    expect(appbar, findsWidgets);
    var button = find.byType(FloatingActionButton);

    expect(find.text("You have pushed the button this many times:"),
        findsOneWidget);

    expect(find.text("1"), findsNothing);
    expect(button, findsWidgets);

    await tester.tap(button);
    await tester.pump();
    expect(find.text("1"), findsOneWidget);
    expect(button, findsWidgets);
    expect(find.text("0"), findsNothing);
    expect(button, findsWidgets);
    expect(find.byType(Container), findsOneWidget);
  });
}


// ----------Matcher
// findsOneWidget (fine one widget on a particular screen)
// findNWidget (How many number of widgets we are expecting)
// findNothing (No find any widget, it will not find anything from screen)
// findsWidget (Mean we are expecting one or more then one widget)

//--------- Pump & Pump Widget

// Pump (is for render the screen, load the screen again like setstate)
// Pump Widget (pass a widget that we want to load)