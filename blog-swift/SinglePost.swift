//
//  SwiftUIView.swift
//  blog-swift
//
//  Created by Matthew Dean on 2/15/21.
//

import SwiftUI

struct SinglePost: View {
    var body: some View {
        VStack {
            HStack(alignment: .top, spacing: 130) {
                Image(systemName: "arrowshape.turn.up.left.fill")
                Image("photo")
                    .resizable()
                    .frame(width: 100, height: 130)
                    .cornerRadius(12)

            }
            
            Spacer()
            VStack(alignment: .leading) {
                Spacer()
                HStack {
                    Text("Example Topic")
                        .font(.footnote)
                        .fontWeight(.bold)
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
                    .font(.system(size:22))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                Spacer()
                ScrollView {
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla eu tellus id lectus laoreet tempus vel ut felis. Ut sagittis ante eros, id mattis lacus facilisis non. Praesent congue laoreet eros, at lacinia lectus elementum eu. Donec consequat mauris sit amet neque molestie, ut volutpat lacus cursus. Fusce maximus ornare felis ut posuere. Vivamus ut varius tellus, sit amet hendrerit elit. Maecenas et luctus enim. Curabitur vestibulum erat mi, ut pharetra eros aliquam volutpat. Morbi posuere mi non libero sagittis, ut tempor lectus interdum. Phasellus fringilla, libero tincidunt varius fringilla, elit metus lacinia ex, aliquet accumsan odio lorem at diam. Vivamus nunc diam, sagittis ac luctus ac, dignissim ut elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Interdum et malesuada fames ac ante ipsum primis in faucibus. Maecenas sit amet sapien malesuada, iaculis nisi eleifend, fringilla lectus. Nunc a volutpat nunc, sit amet malesuada justo. In hendrerit quam id justo sollicitudin finibus. Etiam pharetra enim vitae ex placerat, eget suscipit ante sodales. ")
                        .font(.system(size:14))
                        .foregroundColor(.secondary)
                }
                
                Spacer()
            }
            .padding()
            .navigationBarBackButtonHidden(true)
            .navigationBarTitle("")
            .navigationBarHidden(true)
        }
    }
}

struct SinglePost_Previews: PreviewProvider {
    static var previews: some View {
        SinglePost()
    }
}
