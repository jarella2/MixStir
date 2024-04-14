import '/flutter_flow/flutter_flow_util.dart';
import 'recipe_final_copy_widget.dart' show RecipeFinalCopyWidget;
import 'package:flutter/material.dart';

class RecipeFinalCopyModel extends FlutterFlowModel<RecipeFinalCopyWidget> {
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
