//
//  PostVIPBadge.swift
//  LikeWeiboApp
//
//  Created by 黄佛波 on 2025/1/18.
//

import SwiftUI

struct PostVIPBadge: View {
    var body: some View {
        Text("V")
            .bold()
            .font(.system(size: 11))
            .frame(width: 15, height: 15)
            .foregroundColor(Color.yellow)
            .background(Color.red)
            .clipShape(Circle())
            .overlay {
                RoundedRectangle(cornerRadius: 7.5)
                    .stroke(Color.white, lineWidth: 1)
            }
    }
}

#Preview {
    PostVIPBadge()
}
