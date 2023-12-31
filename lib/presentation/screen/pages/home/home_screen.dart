import '../../../../config/utils/export_utils.dart';
import '../../widget/utils/reusable_other.dart';
import '../../widget/utils/main_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: customAppbar(homeScreenAppbarTitle),
        drawer: customHomeDrawer(context),
        body: DisplayAllHomeViews(context));
  }
}
