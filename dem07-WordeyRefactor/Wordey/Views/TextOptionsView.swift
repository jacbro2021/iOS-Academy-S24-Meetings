//
//  SettingsView.swift
//  Wordey
//
//  Created by AlecNipp on 10/16/22.
//

import SwiftUI

struct TextOptionsView: View {
    ///  The text that is passed from ContentView. It is a let constant here because there is no way to modify it in this screen.
    @ObservedObject var vm: WordeyViewModel
    
    var body: some View {
        ZStack {
            Color(UIColor.systemGroupedBackground)
                .ignoresSafeArea()
            
            VStack(spacing: 30) {
                RenderedTextView(vm: vm)
                    .padding()
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: Alignment(horizontal: vm.wordSettings.hAlignment.systemAlignment, vertical: vm.wordSettings.vAlignment.systemAlignment))
                    .background(Color.white, in: RoundedRectangle(cornerRadius: 5))
                
                VStack(alignment: .leading) {
                    Text("FONT")
                        .font(.footnote)
                        .foregroundColor(.secondary)
                        .padding(.leading)
                    VStack {
                        Toggle(isOn: $vm.wordSettings.isBold) {
                            Text("Bold")
                        }
                        Divider()
                        Toggle(isOn: $vm.wordSettings.isItalicized) {
                            Text("Italics")
                        }
                        Divider()
                        Picker("Please choose a color", selection: $vm.wordSettings.textColor) {
                            ForEach(FontColor.allCases, id: \.self) {
                                Text($0.stringValue)
                            }
                        }
                        .pickerStyle(.segmented)
                        Divider()
                        Slider(
                            value: $vm.wordSettings.fontSize,
                            in: 1...100,
                            step: 1
                        ) {
                            Text("Font Size")
                        } minimumValueLabel: {
                            Text("0")
                        } maximumValueLabel: {
                            Text("100")
                        }
                    }
                    .padding()
                    .background(Color.white, in: RoundedRectangle(cornerRadius: 5))
                    
                }
                
                VStack(alignment: .leading) {
                    Text("ALIGNMENT")
                        .font(.footnote)
                        .foregroundColor(.secondary)
                        .padding(.leading)
                    VStack {
                        HStack {
                            Text("Horizontal")
                            Picker("Horizontal", selection: $vm.wordSettings.hAlignment) {
                                ForEach(HorizontalTextAlignment.allCases, id: \.self) {
                                    Text($0.rawValue)
                                }
                            }
                            .pickerStyle(.menu)
                        }
                        Divider()
                        
                        HStack {
                            Text("Vertical")
                            Picker("Vertical", selection: $vm.wordSettings.vAlignment) {
                                ForEach(VerticalTextAlignment.allCases, id: \.self) {
                                    Text($0.rawValue)
                                }
                            }
                            .pickerStyle(.automatic)
                        }
                        
                    }
                    .padding()
                    .background(Color.white, in: RoundedRectangle(cornerRadius: 5))
                    
                }
            }
            .padding(.horizontal, 20.0)
        }
        
        
    }
}


struct TextOptionsView_Previews: PreviewProvider {
    static var previews: some View {
        @StateObject var vm = WordeyViewModel()
        TextOptionsView(vm: vm)
    }
}
