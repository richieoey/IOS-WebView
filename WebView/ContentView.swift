//
//  ContentView.swift
//  WebView
//
//  Created by Richie Darmawan Oey on 06/02/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            WebView(url: URL(string: "https://www.google.com"))
                .navigationTitle("WebView")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
