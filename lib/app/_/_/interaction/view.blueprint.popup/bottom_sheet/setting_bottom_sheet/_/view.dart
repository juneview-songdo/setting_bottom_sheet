import 'package:flutter/material.dart';

import '../../../../../../../../main.dart';
import '_/state_child.dart';
import '_/state_mother.dart';

class NewView extends StatefulWidget {
  NewView({super.key});

  @override
  State<NewView> createState() => StateChild();
}

class NewViewState extends State<NewView> with StateMother {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.grey[200] ?? const Color(0xFFF1F1F1),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Padding(
                  padding: EdgeInsets.all(9),
                  child: ColorFiltered(
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.4) ??
                            const Color(0xFFFFFFFF),
                        BlendMode.srcIn),
                    child: SvgPicture.asset('assets/view/setting_bottom_sheet/chevron-left.svg'),
                  ),
                ),
              ).gestures(onTap: () {
                Navigator.pop(context);
              }),

              Text(
                'Settings',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 40), //
            ],
          ),
          const SizedBox(height: 40),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Account',
                  style:
                  TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "edit profile",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w700),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                        color: Colors.black.withOpacity(0.7),
                      )
                    ],
                  ).padding(vertical: 12).gestures(onTap: () {
                    print("edit profile");
                  }),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "log out",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w700),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                        color: Colors.black.withOpacity(0.7),
                      )
                    ],
                  ).padding(vertical: 12).gestures(onTap: () {
                    print("log out");
                  }),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "sign out",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w700),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                        color: Colors.black.withOpacity(0.7),
                      )
                    ],
                  ).padding(vertical: 12).gestures(onTap: () {
                    print("sign out");
                  }),
                ],
              ),
            ],
          ),
          const SizedBox(height: 40),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('support',
                  style:
                  TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "contact us",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w700),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                        color: Colors.black.withOpacity(0.7),
                      )
                    ],
                  ).padding(vertical: 12).gestures(onTap: () {
                    print("contact us");
                  }),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "service terms",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w700),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                        color: Colors.black.withOpacity(0.7),
                      )
                    ],
                  ).padding(vertical: 12).gestures(onTap: () {
                    print("service terms");
                  }),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "privacy policy",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w700),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                        color: Colors.black.withOpacity(0.7),
                      )
                    ],
                  ).padding(vertical: 12).gestures(onTap: () {
                    print("privacy policy");
                  }),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "team members",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w700),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                        color: Colors.black.withOpacity(0.7),
                      )
                    ],
                  ).padding(vertical: 12).gestures(onTap: () {
                    print("team members");
                  }),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "open source credit",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w700),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                        color: Colors.black.withOpacity(0.7),
                      )
                    ],
                  ).padding(vertical: 12).gestures(onTap: () {
                    print("open source credit");
                  }),
                  Gap(10),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

main() async {
  return buildApp(appHome: NewView().center());
}
