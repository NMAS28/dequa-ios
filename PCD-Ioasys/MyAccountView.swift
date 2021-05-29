//
//  MyAccountView.swift
//  PCD-Ioasys
//
//  Created by NMAS Amaral on 23/05/21.
//

import SwiftUI

struct MyAccountView: View {
    var body: some View {
        VStack {
            Spacer().frame(height:40)
            Group {
                Text("Minha Conta").font(.system(size: 25, weight: .medium)).padding(.vertical,10)
                
                Divider()
                HStack {
                    
                    NavigationLink(destination: LoginTwoView().navigationBarBackButtonHidden(true)){
                    Image("UserIcon").padding()
                    Text("Entre ou Cadastre-se").font(.system(size: 25, weight: .medium)).foregroundColor(.black)
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
            HStack {
                NavigationLink(destination: LoginView().navigationBarBackButtonHidden(true)){
                    Text("Logout").font(.system(size: 25, weight: .regular)).foregroundColor(.red).padding(.horizontal,10)
                    Spacer()
                }
            }
            Spacer().frame(height:30)
            
            Spacer()
            
        }.navigationBarHidden(true).navigationBarTitle(Text("MyAccountView")).edgesIgnoringSafeArea([.top,.bottom])
        
        
    }
}

struct MyAccountView_Previews: PreviewProvider {
    static var previews: some View {
        MyAccountView()
    }
}
