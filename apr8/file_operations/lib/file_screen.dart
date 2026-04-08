import 'package:file_operations/file_operations.dart';
import 'package:flutter/material.dart';

class FileScreen extends StatefulWidget {
  const FileScreen({super.key});

  @override
  State<FileScreen> createState() => _FileScreenState();
}

class _FileScreenState extends State<FileScreen> {
    final TextEditingController controller = TextEditingController();
  final FileOperations fileService = FileOperations();

  String displayText = "No Data Yet";

  // Save Button Action
  void saveData() async {
    await fileService.writeData(controller.text);

    setState(() {
      displayText = "Data Saved Successfully!";
    });
  }

  // Read Button Action
  void loadData() async {
    String data = await fileService.readData();

    setState(() {
      displayText = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("File Storage Demo"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [

            TextField(
              controller: controller,
              decoration: InputDecoration(
                labelText: "Enter Data",
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: saveData,
              child: Text("Save to File"),
            ),

            SizedBox(height: 10),

            ElevatedButton(
              onPressed: loadData,
              child: Text("Read from File"),
            ),

            SizedBox(height: 30),

            Text(
              "Output:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 10),

            Container(
              padding: EdgeInsets.all(12),
              width: double.infinity,
              color: Colors.grey[200],
              child: Text(
                displayText,
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );

  }
}

