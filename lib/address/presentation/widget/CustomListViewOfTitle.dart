import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  CustomListTile({Key? key, this.leading, this.onTap, this.title, this.trailing}) : super(key: key);
  Widget? leading;
  Widget? trailing;
  Widget? title;
  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: leading,
      title: title,
      trailing: trailing,
      onTap: onTap,
    );
  }
}

class CustomListViewBuilder extends StatefulWidget {
  CustomListViewBuilder({Key? key, required this.titles, this.trailing, this.leading, this.onTap}) : super(key: key);
  List<dynamic> titles;
  Widget? leading;
  Widget? trailing;
  VoidCallback? onTap;

  @override
  State<CustomListViewBuilder> createState() => _CustomListViewBuilderState();
}

class _CustomListViewBuilderState extends State<CustomListViewBuilder> {
  TextEditingController editingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.titles.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Card(
              child: CustomListTile(
                leading: widget.leading,
                title: Text(widget.titles[index]["name"]),
                trailing: widget.trailing,
                onTap: () {
                  Navigator.pop(context, widget.titles[index]);
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
