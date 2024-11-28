   //  BoxTabView.swift
  //  PickingColorSelectionAnimationFormate
 // Created by Sumit on 18/11/24.

 import SwiftUI

 struct BoxTabView: View {
    
    @StateObject var modelView = SelectingColorFormsMVVM()
    @State private var profileText = " Enter your bio"
     
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack {
                TextEditor(text: $profileText)
                    .font(.custom("Georgia", size: 24, relativeTo: .headline))
                    .colorMultiply(modelView.mainBordingColorPicker)
                    .cornerRadius(14)
                    .padding()
                    .foregroundStyle(.black)
                    .frame(width: 400, height: 400)
                    .shadow(radius: 6)
                HStack {
                    Text("Color Picker Category")
                        .font(.custom("Georgia", size: 24, relativeTo: .title2))
                        .foregroundStyle(.white)
                    Spacer()
                }.padding(.leading)
                SelectingColorForms(viewModel: modelView)
                    .padding(.top, 10)
                Spacer()
            }
            .padding(.top, 30)
        }
    }
 }

#Preview {
    BoxTabView()
}
