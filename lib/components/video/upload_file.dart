import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:open_file/open_file.dart';

class AddFile extends StatefulWidget {
  const AddFile({Key? key}) : super(key: key);
  @override
  _AddFileState createState() => _AddFileState();
}

class _AddFileState extends State<AddFile> {
  void _pickFile() async {
    // opens storage to pick files and the picked file or files
    // are assigned into result and if no file is chosen result is null.
    // you can also toggle "allowMultiple" true or false depending on your need
    final result = await FilePicker.platform.pickFiles(allowMultiple: false);

    // if no file is picked
    if (result == null) return;

    // we get the file from result object
    final file = result.files.first;

    _openFile(file);
  }

  void _openFile(PlatformFile file) {
    OpenFile.open(file.path);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: MaterialButton(
        onPressed: () {
          _pickFile();
        },
        child: Text(
          'Pick an audio, then video',
          style: TextStyle(color: Colors.white),
        ),
        color: Colors.blue,
      ),
    );
  }
}
