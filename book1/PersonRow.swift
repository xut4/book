//
//  PersonRow.swift
//  book1
//
//  Created by tung on 2022/10/22.
//

import SwiftUI

struct PersonRow: View {
    let people: People
    
    var body: some View {
        HStack {
            Image(people.name)
                .resizable()
                .clipShape(Circle())
                .scaledToFill()
                .frame(width: 80, height: 80)
                .clipped()
            VStack(alignment: .leading) {
                Text(people.name).font(.title).fontWeight(.bold).foregroundColor(people.color)
            }
            Spacer()
        }
    }
    
    struct PersonRow_Previews: PreviewProvider {
        static var previews: some View {
            PersonRow(people:intros[0][0])
                .previewLayout(.sizeThatFits)
        }
    }
}
