//
//  ContentView.swift
//  perfilUsuario
//
//  Created by Daniel Riojas on 06/09/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var nombre : String = "Donald"
    @State var correo : String = "donald@gmail.com"
    @State var mostrarFoto : Bool = false
    @State var mostrarEditar : Bool = false
    
    var body: some View {
        VStack (spacing: 0) {
            ZStack {
                // rgba(129, 236, 236, 1.0)
                Color.init(Color.RGBColorSpace.sRGB, red: 129/255, green: 236/255, blue: 236/255, opacity: 1)
                VStack {
                    Button(action: {
                        mostrarFoto = true
                    }) {
                        Image("Donald")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                    .sheet(isPresented: $mostrarFoto, content: {
                        VistaFoto(foto: Image("Donald"))
                    })
                }
            }
            ZStack {
                Color.init(Color.RGBColorSpace.sRGB, red: 116/255, green: 185/255, blue: 255/255, opacity: 1)
                VStack {
                    Text("Nombre: " + nombre)
                        .padding()
                    Text("Correo: " + correo)
                    Button(action: {
                        mostrarEditar = true
                    }) {
                        Text("Editar")
                    }
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .sheet(isPresented: $mostrarEditar, content: {
                        ViewEditar(nombre: $nombre, correo: $correo)
                    })
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
