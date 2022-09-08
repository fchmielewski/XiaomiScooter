//
//  XiaomiScooterApp.swift
//  XiaomiScooter
//
//  Created by Filip Chmielewski on 07/09/2022.
//

import SwiftUI

@main
struct XiaomiScooterApp: App {
    // Sample data
    @State static var batteryLevel = 100
    @State static var scooterName = "Mi Scooter Pro 2"
    @State static var isLocked = false

    var body: some Scene {
        WindowGroup {
            MainView(isLocked: XiaomiScooterApp.$isLocked, batteryLevel: XiaomiScooterApp.$batteryLevel, scooterName: XiaomiScooterApp.$scooterName)
        }
    }
}
