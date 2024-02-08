//
//  DetailsScreen.swift
//  wwcTracker
//
//  Created by Claudia Maciel on 1/19/24.
//

import SwiftUI

struct DetailsScreen: View {
    @State private var taskText: String = ""
    
    var body: some View {
        VStack(spacing: 5) {
            HStack(alignment: .lastTextBaseline, spacing: 16){
                Spacer()
                Button(action: {
                    // TODO: Add confirmation pop-up for cancel button #131
                },
                       label: {
                    Image(systemName: "trash.circle")
                        .foregroundStyle(.black)
                        .font(.title)
                })
                Button(action: {
                    // TODO: Add confirmation pop-up for delete button #132
                },
                       label: {
                    Image(systemName: "x.circle.fill")
                        .foregroundStyle(.red)
                        .font(.title)
                })
            }
            
            HStack {
                Text("Date")
                    .font(.largeTitle)
                    .fontWeight(.medium)
                Spacer()
                Button(action: {
                    // TODO: Add date picker #129
                },
                       label: {
                    Text("DATE")
                        .foregroundStyle(.white)
                        .fontWeight(.medium)
                })
                .padding()
                .border(Color.green, width: 3)
                .background(.green)
            }
            .padding()
            
            TextField("Enter your task", text: $taskText)
                .frame(minWidth: 0, maxWidth: 300, minHeight: 0, maxHeight: 200, alignment: .topLeading)
                .padding()
                .border(.secondary)
            
            HStack {
                Text("Start time")
                    .font(.largeTitle)
                    .fontWeight(.medium)
                Spacer()
                Button(action: {
                    // TODO: Add date picker #129
                },
                       label: {
                    // TODO: Add variable here that will get replaced by date picker text
                    Text("TIME")
                        .foregroundStyle(.white)
                        .fontWeight(.medium)
                })
                .padding()
                .border(Color.green, width: 3)
                .background(.green)
            }
            .padding()
            
            HStack {
                Text("End time")
                    .font(.largeTitle)
                    .fontWeight(.medium)
                Spacer()
                Button(action: {
                    // TODO: Add date picker #129
                },
                       label: {
                    // TODO: Add variable here that will get replaced by date picker text
                    Text("TIME")
                        .foregroundStyle(.white)
                        .fontWeight(.medium)
                })
                .padding()
                .border(Color.green, width: 3)
                .background(.green)
            }
            .padding()
            Spacer()
            Button("Done") {
                // TODO: Done Button redirect #133
            }
            .frame(minWidth: 0, maxWidth: 200)
            .font(.system(size: 18))
            .padding()
            .foregroundColor(.green)
            .overlay(
                RoundedRectangle(cornerRadius: 25)
                    .stroke(lineWidth: 3)
                    .foregroundStyle(.green))
            .cornerRadius(25)
        }
        .padding()
    }
}

#Preview {
    DetailsScreen()
}
