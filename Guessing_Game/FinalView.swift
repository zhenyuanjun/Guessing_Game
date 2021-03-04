//
//  FinalView.swift
//  Guessing_Game
//
//  Created by 陳元浚 on 2021/3/3.
//

import SwiftUI


struct FinalView : View {
    var score : Int
    var body: some View {
        VStack{
            Text("恭喜你得到的分數是 : \(score)")
            .onAppear(){
                SaveScore(quiz: "myQuiz1", score: self.score)
            }
            Text("點選左上角重新作答")
        }
    }
}
