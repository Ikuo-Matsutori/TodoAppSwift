import SwiftUI

struct ContentView: View {
    @State private var task: String = ""
    
    var body: some View {
        
        HStack{
            TextField("Enter task to finish", text: $task)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)
                .frame(minHeight: 44)
            
            Button(action:{
                print("Hey!")
            }){
                Text("Post")
                    .padding()
                    .frame(minWidth: 80)
                    .background(Color.gray)
                    .foregroundColor(.black)
                    .cornerRadius(8)
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color.black, lineWidth:2)
                    )
            }
            .padding()
        }
        .padding()
    }
}
#Preview {
    ContentView()
}
