import 'package:flutter/material.dart';

class AddReceipt extends StatelessWidget {
  const AddReceipt({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController name = TextEditingController();
    TextEditingController balance = TextEditingController();
    TextEditingController remarks = TextEditingController();
    TextEditingController amount = TextEditingController();
    // TextEditingController address = TextEditingController();
    TextEditingController datecontroller = TextEditingController();
    TextEditingController reference = TextEditingController();
    TextEditingController duedatecontroller = TextEditingController();
    TextEditingController discount = TextEditingController();
    TextEditingController freight = TextEditingController();
    TextEditingController others = TextEditingController();
    TextEditingController round = TextEditingController();
    TextEditingController total = TextEditingController();
    // TextEditingController aadhaar=TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffAED9BA),
        title: const Text(
          'Add Purchase',
          style: TextStyle(fontSize: 24, color: Colors.black),
        ),
      ),
      body: ListView(
        children: [
          SingleChildScrollView(
            child: const Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Date',
                  style: TextStyle(
                    fontFamily: 'Jost',
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    height: 43 / 30,
                  ),
                ),
              ],
            ),
          ),
          Datepicker(datecontroller: datecontroller),
          const Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Text(
                'Category',
                style: TextStyle(
                  fontFamily: 'Jost',
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                  height: 43 / 30,
                ),
              ),
            ],
          ),
          const DropdownButtonWidget(
            dropDownItem: [
              'Select Option',
              'Seeds',
              'Fertilizers',
              'Agri',
              'Traders',
              'Others'
            ],
            selectedItem: 'Select Option',
          ),
          const Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Text(
                'Name',
                style: TextStyle(
                  fontFamily: 'Jost',
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                  height: 43 / 30,
                ),
              ),
            ],
          ),

          Inputform(label: 'Customer Name', controller: name),
          const Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Text(
                'Pay Type',
                style: TextStyle(
                  fontFamily: 'Jost',
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                  height: 43 / 30,
                ),
              ),
            ],
          ),
          const DropdownButtonWidget(
            dropDownItem: [
              'Select Option',
              'Cheque',
              'UPI(Gpay(Or)Phone pe)',
              'Cash',
              'IMPS',
            ],
            selectedItem: 'Select Option',
          ),
          const Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Text(
                'Remarks',
                style: TextStyle(
                  fontFamily: 'Jost',
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                  height: 43 / 30,
                ),
              ),
            ],
          ),
          Inputform(label: 'Remarks', controller: remarks),
          const Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Text(
                'Receipt Type',
                style: TextStyle(
                  fontFamily: 'Jost',
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                  height: 43 / 30,
                ),
              ),
            ],
          ),
          const DropdownButtonWidget(
            dropDownItem: [
              'Select Option',
              'Manual Credit Note',
              'Auto Cash Receipt',
              'Manual Credit Note',
            ],
            selectedItem: 'Select Option',
          ),
          const Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Text(
                'Balance',
                style: TextStyle(
                  fontFamily: 'Jost',
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                  height: 43 / 30,
                ),
              ),
            ],
          ),
          Inputform(label: 'Balance', controller: balance),
          const Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Text(
                'Amount',
                style: TextStyle(
                  fontFamily: 'Jost',
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                  height: 43 / 30,
                ),
              ),
            ],
          ),
          Inputform(label: 'Amount', controller: amount),

          const Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Text(
                'Pay Account',
                style: TextStyle(
                  fontFamily: 'Jost',
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                  height: 43 / 30,
                ),
              ),
            ],
          ),



          const DropdownButtonWidget(
            dropDownItem: [
              'Select Option',
              'Petty Cash',
              'SBI',

            ],
            selectedItem: 'Select Option',
          ),

          const Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Text(
                'Cheque Date',
                style: TextStyle(
                  fontFamily: 'Jost',
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                  height: 43 / 30,
                ),
              ),
            ],
          ),
          Datepicker(datecontroller: datecontroller),







          const SizedBox(
            height: 15,
          ),




          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  // Navigator.of(context).push(MaterialPageRoute(
                  //     builder: (context) => const SalesOrderView()));
                },
                child: Container(
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(25)),
                  child: const Center(
                    child: Text(
                      'Save Invoice',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Jost',
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                        height: 43 / 30,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}

class Addmoreingoods extends StatefulWidget {
  const Addmoreingoods({super.key});

  @override
  State<Addmoreingoods> createState() => _AddmoreingoodsState();
}

class _AddmoreingoodsState extends State<Addmoreingoods> {
  List<Widget> goodsandServiceslist = [const GoodsServices()];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 0; i < goodsandServiceslist.length; i++)
          goodsandServiceslist[i],
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  goodsandServiceslist.add(const GoodsServices());
                });
              },
              child: Container(
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(25)),
                child: const Center(
                  child: Text(
                    'Add',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Jost',
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      height: 43 / 30,
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  goodsandServiceslist.removeLast();
                });
              },
              child: Container(
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(25)),
                child: const Center(
                  child: Text(
                    'Delete',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Jost',
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      height: 43 / 30,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class GoodsServices extends StatefulWidget {
  const GoodsServices({super.key});

  @override
  State<GoodsServices> createState() => _GoodsServicesState();
}

class _GoodsServicesState extends State<GoodsServices> {
  TextEditingController goodsandServices = TextEditingController();
  TextEditingController price = TextEditingController();
  TextEditingController quantity = TextEditingController();
  TextEditingController total = TextEditingController();
  TextEditingController tax = TextEditingController();
  TextEditingController discount = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.grey.shade200,
        ),
        child: Column(
          children: [
            const Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Goods & Services Description',
                  style: TextStyle(
                    fontFamily: 'Jost',
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    height: 43 / 30,
                  ),
                ),
              ],
            ),
            Inputform(
              controller: goodsandServices,
              label: 'Goods & Services',
            ),
            const Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Price',
                  style: TextStyle(
                    fontFamily: 'Jost',
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    height: 43 / 30,
                  ),
                ),
              ],
            ),
            Inputform(
              controller: price,
              label: 'Price',
            ),
            const Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Discount',
                  style: TextStyle(
                    fontFamily: 'Jost',
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    height: 43 / 30,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const SizedBox(
                  width: 150,
                  child: DropdownButtonWidget(
                    dropDownItem: ['%', 'Rs'],
                    selectedItem: '%',
                  ),
                ),
                SizedBox(
                  width: 170,
                  child: Inputform(
                    controller: discount,
                    label: 'Discount',
                  ),
                ),
              ],
            ),
            const Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Quantity',
                  style: TextStyle(
                    fontFamily: 'Jost',
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    height: 43 / 30,
                  ),
                ),
              ],
            ),
            Inputform(
              controller: quantity,
              label: 'Quantity',
            ),
            const Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Tax',
                  style: TextStyle(
                    fontFamily: 'Jost',
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    height: 43 / 30,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const SizedBox(
                  width: 150,
                  child: DropdownButtonWidget(
                    dropDownItem: ['0%', '5%', '12%', '18%', '28%'],
                    selectedItem: '0%',
                  ),
                ),
                SizedBox(
                  width: 170,
                  child: Inputform(
                    controller: tax,
                    label: 'Tax',
                  ),
                ),
              ],
            ),
            const Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Total',
                  style: TextStyle(
                    fontFamily: 'Jost',
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    height: 43 / 30,
                  ),
                ),
              ],
            ),
            Inputform(
              controller: total,
              label: 'Total',
            ),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}

