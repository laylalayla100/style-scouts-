//
//  asia.swift
//  style scouts!!
//
//  Created by layla hunter on 7/20/23.
//

import SwiftUI

struct asia: View {
    var body: some View {
        VStack {
            Text("ASIA")
            Image("asia")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text("Placeholder")
        }

    }
}

struct asia_Previews: PreviewProvider {
    static var previews: some View {
        asia()
    }
}
