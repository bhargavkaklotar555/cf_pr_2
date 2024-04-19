import 'package:cf_pr_2/headers.dart';

Widget showDataBox(int index) {
  return Column(
    children: [
      Row(
        children: [
          SizedBox(
            height: 70,
            width: double.infinity,
            child: ListTile(
              leading: const CircleAvatar(
                radius: 25,
              ),
              title: Text(
                '${stuName[index]}',
                style: const TextStyle(fontSize: 20, color: Colors.black),
              ),
              subtitle: Text(
                '${stuStandard[index]}',
                style: const TextStyle(fontSize: 16, color: Colors.black),
              ),
              trailing: const Icon(
                Icons.edit,
                color: Colors.black,
              ),
              tileColor: Colors.black26,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.delete,
              color: Colors.red,
            ),
          ),
        ],
      ),
    ],
  );
}
