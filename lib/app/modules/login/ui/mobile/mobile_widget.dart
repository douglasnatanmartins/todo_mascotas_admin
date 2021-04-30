import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class MobileScreem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/fundo_login06.jpg'),
                fit: BoxFit.cover)),
        child: Center(
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
            elevation: 20,
            child: Container(
                height: MediaQuery.of(context).size.height / 1.3,
                width: MediaQuery.of(context).size.width / 1.8,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                          height: 115,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: LinearGradient(
                                  colors: [
                                    Colors.teal.shade600,
                                    Colors.teal.shade400
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter)),
                          child: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Icon(
                                      FontAwesomeIcons.cogs,
                                      size: 30,
                                      color: Colors.teal.shade100,
                                    ),
                                  ),
                                  const SizedBox(width: 40),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 30),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
                                          'todo',
                                          style: GoogleFonts.delius(
                                            fontSize: 12,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(
                                          'Mascotas',
                                          style: GoogleFonts.acme(
                                            fontSize: 18,
                                            color: Colors.white,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 6),
                              Text(
                                'SEA BIENVENIDO!',
                                style: GoogleFonts.acme(
                                  fontSize: 10,
                                  color: Colors.white,
                                ),
                              ),
                              Center(
                                child: Container(
                                  padding: const EdgeInsets.only(
                                      left: 25, right: 25, top: 6),
                                  child: Text(
                                    'Haga login con tu correo y contraseña para Continuar',
                                    style: GoogleFonts.montserrat(
                                        color: Colors.white, fontSize: 10),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ],
                          )),
                      const SizedBox(height: 12),
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('images/logo_login.png'),
                                fit: BoxFit.cover)),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'LOGIN Mobile',
                        style: GoogleFonts.acme(
                          fontSize: 16,
                          color: Colors.teal.shade900,
                        ),
                      ),
                      Text(
                        'Acceso al panel de administración',
                        style: GoogleFonts.acme(
                          fontSize: 12,
                          color: Colors.teal.shade900,
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 15, right: 15, top: 12),
                              child: Material(
                                color: Colors.transparent,
                                elevation: 18,
                                shadowColor: Colors.grey[300],
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white,
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                        borderSide: BorderSide(
                                          color: Colors.teal,
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                        borderSide: BorderSide(
                                          color: Colors.white,
                                        ),
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      isDense: true,
                                      labelText: 'Correo electrónico',
                                      labelStyle: GoogleFonts.acme(
                                          color: Colors.teal.shade800,
                                          fontSize: 12)),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 15, right: 15, top: 12),
                              child: Material(
                                color: Colors.transparent,
                                elevation: 18,
                                shadowColor: Colors.grey[300],
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white,
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                        borderSide: BorderSide(
                                          color: Colors.teal,
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                        borderSide: BorderSide(
                                          color: Colors.white,
                                        ),
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      isDense: true,
                                      labelText: 'Contraseña',
                                      labelStyle: GoogleFonts.acme(
                                          color: Colors.teal.shade800,
                                          fontSize: 12)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5, right: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Olvidé mi contraseña',
                                  style: GoogleFonts.delius(
                                      fontSize: 10,
                                      color: Colors.teal,
                                      decoration: TextDecoration.underline),
                                ))
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                elevation: 10,
                                padding: const EdgeInsets.only(
                                    left: 45, right: 45, top: 10, bottom: 10),
                                primary: Colors.teal.shade400,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20))),
                            child: Text(
                              'INGRESAR',
                              style: GoogleFonts.acme(fontSize: 12),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Text(
                          '© Copyright Todos los derechos reservados',
                          style: TextStyle(
                              fontSize: 8, color: Colors.teal.shade700),
                        ),
                      )
                    ],
                  ),
                )),
          ),
        ),
      ),
    );
  }
}
