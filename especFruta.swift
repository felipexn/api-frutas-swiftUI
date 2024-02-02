//
//  especFruta.swift
//  hackatruckAPI
//
//  Created by Turma01-23 on 26/01/24.
//

import SwiftUI

struct especFruta: View {
    @State var frutaAtual : Frutas 
    var a = Color("aa")
    var body: some View {
        
            GeometryReader{
                geo in
                VStack{
                    Spacer()
                    VStack{
                        
                        Spacer()
                        HStack{
                            Spacer()
                            Text(frutaAtual.name).font(.largeTitle).frame(width: 222,height: 155).background(LinearGradient(colors: [.blue, .green] , startPoint: .bottom, endPoint: .top)).cornerRadius(22).foregroundColor(Color .white)
                            Spacer()
                        }
                        Spacer()
                        VStack(spacing: 22){
                            
                            Text("Valor Nutritivo").font(.title)
                            VStack{
                                
                                Text("Calorias: \(frutaAtual.nutritions.calories)")
                                Text("Gordura:\(frutaAtual.nutritions.fat)")
                                Text("Proteina:\(frutaAtual.nutritions.protein)")
                                Text("Acucar: \(frutaAtual.nutritions.sugar)")
                                
                            }.font(.title2).foregroundColor(Color .yellow)
                            
                        }.padding()
                        Spacer()
                        
                        
                        
                        
                    }
                
                
                
            }
        }.background(LinearGradient(colors: [.blue, .green], startPoint: .top, endPoint: .bottom))
        
    }
    
}

