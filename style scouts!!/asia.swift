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
            ScrollView{
                Text("ASIA")
                Image("asia")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Text("The culture in Asian country has a deep influence in the current day fashion. And some traditional garments such as kimonos, sarees, hanboks, and cheongsams inspired designers a lot and sometime desigers fused the traitional element with modern element and create their unique style. Asian Fashion often pays great attention to detail through exquisite craftsmanship, intricate embroidery, beadwork, and other embellishments. Asian countries like Japan and South Korea have a strong influence on global street fashion and pop culture. Asian street fashion often features bold and eclectic styles, experimental combinations, and unique accessories.")
                    .padding([.top, .leading, .trailing])
                    .lineSpacing(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
            }
        }

    }
}

struct asia_Previews: PreviewProvider {
    static var previews: some View {
        asia()
    }
}
