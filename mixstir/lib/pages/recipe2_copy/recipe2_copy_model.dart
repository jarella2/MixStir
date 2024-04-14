import '/flutter_flow/flutter_flow_util.dart';
import 'recipe2_copy_widget.dart' show Recipe2CopyWidget;
import 'package:flutter/material.dart';

class Recipe2CopyModel extends FlutterFlowModel<Recipe2CopyWidget> {
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
