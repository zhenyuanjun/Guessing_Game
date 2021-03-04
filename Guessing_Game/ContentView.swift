//
//  ContentView.swift
//  Guessing_Game
//
//  Created by 陳元浚 on 2021/3/3.
//

import SwiftUI

struct ContentView: View {
    @State var score = 0
    
    var body: some View {
        NavigationView{
            VStack(spacing: 30){
                
                Text("歡迎來到音樂猜燈謎")
                
                //button to start the quiz
                NavigationLink(destination: Quiz1()) {
                    Text("開始測驗")
                }
                HStack{
                    //display your score
                    Text("最後分數為 : \(self.score) / 10")
                        .onAppear(){ //refresh score
                            self.score = LoadScore(quiz: "myQuiz1")
                    }
                }
            }
            .navigationTitle("音樂猜燈謎")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
