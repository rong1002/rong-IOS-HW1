import SwiftUI

struct Hair: Shape {
    func path(in rect: CGRect) -> Path {
        Path{ (path) in
            path.move(to: CGPoint(x: 327, y: 63))
            path.addCurve(to: CGPoint(x: 143, y: 64), control1: CGPoint(x: 263 , y: -10), control2: CGPoint(x: 170, y: -10))
            path.addCurve(to: CGPoint(x: 132, y: 140), control1: CGPoint(x: 120 , y: 76), control2: CGPoint(x: 120, y: 106))
            path.addQuadCurve(to: CGPoint(x: 132, y: 140), control: CGPoint(x: 110, y: 100))
            path.addQuadCurve(to: CGPoint(x: 166, y: 150), control: CGPoint(x: 150, y: 120))
            path.addLine(to: CGPoint(x: 160, y: 87))
            path.addCurve(to: CGPoint(x: 327, y: 63), control1: CGPoint(x: 230 , y: 50), control2: CGPoint(x: 250, y: 50))
            path.closeSubpath()
        }
    }
}
struct HairView: View{
    var body: some View{
        Hair()
            .fill(Color(red: 57 / 255, green: 59 / 255, blue: 38 / 255))
        Hair()
            .stroke()
    }
}

struct aHair: Shape {
    func path(in rect: CGRect) -> Path {
        Path{ (path) in
            path.move(to: CGPoint(x: 143, y: 64))
            path.addQuadCurve(to: CGPoint(x: 140, y: 30), control: CGPoint(x: 127, y: 43))
            
            path.move(to: CGPoint(x: 143, y: 64))
            path.addQuadCurve(to: CGPoint(x: 113, y:73), control: CGPoint(x: 120, y: 55))
        }
    }
}
struct aHairView: View{
    var body: some View{
        aHair()
            .stroke(style: StrokeStyle(lineWidth: 3, lineCap: .round, lineJoin: .round, dash: [5]))
            .fill(Color(red: 57 / 255, green: 59 / 255, blue: 38 / 255))
    }
}

struct Face: Shape {
    func path(in rect: CGRect) -> Path {
        Path{ (path) in
            path.move(to: CGPoint(x: 319, y: 64))
            path.addLine(to: CGPoint(x: 320, y: 128))
            path.addQuadCurve(to: CGPoint(x: 320, y:180), control: CGPoint(x: 330, y: 154))
            path.addCurve(to: CGPoint(x: 165, y: 190), control1: CGPoint(x: 300 , y: 230), control2: CGPoint(x: 220, y: 255))
            path.addCurve(to: CGPoint(x: 165, y: 148), control1: CGPoint(x: 105 , y: 195), control2: CGPoint(x: 130, y: 85))
            path.addLine(to: CGPoint (x: 160, y: 87))
            path.addCurve(to: CGPoint(x: 319, y: 62), control1: CGPoint(x: 200 , y: 50), control2: CGPoint(x: 285, y: 50))
            path.closeSubpath()
        }
    }
}
struct FaceView: View{
    var body: some View{
        Face()
            .fill(Color(red: 252 / 255, green: 217 / 255, blue: 161 / 255))
        Face()
            .stroke()
    }
}

struct LEarLine: Shape {
    func path(in rect: CGRect) -> Path {
        Path{ (path) in
            path.move(to: CGPoint(x: 145, y: 145))
            path.addQuadCurve(to: CGPoint(x: 150, y: 170), control: CGPoint(x: 165, y: 180))
            path.addQuadCurve(to: CGPoint(x: 150, y: 155), control: CGPoint(x: 145, y: 155))
        }
    }
}
struct LEarLineView: View{
    var body: some View{
        LEarLine()
            .stroke()
    }
}

struct REarLine: Shape {
    func path(in rect: CGRect) -> Path {
        Path{ (path) in
            path.move(to: CGPoint(x: 319, y: 105))
            path.addQuadCurve(to: CGPoint(x: 320, y: 150), control: CGPoint(x: 340, y: 120))
            path.closeSubpath()
        }
    }
}
struct REarLineView: View{
    var body: some View{
        REarLine()
            .fill(Color(red: 252 / 255, green: 217 / 255, blue: 161 / 255))
        REarLine()
            .stroke()
    }
}

