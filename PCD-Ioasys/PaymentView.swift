//
//  PaymentView.swift
//  PCD-Ioasys
//
//  Created by NMAS Amaral on 24/05/21.
//

import SwiftUI

struct PaymentView: View {
    @State var cardNumber : String = ""
    @State var cardName : String = ""
    @State var cardSurName : String = ""
    @State var month : String = ""
    @State var year : String = ""
    @State var cVV : String = ""
    @State var plots : String = ""
    var body: some View {
        VStack {
            Text("Pagamento").font(.system(size: 25, weight: .bold)).padding()
            ScrollView(.vertical){
                
                Group {
                    HStack {
                        Text("Informações de pagamento").font(.system(size: 20, weight: .bold)).padding()
                        Spacer()
                    }
                    HStack {
                        Spacer()
                        Image("PaymentImage").renderingMode(.original).resizable().aspectRatio(contentMode: .fit).frame(width: 200, height: 80)
                        Spacer().frame(height:10)
                    }
                    HStack {
                        TextField("Número do cartão", text : $cardNumber).textFieldStyle(CustomTextFieldStyle()).padding(.horizontal,10)
                        Spacer()
                    }
                    Spacer().frame(height:50)
                    HStack {
                        Text("Nome do titular do cartão").font(.system(size: 20, weight: .bold)).padding(.horizontal,15)
                        Spacer()
                    }
                    Spacer().frame(height:20)
                    TextField("Nome", text : $cardName).textFieldStyle(CustomTextFieldStyle()).padding(.horizontal,15)
                    Spacer().frame(height:20)
                    TextField("Sobrenome", text : $cardSurName).textFieldStyle(CustomTextFieldStyle()).padding(.horizontal,15)
                    
                }
                Spacer().frame(height:20)
                
                Group {
                    HStack {
                        Text("Vencimeto").font(.system(size: 20, weight: .bold)).padding(.horizontal,15)
                        Spacer()
                    }
                    
                    Spacer().frame(height:20)
                    
                    HStack {
                        TextField("Mês", text : $month).textFieldStyle(CustomTextFieldStyle()).padding(.horizontal,15)
                        
                        TextField("Ano", text : $year).textFieldStyle(CustomTextFieldStyle()).padding(.horizontal,15)
                        
                    }
                    Spacer().frame(height:20)
                    HStack {
                        Text("Código de segurança").font(.system(size: 20, weight: .bold)).padding(.horizontal,15)
                        Spacer()
                    }
                    
                }
                
                Spacer().frame(height:20)
                
                Group {
                    TextField("CVV", text : $cVV).textFieldStyle(CustomTextFieldStyle()).padding(.horizontal,15)
                    
                    Spacer().frame(height:20)
                    
                    TextField("Selecionar número das parcelas", text : $year).textFieldStyle(CustomTextFieldStyle()).padding(.horizontal,15)
                    
                    Spacer().frame(height:20)
                    
                    HStack {
                        Text("Suas informações serão coletadas de acordo com a").font(.system(size: 18, weight: .medium)).padding()
                        Spacer()
                        Button(action: {
                            
                        } ){
                            Text("Política de Privacidade do PayPal").font(.system(size: 18, weight: .medium)).foregroundColor(.green)
                            
                        }
                        
                    }
                    Spacer().frame(height:20)
                    
                }
                
                Button(action: {
                    
                } ){
                    Text("Finalizar pagamento").font(.system(size: 22, weight: .bold)).foregroundColor(.white).padding(.horizontal, 90).padding(.vertical, 8).background(Color(hex:0x5d184b)).cornerRadius(8)
                }
            }
        }
    }
}

struct PaymentView_Previews: PreviewProvider {
    static var previews: some View {
        PaymentView()
    }
}

