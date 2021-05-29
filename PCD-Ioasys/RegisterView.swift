//
//  RegisterView.swift
//  PCD-Ioasys
//
//  Created by NMAS Amaral on 24/05/21.
//

import SwiftUI

struct RegisterView: View {
    @State var fullName : String = ""
    @State var emailUserRegister : String = ""
    @State var cPF : String = ""
    @State var birthDate : String = ""
    @State var deficiency : String = ""
    @State var password : String = ""
    @State var confirmPassword : String = ""
    @State private var isNameError : Bool = false
    @State var selectedIndex: Int? = nil
    let options : [String] = ["Mudez", "Surdez", "Mudez e Surdez"]
    @State var selectedIndexDay: Int? = nil
    let day : [String] = ["01", "02", "03", "04", "05", "06", "07", "08", "09", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31"]
    @State var selectedIndexMonth: Int? = nil
    let month : [String] = ["Janeiro", "Fevereiro", "Março", "Abril", "Maio", "Junho", "Julho", "Agosto", "Setembro", "Outubro", "Novembro", "Dezembro"]
    @State var selectedIndexYear: Int? = nil
    let year : [String] = (1910...2004).map { String($0) }
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        VStack {
            Spacer().frame(height:40)
            ZStack {
                HStack{
                    Button(action:{
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                            self.presentationMode.wrappedValue.dismiss()
                        }
                            
                        })
                    {
                        Image("BackIcon").resizable().renderingMode(.original).frame(width:30, height:30).padding(.horizontal,10)
                    }
                    Spacer()
                }
                Text("Cadastro").font(.system(size: 25, weight: .bold)).padding()
            }
            ScrollView(.vertical){
                HStack{
                    Spacer().frame(width:10)
                    Button(action: {
                        
                    } ){Text("Plano Gratuito").font(.system(size: 25, weight: .bold)).foregroundColor(.black)
                        .underline()
                        Spacer()
                    }
                    Spacer()
                    NavigationLink(destination: RegisterViewPremium().navigationBarBackButtonHidden(true)){
                        Text("Plano Premium").font(.system(size: 25, weight: .bold)).foregroundColor(.black)}
                    Spacer().frame(width:10)
                }
                Spacer().frame(height:20)
                Text("Crie seu perfil e tenha acesso gratuito a todas as vagas do nosso catálogo.").font(.system(size: 20, weight: .medium))
                
                Spacer().frame(height:20)
                
                Group {
                    
                    TextField("Nome Completo", text : $fullName).textFieldStyle(CustomTextFieldStyle()).padding()
                    
                    TextField("Email", text : $emailUserRegister).textFieldStyle(CustomTextFieldStyle()).padding()
                    
                    TextField("CPF", text : $cPF).textFieldStyle(CustomTextFieldStyle()).padding()
                    
                    
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
                }
                
                
                Group {
                    Spacer().frame(height:20)
                    
                    HStack {
                        PickerField("Deficiência", data: self.options, selectionIndex: $selectedIndex).padding(.horizontal,10)
                        Image("ArrowImage").renderingMode(.original).resizable().aspectRatio(contentMode: .fit).frame(width: 30, height: 30).padding(.horizontal,5)
                    }.background(Color(hex:0xf2f2f2)).cornerRadius(12).frame(width: UIScreen.main.bounds.width*0.92, height:60).padding()
                    
                    TextField("Senha", text : $password).textFieldStyle(CustomTextFieldStyle()).padding()
                    Spacer()
                    
                    TextField("Confirmação de senha", text : $confirmPassword).textFieldStyle(CustomTextFieldStyle()).padding()
                    
                    NavigationLink(destination: TabBarController().navigationBarBackButtonHidden(true)){
                        Text("Cadastrar-se").font(.system(size: 22, weight: .bold)).foregroundColor(.white).padding(.horizontal, 135).padding(.vertical, 8).background(Color(hex:0x5d184b)).cornerRadius(8)
                        
                        
                    }
                    
                    
                }
                
                Spacer().frame(height:60)
            }
            
        }.navigationBarHidden(true).navigationBarTitle(Text("RegisterView")).edgesIgnoringSafeArea([.top,.bottom])
        
        
        
        
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}

