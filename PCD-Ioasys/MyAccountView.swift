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
            Group {
                Text("Minha Conta").font(.system(size: 25, weight: .medium)).padding(.vertical,10)

                Divider()
                HStack {
                    Button(action: {
                        
                    } ){
                    Text("Acessar Conta").font(.system(size: 25, weight: .medium))
                    Spacer()
                    }
                }
                Spacer().frame(height:30)
                Divider()
                HStack {
                    Button(action: {
                        
                    } ){
                    Text("Criar conta").font(.system(size: 25, weight: .medium))
                    Spacer()
                    }
                }
                Spacer().frame(height:30)
                Divider()
                HStack {
                    Button(action: {
                        
                    } ){
                    Text("Plano premium").font(.system(size: 25, weight: .medium))
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
                    Text("Configurações").font(.system(size: 25, weight: .medium))
                    Spacer()
                    }
                }
                Spacer().frame(height:30)
                Divider()
                HStack {
                    Button(action: {
                        
                    } ){
                    Text("Central de atendimento").font(.system(size: 25, weight: .medium))
                    Spacer()
                    }
                }
                Spacer().frame(height:30)
            }
            Divider()
            HStack {
                Button(action: {
                    
                } ){Text("Políticas e privacidade").font(.system(size: 25, weight: .medium))
                Spacer()
                }
            }
            Spacer().frame(height:30)
            Divider()
            HStack {
                Button(action: {
                    
                } ){
                    Text("Sair do aplicativo").font(.system(size: 25, weight: .medium)).foregroundColor(.red)
                Spacer()
                }
            }
            Spacer().frame(height:30)
                        
       Spacer()
            
        }
        
        
    }
}

struct MyAccountView_Previews: PreviewProvider {
    static var previews: some View {
        MyAccountView()
    }
}
