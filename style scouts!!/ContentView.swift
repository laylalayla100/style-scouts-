//
//  ContentView.swift
//  style scouts!!
//
//  Created by layla hunter on 7/20/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                
                Text("Style Scout:")
                    .font(.title)
                Text("The Global Trend Explorer")
                Image("world")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Text("Click A County to Learn More about its fashion!")
                
                
                NavigationLink(destination: america()) {
                    Text("North America")
                }
                NavigationLink(destination: asia()) {
                    Text("Asia")
                }
                
                NavigationLink(destination: europe()) {
                    Text("Europe")
                }
                NavigationLink(destination: africa()) {
                    Text("Africa")
                }
                NavigationLink(destination: samerica()) {
                    Text("South America")
                }
            }
            .padding()
        }
    }
    
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
