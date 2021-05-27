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
    var body: some View {
        VStack {
            Text("Cadastro").font(.system(size: 25, weight: .bold)).padding()
            ScrollView(.vertical){
                HStack{
                    Spacer().frame(width:10)
                    Button(action: {
                        
                    } ){Text("Plano Gratuito").font(.system(size: 25, weight: .bold)).foregroundColor(.black)
                        .underline()
                        Spacer()
                    }
                    Spacer()
                    Button(action: {
                        
                    } ){Text("Plano Premium").font(.system(size: 25, weight: .bold)).foregroundColor(.black)}
                    Spacer().frame(width:10)
                }
                Spacer().frame(height:20)
                Text("Crie seu perfil e tenha acesso gratuito a todas as vagas do nosso catálogo.").font(.system(size: 20, weight: .medium))
                
                Spacer().frame(height:20)
                
                Group {
                    
                    TextField("Nome Completo", text : $fullName).textFieldStyle(CustomTextFieldStyle()).padding()
                    
                    TextField("Email", text : $emailUserRegister).textFieldStyle(CustomTextFieldStyle()).padding()
                    
                    TextField("CPF", text : $cPF).textFieldStyle(CustomTextFieldStyle()).padding()
                    
                    TextField("Data de nascimento", text : $birthDate).textFieldStyle(CustomTextFieldStyle()).padding()
                    
                    TextField("Deficiência", text : $deficiency).textFieldStyle(CustomTextFieldStyle()).padding()
                    
                    TextField("Senha", text : $password).textFieldStyle(CustomTextFieldStyle()).padding()
                    
                    TextField("Confirmação de senha", text : $confirmPassword).textFieldStyle(CustomTextFieldStyle()).padding()
                }
                Spacer().frame(height:20)
                Button(action: {
                    
                } ){
                    Text("Entrar").font(.system(size: 22, weight: .bold)).foregroundColor(.white).padding(.horizontal, 135).padding(.vertical, 8).background(Color(hex:0x5d184b)).cornerRadius(8)
                }
                
                
                
                
            }
        }
    }
    var body2: some View {
            
        VStack {
            Text("Cadastro").font(.system(size: 25, weight: .bold)).padding()
            ScrollView(.vertical){
                HStack{
                    Spacer().frame(width:10)
                    Button(action: {
                        
                    } ){Text("Plano Gratuito").font(.system(size: 25, weight: .bold)).foregroundColor(.black)
                        Spacer()
                    }
                    Spacer()
                    Button(action: {
                        
                    } ){Text("Plano Premium").font(.system(size: 25, weight: .bold)).foregroundColor(.black) .underline()}
                    Spacer().frame(width:10)
                }
                Spacer().frame(height:20)
                Text("Crie seu perfil premium e tenha acesso a todas as vagas e cursos de especialização do nosso catálogo. Tudo por apenas 12x R$79,90. ").font(.system(size: 20, weight: .medium))
                
                Spacer().frame(height:20)
                
                
                
                Group {
                    
                    TextField("Nome Completo", text : $fullName).textFieldStyle(CustomTextFieldStyle()).padding()
                    
                    TextField("Email", text : $emailUserRegister).textFieldStyle(CustomTextFieldStyle()).padding()
                    
                    TextField("CPF", text : $cPF).textFieldStyle(CustomTextFieldStyle()).padding()
                    
                    TextField("Data de nascimento", text : $birthDate).textFieldStyle(CustomTextFieldStyle()).padding()
                    
                    TextField("Deficiência", text : $deficiency).textFieldStyle(CustomTextFieldStyle()).padding()
                    
                    TextField("Senha", text : $password).textFieldStyle(CustomTextFieldStyle()).padding()
                    
                    TextField("Confirmação de senha", text : $confirmPassword).textFieldStyle(CustomTextFieldStyle()).padding()
                }
                Spacer().frame(height:20)
                Button(action: {
                    
                } ){
                    Text("Ir para o pagamento").font(.system(size: 20, weight: .bold)).foregroundColor(.white).padding(.horizontal, 100).padding(.vertical, 8).background(Color(hex:0x5d184b)).cornerRadius(8)
                }
        }
            
                
                
                
                
            }
        }
    struct RegisterView_Previews: PreviewProvider {
        static var previews: some View {
            RegisterView()
        }
    }
}
