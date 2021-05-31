//
//  EventDetailView.swift
//  PCD-Ioasys
//
//  Created by NMAS Amaral on 27/05/21.
//

import SwiftUI

struct EventDetailView: View {
    var body: some View {
        NavigationView{
            VStack(spacing:40){
                Spacer().frame(height:10)
                
                ScrollView(.vertical){
                    Text("Curso").font(.system(size:25, weight: .bold))
                    
                    Image("CourseOneImage").renderingMode(.original).resizable().aspectRatio(contentMode: .fit).frame(width:430, height: 370)
                    HStack {
                        Spacer().frame(width:10)
                        Text("Design de interface do Usuário").font(.system(size:25, weight: .bold)).padding(.vertical,5)
                        Spacer()
                    }
                    Group {
                        HStack{
                            Spacer().frame(width:10)
                            Image("CalendarImage").renderingMode(.original).resizable().aspectRatio(contentMode: .fit).frame(width: 35, height: 35)
                            Text("25 de Setembro de 2021").font(.system(size: 18, weight:.regular))
                            Spacer()
                        }
                        
                        HStack{
                            Spacer().frame(width: 10)
                            Image("CamImageTwo").renderingMode(.original).resizable().aspectRatio(contentMode: .fit).frame(width: 35, height: 35)
                            Text("Videoconferência").font(.system(size: 18, weight:.regular))
                            Spacer()
                        }
                        
                        HStack {
                            Text("Ofertado Legenda e tradução em libras").padding()
                            Spacer()
                        }
                        
                        Spacer().frame(height:60)
                        ScrollView(.vertical) {
                            HStack {
                                Text("Descrição do evento").font(.system(size: 27, weight:.medium)).foregroundColor(Color(hex:0x6a2957)).padding()
                                Spacer()
                            }
                            
                            Spacer().frame(height:30)
                            
                            Text("Dia 25 de Setembro inicia-se o curso de Design de Interface do Usuário.Será 15 capítulos sobre o assunto.").font(.system(size: 18, weight:.bold)).padding(.horizontal,10)
                            
                            Text("Aprenda as técnicas que abrangem as principais áreas do UI Design para Mobile, com exemplos da vida real e atividades práticas de fixação.").font(.system(size: 18, weight:.regular))
                            
                            Spacer().frame(height:40)
                            
                            Text("Neste curso os alunos irão desenvolver uma compreensão aprofundada sobre UI Design para dispositivos móveis, e as estratégias e técnicas que abrangem todas as principais áreas do design de interface, com exemplos da vida real e aplicação prática de fixação.Para quem quer dar os primeiros passos na área de UX mas não possui qualquer experiência, esse é um dos nossos cursos para iniciantes, que te ajudará a começar e aprender na prática.").font(.system(size: 18, weight:.regular)).padding()
                            
                            Divider()
                            
                            
                        }
                        
                        
                    }
                    Button(action: {
                        UIAlertController.alert(title: "Inscrito com sucesso!", message: "")
                    } ){
                        Text("Increver-se").font(.system(size: 22, weight: .bold)).foregroundColor(.white).padding(.horizontal, 110).padding(.vertical, 8).background(Color(hex:0x5d184b)).cornerRadius(8)
                    }
                    NavigationLink(
                        destination: TabBarController())
                    {
                        Text("Voltar").font(.system(size: 22, weight: .bold)).foregroundColor(Color(hex:0x5d184b)).padding(.horizontal, 80).padding(.vertical, 8)
                    }
                    
                    Spacer().frame(height:60)
                }
                
                
            }.navigationBarHidden(true).navigationBarTitle(Text("Home")).edgesIgnoringSafeArea([.top,.bottom]).navigationBarBackButtonHidden(true)
        }
    }
    
    struct EventDetailView_Previews: PreviewProvider {
        static var previews: some View {
            EventDetailView()
        }
    }
}
