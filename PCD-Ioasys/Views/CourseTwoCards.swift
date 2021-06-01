//
//  CourseTwoCards.swift
//  PCD-Ioasys
//
//  Created by NMAS Amaral on 26/05/21.
//

import SwiftUI

struct CourseTwoCards: View {
    var img = "CourseTwoImage"
    var body: some View {
        VStack{
            Image(img).renderingMode(.original).resizable().aspectRatio(contentMode: .fill).frame(width: 320, height: 175)
            Spacer().frame(height:30)
            HStack {
                Text("Direitos humanos e o mundo do trabalho").font(.system(size: 23, weight: .bold)).padding(5)
            }
            
            
            HStack {
                Text("Com base na Declaração Universal dos Direitos Humanos, adotada há 70 anos pela Organização das Nações Unidas (ONU)...").font(.system(size: 18, weight: .regular))
                Spacer()
        
        }
    }.frame(width: 320, height: 400).background(Color(.white))
    }
    }

struct CourseTwoCards_Previews: PreviewProvider {
    static var previews: some View {
        CourseTwoCards()
    }
}
