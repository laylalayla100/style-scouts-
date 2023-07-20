//
//  america.swift
//  style scouts!!
//
//  Created by layla hunter on 7/20/23.
//

import SwiftUI

struct america: View {
    var body: some View {
        
        VStack {
            
            Text("AMERICA")
            Image("emma")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text("American fashion: Dress simply, naturally, uncomplicated. Characterized by jeans, checkered shirts, T-shirts with interesting prints, free cut dresses. Dresses: they are free simple silhouettes made of discreet materials and with a minimum of decorations.")
        }
    
    }
}
struct america_Previews: PreviewProvider {
    static var previews: some View {
        america()
    }
}
