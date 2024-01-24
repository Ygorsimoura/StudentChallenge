import SwiftUI

struct PlayView: View {
    
    
    var body: some View {
        NavigationStack{
            ZStack{
                //Color(.white)
                VStack{
                    Spacer()
                    Text("Otter's Labs")
                        .font(.system(size: 80, weight: .black, design: .rounded)) 
                    
                    
                    
                    NavigationLink(destination: OnboardingView()) {
                        Text("Let's build")
                            .font(.system(size: 30))
                        Image(systemName: "play.fill")
                            .font(.system(size: 22))
                    }
                    .padding()
                    .background(.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .fontDesign(.rounded)
                    .fontWeight(.black)
                    .foregroundColor(.white)
                    
                    Spacer()
                }
            }
        }
    }
}
