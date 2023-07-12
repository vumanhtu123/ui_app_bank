import 'package:flutter/material.dart';

class DropdownField extends StatefulWidget {
  const DropdownField({super.key});

  @override
  State<DropdownField> createState() => _DropdownFieldState();
}

class _DropdownFieldState extends State<DropdownField> {
  bool? focusField = false;
  FocusNode focusNode = FocusNode();
  TextEditingController textController = TextEditingController();
  OverlayEntry? _overlayEntry;
  final List<String> _dropdownItems = [
    'Option 1',
    'Option 2',
    'Option 3',
    'Option 4',
    'Option 5',
    'Option 6'
  ];
  final link = LayerLink();
  final FocusNode _textFieldFocusNode = FocusNode();

  @override
  void dispose() {
    textController.dispose();
    _textFieldFocusNode.dispose();
    super.dispose();
  }

  @override
  void initState() {
    textController = TextEditingController();
    // WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
    //   _showDropdown();
    // });
    super.initState();
  }

  void dismissKeyboard() {
    _textFieldFocusNode.unfocus();
  }

  void _showDropdown() {
    final RenderBox textFieldRenderBox =
        context.findRenderObject() as RenderBox;
    final renderBox = context.findRenderObject() as RenderBox;
    final size = renderBox.size;
    final overlay = Overlay.of(context);
    final offSize = renderBox.localToGlobal(Offset.zero);

    _overlayEntry = OverlayEntry(
      builder: (context) {
        return Positioned(
          left: offSize.dx,
          top: offSize.dy + size.height + 10,
          width: size.width,
          child: CompositedTransformFollower(
            link: link,
            showWhenUnlinked: false,
            offset: Offset(
              0,
              size.height + 8,
            ),
            child: Material(
              elevation: 4,
              child: SizedBox(
                height: 168,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ListView.builder(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: _dropdownItems.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text(_dropdownItems[index]),
                            onTap: () {
                              setState(() {
                                textController.text = _dropdownItems[index];
                                focusNode.unfocus();
                                removeDropdown();
                                dismissKeyboard();
                              });
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
    overlay.insert(_overlayEntry!);
  }

  void removeDropdown() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }

  @override
  Widget build(BuildContext context) => CompositedTransformTarget(
      link: link,
      child: Container(
        width: 273,
        height: 54,
        decoration: focusNode.hasFocus
            ? BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                border: Border.all(width: 2, color: const Color(0xFF1FB53A)),
                // Đặt bán kính bo góc
                boxShadow: [
                    BoxShadow(
                        color: const Color(0xFF1FB53A).withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 2,
                        offset: Offset.zero)
                  ])
            : BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                border: Border.all(width: 2, color: const Color(0xFFE7E7E8)),
                // Đặt bán kính bo góc
              ),
        child: TextFormField(
          keyboardType: TextInputType.phone,
          focusNode: focusNode,
          controller: textController,
          decoration: InputDecoration(
              suffixIcon: textController.text.isNotEmpty && focusNode.hasFocus
                  ? IconButton(
                      icon: const Icon(
                        Icons.clear,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        dismissKeyboard();
                        textController.clear();
                      },
                    )
                  : null,
              hintText: '(+255) 555-0120',
              hintStyle: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF89898A)),
              border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  borderSide: BorderSide.none
                  // focusedBorder: const OutlineInputBorder(
                  //     borderSide: BorderSide(color: Color(0xFF1FB53A))),
                  // enabledBorder: OutlineInputBorder(
                  //     borderSide: BorderSide(color: Colors.grey[300]!)
                  )),
          cursorColor: const Color(0xFF1FB53A),
          onTap: () {
            setState(() {
              focusNode.hasFocus;
              if (_overlayEntry == null) {
                _showDropdown();
              } else {
                focusNode.unfocus();
                removeDropdown();
                dismissKeyboard();
              }
            });
          },
          // onEditingComplete: () {
          //   setState(() {
          //     focusNode.hasFocus;
          //   });
          // },
          onFieldSubmitted: (text) {
            setState(() {
              focusNode.unfocus();
              removeDropdown();
              dismissKeyboard();
            });
          },
        ),
      ));
}
