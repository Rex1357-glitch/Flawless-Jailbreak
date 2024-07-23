import SwiftUI

struct ContentView: View {
    @State private var isUserspaceRebooting = false

    var body: some View {
        NavigationView {
            ZStack {
                Color(.black).edgesIgnoringSafeArea(.all)
                
                VStack {
                    Spacer()
                    
                    Text("FlawlessJB")
                        .font(.system(size: 40))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.bottom, 50)
                    
                    VStack(spacing: 20) {
                        NavigationLink(destination: SettingsView()) {
                            Text("Settings")
                                .font(.system(size: 20))
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color.gray.opacity(0.3))
                                .cornerRadius(10)
                        }
                        
                        Button(action: {
                            // Simulate Reboot Userspace
                            withAnimation {
                                isUserspaceRebooting = true
                            }
                            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                                isUserspaceRebooting = false
                            }
                        }) {
                            Text("Reboot Userspace")
                                .font(.system(size: 20))
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color.gray.opacity(0.3))
                                .cornerRadius(10)
                        }
                        
                        NavigationLink(destination: AboutView()) {
                            Text("Credits")
                                .font(.system(size: 20))
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color.gray.opacity(0.3))
                                .cornerRadius(10)
                        }
                    }
                    .padding(.horizontal, 20)
                    
                    Spacer()
                    
                    Text("Jailbroken")
                        .font(.system(size: 16))
                        .foregroundColor(.white)
                        .padding(.bottom, 20)
                }
                .padding(.top, 50)
                
                if isUserspaceRebooting {
                    Color.black
                        .edgesIgnoringSafeArea(.all)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
