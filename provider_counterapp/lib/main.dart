

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_counterapp/provideroperation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Provideroperation(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home:  MyHomePage(title: 'provider Counter'),
      ),
    );
  }
}

// ignore: must_be_immutable
class MyHomePage extends StatelessWidget {
  
  MyHomePage({super.key,this.title});
  String? title;
  @override
  Widget build(BuildContext context) {
    final countprovider = Provider.of<Provideroperation>(context);
    return Scaffold(
      appBar: AppBar(title: Text(title!),),
      body:  SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: Text(countprovider.count.toString(),style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        countprovider.increment();
      },child: const Icon(Icons.add),),
    );
  }
}