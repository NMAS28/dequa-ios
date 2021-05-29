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
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
            
        VStack{
            Spacer().frame(height:40)
            Text("Cadastro").font(.system(size: 25, weight: .bold)).padding()
            ScrollView(.vertical){
                HStack{
                    Spacer().frame(width:10)
                    Button(action: {
                        
                    })
                    {Text("Plano Gratuito").font(.system(size: 25, weight: .bold)).foregroundColor(.black)
                        Spacer()
                    }
                    Spacer()
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
                    
                    TextField("Nome Completo", text : $fullName).textFieldStyle(CustomTextFieldStyle()).padding()
                    
                    TextField("Email", text : $emailUserRegister).textFieldStyle(CustomTextFieldStyle()).padding()
                    
                    TextField("CPF", text : $cPF).textFieldStyle(CustomTextFieldStyle()).padding()
                    
                    HStack(spacing:2) {
                        
                        PickerField("Dia", data: self.day, selectionIndex: $selectedIndexDay).padding()
                        Image("ArrowImage").renderingMode(.original).resizable().aspectRatio(contentMode: .fit).frame(width: 30, height: 30).padding(.horizontal,5)}.frame(width: UIScreen.main.bounds.width*0.30, height:80)
                        
                    }.background(Color(hex:0xf2f2f2)).cornerRadius(12).frame(width: UIScreen.main.bounds.width*0.9, height: 60)
                Spacer().frame(height:10)
                    
                    PickerField("Deficiência", data: self.options, selectionIndex: $selectedIndex).padding().background(Color(hex:0xf2f2f2)).cornerRadius(12).frame(width: UIScreen.main.bounds.width*0.92, height:60)
                    
                    
                    TextField("Senha", text : $password).textFieldStyle(CustomTextFieldStyle()).padding()
                    
                    TextField("Confirmação de senha", text : $confirmPassword).textFieldStyle(CustomTextFieldStyle()).padding()
                }
                Spacer().frame(height:20)
                NavigationLink(destination: PaymentView().navigationBarBackButtonHidden(true)){
                    Text("Ir para o pagamento").font(.system(size: 20, weight: .bold)).foregroundColor(.white).padding(.horizontal, 100).padding(.vertical, 8).background(Color(hex:0x5d184b)).cornerRadius(8)
                }
        }
            
                
                
                
                
            }.navigationBarHidden(true).navigationBarTitle(Text("RegisterViewPremium")).edgesIgnoringSafeArea([.top,.bottom])
        }
    }

struct RegisterViewPremium_Previews: PreviewProvider {
    static var previews: some View {
        RegisterViewPremium()
    }
}
