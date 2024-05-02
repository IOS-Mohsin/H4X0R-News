//
//  ContentView.swift
//  H4X0R News
//
//  Created by See Sight Tours on 02/05/2024.
//

import SwiftUI

struct ContentView: View 
{
    @ObservedObject var networkManager = NetworkManager()
    var body: some View
    {
        NavigationView
        {
            List(networkManager.posts) { Post in
                NavigationLink(destination: DetailView(url: Post.url)){
                    
                    HStack {
                        Text(String(Post.points))
                        Text(Post.title)
                            }
                }
               
                
            }
            .navigationBarTitle("H4X0R NEWS")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
        

    }
}

#Preview {
    ContentView()
}
