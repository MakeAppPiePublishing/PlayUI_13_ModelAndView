import SwiftUI

import SwiftUI
struct HMenuItemView: View {
    var imageName:String = pizzaImg
    var isTitle = false
    var body: some View {
        HStack{
            Image(imageName)
                .resizable()
                .frame(maxWidth:150,maxHeight: 150)
                .clipShape(Circle())
            VStack(alignment:.leading){
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

struct HMenuItemView_Previews: PreviewProvider {
    static var previews: some View {
        HMenuItemView()
    }
}

