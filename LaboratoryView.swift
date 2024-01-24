import SwiftUI

struct LaboratoryView : View {
    var body: some View {
        HStack{
            VStack{
                Rectangle()
                    .clipShape(RoundedRectangle(cornerRadius: 30))
                    .foregroundColor(.blue)
                    .frame(height: 450)
                    .padding(EdgeInsets(top: -10, leading: 10, bottom: 10, trailing: 10))
                                    
                Image("IMG_0047-removebg-preview") 
                    .resizable()
                    .frame(width: 300, height: 300)
                    .scaledToFit()
                    .padding(EdgeInsets(top: 10, leading: 10, bottom: -10, trailing: 10))
            }
            .frame(width: 380)
            
            
            VStack{
                Rectangle()
                    .foregroundColor(.blue) 
                    .frame(height: 570)
                    .clipShape(RoundedRectangle(cornerRadius: 30))
                    .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                
                ScrollView(.horizontal){
                    HStack{
                        ForEach(1..<10, id: \.self){ X in
                            Rectangle()
                            .foregroundColor(.blue)
                            .frame(width: 150, height: 150)
                            .clipShape(RoundedRectangle(cornerRadius: 30))
                            .padding()
                        }
                    } 
                    .padding(EdgeInsets(top: 15, leading: 0, bottom: 15, trailing: 0))
                }
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

