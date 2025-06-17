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
        Character(name: "zico", image: "zico"),
        Character(name: "lumi", image: "lumi"), 
        Character(name: "dado", image: "dado"),
        Character(name: "nira", image: "nira"),
        Character(name: "piko",  image: "piko"),
        Character(name: "timo", image: "timo")
        
    ]
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        ZStack {
            Color.green.opacity(0.1)
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
                VStack(spacing: 4) {
                    Image(character.image)
                        .resizable()
                        .frame(width: 90, height: 90)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .padding(.top)
                    Text(character.name)
                        .foregroundColor(.black)
                    Image(systemName: character.favorite ? "heart.fill" : "heart")
                        .foregroundColor(character.favorite ? .orange : .black)
                        .padding(.bottom)
                }
                .padding(5)
            }
            .padding(5)
            .frame(width: 150)
            .background(Color.green.opacity(0.1))
            .cornerRadius(15)
            
        }
    }
}

#Preview {
    ContentView()
}
