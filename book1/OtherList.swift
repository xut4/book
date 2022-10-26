//
//  OtherList.swift
//  book
//
//  Created by tung on 2022/10/22.
//

import SwiftUI

struct OtherList: View {
    var body: some View {
        List{
            NavigationLink(destination:
                            PersonIntr(people:intros[1][0])
                           , label: {
                            PersonRow(people:intros[1][0])
                           })
            NavigationLink(destination:
                            PersonIntr(people:intros[1][1])
                           , label: {
                            PersonRow(people:intros[1][1])
                           })
            NavigationLink(destination:
                            PersonIntr(people:intros[1][2])
                           , label: {
                            PersonRow(people:intros[1][2])
                           })
            NavigationLink(destination:
                            PersonIntr(people:intros[1][3])
                           , label: {
                            PersonRow(people:intros[1][3])
                           })
            NavigationLink(destination:
                            PersonIntr(people:intros[1][4])
                           , label: {
                            PersonRow(people:intros[1][4])
                           })
            NavigationLink(destination:
                            PersonIntr(people:intros[1][5])
                           , label: {
                            PersonRow(people:intros[1][5])
                           })
            NavigationLink(destination:
                            PersonIntr(people:intros[1][6])
                           , label: {
                            PersonRow(people:intros[1][6])
                           })
        }
    }
}

struct OtherList_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            OtherList()
        }
    }
}
