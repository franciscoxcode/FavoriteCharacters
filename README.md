# 🎮 FavoriteCharacters

![Status](https://badgen.net/badge/status/in%20progress/yellow)
![Built in](https://badgen.net/badge/Built%20with/XCode/blue)
![Coded with](https://badgen.net/badge/Written%20with/Swift/green)
![Styling](https://badgen.net/badge/Styling/SwiftUI/purple)

A small SwiftUI app that displays a gallery of pixel-art characters, where users can tap a heart button to mark their favorites.


---
## 📷 Screenshot

![favorite-character-screenshot](https://github.com/user-attachments/assets/8745a858-7852-46b6-8040-c10425fe0cbc)

---

## 🛠️ Tech Stack

![SwiftUI](https://badgen.net/badge/Styling/SwiftUI/blue?icon=nextjs&label=) – Declarative UI framework by Apple   
![XCode](https://badgen.net/badge/Built%20with/XCode/purple?icon=tailwindcss&label=) – Utility-first CSS framework for modern UI design  
![Swift](https://badgen.net/badge/Written%20with/Swift/pink?icon=markdown&label=) – Coding language for Apple products  
![SFSymbols](https://badgen.net/badge/SF/SF%20Symbols/green?icon=markdown&label=) – System icons used for buttons  
![GitHub](https://badgen.net/badge/Version%20Control/GitHub/black?icon=github&label=) – Version control and code collaboration  


---

## 📁 Project Structure

```bash
/Assets.xcassets          # Pixel art images (bart.png, lisa.png, etc.)
/Character.swift          # Character model struct
/FavoriteButton.swift     # Reusable heart toggle
/CharacterCardView.swift
/CharacterGridView.swift
/ContentView.swift        # Root view
```

---

## 🧩 Features

- Grid layout with `LazyVGrid`  
- `@State` and `@Binding` used for state management  
- Reusable components: card and heart button  
- Pixel art characters: Bart, Lisa, Maggie, Marge, Homer & Milhouse  
- Favorite toggle with SF Symbol feedback

---

## 🚧 Roadmap

- [x] Build character model and images  
- [x] Create favorite toggle with `@Binding`  
- [x] Display characters in grid layout  
- [ ] Add animations to the heart button  
- [ ] Add persistence (e.g. `@AppStorage`)  
- [ ] Add filter to show only favorites

---

## 🚀 Getting Started

1. Clone the repository
2. Open the `.xcodeproj` file in Xcode
3. Run the app on a simulator or real device

---

## 🤝 Contact

Feel free to connect or reach out:

- [GitHub](https://github.com/franciscoxcode)
- [LinkedIn](https://www.linkedin.com/in/franciscoxcode/)
- [Email](mailto:fxcasillas.dev@gmail.com)

---

## 📄 License

This project is for educational/demo purposes only. All pixel art assets are custom-generated and not affiliated with any official brand or character.
