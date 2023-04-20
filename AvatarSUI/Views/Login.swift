//
//  ContentView.swift
//  AvatarSUI
//
//  Created by Lener Gonzalez on 17/3/23.
//

import SwiftUI

struct Login: View {
    
    @StateObject private var LoginM = LoginModel()
    
    
    var body: some View {
        
        
        ZStack{
            Color(ConstantsColors.colorTechBlue)
                .ignoresSafeArea()
            
            VStack{
                Image(ConstantsLogos.logoWhite)
                    .resizable()
                    .frame(width: 150, height: 130)
                    .padding(.bottom, 50)
                    
                Text(ConstantsStrings.welcomeTx)
                    .fontWeight(.semibold)
                    .foregroundColor(Color(ConstantsColors.colorWhiteCustom))
                    .font(.title)
                    .multilineTextAlignment(.center)
                
            }
            .padding(.bottom, 450)
            
            VStack(alignment: .center){
                
                HStack(){
                    
                    Image(systemName: "envelope.fill")
                        .foregroundColor(Color(ConstantsColors.colorTechBlue))
                        .padding(.leading, 5)
                        .font(.system(size: 25))
                    
                    TextField(ConstantsStrings.emailTextF, text: $LoginM.email)
                        .foregroundColor(Color(ConstantsColors.colorBlue))
                        .keyboardType(.emailAddress)
                }
                .padding()
                .overlay(RoundedRectangle(cornerRadius: 30).stroke(Color(ConstantsColors.colorTechBlue), lineWidth: 2))
                .padding()
                
                
                //Divider().background(Color("Turquoise").opacity(10))
                
                HStack(){
                    
                    Image(systemName: "eye.slash.fill")
                        .foregroundColor(Color(ConstantsColors.colorTechBlue))
                        .padding(.leading, 5)
                        .font(.system(size: 24))
                    
                    SecureField(ConstantsStrings.passwordTextF, text: $LoginM.password)
                        .foregroundColor(Color(ConstantsColors.colorBlue))
                        .keyboardType(.emailAddress)
                }
                .padding()
                .overlay(RoundedRectangle(cornerRadius: 30).stroke(Color(ConstantsColors.colorTechBlue), lineWidth: 2))
                .padding()
                .padding(.top, -20)
                
                Button(action: {LoginM.login()}){
                    
                    Text(ConstantsStrings.loginBtn)
                        .foregroundColor(Color(ConstantsColors.colorWhiteCustom))
                        .fontWeight(.bold)
                        .font(.system(size: 20))
                        .padding(.vertical)
                        .padding(.horizontal, 110)
                        .background(LinearGradient(gradient: Gradient(colors: [Color.gray, Color(ConstantsColors.colorTechBlue)]), startPoint: .leading, endPoint: .trailing))
                        .cornerRadius(40)
                }
                .padding()
//                .disabled(LoginM.email.isEmpty)
//                .disabled(LoginM.password.isEmpty)
                .padding(.top, -10)
                
                //I have to change color when the button is disabled
                
            }
            .frame(width: 360, height: 280)
            .foregroundColor(Color(ConstantsColors.colorWhiteCustom))
            .background(
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(Color(ConstantsColors.colorWhiteCustom))
            )
            .padding(.top, 100)
            
        }
        
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
