//
//  AboutView.swift
//  Stop Chart
//
//  Created by Lukas Mauffré on 27/11/2019.
//  Copyright © 2019 Lukas Mauffré. All rights reserved.
//

import SwiftUI
import SafariServices
import MessageUI
import UIKit

struct AboutView: View {
    
    @State var show = false
    @State var show1 = false
    @State var show2 = false
    @State var show3 = false
    @State var result: Result<MFMailComposeResult, Error>? = nil
    @State var isShowingMailView = false
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    //Disabled due to non-functionning.
    
    @Binding var showModal: Bool
    
    var body: some View {
        NavigationView {
                VStack {
                    HStack {
                        Text("about").font(.title)
                        
                        Image(systemName: "info.circle").font(.title)
                        
                        Spacer()
                    }
                    .padding()
                    
                    HStack {
                        Text("appProjectTalksAboutStop").padding()
                        Spacer()
                    }
                    
                    Spacer()
                    
                    List {
                        Section(header: Text("socialNetworks"), footer: Text("pleaseFollowMe")) {
                            
                            Button(action: {
                                self.show.toggle()
                            }) {
                                HStack {
                                    Text("Instagram").padding().foregroundColor(.white).background(LinearGradient(gradient: .init(colors: [.orange,.red]), startPoint: .leading, endPoint: .trailing))
                                    .cornerRadius(20)
                                    
                                    Spacer()
                                    
                                    Text("@lukasapplefan").foregroundColor(.secondary).font(.subheadline).multilineTextAlignment(.trailing)
                                }
                            }
                                .sheet(isPresented: $show) {
                                    instagram().edgesIgnoringSafeArea(.all)
                            }
                            
                            Button(action: {
                                self.show1.toggle()
                            }) {
                                HStack {
                                    Text("Twitter").padding().foregroundColor(.white).background(LinearGradient(gradient: .init(colors: [.purple,.blue]), startPoint: .leading, endPoint: .trailing))
                                    .cornerRadius(20)
                                    
                                    Spacer()
                                    
                                    Text("@lukasapplefan").foregroundColor(.secondary).font(.subheadline).multilineTextAlignment(.trailing)
                                }
                            }
                                .sheet(isPresented: $show1) {
                                    twitter().edgesIgnoringSafeArea(.all)
                            }
                            
                            Button(action: {
                                self.isShowingMailView.toggle()
                            }) {
                                HStack {
                                    Text("emailMe").padding().foregroundColor(.white).background(LinearGradient(gradient: .init(colors: [.green,.yellow]), startPoint: .leading, endPoint: .trailing))
                                    .cornerRadius(20)
                                    
                                    Spacer()
                                    
                                    Text("lukasapplefan@gmail.com").foregroundColor(.secondary).font(.subheadline).multilineTextAlignment(.trailing)
                                }
                            }
                            .disabled(!MFMailComposeViewController.canSendMail())
                            .sheet(isPresented: $isShowingMailView) {
                                MailView(result: self.$result).edgesIgnoringSafeArea(.all)
                            }
                        }
                        
                        Section(header: Text("aboutTheApp")) {
                            HStack {
                                Text("appVersion")
                                Spacer()
                                Text("1.1").foregroundColor(.secondary)
                            }
                        }
                        
                        Section(header: Text("credits"), footer: Text("creditsGoTo").fixedSize(horizontal: false, vertical: true).padding(.vertical, 10)) {
                            
                            Button(action: {
                                self.show2.toggle()
                            }) {
                                HStack {
                                    Text("Photography Mad")
                                    Spacer()
                                    Text("photographymad.com").foregroundColor(.secondary).font(.subheadline).multilineTextAlignment(.trailing)
                                }
                            }
                                .sheet(isPresented: $show2) {
                                    photographyMad().edgesIgnoringSafeArea(.all)
                            }
                            
                            Button(action: {
                                self.show3.toggle()
                            }) {
                                HStack {
                                    Text("Shutter Muse")
                                    Spacer()
                                    Text("shuttermuse.com").foregroundColor(.secondary).font(.subheadline).multilineTextAlignment(.trailing)
                                }
                            }
                                .sheet(isPresented: $show3) {
                                    shutterMuse().edgesIgnoringSafeArea(.all)
                            }
                        }
                        
                        Section(footer: Text("Copyright © 2020  Lukas")) {
                        HStack(alignment: .center) {
                            Spacer()
                            Text("madeWithLove").font(.system(.footnote, design: .monospaced)).multilineTextAlignment(.center)
                            Spacer()
                        }
                        
                        HStack(alignment: .center) {
                            Spacer()
                            Image("IMG_3953").resizable().frame(width: 100, height: 100, alignment: .center)
                            Spacer()
                        }
                    }
                        
                    }.listStyle(GroupedListStyle()).environment(\.horizontalSizeClass, .regular)
                    
                }
                .navigationBarTitle("about", displayMode: .inline)
                    .navigationBarItems(trailing:
                        HStack{
                            Spacer()
                            Button("doneButton") {
                                self.done()
                            }.font(.headline)
                        }
            )
        }.environment(\.horizontalSizeClass, .compact)
        //Landspace not well made.
    }
    func done() {
        self.showModal.toggle()
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView(showModal: .constant(false))
            .environment(\.locale, .init(identifier: "fr"))
    }
}

