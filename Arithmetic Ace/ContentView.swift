//
//  ContentView.swift
//  Arithmetic Ace
//
//  Created by Nicole on 2022/2/7.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: Stored properties
    @State var multiplicand = Int.random(in: 1...12)
    @State var multiplier = Int.random(in: 1...12)
    //This string contain whatever we put in
    @State var inputGiven = ""
    
    //Has an answer been checked?
    @State var answerChecked = false
    
    //Was the answer given actually correct?
    @State var answerCorrect = false
    
    
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
                ZStack{
                    Image(systemName: "checkmark.circle")
                        .foregroundColor(.green)
                    //           Condition       true  false
                        .opacity(answerCorrect ? 1.0 : 0.0 )
                    Spacer()
                    
                    Image(systemName: "x.circle")
                        .foregroundColor(.red)
                    //  Condition1 and Conditional2 true  false
                        .opacity(answerChecked == true && answerCorrect == false ? 1.0 : 0.0)
                    
                }
                
                
                Spacer()
                
                
                TextField("",
                          text: $inputGiven)
                    .multilineTextAlignment(.trailing)
            }
            
            
            
            ZStack{
                Button(action: {
                    
                    // Answer has been checked!
                    answerChecked = true
                    
                    // Convert the input given to an integer, if  possible
                    guard let productGiven = Int(inputGiven) else {
                        //Sadness, not a number
                        return
                    }
                    
                    //Check the anwser!
                    if productGiven == correctProduct {
                        //Celebrate!
                        answerCorrect = true
                    }
                    else{
                        //sadness, they are incorrect
                    }
                }, label: {
                    Text("Check Answer")
                        .font(.largeTitle)
                })
                    .padding()
                    .buttonStyle(.bordered)
                //Only show this buttin when the anwser has not been checked
                    .opacity(answerChecked == true ? 0.0 : 1.0)
                
                
                
                
                Button(action: {
                    //Generate a new question
                    multiplicand = Int .random(in: 1...12)
                    multiplier = Int .random(in: 1...12)
                    
                    
                    //Reset properties that track
                    answerCorrect = false
                    answerChecked = false
                    
                    //Rest input field
                    inputGiven = ""
                }, label: {
                    Text("New question")
                        .font(.largeTitle)
                })
                    .padding()
                    .buttonStyle(.bordered)
                //Only show this button when an anwser has been checked
                    .opacity(answerChecked == true ? 1.0 : 0.0)
                
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
