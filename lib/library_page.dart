import 'package:flutter/material.dart';

class LibraryPage extends StatefulWidget {
  const LibraryPage({Key? key}) : super(key: key);

  @override
  State<LibraryPage> createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 42, horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Өнімдер',
            style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w800
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Курстар',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600
                ),
              ),
              SizedBox(
                width: width - 2 * 16,
                height: (height - 2 * 42) * 0.35,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(bottom: 10),
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      
                      width: width - 2 * 16,
                      child: Row(
                        children: [
                          Icon(Icons.abc, color: Colors.blue, size: 36,),
                          Text(
                              'Ағылшын тілі',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.blue
                            ),
                          ),
                          Spacer(),
                          TextButton(
                              onPressed: () {},
                              child: Text('Тіркелу'),
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(18.0),
                                        side: BorderSide(color: Colors.blue, width: 3),
                                      )
                                  )
                              )
                          )
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Оқулықтар',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600
                ),
              ),
              SizedBox(
                width: width - 2 * 16,
                height: (height - 2 * 42) * 0.4,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Card(
                      child: Container(
                        padding: EdgeInsets.all(4),
                        width: (width - 2 * 16) / 2 - 30,
                        height: (height - 2 * 42) * 0.4,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset('assets/book_example.jpg', fit: BoxFit.cover,),
                            Text('Қазақ тілі. 4 сынып')
                          ],
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
