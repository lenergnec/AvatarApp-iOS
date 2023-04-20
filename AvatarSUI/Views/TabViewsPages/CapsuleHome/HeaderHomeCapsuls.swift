//
//  HeaderHomeCapsuls.swift
//  AvatarSUI
//
//  Created by Lener Gonzalez on 6/4/23.
//

import SwiftUI

struct HeaderHomeCapsuls: View {
    
    var body: some View {
        
        VStack(alignment: .leading){
            
            Text(ConstantsStrings.patientCard)
                .font(.system(.largeTitle, design: .rounded))
                .fontWeight(.black)
            Text(ConstantsStrings.headerPatientCard)
                .font(.system(.headline, design: .rounded))
                .fontWeight(.black)
            .foregroundColor(.secondary)    }
    }
    
    struct HeaderHomeCapsuls_Previews: PreviewProvider {
        static var previews: some View {
            HeaderHomeCapsuls()
        }
    }
}
