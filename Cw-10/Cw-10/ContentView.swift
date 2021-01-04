//
//  ContentView.swift
//  Cw-10
//
//  Created by mohamad on 1/4/21.
//

import SwiftUI

struct ContentView: View {
    enum Mood {
        case happy,sad,angry,cool
    }
    @State var mood : Mood = .happy
    var body: some View {
        VStack(){
            if mood == Mood.happy {
                Text("I Feel happy ")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .padding()
            }
            if mood == Mood.sad {
                Text("I Feel sad ")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .padding()
            }
            if mood == Mood.angry {
                Text("I Feel angry ")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .padding()
            }
            if mood == Mood.cool {
                Text("I Feel cool ")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .padding()
            }
            HStack{
                Text("😁")
                    .padding()
                    .onTapGesture {
                        mood = ContentView.Mood.happy
                    }
                Text("😭")
                    .padding()
                    .onTapGesture {
                        mood = ContentView.Mood.sad
                    }
                Text("😡")
                    .padding()
                    .onTapGesture {
                        mood = ContentView.Mood.angry
                    }
                Text("😇")
                    .padding()
                    .onTapGesture {
                        mood = ContentView.Mood.cool
                    }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