struct GlassesFrame: Shape {
    func path(in rect: CGRect) -> Path {
        Path{ (path) in
            path.move(to: CGPoint(x: 162, y: 133))
            path.addLine(to: CGPoint(x: 187, y: 127))
        }
    }
}
struct GlassesFrameView: View{
    var body: some View{
        GlassesFrame()
            .stroke()
            .fill(Color(red: 57 / 255, green: 59 / 255, blue: 38 / 255))
    }
}

struct Glasses: Shape {
    func path(in rect: CGRect) -> Path {
        Path{ (path) in
            path.move(to: CGPoint(x: rect.width, y: rect.height * 0.5))
            path.addCurve(to: CGPoint(x: 0, y: rect.height * 0.5), control1: CGPoint(x: rect.width * 0.8, y: -rect.height * 0.2), control2: CGPoint(x: rect.width * 0.2, y: -rect.height * 0.2))
            path.addCurve(to: CGPoint(x: rect.width, y: rect.height * 0.5), control1: CGPoint(x: rect.width * 0.2, y: rect.height * 1.2), control2: CGPoint(x: rect.width * 0.8, y: rect.height * 1.3))
            path.closeSubpath()
        }
    }
}

struct Eyes: Shape {
    func path(in rect: CGRect) -> Path {
        Path{ (path) in
            path.move(to: CGPoint(x: 211, y: 123))
            path.addCurve(to: CGPoint(x: 230, y: 125), control1: CGPoint(x: 208 , y: 108), control2: CGPoint(x: 232, y: 100))
            path.addCurve(to: CGPoint(x: 211, y: 123), control1: CGPoint(x: 228 , y: 144), control2: CGPoint(x: 212, y: 142))
            
            path.move(to: CGPoint(x: 262, y: 123))
            path.addCurve(to: CGPoint(x: 280, y: 120), control1: CGPoint(x: 260 , y: 103), control2: CGPoint(x: 278, y: 100))
            path.addCurve(to: CGPoint(x: 262, y: 123), control1: CGPoint(x: 279 , y: 139), control2: CGPoint(x: 262, y: 140))
        }
    }
}
struct EyesView: View{
    var body: some View{
        Eyes()
            .fill(Color.black)
    }
}

struct EyesWhite: Shape {
    func path(in rect: CGRect) -> Path {
        Path{ (path) in
            path.move(to: CGPoint(x: 216, y: 123))
            path.addCurve(to: CGPoint(x: 225, y: 123), control1: CGPoint(x: 219 , y: 111), control2: CGPoint(x: 226, y: 120))
            path.addCurve(to: CGPoint(x: 216, y: 123), control1: CGPoint(x: 225 , y: 135), control2: CGPoint(x: 216, y: 129))

            path.move(to: CGPoint(x: 266, y: 123))
            path.addCurve(to: CGPoint(x: 275, y: 123), control1: CGPoint(x: 264 , y: 110), control2: CGPoint(x: 274, y: 110))
            path.addCurve(to: CGPoint(x: 266, y: 123), control1: CGPoint(x: 273 , y: 128), control2: CGPoint(x: 266, y: 130))
        }
    }
}
struct EyesWhiteView: View{
    var body: some View{
        EyesWhite()
            .fill(Color(red: 1, green: 1, blue: 1))
    }
}

