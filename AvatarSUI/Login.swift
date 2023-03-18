//
//  ContentView.swift
//  AvatarSUI
//
//  Created by Lener Gonzalez on 17/3/23.
//

import SwiftUI

struct LoginView: View {
    @State private var emailUserLogin: String = ""
    @State private var passwordLogin: String = ""
    
    var body: some View {
        
        
        ZStack{
            Color("Blue")
                .ignoresSafeArea()
            
            VStack{
                Image("logoAvatarWhite")
                    .resizable()
                    .frame(width: 150, height: 130)
                    .padding(.bottom, 50)
                
                Text("Welcome")
                    .fontWeight(.semibold)
                    .foregroundColor(Color("WhiteNectar"))
                    .font(.title)
                    .multilineTextAlignment(.center)
                
            }
            .padding(.bottom, 450)
            
            VStack(alignment: .center){
                
                HStack(spacing: 1){
                    
                    Image(systemName: "envelope.fill")
                        .foregroundColor(Color("Blue"))
                        .padding(.leading, 5)
                        .font(.system(size: 25))
                    
                    TextField("Enter your email", text: $emailUserLogin)
                        .textFieldStyle(PlainTextFieldStyle())
                        .padding()
                        .background(Color("WhiteNectar"))
                        .clipShape(RoundedRectangle(cornerRadius: 25))
                        .foregroundColor(Color("Blue"))
                        .padding(.leading, 5)
                        .padding(.trailing, 5)
                        .keyboardType(.emailAddress)
                }
                .padding(.bottom, 12)
                
                //Divider().background(Color("Turquoise").opacity(10))
                
                HStack(spacing: 1){
                    
                    Image(systemName: "eye.slash.fill")
                        .foregroundColor(Color("Blue"))
                        .padding(.leading, 5)
                        .font(.system(size: 24))
                    
                    SecureField("Enter your password", text: $passwordLogin)
                        .textFieldStyle(PlainTextFieldStyle())
                        .padding()
                        .background(Color("WhiteNectar"))
                        .clipShape(RoundedRectangle(cornerRadius: 25))
                        .foregroundColor(Color("Blue"))
                        .padding(.leading, 3)
                        .padding(.trailing, 5)
                        .keyboardType(.emailAddress)
                }
                
                Button(action: {print("test")}){
                    
                    Text("Login")
                        .foregroundColor(Color("WhiteNectar"))
                        .fontWeight(.bold)
                        .font(.system(size: 20))
                        .padding(.vertical)
                        .padding(.horizontal, 110)
                        .background(Color("Blue"))
                        .cornerRadius(40)
                        
                }
                .padding(.top, 25)
                .disabled(emailUserLogin.isEmpty)
                .disabled(passwordLogin.isEmpty)
                //I have to change color when the button is disabled
                
            }
            .frame(width: 360, height: 280)
            .foregroundColor(Color("WhiteNectar"))
            .background(
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(Color("Turquoise")))
            .padding(.top, 100)
            
            HStack{
                
                Text("Are you new?")
                    .foregroundColor(Color("Turquoise"))
                    .fontWeight(.bold)
                    .font(.system(size: 22))
                
                Button(action: {print("test")}){
                    
                    Text("Sign Up")
                        .foregroundColor(Color("WhiteNectar"))
                        .fontWeight(.bold)
                        .font(.system(size: 22))
                        .padding(.horizontal, 5)
                        .background(Color("Blue"))
                        .cornerRadius(40)
                    
                    Image(systemName: "arrow.right")
                        .foregroundColor(Color("WhiteNectar"))
                        .fontWeight(.bold)
                        .font(.system(size: 28))
                }
                

            }
            .padding(.top, 700)
            .padding(.bottom, 50)
        }
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
