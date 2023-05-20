import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Flutter';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appTitle,
            textAlign: TextAlign.center, ),
          textTheme: TextTheme(
            headline6: TextStyle(
            color: Colors.white,
            ),// Change the button text color here
          ),
          backgroundColor: Colors.green,
          centerTitle: true,
        ),
        backgroundColor: Colors.white,
        body:Center(
    child:MyCustomForm(

    ),
        ),
      ),
    );
  }
}
// Create a Form widget.
class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}
// Create a corresponding State class. This class holds data related to the form.
class MyCustomFormState extends State<MyCustomForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  final _formKey = GlobalKey<FormState>();
  void _showSuccessMessage() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Success'),
          content: Text('Form submitted successfully!'),
          actions: <Widget>[
            ElevatedButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
      return SingleChildScrollView (
      child:Form(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
         child: Container(
            padding: EdgeInsets.all(16.0),
            child: Image.asset(
              'assets/images/user.png',
              width: 200,
              height: 200,
            ),
          ),
          ),
          //Image.asset('assets/image/images.png'), // Replace with your own image path

          Padding(
            padding: const EdgeInsets.all(16.0),
            child:Center(
            child: Text(
              'Your Profile',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ),
         Padding(
    padding: EdgeInsets.all(10),
        child:  TextFormField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              icon: const Icon(Icons.person),
              hintText: 'Enter your name',
              labelText: 'Name',

            ),
          validator: (value) {
            if (value?.isEmpty ?? true) {
              return 'Please enter your name';
            }
            return null;
          },
          ),
    ),
          Padding(
          padding: EdgeInsets.all(10),
    child:TextFormField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              icon: const Icon(Icons.person),
              hintText: 'Enter your Father name',
              labelText: 'Father Name',
            ),
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Please enter your Father name';
        }
        return null;
      },
          ),
          ),
    Padding(
    padding: EdgeInsets.all(10),
    child:
          TextFormField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              icon: const Icon(Icons.person),
              hintText: 'Enter your Mother name',
              labelText: 'Mother Name',

            ),
            validator: (value) {
              if (value?.isEmpty ?? true) {
                return 'Please enter your Mother name';
              }
              return null;
            },
          ),
    ),

    Padding(
    padding: EdgeInsets.all(10),
    child:TextFormField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              icon: const Icon(Icons.phone),
              hintText: 'Enter a phone number',
              labelText: 'Phone',
            ),
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Please enter your phone number';
        }
        return null;
      },
          ),
    ),
    Padding(
    padding: EdgeInsets.all(10),
    child:TextFormField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              icon: const Icon(Icons.calendar_today),
              hintText: 'Enter your date of birth',
              labelText: 'Dob',
            ),
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Please enter your date of birth';
        }
        return null;
      },
          ),
    ),
          Padding(
            padding: EdgeInsets.all(10),
            child: TextFormField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              icon: const Icon(Icons.person),
              hintText: 'Enter your Qualification',
              labelText: 'Qualification',
            ),
              validator: (value) {
                if (value?.isEmpty ?? true) {
                  return 'Please enter your Qualification ';
                }
                return null;
              },
          ),
            ),
          Container(
            padding: const EdgeInsets.only(top: 40.0),
            child: Center(
              child: ElevatedButton(
                child: const Text('Update'),
                onPressed: () {
                  if (_formKey.currentState?.validate() ?? false) {
                    // Form is valid, show success message
                    _showSuccessMessage();
                  }
                  // Add your logic here to handle button press
                  // Example logic, you can replace it with your own
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.green, // Change the button color here
                  textStyle: TextStyle(
                    color: Colors.white, // Change the button text color here
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    ),
      );
  }
}