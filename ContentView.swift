//
//  ContentView.swift
//  hackatruckAPI
//
//  Created by Turma01-23 on 26/01/24.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var vm = ViewModel()
    
    
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack(spacing: 22) {
                    
                    ForEach(vm.arrayFrutas){ a in
                        NavigationLink(destination: especFruta(frutaAtual: a)){
                            HStack{
                                Spacer()
                                Text(a.name).font(.title).foregroundColor(Color .yellow)
                                Spacer()
                        
                                
                            }.padding()
                        }
                        
                    }
                    
                }.onAppear(){
                    vm.BaixarDados()
                }
            }.background(LinearGradient(colors: [.blue, .green], startPoint: .top, endPoint: .bottom))
                         
        }.accentColor(.white)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