struct NoseAndEyebrowAndMoustache: Shape {
    func path(in rect: CGRect) -> Path {
        Path{ (path) in
            //LeftEyebrow
            path.move(to: CGPoint(x: 170, y: 100))
            path.addCurve(to: CGPoint(x: 230, y: 60), control1: CGPoint(x: 200 , y: 20), control2: CGPoint(x: 240, y: 70))
            //RightEyebrow
            path.move(to: CGPoint(x: 285, y: 55))
            path.addCurve(to: CGPoint(x: 318, y: 77), control1: CGPoint(x: 300 , y: 40), control2: CGPoint(x: 310, y: 60))
            //Nose
            path.move(to: CGPoint(x: 255, y: 145))
            path.addCurve(to: CGPoint(x: 254, y: 158), control1: CGPoint(x: 280 , y: 130), control2: CGPoint(x: 275, y: 170))
            //Moustache
            path.move(to: CGPoint(x: 289, y: 163))
            path.addCurve(to: CGPoint(x: 283, y: 181), control1: CGPoint(x: 309 , y: 149), control2: CGPoint(x: 307, y: 185))
        }
    }
}
struct NoseAndEyebrowAndMoustacheView: View{
    var body: some View{
        NoseAndEyebrowAndMoustache()
            .stroke()
            .fill(Color.black)
    }
}

struct Mouth: Shape {
    func path(in rect: CGRect) -> Path {
        Path{ (path) in
            path.move(to: CGPoint(x: 283, y: 181))
            path.addLine(to: CGPoint(x: 205, y: 176))
            path.addQuadCurve(to: CGPoint(x: 212, y: 194), control: CGPoint(x: 207, y: 187))
            path.addCurve(to: CGPoint(x: 267, y: 199), control1: CGPoint(x: 230 , y: 175), control2: CGPoint(x: 263, y: 185))
            path.addQuadCurve(to: CGPoint(x: 282, y: 181), control: CGPoint(x: 272, y: 195))
        }
    }
}
struct MouthView: View{
    var body: some View{
        Mouth()
            .fill(Color(red: 230 / 255, green: 106 / 255, blue: 82 / 255))
        Mouth()
            .stroke()
    }
}

struct Tongue: Shape {
    func path(in rect: CGRect) -> Path {
        Path{ (path) in
            path.move(to: CGPoint(x: 212, y: 194))
            path.addCurve(to: CGPoint(x: 267, y: 199), control1: CGPoint(x: 230 , y: 175), control2: CGPoint(x: 263, y: 185))
            path.addCurve(to: CGPoint(x: 212, y: 194), control1: CGPoint(x: 258 , y: 210), control2: CGPoint(x: 240, y: 230))
            
        }
    }
}
struct TongueView: View{
    var body: some View{
        Tongue()
            .fill(Color(red: 229 / 255, green: 108 / 255, blue: 123 / 255))
        Tongue()
            .stroke()
    }
}

struct Neck: Shape {
    func path(in rect: CGRect) -> Path {
        Path{ (path) in
            path.move(to: CGPoint(x: 204, y: 221))
            path.addLine(to: CGPoint(x: 204, y: 230))
            path.addCurve(to: CGPoint(x: 266, y: 231), control1: CGPoint(x: 232 , y: 242), control2: CGPoint(x: 263, y: 236))
            path.addLine(to: CGPoint(x: 266, y: 224))
        }
    }
}
struct NeckView: View{
    var body: some View{
        Neck()
            .fill(Color(red: 252 / 255, green: 217 / 255, blue: 161 / 255))
        Neck()
            .stroke()
    }
}

struct Collar: Shape {
    func path(in rect: CGRect) -> Path {
        Path{ (path) in
            path.move(to: CGPoint(x: 204, y: 224))
            path.addQuadCurve(to: CGPoint(x: 190, y: 238), control: CGPoint(x: 194, y: 226))
            path.addQuadCurve(to: CGPoint(x: 213, y: 276), control: CGPoint(x: 201, y: 253))
            path.addQuadCurve(to: CGPoint(x: 248, y: 237), control: CGPoint(x: 235, y: 253))
            path.addQuadCurve(to: CGPoint(x: 285, y: 271), control: CGPoint(x: 265, y: 253))
            path.addQuadCurve(to: CGPoint(x: 268, y: 225), control: CGPoint(x: 285, y: 240))
        }
    }
}
struct CollarView: View{
    var body: some View{
        Collar()
            .fill(Color(red: 1, green: 1, blue: 1))
        Collar()
            .stroke()
    }
}

