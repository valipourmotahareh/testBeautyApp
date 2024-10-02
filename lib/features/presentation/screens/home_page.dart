import 'package:test_beauty_city/app_ex.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  final List<Widget> _pages=[
     const MainPage(),
     const FestivalPage(),
     const StorePage(),
    const CharityPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const CustomAppBar(),
          Expanded(
            child: _pages[_selectedIndex],
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {},
        shape: const CircleBorder(),
        child: Icon(Icons.add, size: 30, color: ColorPalette.light.surfaceColor),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        selectedIndex: _selectedIndex,
        onItemSelected: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }

}







