//
//  LSWebView.swift
//  LearnSwiftUI
//
//  Created by Qixin on 2021/6/10.
//

import SwiftUI
import WebKit


class Coordinator: NSObject, WKUIDelegate, WKNavigationDelegate {
    var parent: CustomWebView
    
    init(webView: CustomWebView)
    {
        self.parent = webView
    }
    
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        print("didFinish")
    }
    
    func webViewWebContentProcessDidTerminate(_ webView: WKWebView) {
        print("webViewWebContentProcessDidTerminate")
    }
    
    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
        print("didFail")
    }
    
    func webView(_ webView: WKWebView, didCommit navigation: WKNavigation!) {
        print("didCommit")
    }
    
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        print("didStartProvisionalNavigation")
    }
    
    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
        print("navigationAction")
        decisionHandler(.allow)
    }
    
    
//    func webView(_ webView: WKWebView, decidePolicyFor navigationResponse: WKNavigationResponse, decisionHandler: @escaping (WKNavigationResponsePolicy) -> Void) {
//        print("navigationResponse")
//        debugPrint(navigationResponse.response)
//        decisionHandler(.allow)
//    }
    
}

struct CustomWebView : UIViewRepresentable {
    
    typealias UIViewType = WKWebView
    let request: URLRequest = URLRequest(url: URL(string: "https://www.apple.com")!)
    
    
    
    func makeCoordinator() -> Coordinator {
        Coordinator(webView: self)
    }
    
    
    func makeUIView(context: Context) -> WKWebView  {
        let webView = WKWebView()
        webView.navigationDelegate = context.coordinator
        webView.allowsBackForwardNavigationGestures = true
        webView.scrollView.isScrollEnabled = true
        return webView
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.load(request)
    }
}


struct LSWebView: View {
    var body: some View {
        CustomWebView()
            .edgesIgnoringSafeArea(.bottom)
    }
}

struct LSWebView_Previews: PreviewProvider {
    static var previews: some View {
        LSWebView()
    }
}