struct Arms: Shape {
    func path(in rect: CGRect) -> Path {
        Path{ (path) in
            //LeftArm
            path.move(to: CGPoint(x: 190, y: 238))
            path.addQuadCurve(to: CGPoint(x: 180, y: 238), control: CGPoint(x: 185, y: 235))
            path.addCurve(to: CGPoint(x: 158, y: 268), control1: CGPoint(x: 170 , y: 242), control2: CGPoint(x: 155, y: 255))
            path.addQuadCurve(to: CGPoint(x: 146, y: 287), control: CGPoint(x: 152, y: 273))
            path.addLine(to: CGPoint(x: 162, y: 305))
            path.addQuadCurve(to: CGPoint(x: 121, y: 271), control: CGPoint(x: 133, y: 272))
            path.addCurve(to: CGPoint(x: 91, y: 300), control1: CGPoint(x: 100 , y: 294), control2: CGPoint(x: 110, y: 290))
            path.addCurve(to: CGPoint(x: 172, y: 335), control1: CGPoint(x: 119 , y: 332), control2: CGPoint(x: 150, y: 366))
            path.addCurve(to: CGPoint(x: 180, y: 238), control1: CGPoint(x: 190 , y: 320), control2: CGPoint(x: 202, y: 250))
            
            //RightArm
            path.move(to: CGPoint(x: 278, y: 234))
            path.addQuadCurve(to: CGPoint(x: 291, y: 240), control: CGPoint(x: 286, y: 236))
            path.addCurve(to: CGPoint(x: 321, y: 300), control1: CGPoint(x: 313 , y: 245), control2: CGPoint(x: 310, y: 275))
            path.addQuadCurve(to: CGPoint(x: 343, y: 382), control: CGPoint(x: 340, y: 340))
            path.addQuadCurve(to: CGPoint(x: 311, y: 390), control: CGPoint(x: 319, y: 390))
            path.addQuadCurve(to: CGPoint(x: 302, y: 356), control: CGPoint(x: 310, y: 380))
            path.addCurve(to: CGPoint(x: 300, y: 340), control1: CGPoint(x: 305 , y: 353), control2: CGPoint(x: 307, y: 344))
            path.addCurve(to: CGPoint(x: 291, y: 240), control1: CGPoint(x: 300 , y: 300), control2: CGPoint(x: 301, y: 280))
        }
    }
}
struct ArmsView: View{
    var body: some View{
        Arms()
            .stroke()
        Arms()
            .fill(Color(red: 221 / 255, green: 0 / 255, blue: 69 / 255))
    }
}

struct BodyCloth: Shape {
    func path(in rect: CGRect) -> Path {
        Path{ (path) in
            path.move(to: CGPoint(x: 180, y: 238))
            path.addQuadCurve(to: CGPoint(x: 190, y: 238), control: CGPoint(x: 185, y: 235))
            path.addQuadCurve(to: CGPoint(x: 213, y: 276), control: CGPoint(x: 201, y: 253))
            path.addQuadCurve(to: CGPoint(x: 248, y: 237), control: CGPoint(x: 235, y: 253))
            path.addQuadCurve(to: CGPoint(x: 285, y: 271), control: CGPoint(x: 265, y: 253))
            path.addQuadCurve(to: CGPoint(x: 275, y: 234), control: CGPoint(x: 285, y: 245))
            path.addQuadCurve(to: CGPoint(x: 291, y: 240), control: CGPoint(x: 286, y: 236))
            path.addCurve(to: CGPoint(x: 300, y: 340), control1: CGPoint(x: 302 , y: 300), control2: CGPoint(x: 300, y: 280))
            path.addCurve(to: CGPoint(x: 302, y: 356), control1: CGPoint(x: 307 , y: 344), control2: CGPoint(x: 305, y: 353))
            path.addCurve(to: CGPoint(x: 188, y: 357), control1: CGPoint(x: 307 , y: 360), control2: CGPoint(x: 220, y: 366))
            path.addCurve(to: CGPoint(x: 187, y: 344), control1: CGPoint(x: 180 , y: 355), control2: CGPoint(x: 180, y: 346))
            path.addQuadCurve(to: CGPoint(x: 180, y: 238), control: CGPoint(x: 174, y: 240))
            path.closeSubpath()
            
        }
    }
}
struct BodyClothView: View{
    var body: some View{
        BodyCloth()
            .fill(Color(red: 221 / 255, green: 0 / 255, blue: 69 / 255))
        BodyCloth()
            .stroke()
    }
}

