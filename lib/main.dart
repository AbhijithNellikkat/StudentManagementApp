import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:student_management_app/database/database.dart';
import 'package:student_management_app/features/home/ui/screen/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();

  if (!Hive.isAdapterRegistered(StudentModelAdapter().typeId)) {
    Hive.registerAdapter(
      StudentModelAdapter(),
    );
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 19, 17, 21),
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
