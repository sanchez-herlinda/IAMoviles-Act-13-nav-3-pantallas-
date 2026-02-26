import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../main.dart';

class RomaLandingPage extends StatelessWidget {
  const RomaLandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final RomaContentData appData = context.watch<RomaContentData>();

    return Scaffold(
      backgroundColor: appData.backgroundColor,
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 48.0, horizontal: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.network(
                  appData.landingPageImageURL,
                  width: 220,
                  errorBuilder: (BuildContext context, Object error, StackTrace? stackTrace) =>
                      Icon(Icons.account_balance, size: 150, color: appData.detailColor),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      appData.landingPageTitlePart1,
                      style: GoogleFonts.playfairDisplay(
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                        color: appData.textColor,
                      ),
                    ),
                    const SizedBox(width: 4),
                    Text(
                      appData.landingPageTitlePart2,
                      style: GoogleFonts.playfairDisplay(
                        fontSize: 70,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2,
                        color: appData.textColor,
                        height: 0.9,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 80),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    // SOLUCIÓN AL PROBLEMA DE OPACIDAD: Usamos withAlpha (128 = 50% de 255)
                    border: Border.all(color: appData.detailColor.withAlpha(128), width: 2),
                  ),
                  child: IconButton(
                    iconSize: 40,
                    icon: Icon(Icons.arrow_forward, color: appData.textColor),
                    onPressed: () {
                      // NAVEGACIÓN POR RUTA NOMBRADA AL MENÚ
                      Navigator.pushNamed(context, '/menu');
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}