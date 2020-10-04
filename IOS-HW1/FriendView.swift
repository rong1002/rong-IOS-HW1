//
//  ContentView.swift
//  Conan
//
//  Created by 慈慈 on 2020/9/28.
//

import SwiftUI

//衣服shape
struct cloth:Shape{
    func path(in rect: CGRect) -> Path {
        Path{(path) in
            path.move(to: CGPoint(x:60, y:560))
            path.addQuadCurve(to: CGPoint(x:80, y:510), control: CGPoint(x:60, y:510))
            path.addLine(to: CGPoint(x:90, y:510))
            path.addQuadCurve(to: CGPoint(x:120, y:500), control:CGPoint(x:110, y:510))
            path.addQuadCurve(to: CGPoint(x:129, y:535), control:CGPoint(x:120, y:525))
            path.addQuadCurve(to: CGPoint(x:165, y:505), control:CGPoint(x:150, y:530))
            path.addLine(to: CGPoint(x:165, y:560))
        }
    }
}

//衣服view
struct clothView:View{
    var body: some View{
        //左邊衣服
        //藍
        cloth().fill(Color(red:135/255, green:206/255, blue:235/255))
        //粉
//        cloth().fill(Color(red:255/255, green:192/255, blue:203/255))
        cloth().stroke(lineWidth: 5)
        
        //右邊衣服
        //藍
        cloth().fill(Color(red:135/255, green:206/255, blue:235/255))
            .rotation3DEffect(.degrees(180), axis: (x: 0, y: 1, z: 0))
            .offset(x:-85)
        //粉
//        cloth().fill(Color(red:255/255, green:192/255, blue:203/255))
//            .rotation3DEffect(.degrees(180), axis: (x: 0, y: 1, z: 0))
//            .offset(x:-85)
        cloth().stroke(lineWidth: 5)
            .rotation3DEffect(.degrees(180), axis: (x: 0, y: 1, z: 0))
            .offset(x:-85)
    }
}

//鈕扣view
struct buttonView:View{
    var body: some View{
        Circle().fill(Color.white)
            .frame(width:7, height:7)
            .position(x:175, y:535)
            .zIndex(1)
        Circle().stroke(Color.black, lineWidth: 3)
            .frame(width:7, height:7)
            .position(x:175, y:535)
            .zIndex(1)
    }
}

//衣服上的線view
struct lineView:View{
    var body: some View{
        Path{(path) in
            path.move(to: CGPoint(x:90, y:560))
            path.addLine(to: CGPoint(x:90, y:530))
            path.move(to: CGPoint(x:240, y:560))
            path.addLine(to: CGPoint(x: 240, y:530))
        }.stroke(lineWidth: 5)
    }
}

//領子shape
struct collar:Shape{
    func path(in rect: CGRect) -> Path {
        Path{(path) in
            path.move(to: CGPoint(x:120, y:500))
            path.addQuadCurve(to: CGPoint(x:129, y:535), control:CGPoint(x:120, y:525))
            path.addQuadCurve(to: CGPoint(x:165, y:505), control:CGPoint(x:150, y:530))
            path.addQuadCurve(to: CGPoint(x:127, y:485), control:CGPoint(x:160, y:505))
            path.closeSubpath()
        }
    }
}

//領子view
struct collarView:View{
    var body: some View{
        //左邊領子
        collar().fill(Color.white)
        collar().stroke(style: StrokeStyle(lineWidth: 5, lineJoin: .round))
        
        //右邊領子
        collar().fill(Color.white).rotation3DEffect(
            .degrees(180),
            axis: (x: 0, y:1, z:0))
            .offset(x:-86)
        
        collar().stroke(style: StrokeStyle(lineWidth: 5, lineJoin: .round))
            .rotation3DEffect(
                .degrees(180),
                axis: (x: 0, y:1, z:0))
                .offset(x:-83)
    }
}

//脖子shape
struct neck:Shape{
    func path(in rect: CGRect) -> Path {
        Path{(path) in
            path.move(to: CGPoint(x:135, y:490))
            path.addLine(to: CGPoint(x:135,y:475))
            path.addLine(to: CGPoint(x:165, y:490))
            path.addLine(to: CGPoint(x:195, y:475))
            path.addLine(to: CGPoint(x: 195, y:489))
            path.addLine(to: CGPoint(x:165, y:505))
            path.closeSubpath()
        }
    }
}

//脖子view
struct neckView: View{
    var body: some View{
        neck().fill(Color(red:255/255, green:218/255, blue:185/255))
        neck().stroke(lineWidth: 5)
    }
}

