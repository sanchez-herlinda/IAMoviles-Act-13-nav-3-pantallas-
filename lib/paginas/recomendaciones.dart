import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../main.dart';

class PaginaRecomendaciones extends StatelessWidget {
  const PaginaRecomendaciones({super.key});

  @override
  Widget build(BuildContext context) {
    final appData = context.watch<RomaContentData>();

    return Scaffold(
      backgroundColor: appData.backgroundColor,
      appBar: AppBar(
        backgroundColor: appData.detailColor,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.white, size: 20),
          onPressed: () => Navigator.pop(context),
        ),
        centerTitle: true,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('La', style: GoogleFonts.playfairDisplay(fontSize: 12, color: Colors.white)),
            const SizedBox(width: 2),
            Text('ROMA',
                style: GoogleFonts.playfairDisplay(
                    fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white, height: 0.9)),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Recomendaciones',
              style: GoogleFonts.playfairDisplay(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: appData.textColor,
              ),
            ),
            const SizedBox(height: 20),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                'https://images.unsplash.com/photo-1546069901-ba9599a7e63c?q=80&w=1000',
                height: 250,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 15),
            Icon(Icons.star, color: appData.detailColor, size: 30),
            const SizedBox(height: 10),
            Text(
              'Ensalada de Verano Roma',
              style: GoogleFonts.playfairDisplay(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: appData.textColor,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Una mezcla fresca de ingredientes locales, aceite de oliva extra virgen y el toque secreto de la casa. Perfecta para comenzar tu experiencia italiana.',
              style: TextStyle(
                fontSize: 16,
                // SOLUCIÓN AL PROBLEMA DE OPACIDAD: Usamos withAlpha (204 = 80% de 255)
                color: appData.textColor.withAlpha(204),
                height: 1.5,
              ),
            ),
            const SizedBox(height: 40),
            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: appData.textColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: Text(
                  'Añadir a carrito',
                  style: GoogleFonts.playfairDisplay(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}