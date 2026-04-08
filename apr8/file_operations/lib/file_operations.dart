import 'dart:io';
import 'package:path_provider/path_provider.dart';

class FileOperations {

  // 📁 Get file path
  Future<File> getFile() async {
    final dir = await getApplicationDocumentsDirectory();
    // print(dir.path);
    // return File('${dir.path}/myfile.txt');
    return File("./file1.txt");
  }

  // ✍️ Write data
  Future<void> writeData(String data) async {
    final file = await getFile();
    // await file.writeAsString(data);
    await file.writeAsString(data, mode: FileMode.append);

  }

  // 📖 Read data
  Future<String> readData() async {
    try {
      final file = await getFile();

      if (await file.exists()) {
        return await file.readAsString();
      } else {
        return "File not found!";
      }
    } catch (e) {
      return "Error reading file";
    }
  }
}