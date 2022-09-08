//
//  ContentView.swift
//  ScooterApp
//
//  Created by Filip Chmielewski on 07/09/2022.
//
import SwiftUI

struct HomeView: View {
    @Binding var isLocked: Bool
    @Binding var batteryLevel: Int

    var body: some View {
        VStack {
            Label("\(batteryLevel)%", systemImage: "battery.100")
            Image("mipro2")
                .resizable()
                .frame(width: 320, height: 320)
                .padding()
            Button(isLocked ? "UNLOCK" : "LOCK") {
                print("Lock button tapped!")
            }
            .buttonStyle(.borderedProminent)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
        }
    }
}
