//
//  JobsCards.swift
//  PCD-Ioasys
//
//  Created by NMAS Amaral on 22/05/21.
//

import SwiftUI

struct JobsCards: View {
    var img = "LogoImage"
    var body: some View {
        VStack{
            Image(img).renderingMode(.original).resizable().aspectRatio(contentMode: .fill).frame(width: 320, height: 175)
            Spacer()
            HStack {
                Text("Auxiliar de Produção").font(.system(size: 23, weight: .bold)).padding(5)
                Spacer()
            }
            HStack {
                Text("Ioasys").font(.system(size: 18, weight: .bold))
                Spacer()
            }
            HStack {
                Text("Júnior/Trainee").font(.system(size: 18, weight: .medium))
                Spacer()
                Image("LocalizationIcon").renderingMode(.original).resizable().aspectRatio(contentMode: .fit).frame(width: 18, height: 18)
                Text("João Pessoa").font(.system(size: 14, weight: .medium))
            }
            HStack {
                Text("Somos mais de seis mil pessoas espalhadas pelas cinco regiões do Brasil, parte de um grupo brasileiro...").font(.system(size: 18, weight: .medium))
                Spacer()
            }
            Spacer()
            
        }.frame(width: 320, height: 400).background(Color(.white))
    }
}

struct JobsCards_Previews: PreviewProvider {
    static var previews: some View {
        JobsCards()
    }
}
