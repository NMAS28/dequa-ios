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
    @State var selectedIndexStatements: Int? = nil
    let optionsStatements : [String] = ["1x Sem juros", "2x Sem juros", "3x Sem juros", "4x Com juros", "5x Com juros", "6x Com juros", "7x Com juros", "8x Com juros", "9x Com juros", "10x Com juros"]
    @State var selectedIndexMonths: Int? = nil
    let optionsMonths : [String] = ["Janeiro", "Fevereiro", "Março", "Abril", "Maio", "Junho", "Julho", "Agosto", "Setembro", "Outubro", "Novembro", "Dezembro"]
    @State var selectedIndexYears: Int? = nil
    let optionsYears : [String] = ["2021", "2022", "2023", "2024", "2025", "2026", "2027", "2028", "2029", "2030", "2031", "2032", "2033", "2034", "2035", "2036", "2037", "2038", "2039", "2040"]
    var body: some View {
        VStack {
            Spacer().frame(height:40)
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
                        HStack {
                            PickerField("Mês", data: self.optionsMonths, selectionIndex: $selectedIndexMonths).padding()
                            Image("ArrowImage").renderingMode(.original).resizable().aspectRatio(contentMode: .fit).frame(width: 30, height: 30).padding(.horizontal,5)
                        }.background(Color(hex:0xf2f2f2)).cornerRadius(12).frame(width: UIScreen.main.bounds.width*0.40, height:60).padding()
                        
                        
                        HStack {
                            PickerField("Ano", data: self.optionsYears, selectionIndex: $selectedIndexYears).padding()
                            Image("ArrowImage").renderingMode(.original).resizable().aspectRatio(contentMode: .fit).frame(width: 30, height: 30).padding(.horizontal,5)
                        }.background(Color(hex:0xf2f2f2)).cornerRadius(12).frame(width: UIScreen.main.bounds.width*0.40, height:60).padding()
                        
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
                    
                    HStack {
                        PickerField("Selecione o número de parcelas", data: self.optionsStatements, selectionIndex: $selectedIndexStatements).padding(.horizontal,10)
                        Image("ArrowImage").renderingMode(.original).resizable().aspectRatio(contentMode: .fit).frame(width: 30, height: 30).padding(.horizontal,5)
                    }.background(Color(hex:0xf2f2f2)).cornerRadius(12).frame(width: UIScreen.main.bounds.width*0.92, height:60).padding()
                    
                    Spacer().frame(height:20)
                    
                    VStack {
                        Text("Suas informações serão coletadas de acordo com a").font(.system(size: 16, weight: .medium))
                        Button(action: {
                            UIApplication.shared.open(URL(string: "https://www.paypal.com/br/webapps/mpp/ua/acceptableuse-full")!)
                        } ){
                            Text("Política de Privacidade do PayPal").font(.system(size: 16, weight: .medium)).foregroundColor(.green)
                            
                        }
                        
                    }
                    Spacer().frame(height:30)
                    
                }
                
                Button(action: {
                    UIAlertController.alert(title: "Pagamento realizado com sucesso!", message: "")
                    
                } ){
                    Text("Finalizar pagamento").font(.system(size: 22, weight: .bold)).foregroundColor(.white).padding(.horizontal, 90).padding(.vertical, 8).background(Color(hex:0x5d184b)).cornerRadius(8)
                }
            }
        }.navigationBarHidden(true).navigationBarTitle(Text("PaymentView")).edgesIgnoringSafeArea([.top,.bottom])
    }
}

struct PaymentView_Previews: PreviewProvider {
    static var previews: some View {
        PaymentView()
    }
}

