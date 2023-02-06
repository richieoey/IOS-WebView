//
//  WebView.swift
//  WebView
//
//  Created by Richie Darmawan Oey on 06/02/23.
//

import Foundation
import WebKit
import SwiftUI


// Struct for webview
struct WebView : UIViewRepresentable {
    
    let url: URL?
    
    func makeUIView(context: Context) -> WKWebView {
        let prefs = WKWebpagePreferences()
        prefs.allowsContentJavaScript = true // agar javascript berjalan

        
        let config = WKWebViewConfiguration() // mengakses konfigurasi web
        config.defaultWebpagePreferences = prefs
        
        return WKWebView(
            frame: .zero,
            configuration: config
        )
    }
    
    func updateUIView(_ uiView: WKWebView , context: Context) {

        // Mengambil Url
        guard let myUrl = url else {
            return
        }
        // Menjalankan webview sesuai dengan Url
        let request = URLRequest(url: myUrl)
        uiView.load(request)
    }
    
}