struct twitter : UIViewControllerRepresentable {
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<twitter>) -> SFSafariViewController {
        let controller = SFSafariViewController(url: URL(string: "https://twitter.com/lukasapplefan")!)
        return controller
    }
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<twitter>) {
        
    }
}


struct instagram : UIViewControllerRepresentable {
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<instagram>) -> SFSafariViewController {
        let controller = SFSafariViewController(url: URL(string: "https://www.instagram.com/lukasapplefan/")!)
        return controller
    }
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<instagram>) {
        
    }
}

struct photographyMad : UIViewControllerRepresentable {
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<photographyMad>) -> SFSafariViewController {
        let controller = SFSafariViewController(url: URL(string: "https://www.photographymad.com")!)
        return controller
    }
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<photographyMad>) {
        
    }
}

struct shutterMuse : UIViewControllerRepresentable {
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<shutterMuse>) -> SFSafariViewController {
        let controller = SFSafariViewController(url: URL(string: "https://shuttermuse.com")!)
        return controller
    }
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<shutterMuse>) {
        
    }
}

struct MailView: UIViewControllerRepresentable {

    @Environment(\.presentationMode) var presentation
    @Binding var result: Result<MFMailComposeResult, Error>?

    class Coordinator: NSObject, MFMailComposeViewControllerDelegate {

        @Binding var presentation: PresentationMode
        @Binding var result: Result<MFMailComposeResult, Error>?

        init(presentation: Binding<PresentationMode>,
             result: Binding<Result<MFMailComposeResult, Error>?>) {
            _presentation = presentation
            _result = result
        }
        
        func mailComposeController(_ controller: MFMailComposeViewController,
                                   didFinishWith result: MFMailComposeResult,
                                   error: Error?) {
            defer {
                $presentation.wrappedValue.dismiss()
            }
            guard error == nil else {
                self.result = .failure(error!)
                return
            }
            self.result = .success(result)
        }
    }

    func makeCoordinator() -> Coordinator {
        return Coordinator(presentation: presentation,
                           result: $result)
    }

    func makeUIViewController(context: UIViewControllerRepresentableContext<MailView>) -> MFMailComposeViewController {
        let vc = MFMailComposeViewController()
            vc.setToRecipients(["lukasapplefan@gmail.com"])
            vc.setSubject("Stop Chart")
            vc.setMessageBody("Stop Chart", isHTML: true)
        vc.mailComposeDelegate = context.coordinator
        return vc
    }

    func updateUIViewController(_ uiViewController: MFMailComposeViewController,
                            context: UIViewControllerRepresentableContext<MailView>) {

    }
}
