//
//  ContentView.swift
//  Stop Chart Apple Watch Extension
//
//  Created by Lukas Mauffré on 04/01/2020.
//  Copyright © 2020 Lukas Mauffré. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var scrollAmount = 0.0
    
    var body: some View {
        List {
            Section(header: Text("main"), footer: Text("showChartOfDesiredParameter")) {
                NavigationLink(destination: ApertureStopChartView()) {
                    Text("apertureStopChart")
                }
                NavigationLink(destination: ShutterSpeedStopChartView()) {
                    Text("shutterSpeedStopChart")
                }
                NavigationLink(destination: ISOStopChartView()) {
                    Text("isoStopChart")
                }
            }
            
            Section(header: Text("moreInfo")) {
                NavigationLink(destination: WhatIsStopView()) {
                    Text("whatIsAStopInPhotography")
                }
                NavigationLink(destination: AboutView()) {
                    HStack {
                        Text("about")
                        Image(systemName: "info.circle")
                    }
                }
            }
        }.focusable()
        .digitalCrownRotation($scrollAmount, from: 1, through: 5, by: 0.1, sensitivity: .low, isContinuous: true, isHapticFeedbackEnabled: true)
            .navigationBarTitle(Text("Stop Chart").foregroundColor(.blue))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
