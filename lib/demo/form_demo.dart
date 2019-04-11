import 'package:flutter/material.dart';

class FormDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // TextFieldDemo()
            RegisterForm()
          ],
        ),
      ),
    );
  }
}

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final formKey = GlobalKey<FormState> ();
  String username, password;
  bool autoValidate = false;

  void submitRegisterForm () {

    if (formKey.currentState.validate()) {
      formKey.currentState.save();
      debugPrint('$username');
      Scaffold.of(context).showSnackBar(
        SnackBar(
          content: Text('Register'),
        )
      );
    } else {
      setState(() {
        autoValidate = true;
      });
    }

    
  }

  String usernameValidator (val) {
    if (val.isEmpty) {
      return 'Password is required';
    }
    return null;
  }

  String passwordValidator (val) {
    if (val.isEmpty) {
      return 'Password is required';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              labelText: 'title',
            ),
            onSaved: (value) {
              username = value;
            },  
            validator: usernameValidator,
            autovalidate: autoValidate,
          ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'password',
            ),
            onSaved: (value) {
              password = value;
            },
            validator: passwordValidator,
            autovalidate: autoValidate,
          ),
          SizedBox(
            height: 32.0,
          ),
          Container(
            width: double.infinity,
            child: RaisedButton(
              color: Theme.of(context).accentColor,
              child: Text('Register', style: TextStyle(
                color: Colors.white
              ),),
              elevation: 0.0,
              onPressed: submitRegisterForm,
            ),
          )
        ],
      ),
    );
  }
}


class TextFieldDemo extends StatefulWidget {
  @override
  _TextFieldDemoState createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  final textEditingController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    textEditingController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    textEditingController.addListener(
      () {
        debugPrint('input: ${textEditingController.text}');
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      // onChanged: (val) {
      //   debugPrint('input $val');
      // },
      onSubmitted: (val) {
        debugPrint('onSubmitted $val');
      },
      decoration: InputDecoration(
        icon: Icon(Icons.subject),
        labelText: 'Title',
        hintText: 'jackhui'
      ),
    );
  }
}

class ThemeDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Theme.of(context).primaryColor,
    );
  }
}