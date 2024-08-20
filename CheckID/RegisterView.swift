//
//  RegisterView.swift
//  CheckID
//
//  Created by Satoshi Nishizuka on 2023/10/23.
//

import SwiftUI
import CoreData

struct RegisterView: View {
    @Environment(\.managedObjectContext) private var viewContext
    @Environment(\.isPresented) private var isPresented
    @State private var name = ""
    @State private var id = ""
    @State private var fileId = ""
    @State private var nameError = false
    @State private var idError = false
    
    var userId: NSManagedObjectID?
    let registerViewModel = RegisterUserModel()
    
    var body: some View {
        NavigationStack {
            VStack {
                Form {
                    Section {
                        HStack {
                            TextField("氏名", text: $name, prompt: Text("氏名"))
                                .font(.title)
                                .fontWeight(.bold)
                            if nameError {
                                Text("Name is required")
                                    .foregroundColor(.red)
                            }
                            Button(action: {
                                isPresented
                            }) {
                                Image(systemName: "xmark.circle.fill")
                                    .font(.title3)
                                    .foregroundStyle(.blue)
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    RegisterView()
}
