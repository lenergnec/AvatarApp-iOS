//
//  Home.swift
//  AvatarSUI
//
//  Created by Lener Gonzalez on 4/4/23.
//

import SwiftUI

struct TabMenu: View {
    
    @State private var pageSelection = 0
    var body: some View {
        
        TabView(selection: $pageSelection){
            
            
            
            HStack{
                
                VStack(spacing:-5){
                    HeaderHomeCapsuls()
                    HStack{
                       PatientsHome()
                        ClinicsHome()
                    }
                    .padding()
                    
                    InsuranceHome()
                }
                
                //pageSelection = 0
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            .background(Color(ConstantsColors.colorWhiteCustom))
            .tabItem{
                Image(systemName: MenuTabView.homeIcon)
                Text(MenuTabView.homeTab)
            }
            .padding(.bottom, 1.5)
            
            
            HStack{
                Text("Operations")
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            .background(Color(ConstantsColors.colorWhiteCustom))
            .tabItem{
                Image(systemName: MenuTabView.operationIcon)
                Text(MenuTabView.operationsTab)
            }
            .padding(.bottom, 1.5)
            
            HStack{
                Text("BIO")
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            .background(Color(ConstantsColors.colorWhiteCustom))
            .tabItem{
                Image(systemName: MenuTabView.bioNewClientIcon)
                Text(MenuTabView.bioNewClientTab)
            }
            .padding(.bottom, 1.5)
        }
        .accentColor(Color(ConstantsColors.colorTechBlue2))
    }
    
    
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        TabMenu()
    }
}
