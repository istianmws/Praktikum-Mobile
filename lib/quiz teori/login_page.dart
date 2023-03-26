import 'package:flutter/material.dart';
class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text("Login Page")
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
            child: Column(
              children: [
                ClipOval(
                  child: Image.asset(
                    'ngeteh.jpg',
                    fit: BoxFit.cover,
                    width: 100, // atur ukuran sesuai keinginan
                    height: 100, // atur ukuran sesuai keinginan
                  ),
                ),
                const SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.person),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(25)
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade400),
                        borderRadius: BorderRadius.circular(15)
                      ),
                      fillColor: Colors.grey.shade200,
                      filled: true,
                      labelText: 'Email',
                      labelStyle: TextStyle(color: Colors.grey[700]),
                      hintText: "Masukkan Email",
                      hintStyle: TextStyle(color: Colors.grey[500])
                    ),
                    onSaved: (String? value) {
                    },
                    validator: (String? value) {
                      return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
                    },

                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      icon: Icon(Icons.lock),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(25)
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade400),
                        borderRadius: BorderRadius.circular(15)
                      ),
                      fillColor: Colors.grey.shade200,
                      filled: true,
                      labelText: 'Password',
                      labelStyle: TextStyle(color: Colors.grey[700]),
                      hintText: "Masukkan Password",
                      hintStyle: TextStyle(color: Colors.grey[500])
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: ElevatedButton(
                    onPressed: (){},
                      // decoration: BoxDecoration(
                      //   color: Colors.black,
                      //   borderRadius: BorderRadius.circular(8),
                      // ),
                      child: Text('Login'),
                  ),
                ),
                const SizedBox(height: 15),
                TextButton(
                    onPressed: (){},
                    child: Text('Lupa Password?'))
              ],
            ),

        ),
      ),
    );
  }
}
