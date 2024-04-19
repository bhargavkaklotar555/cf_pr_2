import 'package:cf_pr_2/headers.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

TextEditingController studentName = TextEditingController();
TextEditingController studentStandard = TextEditingController();
TextEditingController studentGRID = TextEditingController();

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = size.height;
    double w = size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Student Data",
          style: TextStyle(
            fontSize: h * 0.03,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 60,
            ),
            SizedBox(
              height: h * 0.05,
            ),
            requiredData("Enter Your Name", studentName),
            SizedBox(
              height: h * 0.01,
            ),
            requiredData("Enter Your Standard", studentStandard),
            SizedBox(
              height: h * 0.01,
            ),
            requiredData("Enter Your GRID", studentGRID),
            SizedBox(
              height: h * 0.05,
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(
                  AppRoutes.instance.studentDataPage,
                );
                setState(() {
                  stuName.add(studentName.text);
                  stuStandard.add(studentStandard.text);
                  stuGRID.add(studentGRID.text);
                });
              },
              child: Text(
                "SUBMIT",
                style: TextStyle(
                  fontSize: h * 0.02,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
