//
//  CardsEvents.swift
//  PCD-Ioasys
//
import SwiftUI

struct CardsEvents: View {
    var img = "EventsImage"
    var body: some View{
        VStack{
            Image(img).renderingMode(.original).resizable().aspectRatio(contentMode: .fit).frame(width: 450, height: 130)
            Spacer().frame(height:20)
            HStack {
                Text("Design de Interface do Usuário").font(.system(size: 20, weight: .bold))
                Spacer()
            }
            
            HStack {
                
                    Image("CalendarImage").renderingMode(.original).resizable().aspectRatio(contentMode: .fit).frame(width:30, height:30)
                    Text("25 de setembro de 2021").font(.system(size: 14, weight: .regular))
                Spacer()
                
        
        }
    }.frame(width: 420, height: 230).background(Color(.white))
    }
    struct CardsEventis_Previews: PreviewProvider {
        static var previews: some View {
            CardsEvents()
        }
    }
}

