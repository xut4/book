//
//  badList.swift
//  book
//
//  Created by tung on 2022/10/22.
//

import SwiftUI

struct BadList: View {
    var body: some View {
        List{
            Section(header: Text("無印") ){
                ForEach(intros[2].indices){(item) in
                    NavigationLink(destination:
                        PersonIntr(people:intros[2][item])
                    , label: {
                    PersonRow(people:intros[2][item])
                    })
                }
            }
            Section(header: Text("黑暗戀人") ){
                ForEach(intros[3].indices){(item) in
                    NavigationLink(destination:
                        PersonIntr(people:intros[3][item])
                    , label: {
                    PersonRow(people:intros[3][item])
                    })
                }
            }
            Section(header: Text("黑暗姊妹花") ){
                ForEach(intros[4].indices){(item) in
                    NavigationLink(destination:
                        PersonIntr(people:intros[4][item])
                    , label: {
                    PersonRow(people:intros[4][item])
                    })
                }
            }
            Section(header: Text("Pure") ){
                ForEach(intros[5].indices){(item) in
                    NavigationLink(destination:
                        PersonIntr(people:intros[5][item])
                    , label: {
                    PersonRow(people:intros[5][item])
                    })
                }
            }
            Section(header: Text("御使") ){
                ForEach(intros[6].indices){(item) in
                    NavigationLink(destination:
                        PersonIntr(people:intros[6][item])
                    , label: {
                    PersonRow(people:intros[6][item])
                    })  
                }
            }
        }
    }
    
}

struct BadList_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            BadList()
        }
    }
}
