//
//  EventsView.swift
//  PCD-Ioasys
//
//  Created by NMAS Amaral on 27/05/21.
//

import SwiftUI

struct EventsView: View {
    @State var search : String = ""
    var body: some View{
        VStack {
            Spacer().frame(height:40)
            Text("Eventos").font(.system(size: 25, weight: .bold))
            
            HStack {
                VStack(spacing:2){
                    Image("Filter").renderingMode(.original).resizable().aspectRatio(contentMode: .fit).frame(width:30, height:30)
                    Text("Filtro").font(.system(size: 14, weight: .regular))
                }
                HStack(spacing:2) {
                    
                    Image("GlassImage").padding(.leading, 10)
                    TextField("Pesquisar", text : $search).textFieldStyle(CustomTextFieldStyle())
                }.background(Color(hex:0xf2f2f2)).cornerRadius(12).frame(width: UIScreen.main.bounds.width*0.8, height: 60)
            }
            Divider()
            Spacer().frame(height:20)
            ScrollView(.vertical){
                HStack {
                    Text("Principais eventos").font(.system(size: 35, weight: .bold)).padding()
                    Spacer()
                }
                VStack(spacing:40){
                    ForEach(0..<15){_ in
                        NavigationLink(destination: EventDetailView().navigationBarBackButtonHidden(true)){
                            CardsEvents()}.cornerRadius(15).shadow(radius: 2)
                        
                    }
                }
            
            }
            
            
            Spacer()}
    .navigationBarHidden(true).navigationBarTitle(Text("Events")).edgesIgnoringSafeArea([.top,.bottom])
}

struct EventsView_Previews: PreviewProvider {
    static var previews: some View {
        EventsView()
    }
}
}
