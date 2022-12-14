import SwiftUI
//
struct ContentView: View {
    func pizzaSize(size:Double)->String{
        if size >= 25 {return "X-Large"}
        if size >= 18 {return "Large"}
        if size >= 12 {return "Medium"}
        return "Small"
    }
    func pizzaOrderText(size:Double) -> Text{
        Text(pizzaSize(size:size) + " Pizza")
    }
    var menu = MenuModel(item1: testMenuItem1, item2: testMenuItem2)
    var bannerImage:String = surfgirl
    var color = Color.green
    var title:String
    var body: some View {
        
        VStack {
            Text(title)
                .font(.largeTitle).bold()
            pizzaOrderText(size: 17).font(.largeTitle)
            Image(bannerImage)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding()
            Divider()
            MenuItemView(imageName:testMenuItem1.name)
            MenuItemView(imageName:testMenuItem2.name)
            MenuItemView(imageName: menu.item1.name, isTitle: true,isVertical: true).padding(.leading)
            MenuItemView(imageName: menu.item2.name).padding(.leading)
            Spacer()
            
        }
        .background(color)
    }
}
