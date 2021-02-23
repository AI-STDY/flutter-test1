import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final items = List<String>.generate(100, (i) => "Item $i");

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: const Text('youtubeアプリdayo'),
            leading: Icon(Icons.videocam),
            actions: <Widget>[
              SizedBox(
                width: 40,
                child: IconButton(icon: Icon(Icons.search), onPressed: null),
              ),
              SizedBox(
                width: 40,
                child: IconButton(icon: Icon(Icons.more_vert), onPressed: null),
              )
            ],
          ),
          body: Container(
            padding: EdgeInsets.all(10),
            child: Column(children: <Widget>[
              Row(
                children: <Widget>[
                  Image.network(
                      'https://yt3.ggpht.com/ytc/AAUvwng4tQ0GjNvQN6XMMV8G4ISM5HXt-y2xhvFSMPiD=s88-c-k-c0x00ffffff-no-rj'),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Text(
                          'チャンネルタイトル',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.red,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            print('test');
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Icon(
                                Icons.video_call,
                                color: Colors.red,
                              ),
                              Text('  登録する'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              DefaultTabController(
                length: 3,
                initialIndex: 0,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Container(
                        child: TabBar(
                          labelColor: Colors.green,
                          unselectedLabelColor: Colors.black,
                          tabs: [
                            Tab(text: 'ホーム'),
                            Tab(text: '動画'),
                            Tab(text: '再生リスト'),
                          ],
                          indicatorColor: Colors.red,
                        ),
                      ),
                      Container(
                        height: 400,
                        decoration: BoxDecoration(
                            border: Border(
                                top: BorderSide(
                                    color: Colors.grey, width: 0.5))),
                        child: TabBarView(children: <Widget>[
                          Container(
                            child: Center(
                              child: Text('Display Tab 1',
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,

                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(10),
                                  child: Text('アップロード動画',
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold)),
                                ),
                                Expanded(
                                  child: ListView.builder(
                                      //shrinkWrap: true,
                                      //physics: NeverScrollableScrollPhysics(),
                                      //itemCount: items.length,
                                      itemCount: 100,
                                      itemBuilder: (BuildContext , index) {
                                        return ListTile(
                                          title: Text('${items[index]}dayo'),

                                        );
                                      }),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Center(
                              child: Text('Display Tab 3',
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                        ]),
                      )
                    ]),
              ),
            ]),
          )),
    );
  }
}

class counter extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }

  int _counter = 0;
}
