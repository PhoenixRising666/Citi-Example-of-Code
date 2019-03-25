//
//  SecondaryViewController.swift
//  CitiApp
//
//  Created by David Villacis on 3/25/19.
//  Copyright © 2019 David Villacis. All rights reserved.
//

import UIKit

class SecondaryViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

  @IBAction func showMessaging(_ sender: Any) {
    // Create reference to MessagingViewController
    let messagingViewController = storyboard?.instantiateViewController(withIdentifier: "MessagingViewController") as? MessagingViewController
    // Show MessagingViewController
    self.navigationController?.pushViewController(messagingViewController!, animated: true)
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
