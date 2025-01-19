//
//  PostCellToolbarButton.swift
//  LikeWeiboApp
//
//  Created by 黄佛波 on 2025/1/19.
//

import SwiftUI

struct PostCellToolbarButton: View {
    let image: String
    let text: String
    let color: Color
    let action: () -> Void // 闭包
    
    var body: some View {
        Button(action: action) {
            HStack(spacing: 5) {
                Image(systemName: image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 18, height: 18)
                Text(text)
                    .font(.system(size: 15))
            }
        }
        .foregroundColor(color)
        .buttonStyle(BorderlessButtonStyle())
    }
}

#Preview {
    PostCellToolbarButton(image: "heart", text: "点赞", color: .red, action: {
        print("点赞")
    })
}
