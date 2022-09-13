//
//  jokesViewModel.swift
//  JokesAppSwiftUI
//
//  Created by Alperen Kavuk on 13.09.2022.
//

import Foundation
import Alamofire

class jokesViewModel : ObservableObject {
    
   @Published var jokes = [Value]()
    
    init(){
        getjokes()
    }
     
    func getjokes(count: Int = 6) {
        
        AF.request("http://api.icndb.com/jokes/random/\(count)",method: .get).responseDecodable(of:Welcome.self) { response in
         
            switch response.result {
                
            case .success(let data):
                let value = data.value
                self.jokes += value
            case .failure(let eror):
                print(eror)
            }
            
        }
            
    }

}
