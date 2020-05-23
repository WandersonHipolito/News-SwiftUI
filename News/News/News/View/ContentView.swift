//
//  ContentView.swift
//  News
//
//  Created by Wanderson Hipolito on 13/05/20.
//  Copyright © 2020 Wanderson Hipolito. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView{// inicio do navigationView
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
            }
            .navigationBarTitle("News World")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }// -> Fim da navigation View
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


//let posts = [
//    Post(objetcID: "1", title: "Ola", url: "www.algo", points: 2)
//
//]
//

