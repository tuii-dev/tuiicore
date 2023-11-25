import 'package:flutter/material.dart';
import 'package:pdf_render/pdf_render_widgets.dart';
import 'package:tuiicore/core/models/selected_file.dart';

class PdfViewerWidget extends StatefulWidget {
  const PdfViewerWidget({Key? key, required this.pickedFile}) : super(key: key);

  final SelectedFile pickedFile;

  @override
  State<PdfViewerWidget> createState() => _PdfViewerWidgetState();
}

class _PdfViewerWidgetState extends State<PdfViewerWidget> {
  late PdfViewerController controller;

  @override
  void initState() {
    controller = PdfViewerController();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _getPdfViewer();
  }

  PdfViewer _getPdfViewer() {
    PdfViewer pdfViewer = PdfViewer.openData(widget.pickedFile.fileBytes,
        viewerController: controller,
        params: const PdfViewerParams(
            maxScale: 1.0, minScale: 1.0, scrollDirection: Axis.horizontal));

    return pdfViewer;
  }
}