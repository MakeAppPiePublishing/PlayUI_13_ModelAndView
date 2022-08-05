import SwiftUI
struct MenuItemView: View {
    var imageName:String = pizzaImg
    var isTitle = false
    var isVertical = false
    var body: some View {
        if isVertical{
            VMenuItemView(imageName: imageName, isTitle: isTitle)
        } else {
            HMenuItemView(imageName: imageName, isTitle: isTitle)
        }
    }
}

struct MenuItemView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemView()
    }
}
