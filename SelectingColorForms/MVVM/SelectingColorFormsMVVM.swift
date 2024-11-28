//
//  SelectingColorForms.swift
//  PickingColorSelectionAnimationFormate
//  Created by Sumit on 18/11/24.

 import SwiftUI
 import Foundation
 class SelectingColorFormsMVVM:ObservableObject {
  
      @Published var items:[Int] = [1,2,3,4,5,6,7,8]
      @Published var colorSet:[Color] = [.blue,.red,.green,.orange,.yellow,.blue,.green,.orange]
      @Published var selectingItems:[Int] = []
      
     @Published var mainBordingColorPicker:Color = .gray
     
      func updateItems(_ index:Int) {
          selectingItems.removeAll()
          selectingItems.append(index)
          mainBordingColorPicker = colorSet[index-1]
      }
     
    
      
  }
