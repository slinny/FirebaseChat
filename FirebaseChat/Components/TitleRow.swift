//
//  TitleRow.swift
//  FirebaseChat
//
//  Created by Siran Li on 12/13/24.
//

import SwiftUI

struct TitleRow: View {
    var imageUrl = URL(string: "https://images.unsplash.com/photo-1531891437562-4301cf35b7e4?q=80&w=2564&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
    var name = "John Doe"
    
    var body: some View {
        HStack(spacing: 20) {
            AsyncImage(url: imageUrl) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 50, height: 50)
                    .cornerRadius(50)
            } placeholder: {
                ProgressView()
            }
            
            VStack(alignment: .leading) {
                Text(name)
                    .font(.title)
                    .bold()
                
                Text("Online")
                    .font(.caption)
                    .foregroundStyle(Color.gray)
            }
            
            Spacer()
            
            Image(systemName: "phone.fill")
                .foregroundStyle(Color.gray)
                .padding(10)
                .background(.white)
                .overlay(
                    Circle()
                        .stroke(Color.gray, lineWidth: 1)
                )
                .clipShape(.circle)
        }
        .padding()
        
        Rectangle()
            .frame(height: 1)
            .background(Color.gray)
        
    }
}

#Preview {
    TitleRow()
}
