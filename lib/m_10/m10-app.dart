import 'package:demo_flutter/m_10/counter-view-model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(DemoM10App());
}

class DemoM10App extends StatelessWidget {
  const DemoM10App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo M10 App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: DemoM10Page(),
    );
  }
}

class DemoM10Page extends StatelessWidget {
  
  // Instancier le viewmodel
  CounterViewModel viewModel = CounterViewModel();
 
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => viewModel,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("Demo M10"),
        ),
        body: Center(
            child: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Consumer<CounterViewModel>(
                  builder: (context, viewModel, child) {
                    return Text("Counter :${viewModel.value}");
                  }),
              ),
              ElevatedButton(onPressed: () {
                viewModel.incrementValue();
              }, child: Text("Incrementer")),
              Consumer<CounterViewModel>(
                  builder: (context, viewModel, child) {
                    return Row(
                      children: [
                        Image.asset("image_demo.jpg", width: 200,),
                        Text("Le chien il a un compteur :${viewModel.value}"),
                      ],
                    );
                  })
            ],
          ),
        )),
      ),
    );
  }
}
