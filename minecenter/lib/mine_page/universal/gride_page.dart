import 'package:flutter/material.dart';

class MyGrideDemo extends StatefulWidget {
  @override
  _MyGrideDemoState createState() => _MyGrideDemoState();
}

class _MyGrideDemoState extends State<MyGrideDemo> {
  var showGrid = true; // Set to false to show ListView

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('网格'),
        // leading: IconButton(icon: Icon(Icons.menu), onPressed: null),
        actions: <Widget>[
          RaisedButton(
            color: Colors.blue,
            onPressed: () => ChangeListView(showGrid),
            child: Text('切换ListView'),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)), //圆角大小
          ),
          IconButton(
            icon: Icon(Icons.more_horiz),
            onPressed: () => debugPrint('More button is pressed'),
            tooltip: 'More',
          ),
        ],
      ),
      body: Center(child: showGrid ? _buildGrid() : _buildList()),
    );
  }

  void ChangeListView(showGrid) {
    setState(() {
      showGrid = !showGrid;
    });
    print('safasf$showGrid');
    showGrid = !showGrid;
  }

  // #docregion grid
  Widget _buildGrid() => GridView.extent(
      maxCrossAxisExtent: 150, //最大宽度
      padding: const EdgeInsets.all(4),
      mainAxisSpacing: 4, //主轴间距 列间距
      crossAxisSpacing: 12, //竖轴间距 行间距
      children: _buildGridTileList(8));

// The images are saved with names pic0.jpg, pic1.jpg...pic29.jpg.
// The List.generate() constructor allows an easy way to create
// a list when objects have a predictable naming pattern.
  List<Container> _buildGridTileList(int count) => List.generate(
      count, (i) => Container(child: Image.asset('assets/pic$i.jpg')));
// #enddocregion grid

// #docregion list
  Widget _buildList() => ListView(
        children: [
          _tile('CineArts at the Empire', '85 W Portal Ave', Icons.theaters),
          _tile('The Castro Theater', '429 Castro St', Icons.theaters),
          _tile('Alamo Drafthouse Cinema', '2550 Mission St', Icons.theaters),
          _tile('Roxie Theater', '3117 16th St', Icons.theaters),
          _tile('United Artists Stonestown Twin', '501 Buckingham Way',
              Icons.theaters),
          _tile('AMC Metreon 16', '135 4th St #3000', Icons.theaters),
          Divider(),
          _tile('K\'s Kitchen', '757 Monterey Blvd', Icons.restaurant),
          _tile('Emmy\'s Restaurant', '1923 Ocean Ave', Icons.restaurant),
          _tile(
              'Chaiya Thai Restaurant', '272 Claremont Blvd', Icons.restaurant),
          _tile('La Ciccia', '291 30th St', Icons.restaurant),
        ],
      );

  ListTile _tile(String title, String subtitle, IconData icon) => ListTile(
        title: Text(title,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20,
            )),
        subtitle: Text(subtitle),
        leading: Icon(
          icon,
          color: Colors.blue[500],
        ),
      );
// #enddocregion list

}
