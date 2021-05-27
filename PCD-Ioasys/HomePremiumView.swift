//
//  HomePremiumView.swift
//  PCD-Ioasys
//
//  Created by NMAS Amaral on 26/05/21.
//

import SwiftUI

struct HomePremiumView: View {
    @State var search : String = ""
    var body: some View {
        NavigationView {
            ScrollView(.vertical) {
                VStack(spacing:10){
                    Spacer().frame(height:40)
                    Group {
                        HStack {
                            Text("Olá,").font(.system(size: 26, weight: .medium)).padding(.horizontal, 10)
                            Spacer()
                        }
                        HStack {
                            Text("Seja bem vindo!").font(.system(size: 30, weight: .bold)).padding(.horizontal, 10)
                            Spacer()
                        }
                        Spacer().frame(height:10)
                        
                        HStack(spacing:2) {
                            Image("GlassImage").padding(.leading, 10)
                            TextField("Pesquisar", text : $search).textFieldStyle(CustomTextFieldStyle())
                        }.background(Color(hex:0xf2f2f2)).cornerRadius(12).frame(width: UIScreen.main.bounds.width*0.9, height: 60)
                        Spacer().frame(height:10)
                    }
                    Image("HomePremiumImage").renderingMode(.original).resizable().aspectRatio(contentMode: .fit).frame(width: UIScreen.main.bounds.width, height: 350)
                    Group {
                        HStack {
                            Text("Cursos e Workshop").font(.system(size: 27, weight: .bold)).padding()
                            Spacer()
                        }
                        ScrollView(.horizontal){
                            HStack(spacing:15) {
                                ForEach(0..<5){_ in
                                    CourseOneCards().cornerRadius(15).shadow(radius: 15)
                                    
                                }
                            }.padding()
                        }
                        
                        HStack {
                            Text("Congressos e Palestras").font(.system(size: 25, weight: .bold)).padding()
                            Spacer()
                        }
                        
                        ScrollView(.horizontal){
                            HStack(spacing:15) {
                                ForEach(0..<5){_ in
                                    CourseTwoCards().cornerRadius(15).shadow(radius: 15)
                                    
                                }
                            }.padding()
                        }
                        HStack {
                            Text("Saúde e bem - estar").font(.system(size: 25, weight: .bold)).padding()
                            Spacer()
                        }
                        ScrollView(.horizontal){
                            HStack(spacing:15) {
                                ForEach(0..<5){_ in
                                    CourseThreeCards().cornerRadius(15).shadow(radius: 15)
                                    
                                }
                            }.padding()
                        }
                        Spacer().frame(height: 60)
                        
                        Text("Melhores empresas para se trabalhar sendo PCD").font(.system(size: 25, weight: .bold)).padding()
                        
                        ScrollView(.horizontal){
                            HStack(spacing:15) {
                                ForEach(0..<1){_ in
                               Image("EnterpriseOneImage").renderingMode(.original).resizable().aspectRatio(contentMode: .fit).frame(width: 250, height:250 )
                                    
                                }
                            }.padding()
                        }
                        
                    }
                }.frame(maxWidth: .infinity)}
                .navigationBarHidden(true).navigationBarTitle(Text("Home")).edgesIgnoringSafeArea([.top,.bottom])
            }
        }
    }
struct HomePremiumView_Previews: PreviewProvider {
    static var previews: some View {
        HomePremiumView()
    }
}
