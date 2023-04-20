//
//  HomeClinics.swift
//  AvatarSUI
//
//  Created by Lener Gonzalez on 6/4/23.
//

import SwiftUI
import Charts

struct HomeClinics: View {
    var body: some View {
       
        VStack{
            Chart(data, id: \.state) { item in
                BarMark(x: .value("Status", item.state),
                        y: .value("Value", item.value))
                
            }
            
            .foregroundColor(Color(ConstantsColors.colorTechBlue))
            .frame(height: 200)
            
            HStack{
                VStack(alignment: .center){
                    Text(ConstantsStrings.clinicHome)
                        .font(.system(.largeTitle, design: .rounded))
                        .fontWeight(.black)
                        .foregroundColor(.primary)
                        .lineLimit(3)
                        .minimumScaleFactor(0.5)
                    Text(ConstantsStrings.chartlabelClinic)
                        .font(.headline)
                        .foregroundColor(.secondary)
                    
                }
            }
            .padding()
        }
        .padding()
        .cornerRadius(25)
        .overlay(
            RoundedRectangle(cornerRadius: 25)
                .stroke(Color(ConstantsColors.colorTechBlue).opacity(0.8)))
        .padding([.top, .horizontal])
        
        
    }
    
    struct clinicChart{
        let state: String
        let value: Int
    }
    
    let data: [clinicChart] =
    [
        .init(state: "Active", value: 3),
        .init(state: "Inactive", value: 0)
    ]
    }


struct HomeClinics_Previews: PreviewProvider {
    static var previews: some View {
        HomeClinics()
    }
}
