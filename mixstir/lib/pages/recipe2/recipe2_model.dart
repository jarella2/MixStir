import '/flutter_flow/flutter_flow_util.dart';
import 'recipe2_widget.dart' show Recipe2Widget;
import 'package:flutter/material.dart';

class Recipe2Model extends FlutterFlowModel<Recipe2Widget> {
  ///  Local state fields for this page.

  bool isPopUpVisible = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
