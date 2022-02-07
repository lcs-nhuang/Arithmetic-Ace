//
//  ContentView.swift
//  Arithmetic Ace
//
//  Created by Nicole on 2022/2/7.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
        HStack{
          Text("x")
          
            Spacer()
            
            VStack{
                Text("5")
                Text("6")
            }
        }
        .font(.system(size: 72))
        .padding()
            
            Divider()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
