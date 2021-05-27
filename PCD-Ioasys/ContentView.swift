//
//  ContentView.swift
//  PCD-Ioasys
//
//  Created by NMAS Amaral on 19/05/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ExtractedView()
                .navigationBarHidden(true).navigationBarTitle(Text("Banana")).edgesIgnoringSafeArea([.top,.bottom])
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ExtractedView: View {
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Image("FirstImageTop").renderingMode(.original).resizable().aspectRatio(contentMode: .fill).frame(width: UIScreen.main.bounds.width*0.7, height: 130)
            }
            VStack {
                HStack {
                    Text("DeQua").font(.system(size: 40, weight: .medium)).padding()
                    Spacer()
                }
                HStack {
                    Text("Nosso intuito é promover e facilitar a presença de deficientes auditivos e de fala no mercado de trabalho, auxiliando na busca de vagas e propondo recursos alternativos para sua capacitação. Vamos juntos na luta pela inclusão.").font(.system(size: 19, weight: .regular)).padding()
                    Spacer()
                }
            }
            Spacer()
            HStack {
                Spacer()
                NavigationLink(destination: TabBarController().navigationBarBackButtonHidden(true)){
                    Text("Avançar").font(.system(size: 22, weight: .bold)).foregroundColor(.white).padding(12).background(Color(hex:0x5d184b)).cornerRadius(8)
                }.padding()
            }
            ZStack {
                HStack {
                    Spacer()
                    Image("FirstImageDraw").renderingMode(.original).resizable().aspectRatio(contentMode: .fit).frame(width:UIScreen.main.bounds.width*0.9, height:UIScreen.main.bounds.width*0.9)
                }
                Spacer()
                VStack {
                    Spacer()
                    HStack {
                        Image("FirstImageBottom").renderingMode(.original).resizable().aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/).frame(width:UIScreen.main.bounds.width*0.9, height: 130)
                        Spacer()
                    }
                }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.width*0.9)
            }
        }
    }
}
