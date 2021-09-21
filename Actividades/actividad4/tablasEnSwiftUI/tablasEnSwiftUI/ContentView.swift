//
//  ContentView.swift
//  tablasEnSwiftUI
//
//  Created by Daniel Riojas on 21/09/21.
//

import SwiftUI

struct ContentView: View {
    
    var listaDeportes = [
        Deporte(nombre: "Soccer", imagen: "⚽️"),
        Deporte(nombre: "Football", imagen: "🏈"),
        Deporte(nombre: "Basketball", imagen: "🏀"),
        Deporte(nombre: "Tenis", imagen: "🎾"),
        Deporte(nombre: "Baseball", imagen: "⚾️")
    ]
    
    var body: some View {
        NavigationView {
            List{
                ForEach (listaDeportes, id:\.self) { deporte in
                    celdaDeporte(titulo: deporte.nombre, imagen: deporte.imagen)

                }
            }
            .navigationTitle("Deportes")
            .font(.largeTitle)
        }
    }
}

struct celdaDeporte : View {
    var titulo : String
    var imagen : String
    
    var body: some View {
        HStack{
            Text(imagen)
                .font(.system(size: 80))
            Spacer()
            Text(titulo)
                .font(.title)
                .padding()
        }
        .background(Color.gray)
        .cornerRadius(10)
        .padding(10)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