//臉shape
struct face:Shape{
    func path(in rect: CGRect) -> Path {
        Path{(path) in
            path.move(to: CGPoint(x:165, y:490))
            path.addQuadCurve(to: CGPoint(x:86, y:445), control:CGPoint(x:120, y:470))
            path.addLine(to: CGPoint(x:67, y:370))
            path.addQuadCurve(to: CGPoint(x:160, y:330), control: CGPoint(x:99, y:350))
            path.addQuadCurve(to: CGPoint(x:250, y:360), control: CGPoint(x:200, y:340))
            path.addLine(to: CGPoint(x:230, y:445))
            path.addLine(to: CGPoint(x:195, y:475))
            path.closeSubpath()
        }
    }
}

//臉view
//有用strokestyle
struct faceView:View{
    var body: some View{
        face().fill(Color(red:255/255, green:218/255, blue:185/255))
        face().stroke(style: StrokeStyle(lineWidth: 5, lineJoin: .round))
    }
}

//鼻子shape
struct nose:Shape{
    func path(in rect: CGRect) -> Path {
        Path{(path) in
            path.move(to: CGPoint(x:148, y:425))
            path.addLine(to: CGPoint(x:155, y:429))
            path.addLine(to: CGPoint(x:157, y:424))
            path.closeSubpath()
        }
    }
}

//鼻子view
struct noseView:View{
    var body: some View{
        nose().fill(Color(red:233/255, green:150/255, blue:122/255))
        nose().stroke(lineWidth: 2)
    }
}

//嘴巴shape
struct mouse:Shape{
    func path(in rect: CGRect) -> Path {
        Path{(path) in
            path.move(to:CGPoint(x:153, y:460))
            path.addQuadCurve(to: CGPoint(x:160, y:447), control: CGPoint(x:150, y:447))
            path.addQuadCurve(to: CGPoint(x:170, y:460), control: CGPoint(x:172, y:447))
            path.addQuadCurve(to: CGPoint(x:153, y:460), control: CGPoint(x:155, y:463))
        }
    }
}

//嘴巴view
struct mouseView:View{
    var body: some View{
        mouse().fill(Color(red:162/255, green:98/255, blue:96/255))
        mouse().stroke(lineWidth: 2)
    }
}

//右眼底shape
struct eye:Shape{
    func path(in rect: CGRect) -> Path {
        Path{(path) in
            path.move(to: CGPoint(x:175, y:396))
            path.addQuadCurve(to: CGPoint(x:213, y:391), control: CGPoint(x:195, y:388))
            path.addQuadCurve(to: CGPoint(x:203, y:408), control: CGPoint(x:215, y:398))
            path.addQuadCurve(to: CGPoint(x:183, y:406), control: CGPoint(x:190, y:411))
            path.closeSubpath()
        }
    }
}

//眼睛view
struct eyesView:View{
    var body: some View{
        //左眼
        Path{(path) in
            path.move(to: CGPoint(x:138, y:400))
            path.addLine(to: CGPoint(x:123, y:408))
            path.addLine(to:CGPoint(x:104, y:408))
        }.stroke(lineWidth: 3)
        
        //右眼
        eye().fill(Color.white)
        eye().stroke(lineWidth: 3)
        Circle().fill(Color(red:65/255, green:105/255, blue:225/255))
            .frame(width:18, height:18)
            .position(x:196, y:400)
        Circle().fill(Color.white)
            .frame(width:8, height:8)
            .position(x:192, y:398)
        Path(CGRect(x:263, y:353, width:3, height:11)).fill(Color.white).rotationEffect(.degrees(10), anchor: .topLeading)
    }
}

//腮紅shape
struct rouge:Shape{
    func path(in rect: CGRect) -> Path {
        Path{(path) in
            path.move(to: CGPoint(x:210, y:423))
            path.addLine(to: CGPoint(x:208, y:433))
        }
    }
}

//腮紅view
struct rougeView:View{
    var body: some View{
        //右邊
        rouge().stroke(Color(red:240/255, green:128/255, blue:128/255), lineWidth: 3)
        rouge().stroke(Color(red:240/255, green:128/255, blue:128/255), lineWidth: 3)
            .offset(x:7)
            .zIndex(3)
        //左邊
        rouge().stroke(Color(red:240/255, green:128/255, blue:128/255), lineWidth: 3).offset(x:-99, y:-2)
        rouge().stroke(Color(red:240/255, green:128/255, blue:128/255), lineWidth: 3).offset(x:-106, y:-2)
    }
}

//眉毛view
struct eyebrowView:View{
    var body: some View{
        Path{(path) in
            //左眉毛
            path.move(to: CGPoint(x:140, y:385))
            path.addLine(to: CGPoint(x:98, y:383))
            //右眉毛
            path.move(to: CGPoint(x:172, y:383))
            path.addLine(to: CGPoint(x:216, y:374))
        }.stroke(lineWidth: 4)
    }
}

