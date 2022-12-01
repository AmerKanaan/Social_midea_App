import 'package:flutter/material.dart';
class TexetFile extends StatefulWidget {
  final String? hint;
  final String? label;
  final Widget? prefixIcon;
  final Widget?suffixIcon;
  final TextInputType? keyboardType;
  final bool isPass;
  bool _hide = true;
   final Function(String) onChanged ;
  TexetFile({
    required this.onChanged, this.hint, this.label, this.prefixIcon, this.suffixIcon, this.keyboardType,

  this.isPass = false,
 }
  );

  @override
  _TexetFileState createState() => _TexetFileState();
}

class _TexetFileState extends State<TexetFile> {

  @override
  Widget build(BuildContext context) {
   var size = MediaQuery.of(context).size;
    var onChanged;
    return Container(
      height: 80,
      child: TextField(

        onChanged:onChanged,
        decoration: InputDecoration(
          labelText: widget.label,
          hintText: widget.hint,

          prefixIcon: widget.prefixIcon,
          suffixIcon: (widget.isPass)? IconButton(
              onPressed: (){
                setState(() {
                  widget._hide = ! widget._hide;
                });
              },
              icon: widget._hide ? Icon(Icons.visibility_outlined) : Icon(Icons.visibility_off_outlined)
          ):null,
    border: InputBorder.none

        ),
        obscureText: widget._hide && widget.isPass,
        keyboardType: widget.keyboardType,

      ),
      margin: EdgeInsets.all(size.width*0.015),
      padding: EdgeInsets.all(size.width*0.025),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.2),
        borderRadius: BorderRadius.circular(size.width*0.025),

      ),
    );
  }
}
