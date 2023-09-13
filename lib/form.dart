import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

class FormPage extends StatelessWidget {
  const FormPage({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    // ignore: unused_local_variable
    double availableWidth = mediaQueryData.size.width;
    // ignore: unused_local_variable
    double availableHeight = mediaQueryData.size.height;

    final TextEditingController _textEditingController =
        TextEditingController();

    List<String> genders = ['Male', 'Female', 'Other'];
    List<String> countries = ['India'];
    List<String> states = [
      'Andhra Pradesh',
      'Arunachal Pradesh',
      'Assam',
      'Bihar',
      'Chhattisgarh',
      'Goa',
      'Gujarat',
      'Haryana',
      'Himachal Pradesh',
      'Jharkhand',
      'Karnataka',
      'Kerala',
      'Madhya Pradesh',
      'Maharashtra',
      'Manipur',
      'Meghalaya',
      'Mizoram',
      'Nagaland',
      'Odisha',
      'Punjab',
      'Rajasthan',
      'Sikkim',
      'Tamil Nadu',
      'Telangana',
      'Tripura',
      'Uttar Pradesh',
      'Uttarakhand',
      'West Bengal'
    ];
    List<String> cities = [];

    List<DropdownMenuEntry<String>> generateDropdownMenuEntries(
        List<String> options) {
      return options.map((String option) {
        return DropdownMenuEntry(
          value: option,
          label: option,
          style: const ButtonStyle(
            textStyle: MaterialStatePropertyAll(
                TextStyle(fontFamily: 'Urbanist-Regular', letterSpacing: 0.5)),
            foregroundColor: MaterialStatePropertyAll(Colors.white),
          ),
        );
      }).toList();
    }

    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              enableSuggestions: true,
              cursorOpacityAnimates: true,
              cursorWidth: 1.0,
              cursorColor: Colors.white.withOpacity(0.5),
              style: TextStyle(
                  color: Colors.white.withOpacity(0.8),
                  fontFamily: 'Urbanist-Regular'),
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(12.0)),
                    borderSide: BorderSide(
                        color: Colors.white.withOpacity(0.2), width: 0.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(12.0)),
                    borderSide: BorderSide(
                        color: Colors.white.withOpacity(0.2), width: 0.0),
                  ),
                  icon: const Icon(Icons.account_circle),
                  iconColor: Colors.white.withOpacity(0.8),
                  hintStyle: TextStyle(
                      color: Colors.white.withOpacity(0.3),
                      fontFamily: 'Urbanist-Regular'),
                  hintText: 'Steve Smith',
                  labelText: 'Full Name',
                  labelStyle: TextStyle(color: Colors.white.withOpacity(0.5)),
                  contentPadding:
                      const EdgeInsets.only(bottom: 0.0, left: 16.0)),
              controller: _textEditingController,
              onTap: () {},
            ),
            Container(
              height: 20.0,
            ),
            TextFormField(
              enableSuggestions: true,
              cursorOpacityAnimates: true,
              cursorWidth: 1.0,
              cursorColor: Colors.white.withOpacity(0.5),
              style: TextStyle(
                  color: Colors.white.withOpacity(0.8),
                  fontFamily: 'Urbanist-Regular'),
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(12.0)),
                    borderSide: BorderSide(
                        color: Colors.white.withOpacity(0.2), width: 0.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(12.0)),
                    borderSide: BorderSide(
                        color: Colors.white.withOpacity(0.2), width: 0.0),
                  ),
                  icon: const Icon(Icons.email),
                  iconColor: Colors.white.withOpacity(0.8),
                  hintStyle: TextStyle(
                      color: Colors.white.withOpacity(0.3),
                      fontFamily: 'Urbanist-Regular'),
                  hintText: ' abc@gmail.com',
                  labelText: 'Email Address',
                  labelStyle: TextStyle(color: Colors.white.withOpacity(0.5)),
                  contentPadding:
                      const EdgeInsets.only(bottom: 0.0, left: 16.0)),
              controller: _textEditingController,
            ),
            Container(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 0,
                  child: Icon(
                    Icons.phone_android,
                    color: Colors.white.withOpacity(0.8),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    // color: Colors.blue,
                    alignment: Alignment.centerRight,
                    child: CountryCodePicker(
                      padding: const EdgeInsets.all(0),
                      textStyle:
                          TextStyle(color: Colors.white.withOpacity(0.8)),
                      dialogTextStyle: const TextStyle(color: Colors.white),
                      searchStyle: const TextStyle(color: Colors.white),
                      boxDecoration: const BoxDecoration(
                        boxShadow: [],
                        color: Color(0xff00544F),
                      ),
                      onChanged: print,
                      hideSearch: true,
                      // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')

                      showDropDownButton: true,
                      initialSelection: '+91',
                      favorite: ['+91'],

                      // optional. Shows only country name and flag
                      showCountryOnly: true,
                      // optional. Shows only country name and flag when popup is closed.
                      showOnlyCountryWhenClosed: false,
                      // optional. aligns the flag and the Text left
                      alignLeft: false,

                      closeIcon: const Icon(
                        Icons.close,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: TextFormField(
                    cursorOpacityAnimates: true,
                    cursorWidth: 1.0,
                    cursorColor: Colors.white.withOpacity(0.5),
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontFamily: 'Urbanist-Regular'),
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(12.0)),
                          borderSide: BorderSide(
                              color: Colors.white.withOpacity(0.2), width: 0.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(12.0)),
                          borderSide: BorderSide(
                              color: Colors.white.withOpacity(0.2), width: 0.0),
                        ),
                        hintStyle: TextStyle(
                            color: Colors.white.withOpacity(0.3),
                            fontFamily: 'Urbanist-Regular'),
                        hintText: '0123456789',
                        labelText: 'Phone',
                        labelStyle:
                            TextStyle(color: Colors.white.withOpacity(0.5)),
                        contentPadding:
                            const EdgeInsets.only(bottom: 0.0, left: 16.0)),
                    controller: _textEditingController,
                  ),
                ),
              ],
            ),
            Container(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                    flex: 1,
                    child: DropdownMenu(
                        width: availableWidth / 2.4,
                        inputDecorationTheme: InputDecorationTheme(
                          suffixIconColor: Colors.white.withOpacity(0.5),
                          hintStyle: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(12.0)),
                            borderSide: BorderSide(
                                color: Colors.white.withOpacity(0.2),
                                width: 0.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(12.0)),
                            borderSide: BorderSide(
                                color: Colors.white.withOpacity(0.2),
                                width: 0.0),
                          ),
                        ),
                        textStyle: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontFamily: 'Urbanist-Regular',
                            letterSpacing: 0.5),
                        menuStyle: const MenuStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Color(0xff00544F))),
                        hintText: 'Gender',
                        dropdownMenuEntries:
                            generateDropdownMenuEntries(genders))),
                Expanded(
                    flex: 1,
                    child: Container(
                      alignment: Alignment.centerRight,
                      child: DropdownMenu(
                          width: availableWidth / 2.4,
                          inputDecorationTheme: InputDecorationTheme(
                            suffixIconColor: Colors.white.withOpacity(0.5),
                            hintStyle: TextStyle(
                              color: Colors.white.withOpacity(0.5),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(12.0)),
                              borderSide: BorderSide(
                                  color: Colors.white.withOpacity(0.2),
                                  width: 0.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(12.0)),
                              borderSide: BorderSide(
                                  color: Colors.white.withOpacity(0.2),
                                  width: 0.0),
                            ),
                          ),
                          textStyle: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontFamily: 'Urbanist-Regular',
                              letterSpacing: 0.5),
                          menuStyle: const MenuStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Color(0xff00544F))),
                          hintText: 'Country',
                          dropdownMenuEntries:
                              generateDropdownMenuEntries(countries)),
                    )),
              ],
            ),
            Container(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                    flex: 1,
                    child: DropdownMenu(
                        width: availableWidth / 2.4,
                        inputDecorationTheme: InputDecorationTheme(
                          suffixIconColor: Colors.white.withOpacity(0.5),
                          hintStyle: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(12.0)),
                            borderSide: BorderSide(
                                color: Colors.white.withOpacity(0.2),
                                width: 0.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(12.0)),
                            borderSide: BorderSide(
                                color: Colors.white.withOpacity(0.2),
                                width: 0.0),
                          ),
                        ),
                        textStyle: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontFamily: 'Urbanist-Regular',
                            letterSpacing: 0.5),
                        menuStyle: const MenuStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Color(0xff00544F))),
                        hintText: 'State',
                        dropdownMenuEntries:
                            generateDropdownMenuEntries(states))),
                Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: DropdownMenu(
                        width: availableWidth / 2.4,
                        inputDecorationTheme: InputDecorationTheme(
                          suffixIconColor: Colors.white.withOpacity(0.5),
                          hintStyle: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(12.0)),
                            borderSide: BorderSide(
                                color: Colors.white.withOpacity(0.2),
                                width: 0.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(12.0)),
                            borderSide: BorderSide(
                                color: Colors.white.withOpacity(0.2),
                                width: 0.0),
                          ),
                        ),
                        textStyle: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontFamily: 'Urbanist-Regular',
                            letterSpacing: 0.5),
                        menuStyle: const MenuStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Color(0xff00544F))),
                        hintText: 'City',
                        dropdownMenuEntries:
                            generateDropdownMenuEntries(cities)),
                  ),
                ),
              ],
            ),
            Container(
              height: 20.0,
            ),
            ElevatedButton(
              onPressed: () {},
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.teal)),
              child: const Text(
                'Submit',
                style: TextStyle(
                    fontFamily: 'Urbanist-Regular', letterSpacing: 0.5),
              ),
            )
          ],
        ),
      ),
    );
  }
}
