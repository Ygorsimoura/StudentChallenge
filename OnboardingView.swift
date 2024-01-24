import SwiftUI

struct Instructions{
    let image: String
    let Description: String
}

private let instructions = [
    Instructions(image: "IMG_0047-removebg-preview", Description: "Olá engenheiro(a), seja bem vindo ao seu laboratorio! Eu me chamo Ada e vou te acompanhar na sua jornada de aprendizado!"),
    
    Instructions(image: "IMG_0047-removebg-preview", Description: "A partir de agora comeca a sua jornada pelo mundo da eletrônica! onde você aprender a usar circuitos, criar protopicos e contruir os seus proprios brinquedos!"),
    
    Instructions(image: "IMG_0047-removebg-preview", Description: "Vamos para a sala de testes! Lá iremos aprender como a magia acontece! Preparado?")
    
]

struct OnboardingView: View {
    @State private var currentMessage = 0
     @State private var shouldNavigateToLaboratory = false
    
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 600, height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 25))
                .foregroundColor(.blue)
            
            HStack(spacing: 35) {
                Image(instructions[currentMessage].image)
                    .resizable()
                    .frame(width: 200, height: 200)
                    .scaledToFit()
                
                VStack(spacing: 26) {
                    Text(instructions[currentMessage].Description)
                        .foregroundColor(.white)
                        .font(.system(size: 20, weight: .bold, design: .rounded))
                        .frame(width: 300)
        
                        Button {
                            if currentMessage == instructions.count - 1 {
                                shouldNavigateToLaboratory = true
                            } else if currentMessage < instructions.count - 1 {
                                currentMessage += 1
                            }
                        } label: {
                            HStack() {
                                Spacer()
                                
                                Text("Next")
                                    .font(.system(size: 17, weight: .black, design: .rounded))
                                    .foregroundColor(.white)
                                
                                Image(systemName: "chevron.right")
                                    .font(.system(size: 13, weight: .black, design: .rounded))
                                    .foregroundColor(.white)
                            }
                        }
                        .frame(width: 300)
                        .padding()
                    
                        NavigationLink("", destination: LaboratoryView(), isActive: $shouldNavigateToLaboratory) 
                        .navigationBarBackButtonHidden(true)
                }
            }
        }
    }
}


