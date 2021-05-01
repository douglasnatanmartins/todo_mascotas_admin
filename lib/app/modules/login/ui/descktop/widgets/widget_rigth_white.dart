import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WidgetRigthWhite extends StatelessWidget {
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
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const SizedBox(height: 12,),
              Container(
                height: 130,
                width: 130,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/logo_login.png'),
                        fit: BoxFit.cover)),
              ),
              const SizedBox(height: 12,),
              Text(
                'LOGIN WEB',
                style: GoogleFonts.acme(
                  fontSize: 22,
                  color: Colors.teal.shade900,
                ),
              ),
              Text(
                'Acceso al panel de administración',
                style: GoogleFonts.acme(
                  fontSize: 14,
                  color: Colors.teal.shade900,
                ),
              ),
            Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
                    child: Material(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)
                      ),
                      color: Colors.transparent,
                      elevation: 22,
                      shadowColor: Colors.grey[100],
                      child: TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.email,color: Colors.teal.shade700,),
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
                            labelStyle: GoogleFonts.acme(color: Colors.teal.shade800)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30, top: 16),
                    child: Material(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)
                      ),
                      color: Colors.transparent,
                      elevation: 20,
                      shadowColor: Colors.grey[100],
                      child: TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.lock_rounded,color: Colors.teal.shade700,),
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
                            GoogleFonts.acme(color: Colors.teal.shade800)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
              Padding(
                padding: const EdgeInsets.only(top: 10, right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: (){},
                        child: Text(
                          'Olvidé mi contraseña',
                          style: GoogleFonts.delius(
                            color: Colors.teal,
                            decoration: TextDecoration.underline
                          ),
                        )
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: ElevatedButton(
                    onPressed: (){},
                    style: ElevatedButton.styleFrom(
                        elevation: 6,
                        padding: const EdgeInsets.only(left: 45, right: 45, top: 15, bottom: 15),
                        primary: Colors.teal.shade400,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)
                        )
                    ),
                    child: Text(
                      'INGRESAR',
                      style: GoogleFonts.acme(
                          fontSize: 18
                      ),
                    )
                ),
              ),
             SizedBox(height: MediaQuery.of(context).size.height / 12,),
              Text(
                '© Copyright Todos los derechos reservados',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.teal.shade700
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