class AddReference extends StatefulWidget {
  const AddReference({super.key});

  @override
  State<AddReference> createState() => _AddReferenceState();
}

class _AddReferenceState extends State<AddReference> {
  TextEditingController poreference = TextEditingController();
  TextEditingController dcreference = TextEditingController();
  TextEditingController lrreference = TextEditingController();
  TextEditingController representative = TextEditingController();
  bool addreferece = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              width: 20,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  addreferece = !addreferece;
                });
              },
              child: Container(
                height: 50,
                width: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: const Color.fromARGB(255, 163, 221, 179),
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        'Add Delivery',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Jost',
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          height: 43 / 30,
                        ),
                      ),
                      addreferece
                          ? const Icon(
                        Icons.arrow_drop_up,
                        color: Colors.white,
                        size: 30,
                      )
                          : const Icon(
                        Icons.arrow_drop_down,
                        color: Colors.white,
                        size: 30,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        addreferece
            ? Column(
          children: [
            Inputform(
              label: 'PO Reference',
              controller: poreference,
            ),
            Inputform(
              label: 'DC Reference',
              controller: dcreference,
            ),
            Inputform(
              label: 'LR Reference',
              controller: lrreference,
            ),
            Inputform(
              label: 'Representative',
              controller: representative,
            ),
          ],
        )
            : Container(),
      ],
    );
  }
}

class AddDelivery extends StatefulWidget {
  const AddDelivery({super.key});

  @override
  State<AddDelivery> createState() => _AddDeliveryState();
}

class _AddDeliveryState extends State<AddDelivery> {
  TextEditingController transportmode = TextEditingController();
  TextEditingController vehicleno = TextEditingController();
  TextEditingController location = TextEditingController();
  bool adddelivery = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              width: 20,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  adddelivery = !adddelivery;
                });
              },
              child: Container(
                height: 50,
                width: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: const Color.fromARGB(255, 163, 221, 179),
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        'Add Delivery',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Jost',
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          height: 43 / 30,
                        ),
                      ),
                      adddelivery
                          ? const Icon(
                        Icons.arrow_drop_up,
                        color: Colors.white,
                        size: 30,
                      )
                          : const Icon(
                        Icons.arrow_drop_down,
                        color: Colors.white,
                        size: 30,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        adddelivery
            ? Column(
          children: [
            Inputform(
              label: 'Transport Mode',
              controller: transportmode,
            ),
            Inputform(
              label: 'Vehicle No',
              controller: vehicleno,
            ),
            Inputform(
              label: 'Location',
              controller: location,
            ),
          ],
        )
            : Container(),
      ],
    );
  }
}

