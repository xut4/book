//
//  ContentView.swift
//  book
//
//  Created by tung on 2022/10/21.
//

import SwiftUI
struct ContentView: View {
    var body: some View {
        NavigationView{
        VStack{
            NavigationLink(
                destination: PersonView(),
                label: {
                    Text("人物介紹") .font(.custom("Nagurigaki-Crayon", size: 70))
                        .fontWeight(.black)
                        .foregroundColor(Color("c"))
                        .frame(width: 400.0, height: 50.0).background(Color("AccentColor"))
                        .background(Image("all").resizable().scaledToFill().opacity(0.3)).padding(.vertical, 50.0)
                }
            )
            NavigationLink(
                destination:StoryView()
                           , label: {
                            Text("劇情簡介") .font(.custom("Nagurigaki-Crayon", size: 70))
                                .fontWeight(.black)
                                .foregroundColor(Color("c"))
                                .frame(width: 400.0, height: 50.0).background(Color("AccentColor"))
                                .background(Image("all").resizable().scaledToFill().opacity(0.3)).padding(.vertical, 50.0)}
            )
            NavigationLink(
                destination:SongView()
                           , label: {
                            Text("歌曲列表") .font(.custom("Nagurigaki-Crayon", size: 70))
                                .fontWeight(.black)
                                .foregroundColor(Color("c"))
                                .frame(width: 400.0, height: 50.0).background(Color("AccentColor"))
                                .background(Image("all").resizable().scaledToFill().opacity(0.3)).padding(.vertical, 50.0)})
            NavigationLink(
                destination:ElseView()
                           , label: {
                            Text("其他") .font(.custom("Nagurigaki-Crayon", size: 70))
                                .fontWeight(.black)
                                .foregroundColor(Color("c"))
                                .frame(width: 400.0, height: 50.0).background(Color("AccentColor"))
                                .background(Image("all").resizable().scaledToFill().opacity(0.3)).padding(.vertical, 50.0)})
        }.navigationTitle("主頁").padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
