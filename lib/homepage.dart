import 'package:flutter/material.dart';

List<Map> RoomData = [
  {
    'id': 0,
    'image':
        'https://www.thespruce.com/thmb/2_Q52GK3rayV1wnqm6vyBvgI3Ew=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/put-together-a-perfect-guest-room-1976987-hero-223e3e8f697e4b13b62ad4fe898d492d.jpg',
    'title': 'Awesome room near Kochi',
    'location': 'Kochi, Kerala',
    'price': 12,
    'rating': 4.0,
    'review': 220,
  },
  {
    'id': 1,
    'image':
        'https://images.unsplash.com/photo-1560185893-a55cbc8c57e8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8YmVkJTIwcm9vbXxlbnwwfHwwfHw%3D&w=1000&q=80',
    'title': 'Five star room for rent',
    'location': 'Kakkanad, Kerala',
    'price': 40,
    'rating': 4.5,
    'review': 115,
  },
  {
    'id': 2,
    'image':
        'https://images.oyoroomscdn.com/uploads/hotel_image/110347/a74b17c860833615.jpg',
    'title': 'Four star room available',
    'location': 'Palarivattom, Kerala',
    'price': 34,
    'rating': 5,
    'review': 85,
  },
  {
    'id': 3,
    'image':
        'https://r1imghtlak.mmtcdn.com/52689fcaa63211ecad380a58a9feac02.jpg?&output-quality=75&downsize=910:612&crop=910:612;4,0&output-format=jpg',
    'title': 'Beautiful room near lulu',
    'location': 'LuluMall, Kerala',
    'price': 20,
    'rating': 4.0,
    'review': 32,
  },
  {
    'id': 4,
    'image':
        'https://r1imghtlak.mmtcdn.com/1a9d3de8a63311ec9b910a58a9feac02.jpg',
    'title': 'Super conditioned room',
    'location': 'Vytila, Kerala',
    'price': 10,
    'rating': 3.0,
    'review': 42,
  },
];

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
            bottom: PreferredSize(
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
                var data = RoomData[index];
                return GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, 'detail',arguments: ['id']);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Card(
                      elevation: 10,
                      child: Container(
                        height: 400,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                Container(
                                  height: 300,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(data['image']),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  ),
                                Positioned(
                                  right: 10,
                                  bottom: 10,
                                  child: Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(3),
                                      color: Colors.grey
                                    ),
                                    child: Center(child: Text('\$${data['price'].toString()}')),
                                  ),
                                ),
                                Positioned(
                                  right: 5,
                                  top: 5,
                                  child: Icon(
                                    Icons.star_border,
                                    color: Colors.black.withOpacity(.5),
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top:10,left: 10),
                              child: Text(data['title'],style: TextStyle(fontSize: 20),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 4,left: 10),
                              child: Text(data['location'],style: TextStyle(fontSize: 15),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top:4,left: 10),
                              child: Row(
                                children: [
                                  Icon(Icons.star, color: Colors.green,),
                                  Icon(Icons.star, color: Colors.green,),
                                  Icon(Icons.star, color: Colors.green,),
                                  Icon(Icons.star, color: Colors.green,),
                                  Icon(Icons.star, color: Colors.green,),
                                  Text('  (${data['review'].toString()} reviews)',
                                    style: TextStyle(color: Colors.grey),)
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) => Divider(
                height: 40,
              ),
              itemCount: 5,
            )
          ]))
        ],
      ),
    );
  }
}
