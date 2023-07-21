//
//  news1.swift
//  style scouts!!
//
//  Created by KWOK LAM on 7/21/23.
//

import SwiftUI

    

struct news1: View {
    var body: some View {
        ScrollView{
            ZStack{
                Color(red: 243/255, green: 231/255, blue: 203/255)
                VStack{
                    Text("Fashion People in Paris Will Wear These Basics Over Others in 2023")
                        .font(.title3)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .frame(maxWidth:.infinity)
                    
                    
                    Image("newpic1")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 350.0)
                    Text("by BOBBY SCHUESSLER")
                        .font(.caption)
                        .foregroundColor(Color.gray)
                    Spacer()
                        .frame(height: 20.0)
                    Text("French women are known for their effortless approach to style. You know, that je ne sais quoi. As a result, we routinely turn to fashion people in Paris for guidance on key pieces to try that could enhance those everyday looks. And given that no-fuss is often synonymous with the Parisian style set, basics often make up many of their desirable looks. On that note, after scrolling through the feeds of some of the chicest women based in Paris, it became evident that there are a few key basics the majority wear on repeat. And we bet they'll continue to lean into said basics over others in 2023 given the versatile and modern qualities.Below, you'll get a sense of the basics that will be most popular among Parisians this year.")
                        .padding(.horizontal)
                        .lineSpacing(10.0)
                    Spacer()
                        .frame(height: 30.0)
                    Text("1. Striped Sweater")
                        .fontWeight(.semibold)
                        .font(.headline)
                        .multilineTextAlignment(.leading)
                    Image("french1")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 350.0)
                    Spacer()
                    Text("As we showcased here, basically everyone in France owns some type of stripe sweater. It makes sense given that the ideal style feels low-key yet polished.")   .padding(.horizontal)
                        .lineSpacing(10.0)
                }
                .padding(.vertical)
                
            }
        }
    }
}

struct news1_Previews: PreviewProvider {
    static var previews: some View {
        news1()
    }
}
