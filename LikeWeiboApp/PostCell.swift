//
//  PostCell.swift
//  LikeWeiboApp
//
//  Created by 黄佛波 on 2025/1/18.
//

import SwiftUI

struct PostCell: View {
    let post: Post
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack(spacing: 5) {
                post.avatarImage
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                    .overlay {
                        PostVIPBadge(vip: post.vip)
                            .offset(x: 17, y: 17)
                    }
                
                VStack(alignment: .leading, spacing: 5) {
                    Text(post.name)
                        .font(Font.system(size: 16, weight: Font.Weight.black))
                        .foregroundColor(Color.red)
                        .lineLimit(1)
                    Text(post.date)
                        .font(.system(size: 16))
                        .foregroundColor(.gray)
                }
                .padding(.leading, 10)
                
                if !post.isFollowed {
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
            Text(post.text)
                .font(.system(size: 17))
            
            if !post.images.isEmpty {
                loadImage(name: post.images[0])
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIScreen.main.bounds.width - 30, height: (UIScreen.main.bounds.width - 30)*0.75)
                    .clipped() // 超出的部分裁掉
            }
            
            Divider()
            
            HStack(spacing: 0) {
                Spacer()
                
                PostCellToolbarButton(image: "message", text: post.commentCountText, color: .black) {
                    print("Click comment button")
                }
                
                Spacer()
                
                PostCellToolbarButton(image: "heart", text: post.likeCountText, color: .red) {
                    print("Click like button")
                }
                
                Spacer()
                
            }
        }
        .padding(.horizontal, 15)
    }
}

#Preview {
    PostCell(post: postList.list[0])
}
