//
//  ContentView.swift
//  helloWorldSwiftUI
//
//  Created by Daniel Riojas on 23/08/21.
//

import SwiftUI

struct ContentView: View {
    @State var nombre: String = ""
    @State var mensaje : String = "Hola "
    var body: some View {
        VStack {
            Text("Teclea tu nombre: ")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.top, 100)
            TextField("Nombre", text: $nombre)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Spacer()
            Button(action: {
                mensaje = "Hola " + nombre
            }) {
                Text("Saludar")
                    .fontWeight(.semibold)
            }
            .padding()
            .background(Color.white)
            .cornerRadius(5)
            Spacer()
            Text(mensaje)
                .padding(.bottom, 100)
        }
        .background(Color.blue)
        .edgesIgnoringSafeArea(.all)
        .onTapGesture {
            UIApplication.shared.endEditing()
        }
    }
}

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
