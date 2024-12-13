//
//  MessageField.swift
//  FirebaseChat
//
//  Created by Siran Li on 12/13/24.
//

import SwiftUI

struct MessageField: View {
    @State private var message = ""

    var body: some View {
        HStack {
            // Custom text field created below
            CustomTextField(placeholder: Text("Enter your message here"), text: $message)

            Button {
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
    var placeholder: Text
    @Binding var text: String
    var editingChanged: (Bool)->() = { _ in }
    var commit: ()->() = { }

    var body: some View {
        ZStack(alignment: .leading) {
            if text.isEmpty {
                placeholder
                .opacity(0.5)
            }
            TextField("", text: $text, onEditingChanged: editingChanged, onCommit: commit)
        }
        .foregroundStyle(Color.black)
        .frame(height: 52)
        .disableAutocorrection(true)
    }
}
