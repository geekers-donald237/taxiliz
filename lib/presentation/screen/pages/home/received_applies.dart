import 'package:flutter/material.dart';
import 'package:taxiliz/config/utils/constant.dart';
import 'package:taxiliz/config/utils/export_utils.dart';
import 'package:taxiliz/presentation/screen/widget/export_widget.dart';

class ReceivedApply extends StatefulWidget {
  const ReceivedApply({super.key});

  @override
  State<ReceivedApply> createState() => _ReceivedApplyState();
}

class _ReceivedApplyState extends State<ReceivedApply> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: customAppbar(receivedApply),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Expanded(
            child: ListView.builder(
              itemCount: 6, // Nombre d'éléments à afficher
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.all(6), // Espace interne du conteneur
                  child: Column(
                    // Utilisation d'une colonne pour aligner les éléments en haut
                    crossAxisAlignment:
                        CrossAxisAlignment.start, // Alignement vertical en haut
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(Localfiles
                                  .person), // Remplacez par le chemin de votre photo
                              SizedBox(
                                  width:
                                      16), // Espace horizontal entre l'image et la colonne

                              Column(
                                crossAxisAlignment: CrossAxisAlignment
                                    .start, // Alignement vertical en haut
                                children: <Widget>[
                                  Text('Driver Name'),
                                  SizedBox(
                                      height:
                                          8), // Espace entre le nom et le nom de la voiture
                                  Text('Car Name'),
                                ],
                              ),
                            ],
                          ),
                          Container(
                            padding: EdgeInsets.all(
                                4), // Espace interne du conteneur autour de l'icône et du message
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black, // Couleur de la bordure
                                width: 1.0, // Largeur de la bordure
                              ),
                              borderRadius: BorderRadius.circular(
                                  20), // Coins arrondis du conteneur
                            ),
                            child: Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors
                                          .green, // Couleur de la bordure interne verte
                                      width: 1.0, // Largeur de la bordure
                                    ),
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Icon(
                                    Icons
                                        .phone_in_talk_outlined, // Remplacez par l'icône de votre choix
                                    size: 18,
                                    color: Colors
                                        .white, // Couleur blanche pour l'icône
                                  ),
                                ),
                                SizedBox(
                                    width:
                                        8), // Espace horizontal entre l'icône et le texte
                                Text(
                                  'Call ',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

                      SizedBox(
                          width:
                              16), // Espace horizontal entre la ligne et le diviseur
                      Divider(
                        color: Colors.black, // Couleur du diviseur
                        thickness: 1, // Épaisseur du diviseur
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ));
  }
}
