//
//  ModelB.swift
//  JustSwiftUIReview
//
//  Created by Samandar on 15/05/24.
//

import SwiftUI


struct UserModel: Hashable {
    let displayName: String
    let userName: String
    let followersCount: Int
    let profileImageName: String
    
    
    static var zeroUsers: [UserModel] {
        
       return [
       
        UserModel(displayName: "Nick", userName: "tester1", followersCount: 200, profileImageName: "im1"),
        UserModel(displayName: "Rick", userName: "tester2", followersCount: 300, profileImageName: "im2"),
        UserModel(displayName: "Peter", userName: "tester3", followersCount: 400, profileImageName: "im3"),
        UserModel(displayName: "Louis", userName: "tester4", followersCount: 500, profileImageName: "im4"),
        UserModel(displayName: "John", userName: "tester5", followersCount: 1000, profileImageName: "im5"),
        UserModel(displayName: "Morthy", userName: "tester6", followersCount: 4000, profileImageName: "im6"),
        
       
       ]
        
        
        
        
    }
    
}


struct ModelB: View {
    
    @State var dataNames: [UserModel] = []
    
    
    
    
    
    var body: some View {
        NavigationView {
            
            List {
                ForEach(dataNames, id: \.self) {user in
                    
                    
                    NavigationLink {
                        
                        HomePage(imageName: user.profileImageName)
                        
                    } label: {
                        HStack(spacing: 20) {
                            Image(user.profileImageName)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 40,height: 40)
                                .clipShape(Circle())
                            
                            VStack(alignment: .leading) {
                                Text(user.displayName)
                                    .font(.system(size: 20))
                                    .foregroundColor(.primary)
                                
                                Text("@\(user.userName)")
                                    .font(.system(size: 15))
                                    .foregroundColor(.secondary)
                            }
                            
                            Spacer()
                            
                            Image(systemName: "person.circle")
                            
                            VStack(alignment: .leading) {
                                Text("\(user.followersCount)")
                                
                                Text("Followers")
                                    .foregroundColor(.secondary)
                                    .font(.system(size: 10))
                            }
                        }//HStack
                    }//NAVLINK

                    
                    
                   
                    
                }
                
            }
            .navigationTitle("Users")
        }
        .onAppear {
            dataNames = UserModel.zeroUsers
        }
    }
}//ModelBStruct


struct HomePage: View {
    
    @State var imageName: String
    
    var body: some View {
        
        Image(imageName)
            .resizable()
            .scaledToFit()
        
    }
}



struct ModelB_Previews: PreviewProvider {
    static var previews: some View {
        ModelB()
    }
}