struct Pant: Shape {
    func path(in rect: CGRect) -> Path {
        Path{ (path) in
            path.move(to: CGPoint(x: 270, y: 414))
            path.addQuadCurve(to: CGPoint(x: 252, y: 423), control: CGPoint(x: 260, y: 418))
            path.addQuadCurve(to: CGPoint(x: 252, y: 442), control: CGPoint(x: 253, y: 420))
            path.addQuadCurve(to: CGPoint(x: 183, y: 444), control: CGPoint(x: 210, y: 450))
            path.addCurve(to: CGPoint(x: 187, y: 350), control1: CGPoint(x: 187 , y: 430), control2: CGPoint(x: 174, y: 420))
            path.addCurve(to: CGPoint(x: 308, y: 355), control1: CGPoint(x: 307 , y: 360), control2: CGPoint(x: 305, y: 350))
            path.addCurve(to: CGPoint(x: 308, y: 438), control1: CGPoint(x: 316 , y: 378), control2: CGPoint(x: 306, y: 420))
            path.addQuadCurve(to: CGPoint(x: 252, y: 442), control: CGPoint(x: 280, y: 445))
            path.addQuadCurve(to: CGPoint(x: 252, y: 423), control: CGPoint(x: 253, y: 420))
        }
    }
}
struct PantView: View{
    var body: some View{
        Pant()
            .fill(Color(red: 0 / 255, green: 96 / 255, blue: 170 / 255))
        Pant()
            .stroke()
    }
}

struct Feet: Shape {
    func path(in rect: CGRect) -> Path {
        Path{ (path) in
            //Left
            path.move(to: CGPoint(x: 250, y: 441))
            path.addQuadCurve(to: CGPoint(x: 187, y: 444), control: CGPoint(x: 230, y: 448))
            path.addCurve(to: CGPoint(x: 182, y: 559), control1: CGPoint(x: 193 , y: 480), control2: CGPoint(x: 180, y: 530))
            path.addQuadCurve(to: CGPoint(x: 238, y: 560), control: CGPoint(x: 220, y: 566))
            path.addCurve(to: CGPoint(x: 250, y: 441), control1: CGPoint(x: 243 , y: 530), control2: CGPoint(x: 245, y: 460))
            //Right
            path.move(to: CGPoint(x: 303, y: 436))
            path.addQuadCurve(to: CGPoint(x: 304, y: 560), control: CGPoint(x: 303, y: 448))
            path.addQuadCurve(to: CGPoint(x: 249, y: 561), control: CGPoint(x: 277, y: 564))
            path.addCurve(to: CGPoint(x: 251, y: 442), control1: CGPoint(x: 253, y: 510), control2: CGPoint(x: 245, y: 460))
            path.addQuadCurve(to: CGPoint(x: 303, y: 436), control: CGPoint(x: 280, y: 446))
        }
    }
}
struct FeetView: View{
    var body: some View{
        Feet()
            .fill(Color(red: 252 / 255, green: 217 / 255, blue: 161 / 255))
        Feet()
            .stroke()
    }
}

