//
//  asia.swift
//  style scouts!!
//
//  Created by layla hunter on 7/20/23.
//
import SwiftUI

struct TopBarView: View {
    let sectionTitles = ["Basic info", "Brands", "Designers", "News"]
    @State private var selectedSectionIndex = 0
    
    var body: some View {
        NavigationView {
            GeometryReader { geo in
                VStack(spacing: 0){
                    ZStack {
                        Color(red:32/255, green:42/255, blue:68/255)
                            .ignoresSafeArea()
                            .frame(height: geo.size.height * 0.1)
                        
                        VStack(spacing: 0) {
                            HStack{
                                Text("Europe:")
                                    .fontWeight(.thin)
                                    .font(.largeTitle)
                                    .multilineTextAlignment(.leading)
                                    .foregroundColor(Color(red: 243/255, green: 231/255, blue: 203/255))

                                Text("French")
                                    .font(.largeTitle)
                                    .fontWeight(.bold)
                                    .multilineTextAlignment(.leading)
                                    .padding(.horizontal)
                                    .background(Color(red:32/255, green:42/255, blue:68/255))
                                    .foregroundColor    (Color(red: 243/255, green: 231/255, blue: 203/255))
                                
                            }
                        }
                    }
                    
                        HStack(spacing: 0) {
                            
                            ForEach(sectionTitles.indices, id: \.self) { index in
                                Spacer()
                                Button(action: {
                                    selectedSectionIndex = index
                                }) {
                                    Text(sectionTitles[index])
                                        .foregroundColor(index == selectedSectionIndex ? .white: (Color(red: 220/255, green:184/255, blue: 135/255)))
                                }
                                .padding()
                            }
                        }
                        .frame(maxWidth: .infinity)
                        .background(Color(red:32/255, green:42/255, blue:68/255))
                    Spacer().frame(height: 50)
                    
                getContent(for: selectedSectionIndex)
                        .padding(.horizontal, 20)
                    Spacer()
                }
                .background(Color(red: 243/255, green: 231/255, blue: 203/255))
                // Set the background color to beige
                
                
            }
            
            .navigationBarHidden(true)
            
            
        }
        
    }
        
    @ViewBuilder
    private func getContent(for index: Int) -> some View {
            switch index {
            case 0:
                BasicInfoView()
            case 1:
                BrandView()
            case 2:
                DesignerView()
            case 3:
                NewsView()
            default:
                EmptyView()
        }
    }
}
struct BasicInfoView: View {
    
    var body: some View {
        ScrollView{
            VStack(spacing:20){
                Image("europe")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:300)
                
                Text("French style is characterized by its elegant simplicity or sophistication hiding under simplicity. It mainly use basic discreet colors with bright accents in little details")
                    .multilineTextAlignment(.center)
                    .frame(maxWidth:.infinity)
                    .background(
                        GeometryReader { geo in
                            Color.white
                                .scaleEffect(x: 1.15, y: 1.10) // Increase the scale for both x and y directions
                                .frame(width: geo.size.width, height: geo.size.height)
                                .position(x: geo.size.width/2, y: geo.size.height/2)
                        }
                    )
                
                
                Text("Basic discreet colors: white, black, gray, beige, navy, and more")
                    .multilineTextAlignment(.center)
                    .frame(maxWidth:.infinity)
                    .background(
                        GeometryReader { geo in
                            Color.white
                                .scaleEffect(x: 1.15, y: 1.10) // Increase the scale for both x and y directions
                                .frame(width: geo.size.width, height: geo.size.height)
                            .position(x: geo.size.width/2, y: geo.size.height/2)                            }
                    )
                
                Text(" Little detail use for accent: a beret, a scarf, lipstick, and more")
                    .multilineTextAlignment(.center)
                    .frame(maxWidth:.infinity)
                    .background(
                        GeometryReader { geo in
                            Color.white
                                .scaleEffect(x: 1.15, y: 1.10) // Increase the scale for both x and y directions
                                .frame(width: geo.size.width, height: geo.size.height)
                                .position(x: geo.size.width/2, y: geo.size.height/2)
                        }
                    )
                
                Text("Color use for accent: often red, crimson. ")
                    .multilineTextAlignment(.center)
                    .frame(maxWidth:.infinity)
                    .background(
                        GeometryReader { geo in
                            Color.white
                                .scaleEffect(x: 1.15, y: 1.3) // Increase the scale for both x and y directions
                                .frame(width: geo.size.width, height: geo.size.height)
                                .position(x: geo.size.width/2, y: geo.size.height/2)
                        }
                    )
            }
            .lineSpacing(5.0)
            .padding()
            .background(Color(red: 235/255, green:220/255, blue: 155/255))
        }
    }
}

