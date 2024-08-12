
import 'package:assignment_app/utils/text_style.dart';
import 'package:flutter/material.dart';

class ProfileItems extends StatelessWidget {
  const ProfileItems({super.key});

  @override
  Widget build(BuildContext context) {
    List <Map> data=[
      {
        'title':'Name',
        'des':'Jaimul Islam Akik',
      },
      {
        'title':'Email',
        'des':'jaimulislam7@gmail.com',
      },
      {
        'title':'Password',
        'des':'********',
      },
      {
        'title':'Mobile Number',
        'des':'01845046271',
      },
    ];
    return ListView.builder(
      shrinkWrap: true,
      primary: false,
      itemCount: data.length,
      itemBuilder: (context, index) {
      return Card(
        color: Colors.white,
        child: ListTile(
          title: HeadingTwo(data: data[index]['title']),
          subtitle: HeadingThree(data: data[index]['des']),
          trailing: Icon(Icons.edit),
        ),
      );
    },);
  }
}
