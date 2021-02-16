//
//  ContentView.swift
//  blog-swift
//
//  Created by Matthew Dean on 2/15/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack (alignment: .leading) {
            HStack {
                VStack (alignment: .leading, spacing: 12) {
                    Text("Sample Blog")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                    Text("Minimalist app made with SwiftUI")
                }
                Spacer()
                Image(systemName: "magnifyingglass")
                    .resizable()
                    .frame(width: 30, height: 30)
            }
            .padding(.bottom, 30)
            
            ScrollView (.vertical, showsIndicators: false) {
                
                ForEach(1..<10) {_ in
                    HStack (spacing: 20) {
                        Image("photo")
                            .resizable()
                            .frame(width: 80, height: 110)
                            .cornerRadius(12)
                        VStack(alignment: .leading) {
                            Spacer()
                            HStack {
                                Text("Tech Crunch")
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
                    Divider()
                        .padding()
                        .foregroundColor(.primary)
                }
            }
        }
        .padding().edgesIgnoringSafeArea(.bottom)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