//左耳
struct leftEar:Shape{
    func path(in rect: CGRect) -> Path {
        Path{(path) in
            path.move(to: CGPoint(x:73, y:390))
            path.addQuadCurve(to: CGPoint(x:63, y:400), control: CGPoint(x:63, y:390))
            path.addLine(to: CGPoint(x:70, y:423))
            path.addQuadCurve(to: CGPoint(x:82, y:438), control: CGPoint(x:80, y:440))
        }
    }
}

//右耳
struct rightEar:Shape{
    func path(in rect: CGRect) -> Path {
        Path{(path) in
            path.move(to: CGPoint(x:245, y:383))
            path.addQuadCurve(to: CGPoint(x:263, y:400), control: CGPoint(x:265, y:380))
            path.addLine(to: CGPoint(x:245, y:430))
            path.addLine(to: CGPoint(x:233, y:438))
        }
    }
}

//耳朵
struct earView:View{
    var body: some View{
        Group{
            //左耳
            leftEar().fill(Color(red:255/255, green:218/255, blue:185/255))
            leftEar().stroke(lineWidth: 4)
            
            //右耳
            rightEar().fill(Color(red:255/255, green:218/255, blue:185/255))
            rightEar().stroke(lineWidth: 4)
        }.zIndex(-1)
    }
}

//帽緣shape
struct hatEdge:Shape{
    func path(in rect: CGRect) -> Path {
        Path{(path) in
            path.move(to: CGPoint(x:160, y:330))
            path.addQuadCurve(to: CGPoint(x:55, y:380), control: CGPoint(x:99, y:350))
            path.addQuadCurve(to: CGPoint(x:156, y:315), control: CGPoint(x:99, y:330))
            path.addQuadCurve(to: CGPoint(x:248, y:354), control: CGPoint(x:230, y:330))
            path.addLine(to: CGPoint(x:278, y:390))
            path.addQuadCurve(to: CGPoint(x:160, y:330), control: CGPoint(x:225, y:340))
            
        }
    }
}

//帽子左下shape
struct leftHat:Shape{
    func path(in rect: CGRect) -> Path {
        Path{(path) in
            path.move(to: CGPoint(x:64, y:400))
            path.addLine(to: CGPoint(x:44, y:390))
            path.addLine(to: CGPoint(x:67, y:370))
            path.addLine(to: CGPoint(x:75, y:400))
        }
    }
}

//帽子右下shape
struct rightHat:Shape{
    func path(in rect: CGRect) -> Path {
        Path{(path) in
            path.move(to: CGPoint(x:240, y:400))
            path.addLine(to: CGPoint(x:280, y:390))
            path.addLine(to: CGPoint(x:250, y:370))
            //path.closeSubpath()
        }
    }
}

//帽子上面shape
struct upHat:Shape{
    func path(in rect: CGRect) -> Path {
        Path{(path) in
            path.move(to: CGPoint(x:66, y:367))
            path.addLine(to: CGPoint(x:66, y:320))
            path.addQuadCurve(to: CGPoint(x:88, y:290), control: CGPoint(x:79, y:295))
            path.addQuadCurve(to: CGPoint(x:235, y:285), control: CGPoint(x:150, y:245))
            path.addQuadCurve(to: CGPoint(x:250, y:315), control:CGPoint(x:245, y:300))
            path.addLine(to: CGPoint(x:260, y:367))
        }
    }
}

//帽子view
struct hatView:View{
    var body: some View{
        Group{
            //帽緣
            hatEdge().fill(Color(red:255/255, green:255/255, blue:153/255))
            hatEdge().stroke(lineWidth: 5)
            //左下帽子
            leftHat().fill(Color(red:230/255, green:217/255, blue:51/255))
                .zIndex(-2)
            leftHat().stroke(lineWidth: 5)
                .zIndex(-2)
            //右下帽子
            rightHat().fill(Color(red:230/255, green:217/255, blue:51/255))
                .zIndex(-2)
            rightHat().stroke(lineWidth: 5)
                .zIndex(-2)
            //上面帽子
            upHat().fill(Color(red:255/255, green:255/255, blue:153/255))
                .zIndex(-2)
            upHat().stroke(lineWidth: 5)
            
            //帽子上的線
            Path{(path) in
                //左
                path.move(to: CGPoint(x:100, y:281))
                path.addQuadCurve(to: CGPoint(x:100, y:342), control: CGPoint(x:90, y:300))
                path.move(to: CGPoint(x:104, y:281))
                path.addQuadCurve(to: CGPoint(x:104, y:338), control: CGPoint(x:97, y:300))
                //右
                path.move(to: CGPoint(x:200, y:273))
                path.addQuadCurve(to: CGPoint(x:208, y:328), control: CGPoint(x:210, y:300))
                path.move(to: CGPoint(x:205, y:273))
                path.addQuadCurve(to: CGPoint(x:213, y:328), control: CGPoint(x:214, y:300))
            }.stroke(lineWidth: 3)
        }
    }
}

