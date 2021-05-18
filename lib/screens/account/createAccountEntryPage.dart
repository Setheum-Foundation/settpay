import 'package:settpay/screens/account/create/createAccountPage.dart';
import 'package:settpay/screens/account/import/importAccountPage.dart';
import 'package:settpay/utils/i18n/index.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:settpay_sdk/utils/i18n.dart';
import 'package:settpay_ui/components/roundedButton.dart';

class CreateAccountEntryPage extends StatelessWidget {
  static final String route = '/account/entry';

  @override
  Widget build(BuildContext context) {
    final dic = I18n.of(context).getDic(i18n_full_dic_app, 'account');
    return Scaffold(
      backgroundColor: Theme.of(context).cardColor,
      appBar: AppBar(title: Text(dic['add']), centerTitle: true),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width / 3,
                child: Image.asset('assets/images/logo_about.png'),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: RoundedButton(
                text: dic['create'],
                onPressed: () {
                  Navigator.pushNamed(context, CreateAccountPage.route);
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
              child: RoundedButton(
                text: dic['import'],
                onPressed: () {
                  Navigator.pushNamed(context, ImportAccountPage.route);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
