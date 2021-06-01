//
//  TabBarController.swift
//  PCD-Ioasys
//
//  Created by NMAS Amaral on 22/05/21.
//

import SwiftUI

struct TabBarController: View {
    var body: some View {
        NavigationView {
            TabView {
                HomeView()
                    .tabItem {
                        Image("HomeIcon")
                        Text("Home")
                    }
                JobsView()
                    .tabItem {
                        Image("JobsIcon")
                        Text("Vagas")
                    }
                
                if DataClass.sharedManager.isPremium{
                    EventsView()
                        .tabItem{
                            Image("CamImage")
                            Text("Eventos")
                        }
                }
                
                MyAccountView()
                    .tabItem{
                        Image("UserIcon")
                        Text("Conta")
                    }
                
                
                
            }
        }.navigationBarHidden(true)
    }
}

struct TabBarController_Previews: PreviewProvider {
    static var previews: some View {
        TabBarController()
    }
}
