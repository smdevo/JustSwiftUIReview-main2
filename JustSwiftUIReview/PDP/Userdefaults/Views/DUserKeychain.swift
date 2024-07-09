//
//  DUserKeychain.swift
//  JustSwiftUIReview
//
//  Created by Samandar on 06/06/24.
//

import SwiftUI

struct DUserKeychain: View {
    
    @State var name: String = ""
    @State var lastName: String = ""
    
    @State var nametxt: String = ""
    @State var lastNametxt: String = ""
    
    @State var alerttext: String = ""
    @State var alertToggle: Bool = false
    
    
    
    var body: some View {
        
        VStack {
            
           TextField("Name", text: $nametxt)
                .padding()
                .background()
                .cornerRadius(10)
                .padding()
            
            
            
           Text(name)
                .font(.largeTitle)
            
           
           TextField("Lastname", text: $lastNametxt)
                 .padding()
                 .background()
                 .cornerRadius(10)
                 .padding()
            
           Text(lastName)
                .font(.largeTitle)
            
           
            Button {
                
                guard !nametxt.isEmpty && !lastNametxt.isEmpty else {
                    alerttext = "You have not completed yet"
                    alertToggle.toggle()
                    return}
                
                name = nametxt
                lastName = lastNametxt
                
            } label: {
                Text("Button")
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.red)
                    .cornerRadius(10)
            }

        }.padding()
        .background(Color.gray.opacity(0.4))
        .cornerRadius(10)
        .shadow(radius: 10,x: 10,y: 10)
        .padding()
        .alert(isPresented: $alertToggle, content: alrt1)
        .onAppear(perform: appear)
        .onDisappear(perform: disappeaer)
        
        
        
        
    }
        
    
    func alrt1() -> Alert {
        return Alert(title: Text(alerttext))
    }
    
    func appear() {
        if let obj1 = HelperDefaults.getObjOfUserH(key: "obj1") {
            
            name = obj1.firstname
            lastName = obj1.lastname
            
            print(name)
        }else {
            print("Not working")
        }
    }
    
    func disappeaer() {
        
        guard !name.isEmpty && !lastName.isEmpty else {print("empty");return}
        let obj = UserH.zeroUser
        obj.firstname = name
        obj.lastname = lastName
        
        HelperDefaults.storeObjOfUserH(user: obj, key: "obj1")
        
        print(obj)
    }
    
}

struct DUserKeychain_Previews: PreviewProvider {
    static var previews: some View {
        DUserKeychain()
    }
}
