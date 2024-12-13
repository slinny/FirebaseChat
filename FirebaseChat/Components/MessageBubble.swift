//
//  MessageBubble.swift
//  FirebaseChat
//
//  Created by Siran Li on 12/13/24.
//

import SwiftUI

struct MessageBubble: View {
    var message: Message
    @State var showTime: Bool = false
    
    var body: some View {
        VStack(alignment: message.received ? .leading : .trailing) {
            HStack {
                Text(message.text)
                    .font(.title3)
                    .padding()
                    .foregroundStyle(message.received ? .black : .white)
                    .background(message.received ? .yellow : .blue)
                    .clipShape(.rect(cornerRadius: 30))
            }
            .frame(maxWidth: 300, alignment: message.received ? .leading : .trailing)
            
            if showTime {
                Text("\(message.timestamp.formatted(.dateTime.hour().minute()))")
                    .foregroundStyle(Color.primary)
                    .padding(.horizontal)
            }
        }
        .frame(maxWidth: .infinity, alignment: message.received ? .leading : .trailing)
        .padding(.horizontal)
        .onTapGesture {
            showTime.toggle()
        }
    }
}

#Preview {
    MessageBubble(message: Message(id: "id", text: "text Find definitions and references for functions and other symbols in this file by clicking a symbol below or in the code.", received: true, timestamp: Date()))
    MessageBubble(message: Message(id: "id", text: "text ", received: true, timestamp: Date()))
    MessageBubble(message: Message(id: "id", text: "text ", received: false, timestamp: Date()))
    MessageBubble(message: Message(id: "id", text: "text Find definitions and references for functions and other symbols in this file by clicking a symbol below or in the code.", received: false, timestamp: Date()))
}
