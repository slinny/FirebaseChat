//
//  ContentView.swift
//  FirebaseChat
//
//  Created by Siran Li on 12/10/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var messageManager = MessageManager()
    
    var body: some View {
        VStack {
            TitleRow()
            
            ScrollView {
                ForEach(messageManager.messages) { message in
                    MessageBubble(message: message)
                }
            }
            
            MessageField()
                .environmentObject(messageManager)
        }
    }
}

#Preview {
    ContentView()
}
