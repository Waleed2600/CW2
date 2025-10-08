import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:recipe_book_app/main.dart';

void main() {
  testWidgets('Recipe Book App smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const RecipeBookApp());

    // Verify that the app shows the Recipe Book title
    expect(find.text('Recipe Book'), findsOneWidget);
    
    // Verify that we have some recipe cards displayed
    expect(find.byType(Card), findsWidgets);
    
    // Verify that the "View Favorites" button exists
    expect(find.text('View Favorites'), findsOneWidget);
  });

  testWidgets('Navigation to favorites screen works', (WidgetTester tester) async {
    await tester.pumpWidget(const RecipeBookApp());

    // Tap the "View Favorites" button
    await tester.tap(find.text('View Favorites'));
    await tester.pumpAndSettle();

    // Verify we're now on the favorites screen
    expect(find.text('Favorite Recipes'), findsOneWidget);
  });

  testWidgets('Recipe cards are tappable', (WidgetTester tester) async {
    await tester.pumpWidget(const RecipeBookApp());

    // Find the first recipe card and tap it
    await tester.tap(find.byType(Card).first);
    await tester.pumpAndSettle();

    // We should now be on a details screen with ingredients section
    expect(find.text('Ingredients'), findsOneWidget);
    expect(find.text('Instructions'), findsOneWidget);
  });
}