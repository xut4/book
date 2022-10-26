//
//  SwiftUIView.swift
//  book1
//
//  Created by User05 on 2022/10/24.
//

import SwiftUI

let songs = [
    ["https://www.youtube.com/watch?v=94vfJT_01kw","真珠美人魚 七彩的微風"],
    ["https://www.youtube.com/watch?v=laXgZf9-kPI","露亞  戀愛是什麼"],
    ["https://www.youtube.com/watch?v=k3n2WbmNHsU","麗娜  star jewel"],
    ["https://www.youtube.com/watch?v=fbbFNDt2diU","波音  ever blue"],
    ["https://www.youtube.com/watch?v=UU56qOVVWK4","香蓮 極光的風"],
    ["https://www.youtube.com/watch?v=WhXu7gacs3M","星羅 Birth of Love"],
    ["https://www.youtube.com/watch?v=B0Q74vFIM1o","沙羅 Return to the sea"],
    ["https://www.youtube.com/watch?v=8OTL-dwTTg8","米兒 看不見的明天"],
    ["https://www.youtube.com/watch?v=9hL0xt_tWOA","蝙蝠小姐 黑暗的羽翼"],
    ["https://www.youtube.com/watch?v=CSTJD0g2X7k","米凱爾 懷抱著羽翼"],
    ["https://www.youtube.com/watch?v=PSe1Y3xtk_k","黑暗姐妹花 黑暗的巴洛克"],
    ["https://www.youtube.com/watch?v=Dd2Q7A-vcPI","蘭花 花與蝴蝶之小夜曲"]
]
struct SongView: View {
    var body: some View {
        ScrollView(.vertical){
            ScrollView(.horizontal){
                HStack{
                    ForEach(1..<7) { item in
                        Image("珍珠\(item)")
                            .resizable()
                            .frame(height: 200.0)
                            .scaledToFit()
                    }
                }
            }
            Divider()
                .padding(.bottom)
            let columns = [GridItem(.adaptive(minimum: 150))]
            LazyVGrid(columns: columns) {
                ForEach(songs.indices, id: \.self) { item in
                    Link(destination: URL(string: songs[item][0])!, label: {
                        VStack {
                            Image(songs[item][1])
                                .resizable()
                                .scaledToFill()
                                .frame(width: 200.0, height: 200)
                                .clipped()
                            Text(songs[item][1])
                        }
                    }
                    )
                }
            }
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SongView()
    }
}
