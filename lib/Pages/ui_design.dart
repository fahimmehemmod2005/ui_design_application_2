import 'package:flutter/material.dart';
import 'package:ui_design_application_2/style.dart';

class UiDesign extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return UiDesignView();
  }
}

class UiDesignView extends State<UiDesign> {

List UiDesignList=[];
String item="";

MyInputOnChange(content) {
setState(() {
  item=content;
});
}
AddItem(){
  setState(() {
    UiDesignList.add({'item': item});
  });
}

RemoveItem(index){
  setState(() {
    UiDesignList.removeAt(index);
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "App Design",style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              flex: 10,
              child: Row(
                children: [
                  Expanded(flex: 70, child: TextFormField(
                    onChanged: (content){MyInputOnChange(content);},
                      decoration: AppInputDecoration(
                        "List "
                      ),
                    ),
                  ),
                  Expanded(flex: 30, child: Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: ElevatedButton(onPressed: (){
                        AddItem();
                      }, child: Text("ADD",
                      style: TextStyle(color: Colors.white),),
                        style: AppButtonStyle(),),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(flex: 90, child: ListView.builder(
                itemCount: UiDesignList.length,
                  itemBuilder: (context, index) {
                  return Card(
                    child: SizeBox50(
                      Row(
                        children: [
                          Expanded(flex: 80, child: Text(UiDesignList[index]['item'].toString()),
                          ),
                          Expanded(flex: 20, child: TextButton(onPressed: (){
                            RemoveItem(index);
                          },
                              child: Icon(Icons.delete),
                              ),
                          ),
                        ],
                      ),
                    ),
                  );
                  }
              ),
            ),
          ],
        ),
      ),
    );
  }
}
