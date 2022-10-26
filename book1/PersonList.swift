//
//  PersonList.swift
//  book1
//
//  Created by tung on 2022/10/22.
//

import SwiftUI

struct PersonList: View {
    var body: some View {
            List {
                NavigationLink(destination:
                    PersonIntr(people:intros[0][0])
                , label: {
                    PersonRow(people:intros[0][0])
                })
                NavigationLink(destination:
                    PersonIntr(people:intros[0][1])
                , label: {
                    PersonRow(people:intros[0][1])
                })
                NavigationLink(destination:
                                PersonIntr(people:intros[0][2])
                , label: {
                    PersonRow(people:intros[0][2])
                })
                NavigationLink(destination:
                    PersonIntr(people:intros[0][3])
                , label: {
                    PersonRow(people:intros[0][3])
                })
                NavigationLink(destination:
                    PersonIntr(people:intros[0][4])
                , label: {
                    PersonRow(people:intros[0][4])
                })
                NavigationLink(destination:
                    PersonIntr(people:intros[0][5])
                , label: {
                    PersonRow(people:intros[0][5])
                })
                NavigationLink(destination:
                    PersonIntr(people:intros[0][6])
                , label: {
                    PersonRow(people:intros[0][6])
                })
                NavigationLink(destination:
                    PersonIntr(people:intros[0][7])
                , label: {
                    PersonRow(people:intros[0][7])
                })
            }
        }
}

struct PersonList_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            PersonList()
            
        }
    }
}