struct Socks: Shape {
    func path(in rect: CGRect) -> Path {
        Path{ (path) in
            path.move(to: CGPoint(x: 238, y: 555))
            path.addQuadCurve(to: CGPoint(x: 183, y: 555), control: CGPoint(x: 210, y: 568))
            path.addQuadCurve(to: CGPoint(x: 180, y: 655), control: CGPoint(x: 183, y: 566))
            path.addCurve(to: CGPoint(x: 237, y: 649), control1: CGPoint(x: 196 , y: 638), control2: CGPoint(x: 210, y: 630))
            path.addQuadCurve(to: CGPoint(x: 238, y: 555), control: CGPoint(x: 239, y: 569))
            
            path.move(to: CGPoint(x: 304, y: 560))
            path.addQuadCurve(to: CGPoint(x: 250, y: 561), control: CGPoint(x: 270, y: 563))
            path.addQuadCurve(to: CGPoint(x: 252, y: 651), control: CGPoint(x: 249, y: 573))
            path.addQuadCurve(to: CGPoint(x: 273, y: 658), control: CGPoint(x: 260, y: 655))
            path.addCurve(to: CGPoint(x: 306, y: 639), control1: CGPoint(x: 281, y: 647), control2: CGPoint(x: 290, y: 639))
            path.addQuadCurve(to: CGPoint(x: 304, y: 560), control: CGPoint(x: 305, y: 586))
        }
    }
}
struct SocksView: View{
    var body: some View{
        Socks()
            .fill(Color(red: 1, green: 1, blue: 1))
        Socks()
            .stroke()
    }
}

struct ShoesTop: Shape {
    func path(in rect: CGRect) -> Path {
        Path{ (path) in
            path.move(to: CGPoint(x: 243, y: 656))
            path.addCurve(to: CGPoint(x: 180, y: 655), control1: CGPoint(x: 215, y: 625), control2: CGPoint(x: 195, y: 636))
            path.addCurve(to: CGPoint(x: 243, y: 656), control1: CGPoint(x: 190, y: 668), control2: CGPoint(x: 225, y: 666))
            
            path.move(to: CGPoint(x: 273, y: 658))
            path.addCurve(to: CGPoint(x: 330, y: 649), control1: CGPoint(x: 285, y: 642), control2: CGPoint(x: 310, y: 626))
            path.addCurve(to: CGPoint(x: 273, y: 658), control1: CGPoint(x: 319, y: 673), control2: CGPoint(x: 282, y: 661))
        }
    }
}
struct ShoesTopView: View{
    var body: some View{
        ShoesTop()
            .fill(Color(red: 218 / 255, green: 232 / 255, blue: 245 / 255))
        ShoesTop()
            .stroke()
    }
}

struct ShoesMid: Shape {
    func path(in rect: CGRect) -> Path {
        Path{ (path) in
            path.move(to: CGPoint(x: 180, y: 655))
            path.addCurve(to: CGPoint(x: 243, y: 656), control1: CGPoint(x: 190, y: 668), control2: CGPoint(x: 225, y: 666))
            path.addQuadCurve(to: CGPoint(x: 267, y: 700), control: CGPoint(x: 270, y: 680))
            path.addCurve(to: CGPoint(x: 160, y: 703), control1: CGPoint(x: 240, y: 715), control2: CGPoint(x: 180, y: 715))
            path.addCurve(to: CGPoint(x: 180, y: 655), control1: CGPoint(x: 160, y: 699), control2: CGPoint(x: 160, y: 680))
            
            path.move(to: CGPoint(x: 330, y: 649))
            path.addCurve(to: CGPoint(x: 372, y: 698), control1: CGPoint(x: 380, y: 663), control2: CGPoint(x: 375, y: 686))
            path.addCurve(to: CGPoint(x: 267, y: 700), control1: CGPoint(x: 350, y: 709), control2: CGPoint(x: 300, y: 704))
            path.addQuadCurve(to: CGPoint(x: 245, y: 657), control: CGPoint(x: 270, y: 680))
            path.addQuadCurve(to: CGPoint(x: 252, y: 652), control: CGPoint(x: 248, y: 655))
            path.addQuadCurve(to: CGPoint(x: 273, y: 658), control: CGPoint(x: 260, y: 656))

            
        }
    }
}
struct ShoesMidView: View{
    var body: some View{
        ShoesMid()
            .fill(Color(red: 0 / 255, green: 96 / 255, blue: 170 / 255))
        ShoesMid()
            .stroke()
    }
}

