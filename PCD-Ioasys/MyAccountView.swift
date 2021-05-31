//
//  MyAccountView.swift
//  PCD-Ioasys
//
//  Created by NMAS Amaral on 23/05/21.
//

import SwiftUI

struct MyAccountView: View {
    @State var isShowingTab: Bool = false
    var body: some View {
        VStack {
            Spacer().frame(height:40)
            Group {
                Text("Minha Conta").font(.system(size: 25, weight: .medium)).padding(.vertical,10)
                
                Divider()
                HStack {
                    
                    NavigationLink(destination: LoginView().navigationBarBackButtonHidden(true)){
                    Image("UserIcon").padding()
                        if DataClass.sharedManager.isLogged{
                            Text("Olá, usuário!").font(.system(size: 25, weight: .medium)).foregroundColor(.black)
                        } else{
                            Text("Entre ou Cadastre-se").font(.system(size: 25, weight: .medium)).foregroundColor(.black)
                        }
                    
                        Spacer()
                        
                    }
                    
                }
                Spacer().frame(height:30)
            }
            Group {
                Divider()
                HStack {
                    Button(action: {
                        
                    } ){
                        Text("Configurações").font(.system(size: 25, weight: .regular)).padding(.horizontal,10)
                        Spacer()
                    }
                }
                Spacer().frame(height:30)
                HStack {
                    Button(action: {
                        
                    } ){
                        Text("Central de atendimento").font(.system(size: 25, weight: .regular)).padding(.horizontal,10)
                        Spacer()
                    }
                }
                Spacer().frame(height:30)
            }
            HStack {
                Button(action: {
                    
                } ){Text("Políticas de privacidade").font(.system(size: 25, weight: .regular)).padding(.horizontal,10)
                    Spacer()
                }
            }
            Spacer().frame(height:50)
            if DataClass.sharedManager.isLogged{
                HStack {
                    NavigationLink(destination: TabBarController(), isActive: $isShowingTab) {Text("")}
                    Button("Logout"){
                        self.isShowingTab = true
                        DataClass.sharedManager.isLogged = false
                        DataClass.sharedManager.isPremium = false
                        
                        
                        
                    }.font(.system(size: 25, weight: .regular)).foregroundColor(.red)
                        Spacer()
                    }
                
                }
            
    
        
            
            Spacer()
            
        }.navigationBarHidden(true).navigationBarTitle(Text("MyAccountView")).edgesIgnoringSafeArea([.top,.bottom])
        
        
    }
}

struct MyAccountView_Previews: PreviewProvider {
    static var previews: some View {
        MyAccountView()
    }
}
