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

## 🔧 Features & Stack Used

- Grid layout using `LazyVGrid` from **SwiftUI**, displaying pixel-art characters responsively
- Favorite toggle built with a reusable `@Binding`-based button using **SF Symbols**
- Component structure with `CharacterCardView`, `CharacterGridView`, and `FavoriteButton`, written in **Swift**
- Custom assets organized in `Assets.xcassets` and displayed using `Image`
- State-driven updates using `@State` and `@Binding` to sync favorites across views
- Built entirely in **Xcode** and version-controlled with **GitHub**

---

## 🧪 Highlighted Technical Detail

The heart button uses a custom `@Binding`-driven toggle inside a reusable view.  
It receives a `Bool` binding from the parent card view (`CharacterCardView`) and updates the favorite status directly.  
This allowed me to separate UI and logic cleanly while learning more about state sharing in SwiftUI.

---

## 📁 Project Structure

```bash
/Assets.xcassets          # Pixel-art character images (e.g. bart.png, lisa.png)
/Character.swift          # Model struct defining each character’s data
/FavoriteButton.swift     # Reusable heart toggle button with @Binding
/CharacterCardView.swift  # Individual character card displaying image + heart
/CharacterGridView.swift  # View showing grid of all characters using LazyVGrid
/ContentView.swift        # Root view containing the main layout
```

---

## 🚧 Roadmap

- [x] Build character model and images  
- [x] Reusable heart toggle with `@Binding`  
- [x] Display characters in `LazyGrid`  
- [ ] Add animations to the heart button  
- [ ] Add persistence (e.g. `@AppStorage`)  
- [ ] Add filter to show only favorites

---

## 🚀 Getting Started

To run this app locally:

### Requirements
- Xcode 15 or newer
- macOS Ventura or later
- iOS Simulator or real device (iOS 16+)

### Steps

1. Clone this repository:
```bash
git clone https://github.com/your-username/FavoriteCharacters.git
```

2. Open the project in Xcode:
  ```bash
  open FavoriteCharacters.xcodeproj
  ```

3. Build and run the app on a simulator or real device.

---

## 🤝 Contact

Feel free to connect or reach out:

- [GitHub](https://github.com/franciscoxcode)
- [LinkedIn](https://www.linkedin.com/in/franciscoxcode/)
- [Email](mailto:fxcasillas.dev@gmail.com)

---

## 📄 License

This project is for educational/demo purposes only. All pixel art assets are custom-generated and not affiliated with any official brand or character.
