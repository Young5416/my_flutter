import 'package:flutter/material.dart';
import './button_demo.dart';
import './floating_action_button_demo.dart';
import './popup_menu_button_demo.dart';
import './fron_demo.dart';
import './checkbox_demo.dart';
import './radio_demo.dart';
import './switch_demo.dart';
import './slide_demo.dart';
import './datetime_demo.dart';
import './simple_dialog_demo.dart';
import './alert_dialog_demo.dart';
import './bottom_sheet_demo.dart';
import './expansion_panel_demo.dart';
import './snack_bar_demo.dart';
import './chip_demo.dart';
import './data_table_demo.dart';
import './paginated_data_table.dart';
import './card.dart';
import './stepper_demo.dart';


class MaterialComponents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MaterialComponents'),
        elevation: 0.0,
      ),
      body: ListView(
        children: <Widget>[
          ListItem(title: 'StepperDemo', page: StepperDemo()),
          ListItem(title: 'CardDemo', page: CardDemo()),
          ListItem(title: 'PaginatedDataTableDemo', page: PaginatedDataTableDemo()),
          ListItem(title: 'DataTableDemo', page: DataTableDemo()),
          ListItem(title: 'ChipDemo', page: ChipDemo()),
          ListItem(title: 'BottomSheetDemo', page: BottomSheetDemo()),
          ListItem(title: 'SnackBarDemo', page: SnackBarDemo()),
          ListItem(title: 'ExpansionPanelDemo', page: ExpansionPanelDemo()),
          ListItem(title: 'AlertDialogDemo', page: AlertDialogDemo()),
          ListItem(title: 'SimpleDialog', page: SimpleDialogDemo()),
          ListItem(title: 'DateTime', page: DateTimeDemo()),
          ListItem(title: 'Switch', page: SwitchDDemo()),
          ListItem(title: 'Slide', page: SlideDemo()),
          ListItem(title: 'Radio', page: RadioDemo()),
          ListItem(title: 'Checkbox', page: CheckboxDemo()),
          ListItem(title: 'Form', page: FromDemo()),
          ListItem(title: 'PopupMenuButtonDemo', page: PopupMenuButtonDemo()),
          ListItem(
              title: 'FloatingActionButton', page: FloatingActionButtonDemo()),
          ListItem(title: 'Button', page: ButtonDemo()),
        ],
      ),
    );
  }
}

class _WidgetDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('_WidgetDemo'),
        elevation: 0.0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[],
          )
        ],
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  final String title;
  final Widget page;

  ListItem({
    this.title,
    this.page,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => page));
      },
    );
  }
}