class AddCrop extends StatefulWidget {
  const AddCrop({super.key});

  @override
  State<AddCrop> createState() => _AddCropState();
}

class _AddCropState extends State<AddCrop> {
  TextEditingController cropName = TextEditingController();
  TextEditingController cropage = TextEditingController();
  TextEditingController cropspec = TextEditingController();
  bool addCrop = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              width: 20,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  addCrop = !addCrop;
                });
              },
              child: Container(
                height: 50,
                width: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: const Color.fromARGB(255, 163, 221, 179),
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        'Add Crop',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Jost',
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          height: 43 / 30,
                        ),
                      ),
                      addCrop
                          ? const Icon(
                        Icons.arrow_drop_up,
                        color: Colors.white,
                        size: 30,
                      )
                          : const Icon(
                        Icons.arrow_drop_down,
                        color: Colors.white,
                        size: 30,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        addCrop
            ? Column(
          children: [
            Inputform(
              label: 'Crop Name',
              controller: cropName,
            ),
            Inputform(
              label: 'Crop Age',
              controller: cropage,
            ),
            Inputform(
              label: 'Crop Spec',
              controller: cropspec,
            ),
          ],
        )
            : Container(),
      ],
    );
  }
}

class Inputform extends StatefulWidget {
  final String label;
  final TextEditingController controller;

  const Inputform({super.key, required this.label, required this.controller});

  @override
  State<Inputform> createState() => _InputformState();
}

class _InputformState extends State<Inputform> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: TextFormField(
        controller: widget.controller,
        keyboardType: TextInputType.name,
        style: const TextStyle(color: Colors.black),
        decoration: InputDecoration(
          labelStyle: const TextStyle(color: Colors.black),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
                color: Color.fromARGB(255, 177, 174, 174), width: 0),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              color: Color.fromARGB(255, 177, 174, 174),
              width: 0,
            ),
          ),
          label: Text(
            widget.label,
            style: const TextStyle(
              color: Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}

class DropdownButtonWidget extends StatefulWidget {
  final List<String> dropDownItem;
  final String selectedItem;
  const DropdownButtonWidget(
      {super.key, required this.dropDownItem, required this.selectedItem});

  @override
  State<DropdownButtonWidget> createState() => _DropdownButtonWidgetState();
}

class _DropdownButtonWidgetState extends State<DropdownButtonWidget> {
  late String selectedItem;
  @override
  void initState() {
    super.initState();
    selectedItem = widget.selectedItem;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: DropdownButtonFormField<String>(
        value: selectedItem,
        items: widget.dropDownItem.map((String item) {
          return DropdownMenuItem<String>(
            value: item,
            child: Text(
              item,
              style: const TextStyle(
                color: Colors.grey,
              ),
            ),
          );
        }).toList(),
        onChanged: (String? val) {
          setState(() {
            selectedItem = val!;
          });
        },
        icon: const Icon(Icons.arrow_drop_down),
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              color: Color.fromARGB(255, 177, 174, 174),
              width: 0,
            ),
          ),
          labelStyle: const TextStyle(color: Colors.black),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
                color: Color.fromARGB(255, 116, 108, 108), width: 1),
          ),
        ),
      ),
    );
  }
}

class Datepicker extends StatefulWidget {
  final TextEditingController datecontroller;

  const Datepicker({super.key, required this.datecontroller});

  @override
  State<Datepicker> createState() => _DatepickerState();
}

class _DatepickerState extends State<Datepicker> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: TextFormField(
        readOnly: true,
        onTap: _selectdate,
        controller: widget.datecontroller,
        style: const TextStyle(color: Color.fromARGB(255, 10, 10, 10)),
        decoration: InputDecoration(
          labelStyle: const TextStyle(color: Colors.white),
          suffixIcon: const Icon(Icons.calendar_month_outlined),
          focusColor: Colors.black,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
                color: Color.fromARGB(255, 78, 76, 76), width: 1),
          ),
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              color: Color.fromARGB(255, 46, 45, 45),
              width: 1,
            ),
          ),
          hintText: "Date",
          hintStyle: const TextStyle(
            color: Color.fromARGB(255, 221, 217, 217),
          ),
        ),
      ),
    );
  }

  Future<void> _selectdate() async {
    DateTime? datepicked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (datepicked != null) {
      setState(() {
        widget.datecontroller.text = datepicked.toString().split(" ")[0];
      });
    }
  }
}