struct BrandView: View {
    var body: some View {
        ScrollView{
            VStack{
                Text("Christian Dior")
                    .font(.title)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .frame(maxWidth:.infinity)
                    .foregroundColor(Color(red: 243/255, green: 231/255, blue: 203/255))                   .background(
                        GeometryReader { geo in
                            Color(red:32/255, green:42/255, blue:68/255)
                                .scaleEffect(x: 1.15, y: 1.10) // increase the scale for both x and y directions
                                .frame(width: geo.size.width, height: geo.size.height)
                                .position(x: geo.size.width/2, y: geo.size.height/2)
                        }
                    )
                VStack{
                    Image("dior")
                        .resizable()
                        .scaledToFit()
                        .frame(height:200)
                        .alignmentGuide(.trailing){ _ in 0}
                
                    
                    Text("Dior is a European multinational luxury fashion house founded by Christian Dior in the 20th century. The brand is known for revolutionizing womenswear with the \"New Look\" silhouette, which emphasized women's hips and busts. Dior is owned by LVMH and has been dabbling in sustainable fashion. The brand has evolved into bold, feminist, and powerful designs. Dior sneakers and perfume are among the best luxury items in the world.")
                        .font(.body)
                        .multilineTextAlignment(.leading)
                }
                Spacer()
                    .frame(height: 50.0)
    
                Text("Coco Chanel")
                    .font(.title)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .frame(maxWidth:.infinity)
                    .foregroundColor(Color(red: 243/255, green: 231/255, blue: 203/255))
                    .background(
                        GeometryReader { geo in
                            Color(red:32/255, green:42/255, blue:68/255)                                .scaleEffect(x: 1.15, y: 1.10) // Increase the scale for both x and y directions
                                .frame(width: geo.size.width, height: geo.size.height)
                            .position(x: geo.size.width/2, y: geo.size.height/2)                            }
                    )
                VStack{
                    Image("coco")
                        .resizable()
                        .scaledToFit()
                        .frame(width:250, height:200)
                        .alignmentGuide(.trailing){ _ in 0}
                    
                    Text("Chanel is a French luxury fashion house founded in 1910 by Coco Chanel in Paris12. The company produces and sells perfumes, cosmetics, clothes, jewelry and other fashion goods23. The company's origins can be traced back to 1870, when Ernest Wertheimer bought a stake in a theatrical makeup company called Bourjois4. Chanel is now one of the most recognized and influential brands in the world.")
                        .font(.body)
                        .multilineTextAlignment(.leading
                        )
                }
                Spacer()
                    .frame(height: 50.0)

                
                Text("Louis Vuitton")
                    .font(.title)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .frame(maxWidth:.infinity)
                    .foregroundColor(Color(red: 243/255, green: 231/255, blue: 203/255))
                    .background(
                        GeometryReader { geo in
                            Color(red:32/255, green:42/255, blue:68/255)                                .scaleEffect(x: 1.15, y: 1.10) // Increase the scale for both x and y directions
                                .frame(width: geo.size.width, height: geo.size.height)
                                .position(x: geo.size.width/2, y: geo.size.height/2)
                        }
                    )
                VStack{
                    Image("louis")
                        .resizable()
                        .scaledToFit()
                        .frame(width:250, height:200)
                        .alignmentGuide(.trailing){ _ in 0}
                        .foregroundColor(Color(red: 243/255, green: 231/255, blue: 203/255))
                    Spacer()
                    
                    Text("The Louis Vuitton label was founded by Vuitton in 1854 on Rue Neuve des Capucines in Paris, France.Louis Vuitton is a luxury brand that specializes in leather goods, particularly its renowned monogrammed handbags. The brand is esteemed for its craftsmanship, quality, and the iconic LV logo.")
                        .font(.body)
                        .multilineTextAlignment(.leading
                        )
                }
                Spacer()
                    .frame(height: 50.0)

                
                Text(" ")
                    .multilineTextAlignment(.center)
                    .frame(maxWidth:.infinity)
                    .background(
                        GeometryReader { geo in
                            Color(red:32/255, green:42/255, blue:68/255)                                .scaleEffect(x: 1.15, y: 1.3) // Increase the scale for both x and y directions
                                .frame(width: geo.size.width, height: geo.size.height)
                                .position(x: geo.size.width/2, y: geo.size.height/2)
                        }
                    )
            }
            .lineSpacing(5.0)
            .padding()
        }
    }
}

