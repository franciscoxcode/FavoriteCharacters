//
//  ContentView.swift
//  FavoriteCharacters
//
//  Created by Francisco Jean on 17/06/25.
//

import SwiftUI

struct Character: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    var favorite = false
}

struct ContentView: View {
    @State var characters = [
        Character(name: "Bart", image: "bart"),
        Character(name: "Lisa", image: "lisa"), 
        Character(name: "Homer", image: "homer"),
        Character(name: "Marge", image: "marge"),
        Character(name: "Maggie",  image: "maggie"),
        Character(name: "Milhouse", image: "milhouse")
        
    ]
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        ZStack {
            Color.yellow.opacity(0.1)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("Choose your favorite character")
                    LazyVGrid(columns: columns) {
                        ForEach($characters){ $character in 
                            CharacterCardView(character: $character)
                        }
                    }
                    .padding()         
            }
        }
    }
}

struct CharacterCardView: View {
    @Binding var character: Character
    var body: some View {
        VStack {
           
            Button(action: {
                character.favorite.toggle()
            }){
                VStack {
                    Image(character.image)
                        .resizable()
                        .frame(width: 120, height: 120)
                    Text(character.name)
                    Image(systemName: character.favorite ? "heart.fill" : "heart")
                }
                
            }
            .foregroundColor(character.favorite ? .red : .black)
            .padding(5)
            
        }
    }
}

#Preview {
    ContentView()
}
