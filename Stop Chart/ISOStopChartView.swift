//
//  ISOStopChartView.swift
//  Stop Chart
//
//  Created by Lukas Mauffré on 27/11/2019.
//  Copyright © 2019 Lukas Mauffré. All rights reserved.
//

import SwiftUI

struct ISOStopChartView: View {
    var body: some View {
        ScrollView(.vertical) {
            VStack(alignment: .leading, spacing: 20) {
                
                Image("StopChart-ISO")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                
                HStack {
                    Text("")
                    Spacer()
                    Text("© SHUTTER MUSE")
                }.padding()
            }.padding()
        }
        .navigationBarTitle(Text("isoStopChart"), displayMode: .inline)
    }
}

struct ISOStopChartView_Previews: PreviewProvider {
    static var previews: some View {
        ISOStopChartView()
    }
}
