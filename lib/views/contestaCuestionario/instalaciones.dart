import 'package:flutter/material.dart';
import 'package:chacarita/views/questionnaires/targets/userTarget.dart';
import 'package:chacarita/views/questionnaires/targets/targetsElemsList.dart';
import 'package:chacarita/models/cuestionario/checklist.dart';
import 'package:chacarita/views/contestaCuestionario/bloques.dart';
import 'package:chacarita/views/contestaCuestionario/areas.dart';
import 'package:chacarita/views/contestaCuestionario/preguntasCont.dart';
import 'package:chacarita/views/contestaCuestionario/instalacionesList.dart';
import 'package:chacarita/views/contestaCuestionario/instalacionSel.dart';

class Instalaciones extends StatefulWidget {
  Checklist chk;
  GlobalKey<PreguntasContState> keyPreguntas;
  GlobalKey<BloquesBtnState> keyBloques;
  GlobalKey<AreasState> keyAreas;
  GlobalKey<UserTargetState> keyUser;

  Instalaciones({
    this.chk,
    this.keyPreguntas,
    this.keyBloques,
    this.keyAreas,
    this.keyUser,
  });

  @override
  InstalacionesState createState() => InstalacionesState(
        chk: chk,
        keyPreguntas: keyPreguntas,
        keyBloques: keyBloques,
        keyAreas: keyAreas,
        keyUser: keyUser,
      );
}

class InstalacionesState extends State<Instalaciones> {
  Checklist chk;
  GlobalKey<PreguntasContState> keyPreguntas;
  GlobalKey<BloquesBtnState> keyBloques;
  GlobalKey<AreasState> keyAreas;
  GlobalKey<UserTargetState> keyUser;

  var datosChk;
  int chkId;

  InstalacionesState({
    this.chk,
    this.keyPreguntas,
    this.keyBloques,
    this.keyAreas,
    this.keyUser,
  });

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
            keyUser: keyUser,
          ),
          InstalacionesList(
            chk: chk,
            keyPreguntas: widget.key,
            keyUser: keyUser,
          )
        ],
      ),
    );
  }
}