struct ShoesDown: Shape {
    func path(in rect: CGRect) -> Path {
        Path{ (path) in
        
            path.move(to: CGPoint(x: 268, y: 710))
            path.addQuadCurve(to: CGPoint(x: 267, y: 700), control: CGPoint(x: 269, y: 705))
            path.addCurve(to: CGPoint(x: 160, y: 703), control1: CGPoint(x: 240, y: 715), control2: CGPoint(x: 180, y: 715))
            path.addQuadCurve(to: CGPoint(x: 173, y: 721), control: CGPoint(x: 158, y: 714))
            path.addCurve(to: CGPoint(x: 268, y: 710), control1: CGPoint(x: 190, y: 723), control2: CGPoint(x: 250, y: 725))
            path.addCurve(to: CGPoint(x: 360, y: 710), control1: CGPoint(x: 300, y: 710), control2: CGPoint(x: 320, y: 715))
            path.addQuadCurve(to: CGPoint(x: 372, y: 698), control: CGPoint(x: 370, y: 709))
            path.addCurve(to: CGPoint(x: 267, y: 700), control1: CGPoint(x: 350, y: 709), control2: CGPoint(x: 300, y: 704))

        }
    }
}
struct ShoesDownView: View{
    var body: some View{
        ShoesDown()
            .fill(Color(red: 223 / 255, green: 237 / 255, blue: 251 / 255))
        ShoesDown()
            .stroke()
    }
}
struct Hands: Shape {
    func path(in rect: CGRect) -> Path {
        Path{ (path) in
            //LeftHand
            path.move(to: CGPoint(x: 120, y: 271))
            path.addQuadCurve(to: CGPoint(x: 89, y: 300), control: CGPoint(x: 100, y: 300))
            path.addQuadCurve(to: CGPoint(x: 50, y: 276), control: CGPoint(x: 65, y: 298))
            path.addCurve(to: CGPoint(x: 16, y: 257), control1: CGPoint(x: 40, y: 273), control2: CGPoint(x: 10, y: 271))
            path.addQuadCurve(to: CGPoint(x: 50, y: 259), control: CGPoint(x: 30, y: 255))
            path.addCurve(to: CGPoint(x: 28, y: 223), control1: CGPoint(x: 29, y: 250), control2: CGPoint(x: 8, y: 222))
            path.addCurve(to: CGPoint(x: 72, y: 235), control1: CGPoint(x: 27, y: 196), control2: CGPoint(x: 50, y: 224))
            path.addCurve(to: CGPoint(x: 60, y: 196), control1: CGPoint(x: 26, y: 191), control2: CGPoint(x: 57, y: 193))
            path.addQuadCurve(to: CGPoint(x: 95, y: 232), control: CGPoint(x: 67, y: 200))
            path.addCurve(to: CGPoint(x: 110, y: 215), control1: CGPoint(x: 91, y: 220), control2: CGPoint(x: 100, y: 195))
            path.addCurve(to: CGPoint(x: 118, y: 271), control1: CGPoint(x: 110, y: 260), control2: CGPoint(x: 113, y: 220))
            
            //RightHand
            path.move(to: CGPoint(x: 307, y: 389))
            path.addQuadCurve(to: CGPoint(x: 341, y: 383), control: CGPoint(x: 320, y: 390))
            path.addQuadCurve(to: CGPoint(x: 362, y: 414), control: CGPoint(x: 350, y: 393))
            path.addCurve(to: CGPoint(x: 342, y: 448), control1: CGPoint(x: 367, y: 422), control2: CGPoint(x: 360, y: 445))
            path.addCurve(to: CGPoint(x: 319, y: 446), control1: CGPoint(x: 330, y: 456), control2: CGPoint(x: 320, y: 445))
            path.addQuadCurve(to: CGPoint(x: 303, y: 441), control: CGPoint(x: 303, y: 447))
            path.closeSubpath()
            
        }
    }
}
struct HandsView: View{
    var body: some View{
        Hands()
            .fill(Color(red: 252 / 255, green: 217 / 255, blue: 161 / 255))
        Hands()
            .stroke()
    }
}

