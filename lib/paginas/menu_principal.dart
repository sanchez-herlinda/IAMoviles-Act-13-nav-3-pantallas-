import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../main.dart';

class MenuPrincipal extends StatelessWidget {
  const MenuPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    final RomaContentData appData = context.watch<RomaContentData>();

    return Scaffold(
      backgroundColor: appData.backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.menu, color: appData.textColor),
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.account_circle_outlined, color: appData.textColor),
            onPressed: () {},
          ),
        ],
        centerTitle: true,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('La', style: GoogleFonts.playfairDisplay(fontSize: 12, color: appData.textColor)),
            const SizedBox(width: 2),
            Text('ROMA',
                style: GoogleFonts.playfairDisplay(
                    fontSize: 24, fontWeight: FontWeight.bold, color: appData.textColor, height: 0.9)),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: 350,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage('https://images.unsplash.com/photo-1552832230-c0197dd311b5?q=80&w=1000'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 15.0,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.85,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const <BoxShadow>[BoxShadow(color: Colors.black12, blurRadius: 10)],
                        ),
                        child: const TextField(
                          decoration: InputDecoration(
                            hintText: 'Buscar platillo...',
                            prefixIcon: Icon(Icons.search),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(vertical: 15),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: PlatilloCard(
                        nombre: "Pasta Carbonara",
                        url: "https://images.unsplash.com/photo-1612874742237-6526221588e3?w=500"),
                  ),
                  SizedBox(width: 15),
                  Expanded(
                    child: PlatilloCard(
                        nombre: "Pizza Napo",
                        url: "https://images.unsplash.com/photo-1513104890138-7c749659a591?q=80&w=500"),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: PlatilloLargo(
                  nombre: "Lasagna Classica",
                  precio: "25.00",
                  url: "https://images.unsplash.com/photo-1551183053-bf91a1d81141?w=500"),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: appData.textColor,
        unselectedItemColor: appData.detailColor,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_basket_outlined), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.location_on_outlined), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.confirmation_number_outlined), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: ""),
        ],
      ),
    );
  }
}

class PlatilloCard extends StatelessWidget {
  final String nombre;
  final String url;

  const PlatilloCard({required this.nombre, required this.url, super.key});

  @override
  Widget build(BuildContext context) {
    final RomaContentData appData = context.read<RomaContentData>();
    return Container(
      height: 200,
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: <Widget>[
          Expanded(
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(15)),
              child: Image.network(url, fit: BoxFit.cover, width: double.infinity),
            ),
          ),
          Expanded(
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: 5,
                  right: 5,
                  child: IconButton(
                    icon: Icon(Icons.arrow_outward, size: 18, color: appData.detailColor),
                    onPressed: () {
                      // NAVEGA AL DETALLE DEL PLATILLO
                      Navigator.pushNamed(context, '/recomendaciones');
                    },
                    padding: EdgeInsets.zero,
                    constraints: const BoxConstraints(),
                  ),
                ),
                Positioned(bottom: 5, right: 5, child: Icon(Icons.keyboard_arrow_down, color: appData.textColor)),
                Center(
                  child: Text(
                    nombre,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.playfairDisplay(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PlatilloLargo extends StatelessWidget {
  final String nombre;
  final String precio;
  final String url;

  const PlatilloLargo({required this.nombre, required this.precio, required this.url, super.key});

  @override
  Widget build(BuildContext context) {
    final RomaContentData appData = context.read<RomaContentData>();
    return Container(
      height: 120,
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(15)),
      child: Row(
        children: <Widget>[
          ClipRRect(
            borderRadius: const BorderRadius.horizontal(left: Radius.circular(15)),
            child: Image.network(url, width: 120, height: 120, fit: BoxFit.cover),
          ),
          Expanded(
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: 8,
                  right: 8,
                  child: IconButton(
                    icon: Icon(Icons.arrow_outward, size: 20, color: appData.detailColor),
                    onPressed: () {
                      // NAVEGA AL DETALLE DEL PLATILLO
                      Navigator.pushNamed(context, '/recomendaciones');
                    },
                    padding: EdgeInsets.zero,
                    constraints: const BoxConstraints(),
                  ),
                ),
                Positioned(bottom: 8, right: 8, child: Icon(Icons.keyboard_arrow_down, color: appData.textColor)),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(nombre, style: GoogleFonts.playfairDisplay(fontSize: 18, fontWeight: FontWeight.bold)),
                      Text("\$$precio",
                          style: TextStyle(color: appData.detailColor, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}