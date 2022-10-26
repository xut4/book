//
//  StoryView.swift
//  book
//
//  Created by tung on 2022/10/23.
//

import SwiftUI

struct StoryView: View {
    var body: some View {
        ScrollView(.vertical){
            VStack {
                Text("一些").font(.body)+Text("感情線").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).foregroundColor(.pink)
                
                TabView {
                    ForEach(0..<10) { item in
                        Image("couple\(item)")
                            .resizable()
                            .scaledToFit()
                    }
                }
                .tabViewStyle(PageTabViewStyle())
                .frame(height: 300)
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
                Text("很久以前在遠古時，海底王族帕噠拉薩族為了征服海洋與陸地與人魚族展開激烈的戰爭，因此海洋女神阿克安·雷芝娜為了恢復海洋與陸地的和平用盡所有力量封印帕噠拉薩族，但是帕噠拉薩族的封印在長年後因不明人物的介入而被解除，帕噠拉薩的首領卡克特（凱特）率領水妖們侵略並捉走其中幾位美人魚公主。唯有少數的美人魚公主帶領人魚子民逃難到陸地和其他未被侵略的人魚國度尋求庇護。\n")
                Text("故事的主角露亞是來自北太平洋人魚國度的美人魚公主，七年前為了拯救她所初戀的少年將自己的真珠留給他。直至七年後露亞為了尋回真珠化為人類來到陸地再次遇上這位少年——堂本海斗，但是如果美人魚將自己的身分告訴人類的話就會變成泡沫，因此露亞為了戀情努力想讓海斗察覺自己的真實身分。當露亞找回真珠後在陸地接連遇上因國家被摧毀逃到陸地的南大西洋與北大西洋的美人魚公主——波音和莉娜。露亞一行人為了再次恢復海洋世界的秩序必須聚集七位美人魚公主喚醒阿克安·雷芝娜女神。她們在水妖不斷的襲擊下使用真珠的力量變身以歌聲的力量對抗敵人的同時尋找其他的美人魚公主們，但在這過程中露亞一行人發現帕噠拉薩族威脅海洋世界的原因與一位下落不明的美人魚公主有關，而且海斗的身上也隱藏著不為人知的重大祕密……\n")
            }
        }
        .navigationBarTitle("劇情簡介")
        .transition(/*@START_MENU_TOKEN@*/.slide/*@END_MENU_TOKEN@*/)
    }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView()
    }
}
