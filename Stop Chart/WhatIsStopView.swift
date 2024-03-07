//
//  WhatIsStopView.swift
//  Stop Chart
//
//  Created by Lukas Mauffré on 27/11/2019.
//  Copyright © 2019 Lukas Mauffré. All rights reserved.
//

import SwiftUI
import SafariServices

struct WhatIsStopView: View {
    
    @State var show4 = false
    
    var body: some View {
        
            ScrollView(.vertical) {
            VStack(alignment: .leading, spacing: 30) {
                HStack(spacing: 15) {
                    Text("whatIsAStop")
                    Image(systemName: "camera")
                }.font(.largeTitle)
                VStack(alignment: .leading, spacing: 45) {
                    VStack(alignment: .leading, spacing: 25) {
                        Text("inPhotographyAStop").fixedSize(horizontal: false, vertical: true)

                        Text("stopDoubling").fontWeight(.semibold).fixedSize(horizontal: false, vertical: true)
                                
                        Text("forExample").fixedSize(horizontal: false, vertical: true)
                                
                        VStack {
                            Image("exposure-stops").resizable()
                                        .aspectRatio(contentMode: .fit)
                            Text("stopIsAMeasure").italic().fixedSize(horizontal: false, vertical: true)
                        }
                                
                        Text("amountOfLightCaptured").fixedSize(horizontal: false, vertical: true)
                            
                    }
                    
                    VStack(alignment: .leading, spacing: 25) {
                        Text("stopsAndShutterSpeed").font(.headline).fixedSize(horizontal: false, vertical: true)
                        
                        Text("shutterSpeedMeasures").fixedSize(horizontal: false, vertical: true)
                        
                        VStack {
                            Image("exposure-stops-shutter-speed").resizable()
                                .aspectRatio(contentMode: .fit)
                            Text("commonShutterSpeedStops").italic().fixedSize(horizontal: false, vertical: true)
                        }
                        
                        Text("forExampleChanging").fixedSize(horizontal: false, vertical: true)
                        
                        Text("mostCamerasAllow").fixedSize(horizontal: false, vertical: true)
                    }
                    
                    VStack(alignment: .leading, spacing: 25) {
                        Text("stopsAndISOSpeed").font(.headline).fixedSize(horizontal: false, vertical: true)
                        
                        Text("ISOSpeedDescribes").fixedSize(horizontal: false, vertical: true)
                        
                        VStack {
                            Image("exposure-stops-iso-speed").resizable()
                            .aspectRatio(contentMode: .fit)
                            Text("commonISOSpeedStops").italic().fixedSize(horizontal: false, vertical: true)
                        }
                        
                        Text("ISOIsMeasured").fixedSize(horizontal: false, vertical: true)
                        
                        Text("forExampleSwitching").fixedSize(horizontal: false, vertical: true)
                    }
                    
                    VStack(alignment: .leading, spacing: 25) {
                        Text("stopsAndAperture").font(.headline).fixedSize(horizontal: false, vertical: true)
                        
                        Text("apertureIsMeasured").fixedSize(horizontal: false, vertical: true)
                        
                        VStack {
                            Image("exposure-stops-aperture").resizable()
                            .aspectRatio(contentMode: .fit)
                            Text("commonApertureStops").italic().fixedSize(horizontal: false, vertical: true)
                        }
                        
                        Text("becauseOfTheWay").fixedSize(horizontal: false, vertical: true)
                        
                        Text("asWithShutterSpeed").fixedSize(horizontal: false, vertical: true)
                    }
                    
                    VStack(alignment: .leading, spacing: 25) {
                        
                            Text("stopsAreInterchangeable").font(.headline).fixedSize(horizontal: false, vertical: true)
                            
                            Text("theGreatThing").fixedSize(horizontal: false, vertical: true)
                            
                            Text("letsSay").fixedSize(horizontal: false, vertical: true)
                            
                            Text("thisChangeOf").fixedSize(horizontal: false, vertical: true)
                        
                            Text("youCouldOpen").fixedSize(horizontal: false, vertical: true)
                            
                            Text("alternativelyYouCould").fixedSize(horizontal: false, vertical: true)
                            
                            Text("asYouCanSee").fixedSize(horizontal: false, vertical: true)
                    }
                    
                    VStack(alignment: .leading, spacing: 25) {
                        
                            Text("conderationsWhenAdjustingExposure").font(.headline).fixedSize(horizontal: false, vertical: true)
                            
                            Text("whenAdjustingTheThree").fixedSize(horizontal: false, vertical: true)
                            
                            Text("shutterSpeedIf").fixedSize(horizontal: false, vertical: true)
                            
                            Text("apertureA").fixedSize(horizontal: false, vertical: true)
                            
                            Text("ISOSpeedThe").fixedSize(horizontal: false, vertical: true)
                            
                            Text("asWithEverything").fixedSize(horizontal: false, vertical: true)
                            
                            Text("exposureStopsAreA").fixedSize(horizontal: false, vertical: true)
                    }
                    
                    Divider()
                    
                    HStack {
                        Button(action: {
                            self.show4.toggle()
                        }) {
                            Text("linkToOriginalArticle").padding().foregroundColor(.white)
                                .background(LinearGradient(gradient: .init(colors: [.yellow,.purple]), startPoint: .leading, endPoint: .trailing))
                            .cornerRadius(20)
                                .sheet(isPresented: self.$show4) {
                                    photography().edgesIgnoringSafeArea(.all)
                            }
                        }
                        Spacer()
                        Text("© Photography Mad")
                    }
                    
                    }.padding()
                .overlay(
                    RoundedRectangle(cornerRadius: 16)
                        .stroke((LinearGradient(gradient: .init(colors: [.purple,.blue]), startPoint: .leading, endPoint: .trailing)), lineWidth: 4).layoutPriority(1)
                )
                Spacer()
            }.padding()
//                VStack {
//                    AdView2().frame(width: 320, height: 50)
//                }.edgesIgnoringSafeArea([.top, .leading, .trailing])
        }
    
        .navigationBarTitle(Text("whatIsAStop"), displayMode: .inline)
    }
}

struct WhatIsStopView_Previews: PreviewProvider {
    static var previews: some View {
        WhatIsStopView()
            .environment(\.locale, .init(identifier: "fr"))
    }
}


struct photography : UIViewControllerRepresentable {
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<photography>) -> SFSafariViewController {
        let controller = SFSafariViewController(url: URL(string: "https://www.photographymad.com/pages/view/what-is-a-stop-of-exposure-in-photography")!)
        return controller
    }
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<photography>) {
        
    }
}


//struct AdView2: UIViewRepresentable {
//    
//    func makeUIView(context: UIViewRepresentableContext<AdView2>) -> GADBannerView {
//        
//        let banner = GADBannerView(adSize: kGADAdSizeBanner)
//        
//        banner.adUnitID = "ca-app-pub-3940256099942544/2934735716"
//        banner.rootViewController = UIApplication.shared.windows.first?.rootViewController
//        banner.load(GADRequest())
//        return banner
//    }
//    
//    func updateUIView(_ uiView: GADBannerView, context: UIViewRepresentableContext<AdView2>) {
//        
//    }
//}
