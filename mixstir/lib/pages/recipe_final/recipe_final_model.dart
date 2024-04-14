import '/flutter_flow/flutter_flow_util.dart';
import 'recipe_final_widget.dart' show RecipeFinalWidget;
import 'package:flutter/material.dart';

class RecipeFinalModel extends FlutterFlowModel<RecipeFinalWidget> {
  ///  Local state fields for this page.

  bool isPopUpVisible = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
