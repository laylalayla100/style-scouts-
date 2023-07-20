//
//  asia.swift
//  style scouts!!
//
//  Created by layla hunter on 7/20/23.
//

import SwiftUI

struct africa: View {
    var body: some View {
        VStack {
            Text("AFRICA")
        
            Image("africa")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text("Placeholder")
        }

    }
}

struct africa_Previews: PreviewProvider {
    static var previews: some View {
        africa()
    }
}
