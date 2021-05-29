import SwiftUI

struct JobsCardsJobsView: View {
    var img = "LogoImage"
    var body: some View {
        VStack{
            Image(img).renderingMode(.original).resizable().aspectRatio(contentMode: .fill).frame(width:UIScreen.main.bounds.width*0.45, height: 125)
            Spacer()
            HStack {
                Text("Auxiliar de Produção").font(.system(size: 20, weight: .bold)).padding(5).foregroundColor(.black)
                Spacer()
            }
            HStack {
                Text("Ioasys").font(.system(size: 15, weight: .bold)).foregroundColor(.black)
                Spacer()
            }
            HStack {
                Text("Júnior/Trainee").font(.system(size: 15, weight: .regular)).foregroundColor(.black)
                Spacer()
                Image("LocalizationIcon").renderingMode(.original).resizable().aspectRatio(contentMode: .fit).frame(width: 18, height: 18)
                Text("João Pessoa").font(.system(size: 14, weight: .regular)).foregroundColor(.black)
                Spacer()
            }
            HStack {
                Text("Somos mais de seis mil pessoas espalhadas pelas cinco regiões do Brasil, parte de um grupo brasileiro...").font(.system(size: 15, weight: .regular)).foregroundColor(.black)
                Spacer()
            }
            Spacer()
            
        }.frame(width: UIScreen.main.bounds.width*0.45, height: 375).background(Color(.white))
    }
}

struct JobsCardsJobsView_Previews: PreviewProvider {
    static var previews: some View {
        JobsCardsJobsView()
    }
}

