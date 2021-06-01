//
//  LoginView.swift
//  PCD-Ioasys
//
//  Created by NMAS Amaral on 23/05/21.
//

import SwiftUI

struct LoginView: View {
    @State var emailUser : String = ""
    @State var passwordUser : String = ""
    @State var isShowingTab : Bool = false
    var body: some View {
        NavigationView {
            VStack{
                Spacer().frame(height: 60)
                HStack {
                    Text("Olá,").font(.system(size: 26, weight: .medium)).padding(.horizontal, 10)
                    Spacer()
                }
                HStack {
                    Text("Acese sua conta.").font(.system(size: 30, weight: .bold)).padding(.horizontal, 10)
                    Spacer()
                }
                HStack {
                    Spacer().frame(width:10)
                    Text("Email").font(.system(size: 21, weight: .bold)).padding(.top,65)
                    Spacer()
                }
                
                TextField("Email", text : $emailUser).textFieldStyle(CustomTextFieldStyle()).padding()
                
                HStack {
                    Text("Senha").font(.system(size: 21, weight: .bold)).padding(.top,10).padding(.horizontal, 15)
                    Spacer()
                }
                Group {
                    TextField("Senha", text : $passwordUser).textFieldStyle(CustomTextFieldStyle()).padding()
                    Button(action: {
                        
                    } ){
                        Text("Esqueceu sua senha?").font(.system(size: 20, weight: .regular)).foregroundColor(.black).underline()
                    }
                    Spacer().frame(height:70)
                    
                    NavigationLink(destination: TabBarController(), isActive: $isShowingTab) {Text("")}
                    Button("Entrar"){
                        if emailUser == "Premium"{
                            self.isShowingTab = true
                        DataClass.sharedManager.isPremium = true
                            DataClass.sharedManager.isLogged = true
                                                } else if emailUser == "Free"{
                                                    self.isShowingTab = true
                                                   DataClass.sharedManager.isPremium = false
                                                    DataClass.sharedManager.isLogged = true
                                               } else{
                                                   UIAlertController.alert(title: "Usuário incorreto! Digite Premium ou Free.", message: "")
                                               }
                        
                        
                    }.font(.system(size: 22, weight: .bold)).foregroundColor(.white).padding(.horizontal, 115).padding(.vertical, 8).background(Color(hex:0x5d184b)).cornerRadius(8)
                    //                    NavigationLink(destination: TabBarController().navigationBarBackButtonHidden(true)){
                    //                        Text("")
                    //                    }
                    //                    Button(action: {
                    //                        if emailUser == "Premium"{
                    //                            DataClass.sharedManager.isPremium = true
                    //                        } else if emailUser == "Free"{
                    //                            DataClass.sharedManager.isPremium = false
                    //                        } else{
                    //                            UIAlertController.alert(title: "Usuário incorreto", message: "")
                    //                        }
                    //                    }){
                    //
                    //                        Text("Entrar").font(.system(size: 22, weight: .bold)).foregroundColor(.white).padding(.horizontal, 115).padding(.vertical, 8).background(Color(hex:0x5d184b)).cornerRadius(8)}
                    
                    Text("Ainda não tem conta?").font(.system(size: 20, weight: .regular)).foregroundColor(Color(hex:0x5d184b))
                    
                    NavigationLink(destination: RegisterView().navigationBarBackButtonHidden(true)){
                        Text("Cadastre-se").font(.system(size: 20, weight: .bold)).foregroundColor(Color(hex:0x5d184b)).underline()
                    }
                }
                
                
                Spacer()
                
            }
            .navigationBarHidden(true).navigationBarTitle(Text("")).edgesIgnoringSafeArea([.top,.bottom])
        }
    }
}
struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

