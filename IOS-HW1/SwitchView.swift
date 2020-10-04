import SwiftUI

@available(iOS 14.0, *)
struct SwitchView: View {
    var body: some View {
        ZStack {
            Image("背景")
                .resizable()
                .scaledToFill()
                .frame(minWidth: 0, maxWidth: .infinity)
                .edgesIgnoringSafeArea(.all)
            Text("我新買的眼鏡")
                .scaleEffect(1.2)
                .position(x: 68, y: 45)
            Text("好看吧！")
                .scaleEffect(1.2)
                .position(x:85, y:73)
            Group {
                SocksView()
                Feet()
                    .fill(Color(red: 165 / 255, green: 120 / 255, blue: 91 / 255))
                Feet()
                    .stroke()
                Pant()
                    .fill(Color(red: 221 / 255, green: 0 / 255, blue: 69 / 255))
                Pant()
                    .stroke()
                ShoesDownView()
                ShoesMidView()
                ShoesTopView()
            }
            Group {
                Hands()
                    .fill(Color(red: 165 / 255, green: 120 / 255, blue: 91 / 255))
                Hands()
                    .stroke()
                HandsLineView()
                BodyCloth()
                    .fill(Color(red: 0 / 255, green: 96 / 255, blue: 170 / 255))
                BodyCloth()
                    .stroke()
                CollarView()
                Neck()
                    .fill(Color(red: 165 / 255, green: 120 / 255, blue: 91 / 255))
                Neck()
                    .stroke()
                Arms()
                    .fill(Color(red: 0 / 255, green: 96 / 255, blue: 170 / 255))
                Arms()
                    .stroke()
            }

            Group {
                HairView()
                aHairView()
                REarLine()
                    .fill(Color(red: 165 / 255, green: 120 / 255, blue: 91 / 255))
                REarLine()
                    .stroke()
                Face()
                    .fill(Color(red: 165 / 255, green: 120 / 255, blue: 91 / 255))
                Face()
                    .stroke()
                LEarLineView()
                Group {
                    Glasses()
                        .fill(Color(red: 1, green: 1, blue: 1))
                        .frame(width: 66, height: 87)
                        .position(x: 221, y: 124)
                    Glasses()
                        .stroke()
                        .frame(width: 66, height: 87)
                        .position(x: 221, y: 124)
                    Glasses()
                        .fill(Color(red: 1, green: 1, blue: 1))
                        .frame(width: 66, height: 100)
                        .position(x: 285, y: 115)
                    Glasses()
                        .stroke()
                        .frame(width: 66, height: 100)
                        .position(x: 285, y: 115)
                    GlassesFrameView()
                    EyesView()
                    EyesWhiteView()
                    NoseAndEyebrowAndMoustacheView()
                    MouthView()
                    TongueView()
                }
            }
        }
    }
}

@available(iOS 14.0, *)
struct SwitchView_Previews: PreviewProvider {
    static var previews: some View {
        SwitchView()
    }
}

@available(iOS 14.0, *)
struct SwitchView_LibraryCotent: LibraryContentProvider {
    var views: [LibraryItem] {
        LibraryItem(SwitchView(), title: "交換後的大雄")
    }
}
