//
//  WhatIsStopView.swift
//  Stop Chart Apple Watch Extension
//
//  Created by Lukas Mauffré on 04/01/2020.
//  Copyright © 2020 Lukas Mauffré. All rights reserved.
//

import SwiftUI

struct WhatIsStopView: View {
    
    var body: some View {
        ScrollView(.vertical) {
                    VStack(alignment: .leading, spacing: 30) {
                        VStack(alignment: .leading, spacing: 15) {
                            Text("whatIsAStop")
                            Image(systemName: "camera")
                        }.font(.headline)
                        VStack(alignment: .leading, spacing: 30) {
                            VStack(alignment: .leading, spacing: 15) {
                                Text("inPhotographyAStop").fixedSize(horizontal: false, vertical: true)

                                Text("stopDoubling").fontWeight(.semibold).fixedSize(horizontal: false, vertical: true)
                                        
                                Text("forExample").fixedSize(horizontal: false, vertical: true)
                                        
                                VStack {
                                    Image("exposure-stops").resizable()
                                        .aspectRatio(contentMode: .fit).fixedSize(horizontal: false, vertical: true)
                                    Text("stopIsAMeasure").italic().fixedSize(horizontal: false, vertical: true)
                                }
                                        
                                Text("amountOfLightCaptured").fixedSize(horizontal: false, vertical: true)
                                    
                            }
                            
                            VStack(alignment: .leading, spacing: 15) {
                                Text("stopsAndShutterSpeed").font(.headline).fixedSize(horizontal: false, vertical: true)
                                
                                Text("shutterSpeedMeasures").fixedSize(horizontal: false, vertical: true)
                                
                                VStack {
                                    Image("exposure-stops-shutter-speed").resizable()
                                        .aspectRatio(contentMode: .fit).fixedSize(horizontal: false, vertical: true)
                                    Text("commonShutterSpeedStops").italic().fixedSize(horizontal: false, vertical: true)
                                }
                                
                                Text("forExampleChanging").fixedSize(horizontal: false, vertical: true)
                                
                                Text("mostCamerasAllow").fixedSize(horizontal: false, vertical: true)
                            }
                            
                            VStack(alignment: .leading, spacing: 15) {
                                Text("stopsAndISOSpeed").font(.headline).fixedSize(horizontal: false, vertical: true)
                                
                                Text("ISOSpeedDescribes").fixedSize(horizontal: false, vertical: true)
                                
                                VStack {
                                    Image("exposure-stops-iso-speed").resizable()
                                    .aspectRatio(contentMode: .fit).fixedSize(horizontal: false, vertical: true)
                                    Text("commonISOSpeedStops").italic().fixedSize(horizontal: false, vertical: true)
                                }
                                
                                Text("ISOIsMeasured").fixedSize(horizontal: false, vertical: true)
                                
                                Text("forExampleSwitching").fixedSize(horizontal: false, vertical: true)
                            }
                            
                            VStack(alignment: .leading, spacing: 15) {
                                Text("stopsAndAperture").font(.headline).fixedSize(horizontal: false, vertical: true)
                                
                                Text("apertureIsMeasured").fixedSize(horizontal: false, vertical: true)
                                
                                VStack {
                                    Image("exposure-stops-aperture").resizable()
                                    .aspectRatio(contentMode: .fit).fixedSize(horizontal: false, vertical: true)
                                    Text("commonApertureStops").italic().fixedSize(horizontal: false, vertical: true)
                                }
                                
                                Text("becauseOfTheWay").fixedSize(horizontal: false, vertical: true)
                                
                                Text("asWithShutterSpeed").fixedSize(horizontal: false, vertical: true)
                            }
                            
                            VStack(alignment: .leading, spacing: 15) {
                                
                                    Text("stopsAreInterchangeable").font(.headline).fixedSize(horizontal: false, vertical: true)
                                    
                                    Text("theGreatThing").fixedSize(horizontal: false, vertical: true)
                                    
                                    Text("letsSay").fixedSize(horizontal: false, vertical: true)
                                    
                                    Text("thisChangeOf").fixedSize(horizontal: false, vertical: true)
                                
                                    Text("youCouldOpen").fixedSize(horizontal: false, vertical: true)
                                    
                                    Text("alternativelyYouCould").fixedSize(horizontal: false, vertical: true)
                                    
                                    Text("asYouCanSee").fixedSize(horizontal: false, vertical: true)
                            }
                            
                            VStack(alignment: .leading, spacing: 15) {
                                
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
                                Text("")
                                Spacer()
                                Text("© Photography Mad")
                            }
                            
                            }.padding()
                        
                    }.padding()
            }
            .navigationBarTitle(Text("whatIsAStop"))
    }
}

struct WhatIsStopView_Previews: PreviewProvider {
    static var previews: some View {
        WhatIsStopView()
    }
}
