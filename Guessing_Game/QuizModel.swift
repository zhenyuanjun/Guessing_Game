//
//  QuizModel.swift
//  Guessing_Game
//
//  Created by 陳元浚 on 2021/3/3.
//

import Foundation


//structure of single quiz
struct QuizModel  {
    var img : String?
    var text : String?
    var answer : [String]
    //specify what is the correct answer
    var correct : Int?
}

//NOTE : answer is an array , array start from 0, not from 1
   //if correct is the first answer , set --> correct = 0
   // if correct is the second answer , set --> correct = 1
   //...


//final quiz is an array of quizmodel
var myQuiz1 : [QuizModel] = [

    QuizModel(img: "img",
    text: "下列何者不能等分一個完全八度?",
    answer: ["大二度","小三度","完全四度","增四度（減五度）"],
    correct: 2),
    
    QuizModel(img: "img",
    text: "A 大調的下中音等同於",
    answer: ["e 小調之關係調的導音","E 大調之屬調的中音 ","B 大調之關係調的下屬音","D 大調之下屬調的上主音"],
    correct: 0),
    
    QuizModel(img: "img",
    text: "下列哪一首作品不是柴科夫斯基(P. I. Tchaikovsky)的舞劇音樂?",
    answer: ["《胡桃鉗》","《天鵝湖》","《天方夜譚》","《睡美人》"],
    correct: 2),
    
    QuizModel(img: "img",
    text: "下列何者盛行於文藝復興時期?",
    answer: ["歌劇(Opera)","神劇(Oratorio)","牧歌(Madrigal)","藝術歌曲(Lied)"],
    correct: 2),
    
    QuizModel(img: "img",
    text: "一首4 4拍，90 小節的樂曲，演奏時間長度為 4 分 30 秒，其速度為",
    answer: ["60","80","90","120"],
    correct: 1),
    
    QuizModel(img: "img",
    text: "下列哪一位是弦樂四重奏《皇帝》的作曲家?",
    answer: ["貝多芬(L. v. Beethoven)","莫札特(W. A. Mozart)","韋瓦第(A.Vivaldi)","海頓(F. J. Haydn)"],
    correct: 3),
    
    QuizModel(img: "img",
    text: "下列哪一個是擊絃樂器?",
    answer: ["琵琶","古琴","揚琴","二胡"],
    correct: 2),
    
    QuizModel(img: "img",
    text: "(A) 舒伯特(F. Schubert) (B) 伯恩斯坦(L. Bernstein) (C) 蕭邦(F. Chopin) (D) 馬勒(G. Mahler) 前列作曲家的出生先後順序為?",
    answer: ["ABCD","DCBA","CDBA","ACDB"],
    correct: 3),
    
    QuizModel(img: "img",
    text: "請問做音樂，哪個器材不需要",
    answer: ["麥克風","監聽音響","midi鍵盤","以上皆需要"],
    correct: 3),
    
    QuizModel(img: "img",
    text: "請問Justin Bieber最新的單曲是？",
    answer: ["Intention","Holy","Lonely","Anyone"],
    correct: 3),
    
    QuizModel(img: "img",
    text: "請問熊仔最新出的單曲是？",
    answer: ["88BARS","89BARS","98BARS","99BARS"],
    correct: 0),
    
    QuizModel(img: "img",
    text: "請問Ozi最新出的單曲是？",
    answer: ["LUFU","SLIDE","B.O","他出的是專輯"],
    correct: 3),
    
    QuizModel(img: "img",
    text: "請問AI 能夠做出怎樣的音樂？",
    answer: ["他什麼都做得出來","ＨＩＰＨＯＰ","Jazz","POP"],
    correct: 0),
    
    QuizModel(img: "img",
    text: "請問當你沒靈感做不出音樂的時候怎麼辦？",
    answer: ["耍廢打遊戲","聽更多音樂","抄別人的歌","我有其他想法"],
    correct: 3),
    
    QuizModel(img: "img",
    text: "請問當一個音樂製作人不一定需要什麼條件？",
    answer: ["錄音","混音","樂理","編曲"],
    correct: 2),
    
    QuizModel(img: "img",
    text: "請問當人工智慧遇上音樂不會擦出什麼火花？",
    answer: ["AI Listener","AI Destoryer","AI Composer","AI DJ"],
    correct: 1),
]



func SaveScore(quiz : String , score : Int){
    UserDefaults.standard.set(score, forKey: quiz)
}

func LoadScore (quiz : String) -> Int{
    return UserDefaults.standard.integer(forKey: quiz)
}
