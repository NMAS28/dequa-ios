//
//  CourseOneCards.swift
//  PCD-Ioasys
//
//  Created by NMAS Amaral on 26/05/21.
//

import SwiftUI

struct CourseOneCards: View {
    var img = "CourseOneImage"
    var body: some View{
        VStack{
            Image(img).renderingMode(.original).resizable().aspectRatio(contentMode: .fill).frame(width: 320, height: 175)
            Spacer().frame(height:30)
            HStack {
                Text("Design de Interface do Usuário").font(.system(size: 23, weight: .bold)).padding(5)
                Spacer()
            }
            
            HStack {
                Text("Aprenda os princípios fundamentais de UI, como trabalhar com cores, tipografia, grid, hierarquia visual e muito mais...").font(.system(size: 18, weight: .medium))
                Spacer()
        
        }
    }.frame(width: 320, height: 400).background(Color(.white))
    }
    struct CourseOneCards_Previews: PreviewProvider {
        static var previews: some View {
            CourseOneCards()
        }
    }
}

