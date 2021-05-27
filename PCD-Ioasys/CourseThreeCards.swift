//
//  CourseThreeCards.swift
//  PCD-Ioasys
//
//  Created by NMAS Amaral on 26/05/21.
//

import SwiftUI

struct CourseThreeCards: View {
    var img = "CourseThreeImage"
    var body: some View {
        VStack{
            Image(img).renderingMode(.original).resizable().aspectRatio(contentMode: .fill).frame(width: 320, height: 175)
            Spacer().frame(height:30)
            HStack {
                Text("Terapia Ocupacional").font(.system(size: 23, weight: .bold)).padding(5)
                Spacer()
            }
            HStack {
                Text("A família é a instituição/espaço social no qual o surdo passa a maior parte do tempo.Lhe ajudará a se constituir emocional, subjetiva e socialmente.").font(.system(size: 18, weight: .medium))
                Spacer()
        
        }
    }.frame(width: 320, height: 400).background(Color(.white))
    }
    }

struct CourseThreeCards_Previews: PreviewProvider {
    static var previews: some View {
        CourseThreeCards()
    }
}
