//
//  BotViewController.swift
//  Tailor
//
//  Created by Student on 29/04/2019.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit
import WebKit

class BotViewController: UIViewController {
  
  
  
  @IBOutlet weak var botWebView: WKWebView!
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    let url = URL (string:"https://assistant-chat-us-south.watsonplatform.net/web/public/1dce959b-dbbd-49f3-bb25-0a1c0838fe33")
    
    botWebView.load(URLRequest(url: url!))
    // Do any additional setup after loading the view.
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  
  /*
   // MARK: - Navigation
   
   // In a storyboard-based application, you will often want to do a little preparation before navigation
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
   // Get the new view controller using segue.destinationViewController.
   // Pass the selected object to the new view controller.
   }
   */
  
}