//頭髮shape
struct hair:Shape{
    func path(in rect: CGRect) -> Path {
        Path{(path) in
            //hair1
            path.move(to: CGPoint(x:71, y:370))
            path.addQuadCurve(to: CGPoint(x:82, y:400), control: CGPoint(x:75, y:390))
            path.addQuadCurve(to: CGPoint(x:80, y:367), control: CGPoint(x:80, y:390))
            path.closeSubpath()
            //hair2
            path.move(to: CGPoint(x:94, y:361))
            path.addQuadCurve(to: CGPoint(x:92, y:373), control: CGPoint(x:89, y:361))
            path.addQuadCurve(to: CGPoint(x:97, y:358), control: CGPoint(x:93, y:383))
            path.closeSubpath()
            //hair3
            path.move(to: CGPoint(x:111, y:350))
            //path.addLine(to: CGPoint(x:104, y:380))
            path.addQuadCurve(to: CGPoint(x:107, y:380), control: CGPoint(x:104, y:365))
            path.addQuadCurve(to: CGPoint(x:117, y:348), control: CGPoint(x:107, y:379))
            path.closeSubpath()
            //hair4
            path.move(to: CGPoint(x:129, y:342))
            path.addQuadCurve(to: CGPoint(x:132, y:372), control: CGPoint(x:125, y:363))
            path.addQuadCurve(to: CGPoint(x:135, y:348), control: CGPoint(x:131, y:365))
            path.addQuadCurve(to: CGPoint(x:167, y:385), control: CGPoint(x:140, y:375))
            path.addQuadCurve(to: CGPoint(x:155, y:332), control: CGPoint(x:148, y:335))
            path.closeSubpath()
            //hair5
            path.move(to: CGPoint(x:162, y:332))
            path.addQuadCurve(to: CGPoint(x:165, y:380), control: CGPoint(x:170, y:350))
            path.addQuadCurve(to: CGPoint(x:172, y:333), control: CGPoint(x:175, y:350))
            path.closeSubpath()
            //hair6
            path.move(to: CGPoint(x:179, y:337))
            path.addQuadCurve(to: CGPoint(x:196, y:365), control: CGPoint(x:183, y:358))
            path.addQuadCurve(to: CGPoint(x:183, y:340), control: CGPoint(x:185, y:358))
            path.addQuadCurve(to: CGPoint(x:220, y:370), control: CGPoint(x:205, y:369))
            path.addQuadCurve(to: CGPoint(x:203, y:342), control: CGPoint(x:205, y:361))
            path.closeSubpath()
            //hair7
            path.move(to: CGPoint(x:214, y:347))
            path.addQuadCurve(to: CGPoint(x:220, y:375), control: CGPoint(x:224, y:360))
            path.addQuadCurve(to: CGPoint(x:224, y:351), control: CGPoint(x:223, y:350))
            path.closeSubpath()
            //hair8
            path.move(to: CGPoint(x:233, y:356))
            path.addQuadCurve(to: CGPoint(x:234, y:375), control: CGPoint(x:239, y:365))
            path.addQuadCurve(to: CGPoint(x:237, y:358), control: CGPoint(x:239, y:365))
            path.closeSubpath()
            }
    }
}

//頭髮view
struct hairView:View{
    var body: some View{
        hair().fill(Color.black)
        hair().stroke(lineWidth: 4)
    }
}

struct conanView:View{
    var body: some View{
        Group{
            Group{
                //衣服
                clothView()
                //扣子
                buttonView()
                //領子
                collarView()
                //衣服上的線
                lineView()
            }
            //脖子
            neckView()
            Group{
                //臉
                faceView()
                //鼻子
                noseView()
                //嘴巴
                mouseView()
                //眼睛
                eyesView()
                //腮紅
                rougeView()
                //眉毛
                eyebrowView()
                //耳朵
                earView()
            }
            //帽子
            hatView()
            //頭髮
            hairView()
        }
    }
}


struct FriendView: View {
    var body: some View {
        
        ZStack{
            /*
            Image("background")
                .resizable()
                .scaledToFill()
                .frame(minWidth: 0, maxWidth: .infinity)
                .edgesIgnoringSafeArea(.all)
                .zIndex(-3)
            
            Text("名探偵コナン")
                .foregroundColor(.black)
                .fontWeight(.heavy)
                .font(.title)
                .offset(x:0, y:-30)
            */
            conanView().offset(x:40, y:290)
            
        }
    }
}

struct FriendView_Previews: PreviewProvider {
    static var previews: some View {
        FriendView()
    }
}

@available(iOS 14.0, *)
struct FriendView_LibraryCotent: LibraryContentProvider {
    var views: [LibraryItem] {
        LibraryItem(FriendView(), title: "有朋友的大雄")
    }
}
