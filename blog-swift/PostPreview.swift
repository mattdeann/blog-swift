//
//  PostPreview.swift
//  blog-swift
//
//  Created by Matthew Dean on 2/15/21.
//

import SwiftUI

struct PostPreview: View {
    var body: some View {
        HStack {
                Image("photo")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 90, height: 120)
                    .cornerRadius(20)
                VStack(alignment: .leading) {
                    Spacer()
                    HStack {
                        Text("Example Tag")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundColor(.secondary)
                        Spacer()
                        HStack {
                            Image(systemName: "calendar")
                                .resizable()
                                .frame(width: 10, height: 10)
                                .foregroundColor(.primary)
                            Text("4 days ago")
                                .font(.system(size:10))
                                .foregroundColor(.primary)
                        }
                        HStack {
                            Image(systemName: "hand.thumbsup.fill")
                                .resizable()
                                .frame(width: 10, height: 10)
                                .foregroundColor(.secondary)
                        }
                    }
                    Spacer()
                    Text("Post Title Placeholder")
                        .font(.system(size:14))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Spacer()
                    Text("Some Placeholer lorem ipsum to continue on clicked post")
                        .lineLimit(1)
                        .font(.system(size:14))
                        .foregroundColor(.secondary)
                    Spacer()
                }
                .frame(height: 110)
            }
        }
    }

struct PostPreview_Previews: PreviewProvider {
    static var previews: some View {
        PostPreview()
    }
}
