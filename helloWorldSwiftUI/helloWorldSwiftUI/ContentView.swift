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
            Text("Teclea tu nombre: ").padding()
            TextField("Nombre", text: $nombre)
            Button(action: {
                mensaje = "Hola " + nombre
            }) {
                Text("Saludar")
            }
            Text(mensaje)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
