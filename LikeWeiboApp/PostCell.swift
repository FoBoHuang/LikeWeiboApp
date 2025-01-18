//
//  PostCell.swift
//  LikeWeiboApp
//
//  Created by 黄佛波 on 2025/1/18.
//

import SwiftUI

struct PostCell: View {
    var body: some View {
        HStack(spacing: 5) {
            Image(uiImage: UIImage(named:"005tnxzUly8gab4i2r73xj30u00u0js8.jpg")!)
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
                .clipShape(Circle())
                .overlay {
                        PostVIPBadge()
                        .offset(x: 16, y: 16)
                }
            
            VStack(alignment: .leading, spacing: 5) {
                Text("用户昵称")
                    .font(Font.system(size: 16, weight: Font.Weight.black))
                    .foregroundColor(Color.red)
                    .lineLimit(1)
                Text("2025-01-18")
                    .font(.system(size: 16))
                    .foregroundColor(.gray)
            }
            .padding(.leading, 10)
            
            Spacer()
            
            Button(action: {
                print("Click follow me")
            }) {
                Text("关注")
                    .font(.system(size: 14))
                    .foregroundColor(.orange)
                    .frame(width: 50, height: 26)
                    .overlay(content: {
                        RoundedRectangle(cornerRadius: 13) // 圆角矩形
                            .stroke(Color.orange, lineWidth: 1) // 描边
                    })
            }
        }
    }
}

#Preview {
    PostCell()
}
