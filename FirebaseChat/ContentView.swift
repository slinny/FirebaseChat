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
            
            ScrollViewReader { proxy in
                ScrollView {
                    ForEach(messageManager.messages) { message in
                        MessageBubble(message: message)
                    }
                }
                .onChange(of: messageManager.messages.count) {
                    withAnimation {
                        if let lastMessageId = messageManager.messages.last?.id {
                            proxy.scrollTo(lastMessageId, anchor: .bottom)
                        }
                    }
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
