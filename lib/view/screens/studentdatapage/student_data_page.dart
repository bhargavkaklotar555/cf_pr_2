import 'package:cf_pr_2/headers.dart';

class StudentDataPage extends StatefulWidget {
  const StudentDataPage({super.key});

  @override
  State<StudentDataPage> createState() => _StudentDataPageState();
}

class _StudentDataPageState extends State<StudentDataPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: stuName.length,
          itemBuilder: (context, index) => showDataBox(index),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {
          Navigator.of(context).pushNamed(
            AppRoutes.instance.detailPage,
          );
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
