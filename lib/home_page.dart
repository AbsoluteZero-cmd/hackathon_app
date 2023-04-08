import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Widget _progressItem(IconData icon, String text, String points){
    return Container(
      width: MediaQuery.of(context).size.width * 0.4,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.amber[200],
                borderRadius: BorderRadius.all(Radius.circular(500))
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.all(Radius.circular(500))
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Icon(
                      icon,
                      color: Colors.amber[200],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('${text}:',),
              Text(
                points,
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 24
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: height * 0.4,
          decoration: BoxDecoration(
              color: Colors.amber,
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(16), bottomRight: Radius.circular(16))
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 42, horizontal: 16),
            child: Column(
              children: [
                Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Text(
                    'Менің үлгерімім',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w800
                    ),
                  ),
                ),
                Align(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                    width: width - 2 * 8.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Алгебры курсы: Пропорциялар',
                          style: TextStyle(
                              fontSize: 16
                          ),
                        ),
                        Icon(
                          Icons.calculate,
                          color: Colors.amber,
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Colors.amber[200],
                      borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    margin: EdgeInsets.only(top: 30),
                  ),
                  alignment: AlignmentDirectional.topCenter,
                ),
                Spacer(),
                Align(
                  alignment: AlignmentDirectional.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _progressItem(Icons.check, 'Өтілген', '30'),
                      _progressItem(Icons.timelapse, 'Өткен', '42'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0, top: 10),
                child: Text(
                  'Танымал курстар:',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 24
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.4,
                width: width - 2 * 16,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      child: Container(
                        height: height * 0.4,
                        width: width - 2 * 20,

                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Icon(Icons.computer, size: 36, color: Colors.blue,),
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(10)),
                                      color: Colors.grey[100],
                                    ),
                                  ),
                                  TextButton(
                                      onPressed: () {},
                                      child: Text('Бастаушы'),
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
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 16),
                                child: Text(
                                  'Информатика 8 класс\nPython',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600
                                  ),
                                ),
                              ),
                              Text('Курс Python бағдарламалау тілінің негізгі ұғымдары мен элементтеріне (операторлар, сандық және жолдық айнымалылар, тізімдер, шарттар және циклдар) арналған.'),
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(12),
                                    child: Row(
                                      children: [
                                        Icon(Icons.video_collection, color: Colors.blue,),
                                        Text('Сабақ саны: 30')
                                      ],
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(10)),
                                      color: Colors.grey[100],
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ),
                    );
                  }
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
