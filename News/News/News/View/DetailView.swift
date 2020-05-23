//
//  DetailView.swift
//  News
//
//  Created by Wanderson Hipolito on 23/05/20.
//  Copyright © 2020 Wanderson Hipolito. All rights reserved.
//

import SwiftUI
import WebKit

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "www.google.com")
    }
}

