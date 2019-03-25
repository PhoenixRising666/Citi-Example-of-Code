//
//  ViewController.swift
//  CitiApp
//
//  Created by David Villacis on 3/11/19.
//  Copyright © 2019 David Villacis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

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

