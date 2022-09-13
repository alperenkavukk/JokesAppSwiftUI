//
//  ContentView.swift
//  JokesAppSwiftUI
//
//  Created by Alperen Kavuk on 13.09.2022.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var jokesVM = jokesViewModel()

    var body: some View {
        NavigationView {
            
            List(jokesVM.jokes) { element in
                Text (element.joke)
            }.toolbar {
                Button(action: addJoke) {
                    Text("Get New Joke")
                }
            }
            
            .navigationTitle("Jokes App")
        }
    }
    func addJoke (){
    
        jokesVM.getjokes(count: 1)
    }
}
 
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
