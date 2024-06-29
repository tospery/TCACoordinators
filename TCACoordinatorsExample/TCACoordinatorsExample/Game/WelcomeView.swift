import ComposableArchitecture
import Foundation
import SwiftUI

struct WelcomeView: View {
  let store: StoreOf<Welcome>

  var body: some View {
    VStack {
      Text("Welcome").font(.headline)
      Button("Log in") {
        store.send(.logInTapped)
      }
    }
    .navigationTitle("Welcome")
  }
}

struct Welcome: Reducer {
  struct State: Equatable {
    let id = UUID()
  }

  enum Action {
    case logInTapped
  }

  var body: some ReducerOf<Self> {
    EmptyReducer()
  }
}
