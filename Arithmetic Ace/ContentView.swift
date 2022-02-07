//
//  ContentView.swift
//  Arithmetic Ace
//
//  Created by Nicole on 2022/2/7.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing:0){
        HStack{
          Text("✕")
          
            Spacer()
            
            VStack{
                Text("5")
                Text("6")
            }
        }
            
            Divider()
            
            HStack{
                Image(systemName: "checkmark.circle")
                    .foregroundColor(.green)
                Spacer()
            Text("30")
            }
            
            Spacer()
        }
        .padding(.horizontal)
        .font(.system(size: 72))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
