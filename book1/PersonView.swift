//
//  PersonView.swift
//  book
//
//  Created by tung on 2022/10/22.
//

import SwiftUI

struct PersonView: View {
    var body: some View {
        TabView {
            PersonList()
                .tabItem {
                    Label("真珠美人魚"
                          , systemImage: "face.dashed.fill")
                }
            OtherList()
                .tabItem {
                    Label("配角"
                          , systemImage: "person.3.fill")
                }
            BadList()
                .tabItem {
                    Label("反派"
                          , systemImage: "person.crop.circle.fill.badge.xmark")
                }
        }
    }
}

struct PersonView_Previews: PreviewProvider {
    static var previews: some View {
        PersonView()
    }
}
