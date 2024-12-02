//
//  ContentView.swift
//  AttentiveScroll
//
//  Created by Irina Deeva on 02/12/24.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    TabView {
      ScrollViewTab(content: "Tab 1 Content")
        .tabItem {
          Label("First", systemImage: "star.fill")
        }
    }

  }
}

struct ScrollViewTab: View {
  let content: String

  var body: some View {

    GeometryReader { geometry in

      ZStack(alignment: .bottom) {
        ScrollView {
          VStack {
            ForEach(0..<100) { index in
              Text("\(index + 1)")
                .frame(maxWidth: .infinity)
            }
          }
        }
        .safeAreaInset(edge: .bottom) {
          Color.clear.frame(height: 50)
        }

        GeometryReader { geometry in
          Color.red
            .frame(height: geometry.size.height)
            .ignoresSafeArea()
            .opacity(0.5)
        }
        .frame(height: 50)
      }
      .scrollIndicators(.visible)
    }
  }
}


#Preview {
  ContentView()
}
