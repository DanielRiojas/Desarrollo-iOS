//
//  ContentView.swift
//  tarea2
//
//  Created by Daniel Riojas on 23/08/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var radioStr : String = ""
    @State var areaStr : String = ""
    @State var perimetroStr : String = ""
    @State var alertaVisible = false
    
    var body: some View {
        ZStack {
            Color.blue
            VStack {
                Text("Circulo")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                HStack {
                    Text("Radio")
                    TextField("", text: $radioStr)
                        .keyboardType(.decimalPad)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                .padding([.leading, .trailing])
                HStack {
                    Text("Area")
                    TextField("", text: $areaStr)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .disabled(true)
                }
                .padding([.leading, .trailing])
                HStack {
                    Text("Perìmetro")
                    TextField("", text: $perimetroStr)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .disabled(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                }
                .padding([.leading, .trailing])
                Spacer()
                Button(action: {
                    if let radio = Double(radioStr) {
                        
                        areaStr = String(round((Double.pi * pow(radio, 2)) * 100) / 100.0)
                        
                        perimetroStr = String(round((Double.pi * 2 * radio) * 100) / 100.0)
                    }
                    else{
                        alertaVisible = true
                    }
                }) {
                    Text("Calcular")
                        .fontWeight(.bold)
                        .foregroundColor(Color.black)
                }
                .alert(isPresented: $alertaVisible, content: {
                    Alert(title: Text("Error"), message: Text("El campo debe tener valor numèrico"), dismissButton: .default(Text("OK")))
                })
                Image("meme")
                    .resizable()
                    .padding(30)
                    .aspectRatio(contentMode: .fit)
            }
            .background(Color.blue)
            .edgesIgnoringSafeArea(.all)
            .onTapGesture {
                UIApplication.shared.endEditing()
            }
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
