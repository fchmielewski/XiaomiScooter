//
//  MainView.swift
//  XiaomiScooter
//
//  Created by Filip Chmielewski on 08/09/2022.
//

import SwiftUI

struct MainView: View {
    @Binding var isLocked: Bool
    @Binding var batteryLevel: Int
    @Binding var scooterName: String

    var body: some View {
        TabView {
        HomeView(isLocked: $isLocked, batteryLevel: $batteryLevel)
                .tabItem {
                    Label("My scooter", systemImage: "scooter")
                }
        Text("More view")
            .tabItem {
                Label("More", systemImage: "ellipsis")
                }
        }
        .navigationTitle(scooterName)

    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            MainView(isLocked: XiaomiScooterApp.$isLocked, batteryLevel: XiaomiScooterApp.$batteryLevel, scooterName: XiaomiScooterApp.$scooterName)
        }
    }
}
