import '/components/post_copy2_copy_widget.dart';
import '/components/post_copy2_widget.dart';
import '/components/post_copy_widget.dart';
import '/components/post_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dashboard_widget.dart' show DashboardWidget;
import 'package:flutter/material.dart';

class DashboardModel extends FlutterFlowModel<DashboardWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for post component.
  late PostModel postModel;
  // Model for postCopy component.
  late PostCopyModel postCopyModel;
  // Model for postCopy2 component.
  late PostCopy2Model postCopy2Model;
  // Model for postCopy2Copy component.
  late PostCopy2CopyModel postCopy2CopyModel;

  @override
  void initState(BuildContext context) {
    postModel = createModel(context, () => PostModel());
    postCopyModel = createModel(context, () => PostCopyModel());
    postCopy2Model = createModel(context, () => PostCopy2Model());
    postCopy2CopyModel = createModel(context, () => PostCopy2CopyModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    postModel.dispose();
    postCopyModel.dispose();
    postCopy2Model.dispose();
    postCopy2CopyModel.dispose();
  }
}
