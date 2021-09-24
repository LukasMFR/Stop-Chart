//
//  AboutView.swift
//  Stop Chart Apple Watch Extension
//
//  Created by Lukas Mauffré on 04/01/2020.
//  Copyright © 2020 Lukas Mauffré. All rights reserved.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        List {
            Section(header: Text("aboutTheApp")) {
                HStack {
                    Text("appVersion")
                    Spacer()
                    Text("1.1.1").foregroundColor(.secondary)
                }
            }
            
            Section(footer: Text("Copyright © 2020 - 2021  Lukas")) {
                HStack(alignment: .center) {
                    Spacer()
                    Text("madeWithLove").font(.system(.footnote, design: .rounded)).multilineTextAlignment(.center)
                    Spacer()
                }
                
                HStack(alignment: .center) {
                    Spacer()
                    Image("IMG_3953").resizable().frame(width: 75, height: 75, alignment: .center)
                    Spacer()
                }
            }
        }
        .navigationBarTitle(Text("about"))
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
