import 'package:flutter/material.dart';
import 'package:siap_full/models/cuestionario/checklist.dart';
import 'package:siap_full/views/contestaCuestionario/bloques.dart';
import 'package:siap_full/views/contestaCuestionario/areas.dart';
import 'package:siap_full/views/contestaCuestionario/preguntasCont.dart';
import 'package:siap_full/views/contestaCuestionario/instalacionesList.dart';
import 'package:siap_full/views/contestaCuestionario/instalacionSel.dart';

class Instalaciones extends StatefulWidget {
  Checklist chk;
  GlobalKey<PreguntasContState> keyPreguntas;
  GlobalKey<BloquesBtnState> keyBloques;
  GlobalKey<AreasState> keyAreas;

  Instalaciones({this.chk, this.keyPreguntas, this.keyBloques, this.keyAreas});

  @override
  InstalacionesState createState() => InstalacionesState(
      chk: chk,
      keyPreguntas: keyPreguntas,
      keyBloques: keyBloques,
      keyAreas: keyAreas);
}

class InstalacionesState extends State<Instalaciones> {
  Checklist chk;
  GlobalKey<PreguntasContState> keyPreguntas;
  GlobalKey<BloquesBtnState> keyBloques;
  GlobalKey<AreasState> keyAreas;

  var datosChk;
  int chkId;

  InstalacionesState(
      {this.chk, this.keyPreguntas, this.keyBloques, this.keyAreas});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          InstalacionSel(
            chk: chk,
            keyPreguntas: keyPreguntas,
            keyBloques: keyBloques,
            keyAreas: keyAreas,
          ),
          InstalacionesList(
            chk: chk,
            keyPreguntas: widget.key,
          )
        ],
      ),
    );
  }
}
