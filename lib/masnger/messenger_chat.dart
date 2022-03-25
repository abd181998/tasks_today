
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tasks_today/masnger/users_screen.dart';


class Messengr_chat extends StatelessWidget {
  static const id = 'Messenger_chat';
  const Messengr_chat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          titleSpacing: 20,
          automaticallyImplyLeading: false,
          elevation: 0.0,
          title: Row(
            children: [
              CircleAvatar(
                radius: 20.0,
                backgroundImage: NetworkImage(
                    'https://scontent.fcai22-2.fna.fbcdn.net/v/t39.30808-6/270996859_2614385998706276_5752560869850933701_n.jpg?_nc_cat=101&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=613Z1MYJbRAAX_HY5dn&_nc_oc=AQnlgFzR--cnXaegjjL0fsgrXMW01HH7WUi-IDlnkjxOxyG5hSVVQdbYH17wp4QzB2M&_nc_ht=scontent.fcai22-2.fna&oh=00_AT91gLb3qMOE-9OupHnlP4hIrN8UnXJZILPUQjZSvin_Gw&oe=61E5825C'),
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                'Chats',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ],
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: CircleAvatar(
                  radius: 15.0,
                  backgroundColor: Colors.blue,
                  child: Icon(
                    Icons.camera_alt,
                    size: 16,
                    color: Colors.white,
                  ),
                )),
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, UsersScreen.id);
                },
                icon: CircleAvatar(
                  radius: 15.0,
                  backgroundColor: Colors.blue,
                  child: Icon(
                    Icons.edit,
                    size: 16,
                    color: Colors.white,
                  ),
                )),
          ],
        ),
        body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[300]),
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      children: [
                        Icon(Icons.search),
                        SizedBox(
                          width: 15,
                        ),
                        Text('Search')
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 100,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => buildStoryItem(),
                      separatorBuilder: (context, index) => SizedBox(
                        width: 15,
                      ),
                      itemCount: 10,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) => buildChatItem(),
                      separatorBuilder: (context, index) => SizedBox(
                            height: 15,
                          ),
                      itemCount: 15)
                ],
              ),
            )));
  }

  Widget buildChatItem() => Row(
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              CircleAvatar(
                radius: 30.0,
                backgroundImage: NetworkImage(
                    'https://scontent.fcai22-2.fna.fbcdn.net/v/t39.30808-6/270996859_2614385998706276_5752560869850933701_n.jpg?_nc_cat=101&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=613Z1MYJbRAAX_HY5dn&_nc_oc=AQnlgFzR--cnXaegjjL0fsgrXMW01HH7WUi-IDlnkjxOxyG5hSVVQdbYH17wp4QzB2M&_nc_ht=scontent.fcai22-2.fna&oh=00_AT91gLb3qMOE-9OupHnlP4hIrN8UnXJZILPUQjZSvin_Gw&oe=61E5825C'),
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(bottom: 3.0, end: 3.0),
                child: CircleAvatar(
                  radius: 7,
                  backgroundColor: Colors.green[600],
                ),
              )
            ],
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Abdullah Mahoub',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'hello my name abdullah mahgoub',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        width: 7.0,
                        height: 7.0,
                        decoration: BoxDecoration(
                            color: Colors.blue, shape: BoxShape.circle),
                      ),
                    ),
                    Text('02:00 pm')
                  ],
                )
              ],
            ),
          )
        ],
      );

  Widget buildStoryItem() => Container(
        width: 60,
        child: Column(
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage(
                      'https://scontent.fcai22-2.fna.fbcdn.net/v/t39.30808-6/270996859_2614385998706276_5752560869850933701_n.jpg?_nc_cat=101&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=613Z1MYJbRAAX_HY5dn&_nc_oc=AQnlgFzR--cnXaegjjL0fsgrXMW01HH7WUi-IDlnkjxOxyG5hSVVQdbYH17wp4QzB2M&_nc_ht=scontent.fcai22-2.fna&oh=00_AT91gLb3qMOE-9OupHnlP4hIrN8UnXJZILPUQjZSvin_Gw&oe=61E5825C'),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.only(bottom: 3.0, end: 3.0),
                  child: CircleAvatar(
                    radius: 7,
                    backgroundColor: Colors.green[600],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              'Abdullah Mahgoub FOULY',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            )
          ],
        ),
      );
}