struct HandsLine: Shape {
    func path(in rect: CGRect) -> Path {
        Path{ (path) in
            //LeftHand
            path.move(to: CGPoint(x: 28, y: 223))
            path.addQuadCurve(to: CGPoint(x: 59, y: 246), control: CGPoint(x: 45, y: 235))

            path.move(to: CGPoint(x: 78, y: 232))
            path.addQuadCurve(to: CGPoint(x: 52, y: 269), control: CGPoint(x: 60, y: 250))

            path.move(to: CGPoint(x: 96, y: 233))
            path.addQuadCurve(to: CGPoint(x: 91, y: 275), control: CGPoint(x: 83, y: 253))
            //RightHand
            path.move(to: CGPoint(x: 319, y: 446))
            path.addQuadCurve(to: CGPoint(x: 316, y: 432), control: CGPoint(x: 320, y: 440))
            path.addQuadCurve(to: CGPoint(x: 326, y: 418), control: CGPoint(x: 321, y: 427))
            path.addQuadCurve(to: CGPoint(x: 334, y: 430), control: CGPoint(x: 330, y: 427))
            path.addQuadCurve(to: CGPoint(x: 334, y: 430), control: CGPoint(x: 330, y: 427))
            path.addQuadCurve(to: CGPoint(x: 325, y: 440), control: CGPoint(x: 332, y: 437))
            
            path.move(to: CGPoint(x: 330, y: 437))
            path.addQuadCurve(to: CGPoint(x: 330, y: 443), control: CGPoint(x: 332, y: 436))
            
            path.move(to: CGPoint(x: 342, y: 448))
            path.addQuadCurve(to: CGPoint(x: 348, y: 432), control: CGPoint(x: 346, y: 446))
        }
    }
}
struct HandsLineView: View{
    var body: some View{
        HandsLine()
            .stroke()
    }
}

@available(iOS 14.0, *)
struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Image("背景")
                    .resizable()
                    .scaledToFill()
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .edgesIgnoringSafeArea(.all)
                NavigationLink(destination: SwitchView()) {
                    Text("交換顏色、膚色")
                        .scaleEffect(1.2)
                        .position(x: 90, y: 600)
                }
                Text("我新買的眼鏡")
                    .scaleEffect(1.2)
                    .position(x: 68, y: 45)
                Text("好看吧！")
                    .scaleEffect(1.2)
                    .position(x:85, y:73)
                Group {
                    SocksView()
                    FeetView()
                    PantView()
                    ShoesDownView()
                    ShoesMidView()
                    ShoesTopView()
                }
                Group {
                    HandsView()
                    HandsLineView()
                    BodyClothView()
                    CollarView()
                    NeckView()
                    ArmsView()
                }

                Group {
                    HairView()
                    aHairView()
                    REarLineView()
                    FaceView()
                    LEarLineView()
                    Group {
                        Glasses()
                            .fill(Color(red: 1, green: 1, blue: 1))
                            .frame(width: 66, height: 87)
                            .position(x: 221, y: 124)
                        Glasses()
                            .fill(Color(red: 1, green: 1, blue: 1))
                            .frame(width: 66, height: 100)
                            .position(x: 285, y: 115)
                        GlassesFrameView()
                        EyesView()
                        EyesWhiteView()
                    }
                    NoseAndEyebrowAndMoustacheView()
                    MouthView()
                    TongueView()
                }
                FriendView()
                    .scaleEffect(0.51)
                    .rotationEffect(.degrees(90))
                    .position(x: 234, y: 265)
            }
            .navigationTitle("正常的大雄")
        }
    }
}

@available(iOS 14.0, *)
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

@available(iOS 14.0, *)
struct ContentView_LibraryCotent: LibraryContentProvider {
    var views: [LibraryItem] {
        LibraryItem(ContentView(), title: "大雄")
    }
}
