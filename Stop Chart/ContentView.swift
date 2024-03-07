//
//  ContentView.swift
//  Stop Chart
//
//  Created by Lukas Mauffré on 27/11/2019.
//  Copyright © 2019 Lukas Mauffré. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            DefaultView()
            NewView()
        }//.navigationViewStyle(StackNavigationViewStyle())
        // To get "full screen" on iPad -> not in a split view style
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environment(\.locale, .init(identifier: "fr"))
    }
}


struct DefaultView: View {
    
    @State var showModal: Bool = false
    
    var body: some View {
        VStack {
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
                }
            }.listStyle(GroupedListStyle())
            
//            VStack {
//                AdView().frame(width: 320, height: 50)
//            }.edgesIgnoringSafeArea([.top, .leading, .trailing])
            
        }
                
            
            
            .navigationBarTitle(Text("Stop Chart"))
            .navigationBarItems(trailing:
                Button(action: {
                    self.showModal.toggle()
                }) {
                    Image(systemName: "info.circle").padding(.vertical)
                    .font(.title)
                    .foregroundColor(.blue)
                }.sheet(isPresented: $showModal,
                       content: {
                        AboutView(showModal: self.$showModal)
                })
        )
    }
    func done() {
        self.showModal.toggle()
    }
}


struct NewView: View {
    var body: some View {
        VStack {
            Image("StopChart-icon@1024px")
            .resizable()
                .frame(width: 400, height: 400, alignment: .center)
                .cornerRadius(23)
            HStack {
                Text("swipeToTheRight").font(.largeTitle)
                Image(systemName: "arrow.right").font(.largeTitle)
            }
        }
    }
}


//struct AdView: UIViewRepresentable {
//    
//    func makeUIView(context: UIViewRepresentableContext<AdView>) -> GADBannerView {
//        
//        let banner = GADBannerView(adSize: kGADAdSizeBanner)
//        
//        banner.adUnitID = "ca-app-pub-3940256099942544/2934735716"
//        banner.rootViewController = UIApplication.shared.windows.first?.rootViewController
//        banner.load(GADRequest())
//        return banner
//    }
//    
//    func updateUIView(_ uiView: GADBannerView, context: UIViewRepresentableContext<AdView>) {
//        
//    }
//}
