import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class bottomsheettextfield extends StatefulWidget {
  const bottomsheettextfield({super.key});

  @override
  State<bottomsheettextfield> createState() => _bottomsheettextfieldState();
}

class _bottomsheettextfieldState extends State<bottomsheettextfield> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: ElevatedButton(
                    onPressed: () {
                      showModalBottomSheet(
                        isScrollControlled: true,
                          context: context,
                          builder: (context) {
                            return Padding(
                              padding:  EdgeInsets.only(
                                bottom:MediaQuery.of(context).viewInsets.bottom),
                              child: Wrap(
                                children: [
                                  Padding(padding: EdgeInsets.all(10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    IconButton(onPressed: (){
                                    Navigator.pop(context);
                                  }, icon: const Icon(Icons.close)
                                  ),
                                  SizedBox(height: 20,),
                                  const Text("Textfixfgdfvuyguyguyguiibdeld"),
                                  ],
                                ),
                                ),
                                
                                const TextFieldSheet(),
                                ],
                              ),
                            );
                          });
                    },
                    child: Text("bottomsheet textfield")),
              )
            ],
          ),
        ),
      ),
    );
  }
}


class TextFieldSheet extends StatelessWidget {
  const TextFieldSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Flexible(
          child: Padding(
            padding: EdgeInsets.only(
          top: 8,
          left: 8,
          right: 8,
        ),
        child: SizedBox(
          width: MediaQuery.of(context).size.width/2,
          child: TextFormField(
            decoration: InputDecoration(
              hintText: "type here",


            ),
            


          ),
          ),
        
        
        )


        )

      ],
    );
  }
}