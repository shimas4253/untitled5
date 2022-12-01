import 'package:flutter/material.dart';

import 'homepage.dart';

class detail extends StatelessWidget {
  const detail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var roomid = ModalRoute.of(context)?.settings.arguments;
    var data = RoomData.firstWhere((element) => element['id'] == roomid );
    return Scaffold(
      body: SingleChildScrollView(
        child:Stack(
          children: [
            Container(
              height: 400,
              width: 400,
              decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage(data['image']),
                  fit: BoxFit.fill
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}
