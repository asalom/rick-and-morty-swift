//
//  AppDelegate.swift
//  RIck and Morty
//
//  Created by Lucas Gerisztein on 09.03.20.
//  Copyright © 2020 Lucas Gerisztein. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?

  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    
    let viewModel = ListViewModel()
    let rootViewController = ListViewController(viewModel: viewModel)
    let navigationController = UINavigationController(rootViewController: rootViewController)
    
    navigationController.navigationBar.barTintColor = .systemBlue
    window = UIWindow(frame: UIScreen.main.bounds)
    window?.rootViewController = navigationController
    window?.makeKeyAndVisible()
    
    return true
    
  }

}

