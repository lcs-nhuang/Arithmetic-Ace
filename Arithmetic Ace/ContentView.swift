//
//  ContentView.swift
//  Arithmetic Ace
//
//  Created by Nicole on 2022/2/7.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: Stored properties
    let multiplicand = Int.random(in: 1...12)
    let multiplier = Int.random(in: 1...12)
    @State var inputGiven = ""
    
    //MARK: Computed Property
    var correctProduct: Int{
        return multiplier * multiplicand
    }
    var body: some View {
        
        VStack(spacing:0){
        HStack{
          Text("✕")
          
            Spacer()
            
            VStack(alignment: .trailing){
                Text("\(multiplicand)")
                Text("\(multiplier)")
            }
        }
            
            Divider()
            
            HStack{
                Image(systemName: "checkmark.circle")
                    .foregroundColor(.green)
                Spacer()
                TextField("",
                          text: $inputGiven)
                    .multilineTextAlignment(.trailing)
            }
            
            Button(action: {
                // Convert the input given to an integer, if  possible
                guard let productGiven = Int(inputGiven) else {
                    //Sadness, not a number
                    return
                }
                
                //Check the anwser!
                if productGiven == correctProduct {
                    //Celebrate!
                }
                else{
                    //sadness, they are incorr
                }
            }, label: {
                Text("Check Answer")
                    .font(.largeTitle)
            })
                .padding()
                .buttonStyle(.bordered)
            
            
            
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
