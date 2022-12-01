import 'package:flutter/material.dart';

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            floating: false,
            backgroundColor: Colors.cyan,
            leading: Icon(
              Icons.menu,
              color: Colors.white,
            ),
            actions: [
              Icon(
                Icons.favorite_border_outlined,
                color: Colors.white,
              )
            ],
            bottom:
            PreferredSize(
              preferredSize: Size.fromHeight(120),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Type your location',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20, right: 20, bottom: 20, top: 10),
                    child: TextField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Kochi,kerala',
                          prefixIcon: Icon(
                            Icons.search,
                            size: 30,
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30))),
                    ),
                  )
                ],
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 100,
                    width: 110,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.pink),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.hotel,
                          color: Colors.white,
                          size: 30,
                        ),
                        Text(
                          'Hotel',
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 110,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.restaurant,
                          color: Colors.white,
                          size: 30,
                        ),
                        Text(
                          'Restaurant',
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 110,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.orange),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.local_cafe,
                          color: Colors.white,
                          size: 30,
                        ),
                        Text(
                          'Cafe',
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            ListView.separated(
              physics: ScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
              return  Column(
                  children: [
                    Container(
                      height: 400,
                      width: 370,
                      color: Colors.black,
                    )
                  ],
                );
              },
              separatorBuilder: (BuildContext context, int index)=>Divider(height: 10,),
              itemCount: 3,
            )
          ]))
        ],
      ),
    );
  }
}
