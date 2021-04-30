import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WidgetRigthWhiteTablet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: MediaQuery.of(context).size.height / 1.3,
      width: MediaQuery.of(context).size.width / 3.18,
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 8,),
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/logo_login.png'),
                        fit: BoxFit.cover)),
              ),
              const SizedBox(height: 12,),
              Text(
                'LOGIN Tablet',
                style: GoogleFonts.acme(
                  fontSize: 18,
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
                      padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
                      child: Material(
                        color: Colors.transparent,
                        elevation: 18,
                        shadowColor: Colors.grey[300],
                        child: TextFormField(
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                borderSide: BorderSide(
                                  color: Colors.teal,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0),
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
                                fontSize: 12
                              )
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15, top: 16),
                      child: Material(
                        color: Colors.transparent,
                        elevation: 18,
                        shadowColor: Colors.grey[300],
                        child: TextFormField(
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                borderSide: BorderSide(
                                  color: Colors.teal,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                borderSide: BorderSide(
                                  color: Colors.white,
                                ),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              isDense: true,
                              labelText: 'Contraseña',
                              labelStyle:
                              GoogleFonts.acme(
                                  color: Colors.teal.shade800,
                                fontSize: 12
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: (){},
                        child: Text(
                          'Olvidé mi contraseña',
                          style: GoogleFonts.delius(
                              fontSize: 10,
                              color: Colors.teal,
                              decoration: TextDecoration.underline
                          ),
                        )
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: ElevatedButton(
                    onPressed: (){},
                    style: ElevatedButton.styleFrom(
                        elevation: 10,
                        padding: const EdgeInsets.only(left: 45, right: 45, top: 10, bottom: 15),
                        primary: Colors.teal.shade400,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)
                        )
                    ),
                    child: Text(
                      'INGRESAR',
                      style: GoogleFonts.acme(
                          fontSize: 14
                      ),
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Text(
                  '© Copyright Todos los derechos reservados',
                  style: TextStyle(
                      fontSize: 8,
                      color: Colors.teal.shade700
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
