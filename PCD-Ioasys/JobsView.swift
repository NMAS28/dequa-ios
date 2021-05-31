//
//  JobsView.swift
//  PCD-Ioasys
//
//  Created by NMAS Amaral on 20/05/21.
//

import SwiftUI

struct JobsView: View {
    @State var search : String = ""
    @State var selectedIndex: Int? = nil
    let options : [String] = ["Mudez", "Surdez", "Mudez e Surdez"]
    @State var selectedIndexFilter: Int? = nil
    let filter : [String] = ["Carpinteiro"]
    var body: some View{
        VStack {
            ScrollView(.vertical) {
                Spacer().frame(height:50)
                Text("Vagas").font(.system(size: 25, weight: .bold)).padding()
                
                HStack {
                    
                        Text("+1500 vagas").font(.system(size: 15, weight: .medium)).padding(.horizontal,10).foregroundColor(.black)
                Spacer()}
                
                HStack {
                    Button(action: {
                        
                    } ){
                        VStack(spacing:2){
                            Image("Filter").renderingMode(.original).resizable().aspectRatio(contentMode: .fit).frame(width:30, height:30)
                            Text("Filtrar").font(.system(size: 14, weight: .regular)).foregroundColor(.black)
                        }
                    }
                    
                    PickerField("", data: self.options, selectionIndex: $selectedIndex).frame(width: 0, height: 0)
                    HStack(spacing:2) {
                        
                        Image("GlassImage").padding(.leading, 10)
                        TextField("Pesquisar", text : $search).textFieldStyle(CustomTextFieldStyle())
                    }.background(Color(hex:0xf2f2f2)).cornerRadius(12).frame(width: UIScreen.main.bounds.width*0.8, height: 60)
                }
                Spacer().frame(height:20)
                Divider()
                Spacer().frame(height:20)
                ForEach(0..<50){_ in
                    HStack (spacing:13){
                        ForEach(0..<2) {_ in
                            NavigationLink(destination: JobDetailView().navigationBarBackButtonHidden(true)){
                                JobsCardsJobsView().cornerRadius(15).shadow(radius: 2)
}                        }
                    }
                    Spacer().frame(height:15) }
            }
        }.navigationBarHidden(true).navigationBarTitle(Text("")).edgesIgnoringSafeArea([.top,.bottom])
        
    }
    
    
    struct JobsView_Previews: PreviewProvider {
        static var previews: some View {
            JobsView()
        }
    }
}

