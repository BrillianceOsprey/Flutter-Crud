import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage>
    with TickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  TabController? tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    tabController?.dispose();
    super.dispose();
  }

  List<String> fruits = ['banana', 'pineapple', 'mango'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        drawer: HomeDrawer(scaffoldKey: _scaffoldKey),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                  backgroundColor: Theme.of(context).colorScheme.surface,
                  foregroundColor: Theme.of(context).colorScheme.onSurface,
                  centerTitle: true,
                  title: const Text('New Blog'),
                  pinned: true,
                  floating: true,
                  bottom: TabBar(
                      controller: tabController,
                      unselectedLabelColor:
                          Theme.of(context).colorScheme.onSurface.withAlpha(90),
                      labelColor: Theme.of(context).colorScheme.onSurface,
                      indicatorColor: Theme.of(context).colorScheme.primary,
                      indicatorWeight: 5,
                      isScrollable: true,
                      tabs: List.generate(
                        fruits.length,
                        (index) {
                          final list = fruits.elementAt(index);
                          return Tab(
                            text: list,
                          );
                        },
                      )))
            ];
          },
          body: const Text('Hello body'),
        ));
  }
}

// Home Drawer
class HomeDrawer extends StatelessWidget {
  const HomeDrawer({
    Key? key,
    required GlobalKey<ScaffoldState> scaffoldKey,
  })  : _scaffoldKey = scaffoldKey,
        super(key: key);
  final GlobalKey<ScaffoldState> _scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          SizedBox(
            height: 120,
            child: HomeDrawerHeader(
              scaffoldKey: _scaffoldKey,
            ),
          ),
          ListTile(
            onTap: () {},
            title: const Text('Home'),
          ),
          const Divider(),
          ListTile(
            onTap: () {},
            title: const Text('Your articles'),
          ),
          const Divider(),
          ListTile(
            onTap: () {},
            title: const Text('Create New Article'),
          ),
          const Divider(),
          ListTile(
            onTap: () {},
            title: const Text('Categories'),
          ),
          const Divider(),
          ListTile(
            onTap: () {},
            title: const Text('Bookmark'),
          ),
          const Divider(),
          ListTile(
            onTap: () {},
            title: const Text('Setting'),
          ),
          const Divider(),
          const AboutListTile(
            icon: Icon(Icons.info),
            applicationIcon: Icon(Icons.newspaper),
            applicationName: 'New Blog',
            applicationVersion: '1.0.0',
            applicationLegalese: '0 2022 Myat Soe',
            aboutBoxChildren: [],
            child: Text('About'),
          ),
        ],
      ),
    );
  }
}

// Home Drawer Header
class HomeDrawerHeader extends StatelessWidget {
  const HomeDrawerHeader({
    Key? key,
    required GlobalKey<ScaffoldState> scaffoldKey,
  })  : _scaffoldKey = scaffoldKey,
        super(key: key);
  final GlobalKey<ScaffoldState> _scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
        child: ListTile(
      onTap: () {},
      contentPadding: const EdgeInsets.only(left: 0),
      leading: const CircleAvatar(
        child: Icon(Icons.person),
      ),
      title: const Text('Hello'),
      subtitle: const Text('World'),
    ));
  }
}
