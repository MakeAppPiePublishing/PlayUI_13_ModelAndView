import SwiftUI

import SwiftUI
struct VMenuItemView: View {
    var imageName:String = pizzaImg
    var isTitle = false
    var body: some View {
        VStack{
            Image(imageName)
                .resizable()
                .frame(maxWidth:150,maxHeight: 150)
                .clipShape(Circle())
            HStack{
                Text(imageName)
                    .font(isTitle ? .title2 : .headline)
                if !isTitle {
                    Text("Menu Description")
                        .font(.caption)
                }
                
            }
            Spacer()
        }
    }
}

struct VMenuItemView_Previews: PreviewProvider {
    static var previews: some View {
        VMenuItemView()
    }
}
