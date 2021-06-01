//
//  SplashView.swift
//  PCD-Ioasys
//
//  Created by NMAS Amaral on 28/05/21.
//

import SwiftUI

struct SplashView: View {
    @State var showMainView: Bool = false
    var body: some View {
        Group {
            if showMainView{
                ContentView()
            } else {
                VStack {
                    Image("SplashView")
                }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height+15).background(Color(hex:0xe0f3f3))
            }
            
           
        }.onAppear{
            withAnimation(.linear(duration: 5)){
                showMainView = true
            }
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
