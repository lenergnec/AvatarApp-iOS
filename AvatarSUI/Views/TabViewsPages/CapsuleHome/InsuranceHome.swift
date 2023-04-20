//
//  InsuranceHome.swift
//  AvatarSUI
//
//  Created by Lener Gonzalez on 14/4/23.
//

import SwiftUI

struct InsuranceHome: View {
    @State var clientsMMA = 25
    @State var clientsLife = 12
    
    var body: some View {
        VStack{
            
            VStack{
                Image(systemName: MenuTabView.insuranceIcon)
                    .foregroundColor(Color(ConstantsColors.colorTechMarron))
                    .font(.system(size: 50))
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color(ConstantsColors.colorWhiteCustom)))
                
                Text(ConstantsStrings.labelHeader)
                    .font(.system(size: 25))
                    .font(.system(.title, design: .rounded))
                    .fontWeight(.black)
                    .foregroundColor(Color(ConstantsColors.colorWhiteCustom))
                
            }

            HStack{
                VStack{
                    Text(ConstantsStrings.insuranceMMA)
                        .foregroundColor(Color(ConstantsColors.colorWhiteCustom))
                        .font(.system(size: 18))
                        .font(.system(.headline, design: .rounded))
                        .fontWeight(.black)
                    
                    Image(systemName: Icons.insuranceClients)
                        .foregroundColor(Color(ConstantsColors.colorTechMarron))
                        .font(.system(size: 45))
                        .overlay(
                        Text(String(clientsMMA))
                            .foregroundColor(Color(ConstantsColors.colorWhiteCustom))
                            .font(.system(size: 20))
                            .font(.system(.headline))
                            .fontWeight(.medium)
                            
                        )
                    
                }
                
                VStack{
                    Circle()
                        .fill(Color(ConstantsColors.colorWhiteCustom))
                        .shadow(radius: 50)
                        .overlay(
                            VStack{
                                Text("Total")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 25))
                                    .font(.system(.headline, design: .rounded))
                                    .fontWeight(.black)
                                
                                Text(String(clientsMMA + clientsLife))
                                    .foregroundColor(.gray)
                                    .font(.system(size: 25))
                                    .font(.system(.headline, design: .rounded))
                                    .fontWeight(.black)
                            }
                        )
                }
                .frame(width: 130, height: 90)
                
                
                VStack{
                    Text(ConstantsStrings.insuranceLife)
                        .foregroundColor(Color(ConstantsColors.colorWhiteCustom))
                        .font(.system(size: 18))
                        .font(.system(.headline, design: .rounded))
                        .fontWeight(.black)
                    
                    Image(systemName: Icons.insuranceClients)
                        .foregroundColor(Color(ConstantsColors.colorTechMarron))
                        .font(.system(size: 45))
                        .overlay(
                        Text(String(clientsLife))
                            .foregroundColor(Color(ConstantsColors.colorWhiteCustom))
                            .font(.system(size: 20))
                            .font(.system(.headline))
                            .fontWeight(.medium)
                            
                        )
                }
            }
            
            Button(action: {print("Test")}){
                HStack(spacing: 1){
                    
                    Image(systemName: Icons.editButton)
                        .foregroundColor(Color(ConstantsColors.colorWhiteCustom))
                        .font(.system(size: 25))
                        .font(.system(.caption, design: .rounded))
                        .fontWeight(.medium)
                    
                    Text(ConstantsStrings.editButton)
                        .foregroundColor(Color(ConstantsColors.colorWhiteCustom))
                        .font(.system(size: 18))
                        .font(.system(.caption, design: .rounded))
                        .fontWeight(.medium)
                }
                //.padding(5)
                .frame(maxWidth: .infinity, maxHeight: 30)
                .background(Color(ConstantsColors.colorTechMarron))
                .cornerRadius(20)
            }
            .offset(x: 0, y: 20)
            
        }
        .frame(maxWidth: 300)
        .padding(30)
        .background(Color(ConstantsColors.colorTechBlue2))
        .cornerRadius(20)
   
    }
    
    
    
}

struct InsuranceHome_Previews: PreviewProvider {
    static var previews: some View {
        InsuranceHome()
    }
}
