//
//  ContentView.swift
//  divisasSwiftUI
//
//  Created by Daniel Riojas on 23/08/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var tipoCambioStr : String = ""
    @State var pesosStr : String = ""
    @State var dolaresStr : String = ""
    @State var alertaVisible = false
    
    var body: some View {
        ZStack {
            Color.white
            VStack {
                Text("Divisas")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                HStack {
                    Text("Tipo de cambio")
                    TextField("", text: $tipoCambioStr)
                        .keyboardType(.decimalPad)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                .padding([.leading, .trailing])
                HStack {
                    Text("Pesos")
                    TextField("", text: $pesosStr)
                        .keyboardType(.decimalPad)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                .padding([.leading, .trailing])
                HStack {
                    Text("Dolares")
                    TextField("", text: $dolaresStr)
                        .keyboardType(.decimalPad)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .disabled(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                }
                .padding([.leading, .trailing])
                Spacer()
                Button(action: {
                    if let tipoCambio = Double(tipoCambioStr),
                       let pesos = Double(pesosStr) {
                        
                        dolaresStr = String(pesos / tipoCambio)
                    }
                    else{
                        alertaVisible = true
                    }
                }) {
                    Text("Calcular")
                }
                .alert(isPresented: $alertaVisible, content: {
                    Alert(title: Text("Error"), message: Text("Los campos deben tener valor numèrico"), dismissButton: .default(Text("OK")))
                })
                Image("divisas")
                    .resizable()
                    .padding(30)
                    .aspectRatio(contentMode: .fit)
            }
        }
        .onTapGesture {
            UIApplication.shared.endEditing()
        }
    }
}

extension UIApplication{
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
