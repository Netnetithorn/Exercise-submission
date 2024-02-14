import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TextInput extends ChangeNotifier {
  String _userInput = '';

  String get userInput => _userInput;

  void setUserInput(String input) {
    _userInput = input;
    notifyListeners();
  }
}

class EditPage extends StatelessWidget {
  const EditPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textInput = Provider.of<TextInput>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Page'),
        leading: IconButton(
          icon: Icon(Icons.edit),
          onPressed: () {Navigator.pushNamed(context, '/second');}, 
          ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                onChanged: (value) {
                  textInput.setUserInput(value);
                },
                maxLines: null, // Allow multiline input
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
