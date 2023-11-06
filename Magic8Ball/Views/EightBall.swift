//
//  EightBall.swift
//  Magic8Ball
//
//  Created by Justin Hui on 24/10/2023.
//

import SwiftUI

struct EightBall: View {
    
    //MARK: Stored Properties
    
    //Keeps the input given by the user
    @State var question: String = ""
    
    //Stores the input given by the user
    @State var currentResponse = ""
    
    //refresh button opacity
    @State var refreshOpacity = 0.0
    
    //MARK: Computed Properties
    var body: some View {
        
        NavigationView{
            
            VStack{
                
                VStack (alignment: .leading) {
                    
                    Text("NOTE:")
                    Text("Questions should be phrased in such that they can be answered with a yes or no repsonse.")
                    
                    //User input
                    TextField("What is your question?", text: $question)
                }
                
                Button(action: {
                    // Generate a new random response when the Shake button is pressed
                    currentResponse = responses.randomElement()!
                    
                    //Set opacity to 1
                    refreshOpacity = 1.0
                }) {
                    Text("Shake")
                }
                .padding()
                .bold()
                .font(.title3)
                
                Text(currentResponse)
                
                Button(action: {
                    //Resets the response
                    currentResponse = ""
                    
                    //Reset the textfield
                    question = ""
                    
                    //Set opacity to 0
                    refreshOpacity = 0.0
                }) {
                    Text("Ask Another Questiom")
                }
                .padding()
                .bold()
                .font(.title3)
                .opacity(refreshOpacity)
                
                Spacer()
                
            }
            
            .navigationTitle("Magic 8 Ball")
            .padding()
        }
    }
}

#Preview {
    EightBall()
}
