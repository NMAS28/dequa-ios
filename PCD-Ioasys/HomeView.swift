//
//  HomeView.swift
//  PCD-Ioasys
//
//  Created by NMAS Amaral on 19/05/21.
//

import SwiftUI

struct HomeView: View {
    @State var search : String = ""
    var body: some View {
        NavigationView {
            ScrollView(.vertical) {
                VStack(spacing:10) {
                    Group {
                        Spacer().frame(height:40)
                        HStack {
                            Text("Olá,").font(.system(size: 26, weight: .medium)).padding(.horizontal, 10)
                            Spacer()
                        }
                        HStack {
                            Text("Seja bem vindo a DeQua!").font(.system(size: 30, weight: .bold)).padding(.horizontal, 10)
                            Spacer()
                        }
                        
                    }
                    HStack(spacing:2) {
                        Image("GlassImage").padding(.leading, 10)
                        TextField("Pesquisar", text : $search).textFieldStyle(CustomTextFieldStyle())
                    }.background(Color(hex:0xf2f2f2)).cornerRadius(12).frame(width: UIScreen.main.bounds.width*0.9, height: 60)
                    Spacer().frame(height:10)
                    Group {
                        NavigationLink(destination: RegisterViewPremium().navigationBarBackButtonHidden(true)){
                            
                            Image("SecondImage").renderingMode(.original).resizable().aspectRatio(contentMode: .fit).frame(width: UIScreen.main.bounds.width, height: 350)
                            
                        }
                    }
                    
                    
                    Group {
                        HStack {
                            Text("Principais vagas").font(.system(size: 35, weight: .medium)).padding()
                            Spacer()
                        }
                        HStack {
                            Text("Setor Administrativo").font(.system(size: 25, weight: .medium)).padding()
                            Spacer()
                        }
                        ScrollView(.horizontal){
                            HStack(spacing:15) {
                                ForEach(0..<5){_ in
                                    NavigationLink(destination: JobDetailView().navigationBarBackButtonHidden(true)){
                                        JobsCards()}.cornerRadius(15).shadow(radius: 15)
                                    
                                }
                            }.padding()
                        }
                        HStack {
                            Text("Setor Financeiro").font(.system(size: 25, weight: .medium)).padding()
                            Spacer()
                        }
                        ScrollView(.horizontal){
                            HStack(spacing:15) {
                                ForEach(0..<5){_ in
                                    NavigationLink(destination: JobDetailView().navigationBarBackButtonHidden(true)){
                                        JobsCards()}.cornerRadius(15).shadow(radius: 15)
                                    
                                }
                            }.padding()
                        }
                        HStack {
                            Text("Setor Pecuário").font(.system(size: 25, weight: .medium)).padding()
                            Spacer()
                        }
                        ScrollView(.horizontal){
                            HStack(spacing:15) {
                                ForEach(0..<5){_ in
                                    NavigationLink(destination: JobDetailView().navigationBarBackButtonHidden(true)){
                                        JobsCards()}.cornerRadius(15).shadow(radius: 15)
                                    
                                }
                            }.padding()
                        }
                        HStack {
                            Text("Setor Marketing").font(.system(size: 25, weight: .medium)).padding()
                            Spacer()
                        }
                        ScrollView(.horizontal){
                            HStack(spacing:15) {
                                ForEach(0..<5){_ in
                                    NavigationLink(destination: JobDetailView().navigationBarBackButtonHidden(true)){
                                        JobsCards()}.cornerRadius(15).shadow(radius: 15)
                                    
                                    
                                }
                            }.padding()
                        }
                    }
                    Spacer().frame(height: 60)
                
                    Text("Melhores empresas para se trabalhar sendo PCD").font(.system(size: 25, weight: .bold)).padding()
                    
                    ScrollView(.horizontal){
                        HStack(spacing:15) {
                            ForEach(0..<10){_ in
                                Image("EnterpriseOneImage").renderingMode(.original).resizable().aspectRatio(contentMode: .fit).frame(width: 250, height: 250)
                                
                            }
                        }.padding()
                    }

                    Spacer().frame(height:60)
                }.frame(maxWidth: .infinity)}
                .navigationBarHidden(true).navigationBarTitle(Text("Home")).edgesIgnoringSafeArea([.top,.bottom]).navigationBarBackButtonHidden(true)
            
        }
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
