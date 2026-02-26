import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

// Importamos tus pantallas
import 'paginas/landing_page.dart';
import 'paginas/menu_principal.dart';
import 'paginas/recomendaciones.dart';

void main() => runApp(const MyApp());

/// Modelo de datos unificado para toda la app
class RomaContentData extends ChangeNotifier {
  final String landingPageTitlePart1 = 'La';
  final String landingPageTitlePart2 = 'ROMA';
  final String landingPageImageURL =
      'https://raw.githubusercontent.com/sanchez-herlinda/Imagenes_para_Flutter_6J-11-Feb-2026/refs/heads/main/coliseo.png';
  
  // Colores principales unificados
  final Color backgroundColor = const Color(0xFFF7F3E3); 
  final Color textColor = const Color(0xFF4A3B28);
  final Color detailColor = const Color(0xFFD2B48C);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<RomaContentData>(
      create: (BuildContext context) => RomaContentData(),
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            textTheme: GoogleFonts.playfairDisplayTextTheme(
              Theme.of(context).textTheme,
            ),
          ),
          // RUTAS NOMBRADAS
          initialRoute: '/',
          routes: {
            '/': (context) => const RomaLandingPage(),
            '/menu': (context) => const MenuPrincipal(),
            '/recomendaciones': (context) => const PaginaRecomendaciones(),
          },
        );
      },
    );
  }
}