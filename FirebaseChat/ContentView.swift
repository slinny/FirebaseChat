//
//  ContentView.swift
//  FirebaseChat
//
//  Created by Siran Li on 12/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            TitleRow()
            
            ScrollView {
                ForEach(Message.mockData) { message in
                    MessageBubble(message: message)
                }
            }
            
            MessageField()
        }
    }
}

#Preview {
    ContentView()
}
