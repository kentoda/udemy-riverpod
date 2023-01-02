import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:practice/data/count_data.dart';
import 'package:practice/data/post_code.dart';
import 'package:practice/provider.dart';
import 'package:practice/view_model.dart';
import 'package:firebase_core/firebase_core.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends ConsumerWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final postCode = ref.watch(apiProvider);

    final familyPostCode =
        ref.watch(apiFamilyProvider(ref.watch(postCodeProvider)));

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(onChanged: (text) => onPostCodeChanged(ref, text)),
              Expanded(
                child: postCode.when(
                    data: (data) => ListView.separated(
                          itemCount: data.data.length,
                          itemBuilder: (context, index) => ListTile(
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(data.data[index].en.prefecture),
                                Text(data.data[index].en.address1),
                                Text(data.data[index].en.address2),
                                Text(data.data[index].en.address3),
                                Text(data.data[index].en.address4),
                              ],
                            ),
                          ),
                          separatorBuilder: (BuildContext context, int index) =>
                              Divider(
                            color: Colors.black,
                          ),
                        ),
                    error: (error, stackTrace) => Text(error.toString()),
                    loading: () => AspectRatio(
                        aspectRatio: 1,
                        child: const CircularProgressIndicator())),
              ),
              Text("With"),
              Expanded(
                child: familyPostCode.when(
                    data: (data) => ListView.separated(
                          itemCount: data.data.length,
                          itemBuilder: (context, index) => ListTile(
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(data.data[index].en.prefecture),
                                Text(data.data[index].en.address1),
                                Text(data.data[index].en.address2),
                                Text(data.data[index].en.address3),
                                Text(data.data[index].en.address4),
                              ],
                            ),
                          ),
                          separatorBuilder: (BuildContext context, int index) =>
                              Divider(
                            color: Colors.black,
                          ),
                        ),
                    error: (error, stackTrace) => Text(error.toString()),
                    loading: () => AspectRatio(
                        aspectRatio: 1,
                        child: const CircularProgressIndicator())),
              )
            ],
          ),
        ),
      ),
    );
  }

  void onPostCodeChanged(WidgetRef ref, String text) {
    if (text.length != 7) {
      return;
    }

    try {
      int.parse(text);

      ref.watch(postCodeProvider.notifier).state = text;

      print(text);
    } catch (e) {}
  }
}
