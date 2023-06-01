import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parchelapp/View/Styles/app_colors.dart';
import 'package:parchelapp/View/Widgets/drawer_menu.dart';

class StoreScreen extends StatefulWidget {
  const StoreScreen({Key? key}) : super(key: key);

  @override
  State<StoreScreen> createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawerMenu(context),
      backgroundColor: colorThree,
      appBar: AppBar(
        backgroundColor: colorThree,
        iconTheme: const IconThemeData(color: colorOne),
      ),
      body: _storeBody(),
    );
  }

  _storeBody(){
    return SingleChildScrollView(
      child: Column(children: [
        const SizedBox(
          height: 25,
        ),
        const Center(
            child: Icon(
              Icons.shopping_basket,
              color: colorOne,
              size: 140,
            )),
        const SizedBox(
          height: 10,
        ),
        Text(
          'Tienda Caprichosa',
          style: GoogleFonts.rambla(
              color: colorFour, fontWeight: FontWeight.bold, fontSize: 25),
        ),
        const SizedBox(
          height: 20,
        ),

        const SizedBox(
          height: 25,
        ),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 1.2,
          ),
          itemCount: 9,
          itemBuilder: (BuildContext context, int index) {
            return GridTile(
              child: Container(
                color: colorThree,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(Icons.shopping_bag,color: Colors.grey, size: 60,),
                    const SizedBox(height: 8),
                    Text('Título ${index + 1}', style: GoogleFonts.rambla(
                        color: colorFour, fontWeight: FontWeight.bold, fontSize: 20
                    ),),
                  ],
                ),
              ),
            );
          },
        ),

      ]),
    );
  }

}
