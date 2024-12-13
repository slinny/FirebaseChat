//
//  MessageField.swift
//  FirebaseChat
//
//  Created by Siran Li on 12/13/24.
//

import SwiftUI
import FirebaseFirestore
import FirebaseMessaging

struct MessageField: View {
    @EnvironmentObject var messageManager: MessageManager
    @State private var message = ""

    var body: some View {
        HStack {
            // Custom text field created below
            CustomTextField(text: $message)

            Button {
                messageManager.sendMessage(text: message)
                message = ""
            } label: {
                Image(systemName: "paperplane.fill")
                    .foregroundColor(.white)
                    .padding(10)
                    .background(Color.accentColor)
                    .cornerRadius(50)
            }
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 50)
                .fill(Color.white)
        )
        .overlay(
            RoundedRectangle(cornerRadius: 50)
                .stroke(Color.gray, lineWidth: 1)
        )
        .padding()
    }
}

#Preview {
    MessageField()
}

struct CustomTextField: View {
    @EnvironmentObject var messageManager: MessageManager
    @Binding var text: String
    var editingChanged: (Bool)->() = { _ in }
    var commit: ()->() = { }

    var body: some View {
        ZStack(alignment: .leading) {
            TextField("Enter your message here", text: $text, onEditingChanged: editingChanged, onCommit: commit)
                .onSubmit {
                    messageManager.sendMessage(text: text)
                    text = ""
                }
        }
        .foregroundStyle(Color.black)
        .frame(height: 52)
        .disableAutocorrection(true)
    }
}
