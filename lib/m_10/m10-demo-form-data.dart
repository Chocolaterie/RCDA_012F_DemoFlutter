import 'package:flutter/material.dart';

void main() {
  runApp(DemoM10FormApp());
}

class DemoM10FormApp extends StatelessWidget {
  const DemoM10FormApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo M10 Form App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: DemoM10FormPage(),
    );
  }
}

class DemoM10FormPage extends StatelessWidget {

  // Controller les données saisies dans un champ
  TextEditingController emailController = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void onSubmit(){
    // Récupérer la valeur d'une saisie
    String email = emailController.text!;

    print(email);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Demo M10 Form"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(labelText: "Email"),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "Pseudo"),
              ),
              ElevatedButton(onPressed: onSubmit, child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text("Submit"),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
