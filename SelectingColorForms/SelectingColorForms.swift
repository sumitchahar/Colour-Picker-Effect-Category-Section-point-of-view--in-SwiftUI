  //  ContentView.swift
 //  PickingColorSelectionAnimationFormate
//  Created by Sumit on 15/11/24.

import SwiftUI

 struct SelectingColorForms: View {
    
    @ObservedObject var viewModel: SelectingColorFormsMVVM
    
   var body: some View {
         VStack {
            ScrollView(.horizontal) {
             HStack {
              ForEach((viewModel.items), id: \.self) { index in
                HStack {
                  Circle()
                        .stroke(index == viewModel.selectingItems.first ? .white : .clear, lineWidth: 3)
                            .fill(index == viewModel.selectingItems.first ? .red : viewModel.colorSet[index - 1])
                            .frame(width:50,height:50)
                            .shadow(color:.white,radius: 2)
                            .overlay(content: {
                                Image(systemName: index == viewModel.selectingItems.first ? "checkmark" : "")
                                 .frame(width:40,height:40)
                                 .foregroundStyle(.white)
                           })
                       }
                       . onTapGesture {
                           viewModel.updateItems(index)
                       }
                       .frame(width:70,height:70)
                       .background(.clear)
                       .tag(index)
                   }
               }
               .padding([.leading,.trailing])
               .background(.clear)
           }.scrollIndicators(.hidden)
               .onChange(of: viewModel.selectingItems.first, perform: { index in
                   print("@@@@")
                   print(index as Any)
               })
         }
     }
  }

#Preview {
    SelectingColorForms(viewModel: SelectingColorFormsMVVM())
 }
