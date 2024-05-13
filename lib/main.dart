import 'package:app_fabinho_multimarcas/view/carros_detalhes_view.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      title: 'Fabinho Multimarcas',
      initialRoute: 'detalhes',
      routes: {
        'detalhes': (context) => CarrosDetalhesView(),
      },
    );
  }
}
