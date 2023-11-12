//
//  Home.swift
//  TriviaGame
//
//  Created by kuet on 8/11/23.
//

import SwiftUI

struct Home: View {
    @StateObject var triviaManager = TriviaManager()
    
    var body: some View {
        NavigationView {
            VStack{
                Spacer().frame(height: 10)
                HStack{

                    HStack{
                        Image("profile")
                            .padding([.leading])
                            Spacer()
                    }
                                
                    HStack{
                        Text("QuizWizz")
                    }
                    .font(.custom(
                            "AmericanTypewriter",
                            fixedSize: 27))
                            //.bold()
                    .foregroundColor(Color("AccentColor"))
                    
                    

                    HStack{
                        Spacer()
                        Text("").padding([.trailing])
                    }
                }
                
                
                
                VStack{
                    Button("Create Quiz"){
                        
                    }
                    .foregroundColor(.white)
                    .frame(width: 150)
                    .padding()
                    .background(Color("AccentColor"))
                    .cornerRadius(10)
                    //.bold()
                    
                    Spacer().frame(height:20)
                    
                    Button("Join Quiz"){
                        
                    }
                    .foregroundColor(.white)
                    .frame(width: 150)
                    .padding()
                    .background(Color("AccentColor"))
                    .cornerRadius(10)
                    //.bold()
                    Spacer().frame(height:20)
                    
                    NavigationLink {
                        TriviaView()
                            .environmentObject(triviaManager)
                    } label: {
                        Button("Trivia"){
                            
                        }
                        .foregroundColor(.white)
                        .frame(width: 150)
                        .padding()
                        .background(Color("AccentColor"))
                        .cornerRadius(10)
                        
                    }
                    
                    //.bold()
                    
                    
                }
                .padding(50)
                Spacer()
                
                
            }
            .frame(maxWidth: .infinity,maxHeight: .infinity)
        .background(Color("Background"))
        }
        
        
        
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
