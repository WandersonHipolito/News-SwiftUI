//
//  NetworkManager.swift
//  News
//
//  Created by Wanderson Hipolito on 18/05/20.
//  Copyright © 2020 Wanderson Hipolito. All rights reserved.
//

import Foundation

class NetworkManager: ObservableObject{
    
   @Published var posts = [Post]()
    
    //criar a função de chamada da url
    func fetchData()  {
        if let url = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page"){
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                
                if error == nil{
                    
                    let decoder = JSONDecoder()
                    
                    if let safeData = data {
                        do {
                            let results = try decoder.decode(Results.self, from: safeData)
                            DispatchQueue.main.async {
                                self.posts = results.hits
                            }
                            
                            print(results)
                            
                        } catch  {
                            print(error)
                            
                        }
                    }
                }
            }
            
            task.resume()
            
        }
    }
}

