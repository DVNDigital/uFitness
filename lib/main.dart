import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ufitness/workouts_widget.dart';
import 'package:ufitness/me_widget.dart';
import 'package:ufitness/schedule_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: Colors.green, //or set color with: Color(0xFF0000FF)
      //statusBarBrightness: Brightness.light,
    ));
    return MaterialApp(

      title: 'uFitness',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.green,
        primaryIconTheme: IconThemeData(color: Colors.green),
      ),
      home: MyHomePage(title: 'uFitness'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 1;
  int _selectedIndex = 0;
  int _count = 0;
  int _weight = 200;
  double _bfp = 10.0;
  final List<Widget> _children = [
    WorkoutsWidget(),
    MeWidget(),
    ScheduleWidget(Colors.green)
  ];

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      //_counter++;
    });
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  void onSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Future<Null> _handleRefresh() async{
    setState(() {
      _weight += 1;
      _bfp += 0.5;
    });
    return null;
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      /*appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        elevation: 0,
        title: Text("Devon Orr", style: TextStyle(color: Colors.green)),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.mail_outline),
          onPressed: ()=> print("Notifications Pressed"),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: ()=> print("More Pressed"),
          )
        ],
      ),*/
      /*drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/ic_account_circle.png'),
                backgroundColor: Colors.transparent,
              ),
              accountName: Text("Devon Orr"),
              accountEmail: Text("dvn.orr@gmail.com"),
              otherAccountsPictures: <Widget>[
                IconButton(
                  icon: Icon(Icons.expand_more),
                  color: Colors.white,
                  onPressed: ()=> print("Expand Pressed"),
                )
              ],
            ),
            ListTile(
              title: Text("Home"),
              trailing: Icon(Icons.home),
              selected: _selectedIndex == 0,
              onTap: ()=> onSelected(0),
            ),
            ListTile(
              title: Text("Notifications"),
              trailing: Icon(Icons.mail),
              selected: _selectedIndex == 1,
              onTap: ()=> onSelected(1),
            ),
            Divider(),
            ListTile(
              title: Text("Settings"),
              trailing: Icon(Icons.settings),
              onTap: ()=> print("Options Pressed"),
            ),
          ],
        ),
      ),*/
      body: RefreshIndicator(
        onRefresh: _handleRefresh,
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              expandedHeight: 150,
              floating: false,
              pinned: true,
              backgroundColor: Colors.white,
              leading: IconButton(
                icon: Icon(Icons.mail_outline),
                onPressed: ()=> print("Notifications Pressed"),
              ),

              flexibleSpace: FlexibleSpaceBar(
                title: Text("Devon Orr", style: TextStyle(color: Colors.green)),
                centerTitle: true,
                background: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Table(
                      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                      children: <TableRow>[
                        TableRow(
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                Text("Body Weight", style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold)),
                                Text("$_weight lbs", style: TextStyle(color: Colors.green)),
                              ],
                            ),
                            Image(
                              image: AssetImage('assets/ic_account_circle.png'),
                              color: Colors.green,
                              height: 80,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Body Fat", style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold)),
                                Text("$_bfp %", style: TextStyle(color: Colors.green)),
                              ],
                            ),
                          ],

                        )
                      ],
                    ),

                    /*Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Text("Weight", style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold)),
                            Text("$_weight lbs", style: TextStyle(color: Colors.green)),
                          ],
                        ),
                        Image(
                          image: AssetImage('assets/ic_account_circle.png'),
                          color: Colors.green,
                          height: 80,

                        ),
                        Column(
                          children: <Widget>[
                            Text("Bodyfaththtrhtr", style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold)),
                            Text("$_bfp %", style: TextStyle(color: Colors.green)),
                          ],
                        ),
                      ],
                    ),*/
                    Padding(
                        padding: EdgeInsets.only(
                            bottom: 55
                        )
                    ),
                  ],
                ),
              ),
              forceElevated: true,
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.more_vert),
                  onPressed: ()=> print("More Pressed"),
                )
              ],
            ),
            SliverFillRemaining(
              child: _children[_currentIndex],
            )
            /*SliverList(
                delegate: SliverChildBuilderDelegate((context, index) => ListTile(
                  title: Text("List item $index"),
                ))
            )*/
          ],
        ),
      ),
      //_children[_currentIndex],
        /*Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),*/ // This trailing comma makes auto-formatting nicer for build methods.
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onTabTapped,

        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.accessibility),
            title: Text("Workouts"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.timeline),
            title: Text("Me"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            title: Text("Schedule"),
          ),
        ],
      ),
    );
  }
}
