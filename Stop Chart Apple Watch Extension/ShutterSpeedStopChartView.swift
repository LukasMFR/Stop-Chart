//
//  ShutterSpeedStopChartView.swift
//  Stop Chart Apple Watch Extension
//
//  Created by Lukas Mauffré on 04/01/2020.
//  Copyright © 2020 Lukas Mauffré. All rights reserved.
//

import SwiftUI

struct ShutterSpeedStopChartView: View {
    var body: some View {
        ScrollView(.vertical) {
            VStack(alignment: .leading, spacing: 20) {
                
                Image("StopChart-Shutter")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                
                Text("© SHUTTER MUSE").padding()
            }
        }
        .navigationBarTitle(Text("apertureStopChart"))
    }
}

struct ShutterSpeedStopChartView_Previews: PreviewProvider {
    static var previews: some View {
        ShutterSpeedStopChartView()
    }
}
