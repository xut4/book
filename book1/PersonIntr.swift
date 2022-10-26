//
//  PersonIntr.swift
//  book1
//
//  Created by tung on 2022/10/22.
//

import SwiftUI

struct PersonIntr: View {
    let people: People
    var body: some View {
        ScrollView(.vertical){
            VStack {
                Image(people.name)
                    .resizable()
                    .scaledToFit()
                Text(people.intro).foregroundColor(people.color)
                Spacer()
            }.padding().navigationTitle(people.name)
        }
        
    }
}

struct PersonIntr_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            PersonIntr(people: intros[0][0])
                .previewLayout(.sizeThatFits)
        }
    }
}
