import 'package:cf_pr_2/headers.dart';

Widget requiredData(String name, TextEditingController controller) {
  return TextField(
    controller: controller,
    decoration: InputDecoration(
      label: Text(
        name,
        style: const TextStyle(
          color: Colors.black,
        ),
      ),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.black,
        ),
      ),
    ),
  );
}
