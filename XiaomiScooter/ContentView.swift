//
//  ContentView.swift
//  ScooterApp
//
//  Created by Filip Chmielewski on 07/09/2022.
//
import SwiftUI

struct ContentView: View {
    var isLocked: Bool

    var body: some View {
        VStack {
            Label("100%, DTE 45km", systemImage: "battery.100")
            Image("mipro2")
                .resizable()
                .frame(width: 320, height: 320)
            Button(isLocked ? "UNLOCK" : "LOCK") {
                print("Lock button tapped!")
            }
            .buttonStyle(.borderedProminent)
        }
        .navigationTitle("Mi Scooter Pro 2")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView(isLocked: true)
        }
    }
}
