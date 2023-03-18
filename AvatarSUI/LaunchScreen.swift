//
//  LaunchScreen.swift
//  AvatarSUI
//
//  Created by Lener Gonzalez on 17/3/23.
//

import SwiftUI

struct LaunchScreen: View {
    
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5

   
    var body: some View {
        
        if isActive{
            LoginView()
        }
        else{
            
            ZStack(alignment: .center){
                Color("Blue")
                    .ignoresSafeArea()
                
                VStack{
                    Image("logoAvatar")
                        .resizable()
                        .frame(width: 150, height: 130)
                    
                    Text("Welcome to Avatar")
                        .fontWeight(.bold)
                        .font(.system(size: 25))
                        .foregroundColor(Color("WhiteNectar"))
                        .multilineTextAlignment(.leading)
                        .padding(.top, 38.0)
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear{
                    withAnimation(.easeInOut(duration: 1.5)){
                        self.size = 1.5
                        self.opacity = 0.9
                    }
                }
                
            }
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0){
                    self.isActive = true
                }
            }
        }
        
        
    }
}

struct LaunchScreen_Previews: PreviewProvider {
    static var previews: some View {
        LaunchScreen()
    }
}
