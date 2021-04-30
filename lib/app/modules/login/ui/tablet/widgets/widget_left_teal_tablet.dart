import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class WidgetLeftTealTablet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 1.3,
      width: MediaQuery.of(context).size.width / 4.2,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            bottomLeft: Radius.circular(20),
          ),
          gradient: LinearGradient(
              colors: [
                Colors.teal.shade600,
                Colors.teal,
                Colors.teal.shade400
              ]
          )
      ),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 10),
                child: Icon(
                  FontAwesomeIcons.cogs,
                  size: 60,
                  color: Colors.teal.shade100,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'todo',
                      style: GoogleFonts.delius(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Mascotas',
                      style: GoogleFonts.acme(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 60,),
              Text(
                'SEA BIENVENIDO!',
                style: GoogleFonts.acme(
                  fontSize: 12,
                  color: Colors.white,
                ),
              ),
              Center(
                child: Container(
                  padding: const EdgeInsets.only(left: 25, right: 25),
                  child: Text(
                    'Haga login con tu correo y contraseña para Continuar',
                    style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontSize: 10
                    ),
                    textAlign: TextAlign.center,
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
