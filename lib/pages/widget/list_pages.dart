import 'package:flutter/material.dart';

class ListPages extends StatelessWidget {
  const ListPages({super.key});
  static final series = {
    0:{ 
      'serie' : 'Friends', 
      'IMDb' : '8,9',
      'path' : 'images/friends.png',
      'streaming' : 'HBO max'
    },
    1:{
      'serie' : 'The Office', 
      'IMDb' : '9,0',
      'path' : 'images/the_office.png',
      'streaming' : 'HBO max, Netflix'
    },
    2:{ 
      'serie' : 'Modern Family', 
      'IMDb' : '8,5',
      'path' : 'images/modern_family.png',
      'streaming' : 'Star +'
    },
    3:{
      'serie' : 'The Last Of Us', 
      'IMDb' : '8,8',
      'path' : 'images/the_last.png',
      'streaming' : 'HBO max'
    },
    4: {
      'serie' : 'Brooklyn Nine-Nine',
      'IMDb' : '8,4',
      'path' : 'images/brooklyn.png',
      'streaming' : 'Netflix'
    },
    5: {
      'serie' : 'Game of Thrones',
      'IMDb' : '9,2',
      'path' : 'images/got.png',
      'streaming' : 'HBO max'
    }

  };

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
    padding: const EdgeInsets.all(20),
    itemCount: series.length,
    itemBuilder: (BuildContext context, int index) {
      return Padding(
        padding: const EdgeInsets.only(top:10),
        child: Container(
            height: 150,
            decoration: BoxDecoration(
              color: Colors.blueGrey[200],
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image(
                      image: AssetImage(series[index]?['path'] as String),
                      width: 100,
                      height: 130,
                      ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15.0, 10, 0, 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(series[index]?['serie'] as String,
                        style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [const Text('IMDb rating: '), Text(series[index]?['IMDb'] as String)]),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [const Text('Where to see it: '), Text(series[index]?['streaming'] as String)]),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
      );
    },
    );
  }
}