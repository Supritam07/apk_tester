import 'package:flutter/material.dart';

void main() {
  runApp(const EmojiTableApp());
}

class EmojiTableApp extends StatelessWidget {
  const EmojiTableApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Emoji Table',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const EmojiTablePage(),
    );
  }
}

class EmojiTablePage extends StatelessWidget {
  const EmojiTablePage({super.key});

  // A small sample of emojis for demonstration. You can expand this list.
  static final List<Map<String, String>> emojis = [
    {'emoji': '😀', 'code': 'U+1F600', 'description': 'Grinning Face'},
    {'emoji': '😂', 'code': 'U+1F602', 'description': 'Face with Tears of Joy'},
    {'emoji': '❤️', 'code': 'U+2764', 'description': 'Red Heart'},
    {'emoji': '🔥', 'code': 'U+1F525', 'description': 'Fire'},
    {'emoji': '👍', 'code': 'U+1F44D', 'description': 'Thumbs Up'},
    {'emoji': '🙏', 'code': 'U+1F64F', 'description': 'Folded Hands'},
    {'emoji': '🥺', 'code': 'U+1F97A', 'description': 'Pleading Face'},
    {'emoji': '😊', 'code': 'U+1F60A', 'description': 'Smiling Face with Smiling Eyes'},
    {'emoji': '🥰', 'code': 'U+1F970', 'description': 'Smiling Face with Hearts'},
    {'emoji': '😎', 'code': 'U+1F60E', 'description': 'Smiling Face with Sunglasses'},
    // Add more emojis as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Emoji Table'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: DataTable(
          columns: const [
            DataColumn(label: Text('Emoji')),
            DataColumn(label: Text('Code')),
            DataColumn(label: Text('Description')),
          ],
          rows: emojis.map((emoji) {
            return DataRow(cells: [
              DataCell(Text(emoji['emoji']!)),
              DataCell(Text(emoji['code']!)),
              DataCell(Text(emoji['description']!)),
            ]);
          }).toList(),
        ),
      ),
    );
  }
}
