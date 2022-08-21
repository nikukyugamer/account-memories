import 'package:flutter_test/flutter_test.dart';
import 'package:account_memories/main.dart';

void main() {
  testWidgets('文字列', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Amazon'), findsOneWidget);
    expect(find.text('楽天'), findsOneWidget);
    expect(find.text('Yahoo!'), findsOneWidget);
    expect(find.text('Google'), findsNothing);
    expect(find.text('Microsoft'), findsNothing);
  });
}
