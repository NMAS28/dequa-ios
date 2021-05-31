import SwiftUI

struct JobDetailView: View {
    @State var linkedinUser: String = ""
    @State var CVName: String = ""
    var body: some View {
        Group{
            VStack(spacing:60){
                Spacer().frame(height:10)
                
                ScrollView(.vertical){
                    Text("Vagas").font(.system(size: 27, weight: .bold))
                    Image("CompaniesBanner").renderingMode(.original).resizable().aspectRatio(contentMode: .fit).frame(width: UIScreen.main.bounds.width, height: 350)
                    Group {
                        HStack {
                            Spacer().frame(width:10)
                            Text("Auxiliar de Produção").font(.system(size: 27, weight: .bold)).padding(.vertical,5)
                            Spacer()}
                        HStack {
                            Spacer().frame(width:10)
                            Text("Ioasys").font(.system(size: 25, weight: .bold)).padding(.vertical,5)
                            Spacer()
                        }
                        HStack {
                            Spacer().frame(width:10)
                            Text("Júnior/Trainee").font(.system(size: 21, weight: .medium)).padding(.vertical,5)
                            Spacer()
                        }
                        HStack {
                            Spacer().frame(width:10)
                            Image("LocalizationIcon").renderingMode(.original).resizable().aspectRatio(contentMode: .fit).frame(width: 27, height: 27)
                            Text("João Pessoa").font(.system(size: 23, weight: .medium))
                            Spacer()
                        }
                        HStack {
                            Spacer().frame(width:10)
                            Image("IconMoney").renderingMode(.original).resizable().aspectRatio(contentMode: .fit).frame(width: 27, height: 27)
                            Text("Faixa salarial a combinar").font(.system(size: 23, weight: .medium))
                            Spacer()
                        }
                        HStack {
                            Spacer().frame(width:10)
                            Image("IconBriefcase").renderingMode(.original).resizable().aspectRatio(contentMode: .fit).frame(width: 27, height: 27)
                            Text("Contrato CLT").font(.system(size: 23, weight: .medium))
                            Spacer()
                        }
                    }
                    
                    Divider()
                    Group {
                        HStack {
                            Text("Detalhes da vaga").font(.system(size: 23, weight: .bold)).padding()
                            Spacer()
                        }
                        Text("Executar as atividades de processamento e industrialização de alimentos na linha de produção de atuação, de acordo com os procedimentos operacionais, padrão de qualidade e produtividade definido, normas de segurança e legislação vigente. Fique ligado nos requisitos da vaga.").font(.system(size: 20, weight: .regular)).padding(10)
                        
                        HStack {
                            Text("Informações sobre a empresa").font(.system(size: 23, weight: .bold)).padding()
                            Spacer()
                        }
                        Text("Somos especialistas em trazer o melhor do universo digital para nossos clientes e a transormar a sociedade, a repensá-la e a evoluií-la. Ajudamos marcas a inovar através da transformação digital e seguindo os princípios de metodologia ágil e abordagem centrada ao usuário, modificando a realidade das pessoas com tecnologia de ponta a ponta.").font(.system(size: 20, weight: .regular)).padding()
                        
                        HStack {
                            Text("Habilidades necessárias").font(.system(size: 20, weight: .bold)).padding()
                            Spacer()
                        }
                        HStack {
                            Text("•Alfabetizado").font(.system(size: 18, weight: .regular)).padding(.horizontal,10)
                            Spacer()
                        }
                        HStack {
                            Text("•Disponibilidade de horário").font(.system(size: 18, weight: .regular)).padding(.horizontal,10)
                            Spacer()
                        }
                        HStack {
                            Text("•Disponibilidades aos sábados").font(.system(size: 18, weight: .regular)).padding(.horizontal,10)
                            Spacer()
                        }
                        HStack {
                            Text("•Assiduidade, compromisso e responsabilidade").font(.system(size: 18, weight: .regular)).padding(.horizontal,10)
                            Spacer()
                        }
                    }
                    
                    Divider()
                    
                    Group {
                        HStack {
                            Text("Carga horária").font(.system(size: 20, weight: .bold)).padding()
                            Spacer()
                        }
                        HStack {
                            Text("8 horas diárias").font(.system(size: 18, weight: .regular)).padding(.horizontal,15)
                            Spacer()
                        }
                        
                        Divider()
                        
                        HStack {
                            Text("A empresa tem acessibilidade").font(.system(size: 20, weight: .bold)).padding(.horizontal,15)
                            Spacer()
                        }
                        HStack {
                            Text("Sim, a empresa tem todos os artefatos necessários para lidar com sua deficiência.").font(.system(size: 18, weight: .regular)).padding()
                            Spacer()
                        }
                        HStack {
                            Spacer().frame(width:10)
                            Image("AnnexIcon").renderingMode(.original).resizable().aspectRatio(contentMode: .fit).frame(width: 27, height: 27)
                            Text("Anexar link do Linkedin").font(.system(size: 18, weight: .medium))
                            Spacer()
                        }
                        
                        Divider()
                        
                        HStack {
                            TextField("Linkedin", text : $linkedinUser).textFieldStyle(CustomTextFieldStyle()).padding()
                            Spacer()
                        }
                        HStack {
                            Spacer().frame(width:10)
                            Image("IconUpload").renderingMode(.original).resizable().aspectRatio(contentMode: .fit).frame(width: 27, height: 27)
                            Text("Carregar Currículo").font(.system(size: 18, weight: .medium))
                            Spacer()
                        }
                        TextField("Selecionar Arquivo", text : $CVName).textFieldStyle(CustomTextFieldStyle()).padding()
                        
                        
                    }
                    
                    Button(action: {
                        UIAlertController.alert(title: "Inscrito com sucesso!", message: "")
                    } ){
                        Text("Aplicar para vaga").font(.system(size: 22, weight: .bold)).foregroundColor(.white).padding(.horizontal, 80).padding(.vertical, 8).background(Color(hex:0x5d184b)).cornerRadius(8)
                    }
                                           NavigationLink(
                                            destination: TabBarController().navigationBarBackButtonHidden(true))
                    {
                        Text("Voltar").font(.system(size: 22, weight: .bold)).foregroundColor(Color(hex:0x5d184b)).padding(.horizontal, 80).padding(.vertical, 8)
                    }
                    
                    
                    Spacer().frame(height:60)
                }
                
            }.navigationBarHidden(true).navigationBarTitle(Text("")).edgesIgnoringSafeArea([.top,.bottom]).navigationBarBackButtonHidden(true)
        }
        
    }
}
struct CustomTextFieldStyle: TextFieldStyle{
    func _body(configuration:TextField<_Label>) -> some View{
        configuration.padding().background(Color(hex:0xf2f2f2)).cornerRadius(12)
    }
}
struct ErrorTextFieldStyle: TextFieldStyle{
    func _body(configuration:TextField<_Label>) -> some View{
        configuration.padding().background(Color(hex:0xe7e7e7)).cornerRadius(8).border(Color.red)
    }
}
struct JobDetailView_Previews: PreviewProvider {
    static var previews: some View {
        JobDetailView()
    }
}