struct DesignerView: View {
@State private var expand = false
    
    var body: some View {
        ScrollView{
            VStack{
                Text("Christian Dior")
                    .font(.title)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .frame(maxWidth:.infinity)
                    .foregroundColor(Color(red: 243/255, green: 231/255, blue: 203/255))

                    .background(
                        GeometryReader { geo in
                            Color(red:32/255, green:42/255, blue:68/255)                                .scaleEffect(x: 1.15, y: 1.10) // increase the scale for both x and y directions
                                .frame(width: geo.size.width, height: geo.size.height)
                                .position(x: geo.size.width/2, y: geo.size.height/2)
                        }
                    )
                VStack{
                    Image("christian")
                        .resizable()
                        .scaledToFit()
                        .frame(width:300)
                        .alignmentGuide(.trailing){ _ in 0}

                    Text("Christian Dior was a famous and influential French fashion designer, and created the brand Christian Dior. He was")
                        .font(.body)
                        .multilineTextAlignment(.leading)

                    if expand {
                                            Text("born in 1905 in Granville. When he was a boy, he was passionate in art and found interest in architecture. Dior’s family had hopes he would become a diplomat. Although he expressed an interest in becoming an architect, he was submitted to pressure from his father, and enrolled at the École des Sciences Politiques to study political science. However, with the desire to be involved in artistic activities and his talent, he traded his sketches to people for ten cents each. Seeing the talent his son had, his father gave financial support to Dior to open a small gallery with his friends. Unfortunately, in 1931, the gallery was forced to closed, after his mother and brother die and the family business suffered great loss due to the Great Depression. After the closing of his gallery, he continue selling his sketches until he found a job  illustrating the magazine Figaro Illustré. Several years later, he was hired as a design assistant by Paris couturier Robert Piguet. However, due to the begin of World War II, he went to serve the military and continue his career after the war. On December 16, 1946, he founded his label under his name with the support by Marcel Boussac. He introduced voluptuous designs. His dress designs broke the barrier of rigidness and flare, give women the perfect feminine and curvaceous look. He gave back glamour and beauty to women starved of both during the war.")
                                                .font(.body)

                                            Button("Read Less") {
                                                expand = false
                                            }
                                            .padding(.top, 4)
                                            .foregroundColor(.white)
                                            .buttonStyle(.borderedProminent)
                                            .tint((Color(red: 220/255, green:184/255, blue: 135/255)))

                                        } else {
                                            Button("Read More") {
                                                expand = true
                                            }
                                            .padding(.top, 4)
                                            .foregroundColor(.white)
                                            .buttonStyle(.borderedProminent)
                                            .tint((Color(red: 220/255, green:184/255, blue: 135/255)))

                                        }
                        Spacer()
                    
                    
                }
                Spacer()
                    .frame(height: 50.0)
            }
            .lineSpacing(5.0)
            .padding()
        }
    }
}

struct NewsView: View {
    var body: some View {
        NavigationView{
        ScrollView{
            VStack{
                Image("newpic1")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 350.0)
                Text("by BOBBY SCHUESSLER")
                    .font(.caption)
                    .foregroundColor(Color.gray)
                Text("Fashion People in Paris Will Wear These Basics Over Others in 2023")
                    .font(.title3)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .frame(maxWidth:.infinity)
                    .padding(.bottom, 20)

                NavigationLink(destination: news1()) {
                    Text("Read More")
                        .foregroundColor(Color(red: 190/255, green:150/255, blue: 100/255))
                       
                    }
                }
            
            }
        }
    }
}

struct europe: View {
    var body: some View {
        VStack {
            TopBarView()
            Spacer()
        }
    }
}

struct europe_Previews: PreviewProvider {
    static var previews: some View {
        europe()
    }
}
