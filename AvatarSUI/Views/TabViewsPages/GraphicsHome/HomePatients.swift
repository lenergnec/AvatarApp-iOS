//
//  HomePatients.swift
//  AvatarSUI
//
//  Created by Lener Gonzalez on 4/4/23.
//

import SwiftUI
import Charts

struct HomePatients: View {
    
    var body: some View {
        VStack{
            Chart(data, id: \.state) { item in
                BarMark(x: .value("Status", item.state),
                        y: .value("Value", item.value))
                RuleMark(y: .value("Alert", 10))
                    .foregroundStyle(.red)
            }
            
            .foregroundColor(Color(ConstantsColors.colorTechBlue))
            .frame(height: 200)
            
            HStack{
                VStack(alignment: .center){
                    Text(ConstantsStrings.patientHome)
                        .font(.system(.largeTitle, design: .rounded))
                        .fontWeight(.black)
                        .foregroundColor(.primary)
                        .lineLimit(3)
                        .minimumScaleFactor(0.6)
                    Text(ConstantsStrings.chartLabelPatient)
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
    
    struct clientChart{
        let state: String
        let value: Int
    }
    
    let data: [clientChart] =
    [
        .init(state: "Active", value: 34),
        .init(state: "Inactive", value: 12)
    ]
    
    
    
    struct HomePatients_Previews: PreviewProvider {
        static var previews: some View {
            HomePatients()
        }
    }
}
