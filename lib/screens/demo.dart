import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ChatBubble extends StatelessWidget {
  final String text;
  final bool isCurrentUser;
  const ChatBubble({
     this.text,
     this.isCurrentUser,
  });


  @override
  Widget build(BuildContext context) {
    return Padding(
      // asymmetric padding
      padding: EdgeInsets.fromLTRB(
        isCurrentUser ? 64.0 : 16.0,
        4,
        isCurrentUser ? 16.0 : 64.0,
        4,
      ),
      child: Align(
        // align the child within the container
        alignment: isCurrentUser ? Alignment.centerRight : Alignment.centerLeft,
        child: Column(
         crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            DecoratedBox(
              // chat bubble decoration
              decoration: BoxDecoration(
                color: isCurrentUser ?  HexColor("#5E56A3") : Colors.grey[300],
                borderRadius: !isCurrentUser?BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                ):  BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Text(
                  text,
                  style: Theme.of(context).textTheme.bodyText1.copyWith(
                      color: isCurrentUser ? Colors.white : Colors.black87),
                ),
              ),
            ),
         isCurrentUser? Text(
                   "20 seconds ago",
                   style: TextStyle(
                       fontWeight: FontWeight.normal,
                       fontSize: 12,
                       color: Colors.grey),
                 ):SizedBox(),

          ],
        ),
      ),
    );
  }
}