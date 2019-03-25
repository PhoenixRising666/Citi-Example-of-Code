//
//  MessagingViewController.swift
//  CitiApp
//
//  Created by David Villacis on 3/11/19.
//  Copyright © 2019 David Villacis. All rights reserved.
//
import UIKit

class MessagingViewController: UIViewController {
  
  // MARK: - App LifeCycle
  
  /// App LifeCycle - View did Load
  override func viewDidLoad() {
    // Super Init
    super.viewDidLoad()
    self.edgesForExtendedLayout = []
    // self.additionalSafeAreaInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    // self.view.layoutIfNeeded()
    
  }
  
  /// App LifeCycle - View did Load
  override func viewWillAppear(_ animated: Bool) {
    // Super Init
    super.viewWillAppear(animated)
    //
//    LivePersonSDK.shared.initSDK(LivePersonSDK.shared.account, appInstallId: LivePersonSDK.shared.appInstallID)
    LivePersonSDK.shared.initSDK(LivePersonSDK.shared.account, appInstallId: nil)
    //
    LivePersonSDK.shared.initLogger(.debug)
    //
    LivePersonSDK.shared.showConversation(self)
    //
    self.tabBarController?.tabBar.isTranslucent = true
  }
  
  /// App LifeCycle - View will Disappear
  override func viewWillDisappear(_ animated: Bool) {
    // Super Init
    super.viewWillDisappear(animated)
    // INFO: When using Custom View Controller Mode, Conversation must be remove when leaving the App, if the Conversation View is the current screen
    // INFO: To avoid dimissing the View if CSAT/SecureForms/PhotoSharing View is presented, will only dismiss the Conversation if Moving From ParentView,
    // Remove Conversation
    _ = LivePersonSDK.shared.removeConversation()
    //
    self.tabBarController?.tabBar.isTranslucent = false
    // Pop To Previous View
    self.navigationController?.popToRootViewController(animated: true)
  }
  
  // MARK: - IBActions
  
  /// Will respond to Back Button Pressed
  ///
  /// - Parameter sender: UIBarButtonItem - Back Button
  @IBAction func backButtonPressed(_ sender: Any) {
    // INFO: When using a Custom View Controller, first we remove Conversation, then you need to popToRootViewController
    self.navigationController?.popToRootViewController(animated: true)
  }
  
  /// Will End Conversation to Back Button Pressed
  ///
  /// - Parameter sender: UIBarButtonItem - Back Button
  @IBAction func endConversationButtonPressed(_ sender: Any) {
    // Resolve Conversation
    LivePersonSDK.shared.resolveConversation()
  }
}
