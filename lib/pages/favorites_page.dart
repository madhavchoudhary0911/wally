import 'package:flutter/material.dart';
import 'package:wally/models/photo_model.dart';
import 'package:wally/pages/singleImage.dart';
import 'package:wally/services/storage_service.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({Key? key}) : super(key: key);

  @override
  _FavoritesPageState createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text('Favorites'),
        titleTextStyle: const TextStyle(color: Colors.black, fontSize: 24),
        backgroundColor: Colors.white,
      ),
      body: ValueListenableBuilder(
        valueListenable: Favorites.getFavorites().listenable(),
        builder: (BuildContext context, Box<PhotoModel> value, Widget? child) {
          final favorites = value.values.toList().cast<PhotoModel>();
          return SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 5, left: 5),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 1,
                    child: GridView.count(
                      crossAxisCount: 2,
                      crossAxisSpacing: 5.0,
                      mainAxisSpacing: 5.0,
                      childAspectRatio: (200 / 400),
                      children: List.generate(
                        favorites.length,
                        (index) {
                          return InkWell(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => SingleImageView(
                                    photoModel: favorites[index],
                                  ),
                                ),
                              );
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                favorites[index].photoSize!.medium!,
                                fit: BoxFit.cover,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
