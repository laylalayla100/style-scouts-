//
//  asia.swift
//  style scouts!!
//
//  Created by layla hunter on 7/20/23.
//

import SwiftUI

struct europe: View {
    var body: some View {
        VStack {
            Text("EUROPE")
        
            Image("europe")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text("Placeholder")
        }

    }
}

struct europe_Previews: PreviewProvider {
    static var previews: some View {
        europe()
    }
}
