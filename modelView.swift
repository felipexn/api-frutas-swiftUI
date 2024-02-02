//
//  modelView.swift
//  hackatruckAPI
//
//  Created by Turma01-23 on 26/01/24.
//

import Foundation

class ViewModel : ObservableObject{
    @Published var arrayFrutas : [Frutas]  = []
    
    func BaixarDados(){
        guard let url = URL(string: "https://www.fruityvice.com/api/fruit/all" )else{
            return
        }
        
        let task = URLSession.shared.dataTask(with: url){[weak self] data, _, error in
            guard let data = data, error == nil else{
                return
            }
            do{
                let jsonDecod = try JSONDecoder().decode([Frutas].self,from:data)
                
                DispatchQueue.main.async{
                    self?.arrayFrutas = jsonDecod
                    
                }
            }catch{
                print(error)
            }
        }
        task.resume()
    }
}

