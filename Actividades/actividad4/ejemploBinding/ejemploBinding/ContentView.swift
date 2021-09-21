//
//  ContentView.swift
//  ejemploBinding
//
//  Created by Daniel Riojas on 21/09/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var valorIntercambio : Bool = true
    
    var body: some View {
        VStack {
            Text("Hello, world!")
                .padding()
                .foregroundColor(valorIntercambio ? .green : .red)
            boton(textoBoton: "Intercambia", intercambia: $valorIntercambio)
            
        }
    }
}

struct boton : View {
    
    var textoBoton : String
    @Binding var intercambia : Bool
    
    var body: some View {
        Button(action: {
            intercambia = !intercambia
        }) {
            Text(textoBoton)
        }
        .padding(20)
        .background(Color .blue)
        .foregroundColor(.white)
        .font(.title)
        .cornerRadius(10)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
