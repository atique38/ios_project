//
//  SignUp.swift
//  TriviaGame
//
//  Created by kuet on 8/11/23.
//

import SwiftUI

struct SignUp: View {
    @State var email:String=""
    @State var password:String=""
    @State var userName:String=""
    @State var userExist=0
    @State var userNameExist=0
    @State var invalidPass=0
    var body: some View {
        VStack{
            VStack{
                Text("Sign Up")
                    .font(.largeTitle)
                    .bold()
                    .padding()
                    .foregroundColor(Color("AccentColor"))
                
                TextField("Username",text: $userName)
                    .padding()
                    .frame(width: 350,height: 50)
                    .background(Color.black.opacity(0.05))
                    .cornerRadius(10)
                    .border(.red,width: CGFloat(userNameExist))
                    
                TextField("Email",text: $email)
                    .padding()
                    .frame(width: 350,height: 50)
                    .background(Color.black.opacity(0.05))
                    .cornerRadius(10)
                    .border(.red,width: CGFloat(userExist))
                
                SecureField("Password",text: $password)
                    .padding()
                    .frame(width: 350,height: 50)
                    .background(Color.black.opacity(0.05))
                    .cornerRadius(10)
                    .border(.red,width: CGFloat(invalidPass))
                
                Button("Sign Up"){
                    
                }
                .foregroundColor(.white)
                .frame(width: 350,height: 50)
                .background(Color("AccentColor"))
                .cornerRadius(10)
                .padding()
                //.bold()
            }
        }
        .frame(maxWidth: .infinity,maxHeight: .infinity)
        .edgesIgnoringSafeArea(.all)
        .background(Color("Background"))
        
        
    }
}

struct signUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUp()
    }
}
