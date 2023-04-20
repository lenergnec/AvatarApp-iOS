//
//  ClinicsHome.swift
//  AvatarSUI
//
//  Created by Lener Gonzalez on 6/4/23.
//

import SwiftUI

struct ClinicsHome: View {
    
    @State var activeClinics = 5
    @State var inactiveClinics = 3
    
    var body: some View {
        
        VStack{
            VStack(spacing: 10){
                
                Text(ConstantsStrings.clinicHome)
                    .font(.system(size: 25))
                    .font(.system(.title, design: .rounded))
                    .fontWeight(.black)
                    .foregroundColor(Color(ConstantsColors.colorTechBlue2))
                
                HStack(spacing: 5){
                    Image(systemName: Icons.clinicsIcon)
                        .foregroundColor(Color(ConstantsColors.colorTechBlue2))
                        .font(.system(size: 27))
                        .padding(1)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color(ConstantsColors.colorTechMarron)))
                    Text(String(activeClinics))
                        .font(.system(size: 40, weight: .heavy, design: .rounded))
                        .foregroundColor(.green)
                    
                }
                Text(ConstantsStrings.patientCardActive)
                    .font(.headline)
                    .foregroundColor(.blue)
                
                Text(ConstantsStrings.patientCardInactive + " " + String(inactiveClinics))
                    .font(.system(.caption, design: .rounded))
                    .fontWeight(.bold)
                    .foregroundColor(Color(ConstantsColors.colorWhiteCustom))
                    .padding(5)
                    .background(.red)
                    .cornerRadius(10)
            }
            .frame(maxWidth: 110)
            .padding(30)
            .background(Color(.white))
            .cornerRadius(15)
            .overlay(
                RoundedRectangle(cornerRadius: 15)
                    .stroke(Color(ConstantsColors.colorTechBlue)))
            
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
                .frame(width: 100)
                .background(Color(ConstantsColors.colorTechBlue2))
                .cornerRadius(20)
            }
            .offset(x: 0, y: -20)
            
        }
    }
}

struct ClinicsHome_Previews: PreviewProvider {
    static var previews: some View {
        ClinicsHome()
    }
}
