//
//  WebViewController.swift
//  FoodPin
//
//  Created by DARYL AGUSTIN on 9/21/21.
//

import UIKit
import WebKit

class WebViewController: UIViewController {
    @IBOutlet var webView: WKWebView!
    
    var targetURL = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        if let url = URL(string: targetURL) {
                let request = URLRequest(url: url)
                webView.load(request)
            }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
