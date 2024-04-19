import 'package:cf_pr_2/headers.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = size.height;
    double w = size.width;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "HomePage",
          style: TextStyle(
            fontSize: h * 0.03,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(
              AppRoutes.instance.detailPage,
            );
          },
          child: Container(
            height: h * 0.05,
            width: w * 0.5,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(15),
            ),
            alignment: Alignment.center,
            child: const Text(
              "Create Student Data-List",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
