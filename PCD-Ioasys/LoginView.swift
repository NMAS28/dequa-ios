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
                    Text("Esqueceu sua senha?").font(.system(size: 18, weight: .medium)).underline().padding(10).padding(.bottom,40)
                    
                    Button(action: {
                        
                    } ){
                        Text("Entrar").font(.system(size: 22, weight: .bold)).foregroundColor(.white).padding(.horizontal, 115).padding(.vertical, 8).background(Color(hex:0x5d184b)).cornerRadius(8)
                    }
                    Text("Ainda não tem conta?").font(.system(size: 20, weight: .medium)).foregroundColor(Color(hex:0x5d184b))
                }
               

        Spacer()
                
            }
            .navigationBarHidden(true).navigationBarTitle(Text("Home")).edgesIgnoringSafeArea([.top,.bottom])
        }
}
}
struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
