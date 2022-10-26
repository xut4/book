//
//  ElseView.swift
//  book1
//
//  Created by User05 on 2022/10/25.
//

import SwiftUI
import AVKit
struct ElseView: View {
    @State private var moveDistance: CGFloat = -80
    @State private var opacity: Double = 1
    var body: some View {
        ScrollView(.vertical){
            VStack{
                let url = Bundle.main.url(forResource: "bang", withExtension: "mp4")!
                VideoPlayer(player: AVPlayer(url: url))
                    .frame(height: 300.0)
                
                Text("change icon")
                    .font(.custom("Nagurigaki-Crayon", size: 30))
                    .foregroundColor(Color.pink)
                HStack{
                    Button(action: {
                        UIApplication.shared.setAlternateIconName(nil)
                    }) {
                        Image("icon0")
                            .iconStyle()
                        
                    }
                    Button(action: {
                        UIApplication.shared.setAlternateIconName("pinkC")
                    }) {
                        Image("icon1")
                            .iconStyle()
                    }
                }
                HStack{
                    Button(action: {
                        UIApplication.shared.setAlternateIconName("blueC")
                    }) {
                        Image("icon2")
                            .iconStyle()
                    }
                    Button(action: {
                        UIApplication.shared.setAlternateIconName("redC")
                    }) {
                        Image("icon3")
                            .iconStyle()
                    }
                }
                HStack {
                    Image("mermaid").resizable().frame(width: 70.0, height: 80.0).scaledToFit()
                    Image("music")
                        .resizable()
                        .frame(height: 120.0)
                        .scaledToFit()
                        .offset(x: moveDistance, y: 0)
                        .opacity(opacity)
                        .animation(.easeInOut, value: moveDistance)
                        .animation(.easeInOut, value: opacity)
                    Image("bad").resizable().frame(width: 100.0, height: 70.0).scaledToFit()
                }
                Button("sing!") {
                    moveDistance += 200
                }
                Button("onemore!") {
                    moveDistance -= 200
                }
            }.padding(.all, 70.0)
        }.background(ExtractedView())
    }
}

struct ElseView_Previews: PreviewProvider {
    static var previews: some View {
        ElseView()
    }
}

struct ExtractedView: View {
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [Color(red: 255/255, green:204/255, blue: 204/255), Color(red: 255/255, green:253/255, blue: 204/255)]), startPoint: .top, endPoint: .bottom)
    }
}
extension Image {
    func iconStyle() -> some View {
        self
            .resizable()
            .scaledToFill()
            .frame(width: 150, height: 150)
            .clipped()
            .cornerRadius(20)
    }
}
