//
//  RegisterViewPremium.swift
//  PCD-Ioasys
//
//  Created by NMAS Amaral on 24/05/21.
//

import SwiftUI

struct RegisterViewPremium: View {
    @State var fullName : String = ""
    @State var emailUserRegister : String = ""
    @State var cPF : String = ""
    @State var birthDate : String = ""
    @State var deficiency : String = ""
    @State var password : String = ""
    @State var confirmPassword : String = ""
    @State var selectedIndex : Int? = nil
    let options : [String] = ["Mudez", "Surdez", "Mudez e Surdez"]
    @State var selectedIndexDay: Int? = nil
    let day : [String] = ["01", "02", "03", "04", "05", "06", "07", "08", "09", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31"]
    @State var selectedIndexMonth: Int? = nil
    let month : [String] = ["Janeiro", "Fevereiro", "Março", "Abril", "Maio", "Junho", "Julho", "Agosto", "Setembro", "Outubro", "Novembro", "Dezembro"]
    @State var selectedIndexYear: Int? = nil
    let year : [String] = (1910...2004).map { String($0) }
    var body: some View {
       NavigationView{
            VStack(spacing:60){
                Spacer().frame(height:40)
           ScrollView(.vertical){
                    HStack{
                        Spacer().frame(width:10)
                
                        Button(action: {
                            
                        })
                        {Text("Plano Premium").font(.system(size: 25, weight: .bold)).foregroundColor(.black)
                            Spacer()
                        }
                    }
                    Spacer().frame(height:20)
                    Text("Crie seu perfil premium e tenha acesso a todas as vagas e cursos de especialização do nosso catálogo. Tudo por apenas 12x R$79,90. ").font(.system(size: 20, weight: .medium))
                    
                    Spacer().frame(height:20)
                    
                    
                    
                    Group {
                        
                        TextField("Nome Completo", text : $fullName).textFieldStyle(CustomTextFieldStyle()).padding(10)
                        
                        TextField("Email", text : $emailUserRegister).textFieldStyle(CustomTextFieldStyle()).padding(10)
                        
                        TextField("CPF", text : $cPF).textFieldStyle(CustomTextFieldStyle()).padding(10)
                        
                        HStack{
                            HStack{
                                PickerField("Dia", data: self.day, selectionIndex: $selectedIndexDay).padding()
                                Image("ArrowImage").renderingMode(.original).resizable().aspectRatio(contentMode: .fit).frame(width: 30, height: 30).padding(.horizontal,5)}.frame(width: UIScreen.main.bounds.width*0.30, height:60).background(Color(hex: 0xf2f2f2)).cornerRadius(12)
                            
                            
                            HStack{
                                PickerField("Mês", data: self.month, selectionIndex: $selectedIndexMonth).padding()
                                Image("ArrowImage").renderingMode(.original).resizable().aspectRatio(contentMode: .fit).frame(width: 30, height: 30).padding(.horizontal,5)}.frame(width: UIScreen.main.bounds.width*0.30, height:60).background(Color(hex: 0xf2f2f2)).cornerRadius(12)
                            
                            HStack{
                                PickerField("Ano", data: self.year, selectionIndex: $selectedIndexYear).padding()
                                Image("ArrowImage").renderingMode(.original).resizable().aspectRatio(contentMode: .fit).frame(width: 30, height: 30).padding(.horizontal,5)}.frame(width: UIScreen.main.bounds.width*0.30, height:60).background(Color(hex: 0xf2f2f2)).cornerRadius(12)
                        }
                        Spacer().frame(height:20)
                        PickerField("Deficiência", data: self.options, selectionIndex: $selectedIndex).padding().background(Color(hex:0xf2f2f2)).cornerRadius(12).frame(width: UIScreen.main.bounds.width*0.95, height:50)
                        
                        
                        TextField("Senha", text : $password).textFieldStyle(CustomTextFieldStyle()).padding(10)
                        
                        TextField("Confirmação de senha", text : $confirmPassword).textFieldStyle(CustomTextFieldStyle()).padding(10)
                    }
                    Spacer().frame(height:20)
            NavigationLink(destination:PaymentView()){
                Text("Ir para o pagamento").font(.system(size: 20, weight: .bold)).foregroundColor(.white).padding(.horizontal, 100).padding(.vertical, 8).background(Color(hex:0x5d184b)).cornerRadius(8)}
                    
                    Spacer().frame(height:40)
            NavigationLink(
                destination: HomeView().navigationBarHidden(true)){
                    Text("Voltar").font(.system(size: 22, weight: .bold)).foregroundColor(Color(hex:0x5d184b))
                
                }
            Spacer().frame(height:100)
                }
                
                
                
                
            }.navigationBarHidden(true).navigationBarTitle(Text("Home")).edgesIgnoringSafeArea([.top,.bottom]).navigationBarBackButtonHidden(true)
                                                                    
       
       }
    }
}

struct RegisterViewPremium_Previews: PreviewProvider {
    static var previews: some View {
        RegisterViewPremium()
    }
}
