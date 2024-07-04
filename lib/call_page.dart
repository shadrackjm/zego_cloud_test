import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

class CallPage extends StatelessWidget {
  const CallPage({Key? key, required this.callID}) : super(key: key);
  final String callID;

  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltCall(
      appID:
          33953581, // Fill in the appID that you get from ZEGOCLOUD Admin Console.
      appSign:
          '2db22cafaa59685648c982263d89f83598618f01bfe699835f939c36375f5ab6', // Fill in the appSign that you get from ZEGOCLOUD Admin Console.
      userID: 'shadrack2017',
      userName: 'Shadrack App',
      callID: callID,
      // You can also use groupVideo/groupVoice/oneOnOneVoice to make more types of calls.
      config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall(
      
      ),
      
    );
  }
}
