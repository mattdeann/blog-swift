//
//  ContentView.swift
//  blog-swift
//
//  Created by Matthew Dean on 2/15/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
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
                List(1..<10) {_ in
                    ZStack {
                        PostPreview()
                        NavigationLink(destination: SinglePost()) {
                            Divider()
                                .padding()
                                .foregroundColor(.primary)
                            EmptyView()
                        }
                    }
                }
                .listStyle(PlainListStyle())
                .navigationBarTitle("")
                .navigationBarHidden(true)
                
            }
        }
        .padding()
        .edgesIgnoringSafeArea(.bottom)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
