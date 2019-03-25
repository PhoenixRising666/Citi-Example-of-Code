//
//  MainViewController.swift
//  CitiApp
//
//  Created by David Villacis on 3/11/19.
//  Copyright © 2019 David Villacis. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {
  
  private static let MainToMessagingSegue : String = ""
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Do any additional setup after loading the view.
  }
  
  
  /*
   // MARK: - Navigation
   
   // In a storyboard-based application, you will often want to do a little preparation before navigation
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
   // Get the new view controller using segue.destination.
   // Pass the selected object to the new view controller.
   }
   */
  
  
  /// Will segue to MessagingViewController
  ///
  /// - Parameter sender: UIBarButtonItem
  @IBAction func showMessagingView(_ sender: UIBarButtonItem) {
    // Create reference to MessagingViewController
    let messagingViewController = storyboard?.instantiateViewController(withIdentifier: "MessagingViewController") as? MessagingViewController
    // Show MessagingViewController
    self.navigationController?.pushViewController(messagingViewController!, animated: true)
  }
  
}
