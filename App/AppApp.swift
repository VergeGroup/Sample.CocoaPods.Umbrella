//
//  AppApp.swift
//  App
//
//  Created by Muukii on 2020/12/23.
//

import SwiftUI

import Alamofire
import Bureau

@main
struct AppApp: App {
  var body: some Scene {
    WindowGroup {
      ContentView()
        .onAppear {
          print(Session.self)
          print(BureauContext.self)
        }
    }
  }
}
