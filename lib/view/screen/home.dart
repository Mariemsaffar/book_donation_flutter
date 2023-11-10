import 'package:flutter/material.dart';
import 'package:vesion_final_flutter/core/constant/color.dart';
import 'package:vesion_final_flutter/core/constant/imgaeasset.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('E_Book Exchanging'),
        backgroundColor: AppColor.violet,
        actions: [
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              // Action pour la page d'accueil
            },
          ),
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              // Action pour les notifications
            },
          ),
          IconButton(
            icon: Icon(Icons.message),
            onPressed: () {
              // Action pour la messagerie
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Accueil'),
              onTap: () {
                // Action pour l'accueil dans la barre latérale
              },
            ),
            ListTile(
              leading: Icon(Icons.details),
              title: Text('Produit en détails'),
              onTap: () {
                // Action pour les détails du produit dans la barre latérale
              },
            ),
            ListTile(
              leading: Icon(Icons.contacts),
              title: Text('Contacts'),
              onTap: () {
                // Action pour les contacts dans la barre latérale
              },
            ),
          ],
        ),
      ),

      body: ListView.builder(
        itemCount: productList.length,
        itemBuilder: (context, index) {
          final product = productList[index];
          return Container(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(product.image),
                    ),
                    SizedBox(width: 8.0),
                    Text(
                      product.title,
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8.0),
                Text(product.description),
                SizedBox(height: 8.0),
                Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.thumb_up),
                      onPressed: () {
                        // Action pour le bouton "J'aime"
                      },
                    ),
                    Text('Like'),
                    IconButton(
                      icon: Icon(Icons.comment),
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('Poster un commentaire'),
                              content: TextField(
                                decoration: InputDecoration(
                                  hintText: 'Saisir votre commentaire...',
                                ),
                                onSubmitted: (String comment) {
                                  // Action pour soumettre le commentaire
                                  Navigator.of(context).pop();
                                },
                              ),
                            );
                          },
                        );
                      },
                    ),
                    Text('Commentaire'),
                  ],
                ),
                Divider(),
              ],
            ),
          );
        },
      ),
    );
  }
}

class Product {
  final String image;
  final String title;
  final String description;

  Product({required this.image, required this.title, required this.description});
}

List<Product> productList = [
  Product(
    image: AppImageAsset.rootImages,
    title: 'for those who are interested ,i have books for medical students please contact me',
    description: '1er année en medecine \n E_mail : mariem@gmail.com',

  ),
  Product(
    image: AppImageAsset.onBoardingImageOne,
    title: 'books for engeneering students ',
    description: '2éme année prépa MP \n E_mail : aya@gmail.com',
  ),
  Product(
    image: AppImageAsset.onBoardingImageThree,
    title: 'books for bachelor sutents ',
    description: 'livre de science pour bac math \n E_mail : ahmed@gmail.com',
  ),  Product(
    image: AppImageAsset.onBoardingImageOne,
    title: 'books for engeneering students ',
    description: '2éme année prépa MP',
  ),  Product(
    image: AppImageAsset.logo,
    title: 'books for engeneering students ',
    description: '2éme année prépa MP',
  ),  Product(
    image: AppImageAsset.rootImages,
    title: 'books for engeneering students ',
    description: '2éme année prépa MP',
  ),  Product(
    image: AppImageAsset.onBoardingImageOne,
    title: 'books for engeneering students ',
    description: '2éme année prépa MP',
  ),  Product(
    image: AppImageAsset.onBoardingImageOne,
    title: 'books for engeneering students ',
    description: '2éme année prépa MP',
  ),  Product(
    image: AppImageAsset.onBoardingImageOne,
    title: 'books for engeneering students ',
    description: '2éme année prépa MP',
  ),  Product(
    image: AppImageAsset.onBoardingImageOne,
    title: 'books for engeneering students ',
    description: '2éme année prépa MP',
  ),  Product(
    image: AppImageAsset.onBoardingImageOne,
    title: 'books for engeneering students ',
    description: '2éme année prépa MP',
  ),  Product(
    image: AppImageAsset.onBoardingImageOne,
    title: 'books for engeneering students ',
    description: '2éme année prépa MP',
  ),  Product(
    image: AppImageAsset.onBoardingImageOne,
    title: 'books for engeneering students ',
    description: '2éme année prépa MP',
  ),  Product(
    image: AppImageAsset.onBoardingImageOne,
    title: 'books for engeneering students ',
    description: '2éme année prépa MP',
  ),
  // Ajouter plus d'éléments de produit ici
];