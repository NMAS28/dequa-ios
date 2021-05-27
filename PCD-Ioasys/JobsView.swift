//
//  JobsView.swift
//  PCD-Ioasys
//
//  Created by NMAS Amaral on 20/05/21.
//

import SwiftUI

struct JobsView: View {
    @State var search : String = ""
    var body: some View{
        VStack {
            Spacer().frame(height:50)
            Text("Vagas").font(.system(size: 25, weight: .bold)).padding()
            
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
            Spacer().frame(height:20)
            Divider()
            Spacer().frame(height:20)
            
            ScrollView(.vertical) {
                ForEach(0..<50){_ in
                    JobsCards().cornerRadius(15).shadow(radius: 15)
                }
            }
        }.navigationBarHidden(true).navigationBarTitle(Text("Vagas")).edgesIgnoringSafeArea([.top,.bottom])
        
    }
    
    
    struct JobsView_Previews: PreviewProvider {
        static var previews: some View {
            JobsView()
        }
    }
}

