import 'package:flutter_boilerplate/all.dart';

class NavigationWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationBloc, NavigationState>(
      builder: (context, state) {
        return Scaffold(
          body: () {
            switch (state.index) {
              case 0:
                return Scaffold(
                  appBar: AppBar(title: Text(context.translations.applicationName)),
                  body: const Center(child: Text('First page')),
                );
              case 1:
                return Scaffold(
                  appBar: AppBar(title: Text(context.translations.applicationName)),
                  body: const Center(child: Text('Second page')),
                );
              case 2:
                return Scaffold(
                  appBar: AppBar(title: Text(context.translations.applicationName)),
                  body: const Center(child: Text('Third page')),
                );
            }
          }(),
          bottomNavigationBar: _buildBottomNavigationBar(context, state.index),
        );
      },
    );
  }

  Widget _buildBottomNavigationBar(BuildContext context, int currentIndex) {
    return BottomNavigationBar(
      onTap: (index) {
        context.read<NavigationBloc>().add(ChangePageNavigationEvent(index: index));
      },
      currentIndex: currentIndex,
      items: const [
        BottomNavigationBarItem(
          label: 'First',
          icon: Icon(Icons.home),
        ),
        BottomNavigationBarItem(
          label: 'Second',
          icon: Icon(Icons.security),
        ),
        BottomNavigationBarItem(
          label: 'Third',
          icon: Icon(Icons.settings),
        ),
      ],
    );
  }
}
