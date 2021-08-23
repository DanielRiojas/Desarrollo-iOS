//
//  ContentView.swift
//  helloWorldSwiftUI
//
//  Created by Daniel Riojas on 23/08/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello")
            Text("World!!")
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
