//
//  ContentView.swift
//  Memories_stford_1
//
//  Created by ha tuong do on 5/8/21.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        return HStack {
            ForEach(0..<4) {index in
                CardView(isFaceUp: true)
            }
        }
        .padding()
        .foregroundColor(Color.orange)
    }
}



struct CardView: View {
    var isFaceUp:  Bool  // = true
    
    var body: some View {
       VStack {
          Text("github ! ")
          ZStack {
             if isFaceUp {
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3.0)
                Text("😆").padding().font(Font.largeTitle)
             } else {
                RoundedRectangle(cornerRadius: 10.0).fill()
             }
          }
        }
    }
}


/*
 struct ContentView: View {
     
     var body: some View {
         return HStack {
             ForEach(0..<4) {index in
                 ZStack {
                     RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                     RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3.0)
                     Text("😆").padding().font(Font.largeTitle)
                 }
             }
         }
         .padding()
         .foregroundColor(Color.orange)
     }
 }
 
   */

// -------------------------

/*

 return HStack () {
     ForEach(0..<4) {index in
         ZStack() {
             RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
             RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3.0)
             Text("😆").padding().font(Font.largeTitle)
         }
     }
 }

 ......................................
 
 return HStack ( content: {
     ForEach(0..<4, content: {index in
         ZStack(content: {
             RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
             RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3.0)
             Text("😆").padding().font(Font.largeTitle)
         })
     })
 })

 */

/* 55:10
   in swift, if last argument of a function #1 is a function #2 call itself (shown in curly braces { ... }
   then we can remove the label, and put whole function #2 outside of function #1
 
    ForEach (   0..<4 ,
                content: { ... }
            )

    ForEach ( 0..<4 )
                { ... }     <--- alternative way to above code
 
 
 */

/*    52:25 min
 
 var body: some View {
     return HStack (spacing: 7, content: {
         ForEach(0..<4, content: {index in
             ZStack(content: {
                 RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                 RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3.0)
                 Text("😆").padding().font(Font.largeTitle)
             })
         })
     })
 }
 
 var body: some View {
     return HStack ( content: { // HStack arrange Views horizontally
         ForEach(0..<4, content: {index in // make 4 seperate pre-views
             ZStack(content: {
                 RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                 RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3.0)
                 Text("😆").padding().font(Font.largeTitle)
             })
         })
         
         
     })
     
     .padding()
     .foregroundColor(Color.orange)
     //.font(Font.largeTitle) <-- set font for all text inside Zstack
 }
 */

// ------------------------------------------------------------------------------

/*
 var body: some View {
     // ForEach object will iterate over each iterableThingData
     // and build the content for each

     // return ForEach(0..<4, content: {_ in
     return ForEach(0..<4, content: {index in // make 4 seperate pre-views
         ZStack(content: {
         RoundedRectangle(cornerRadius: 10.0).fill(Color.white) // guarantee white background even in dark mode
         RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3.0)
         Text("😆").padding().font(Font.largeTitle)
     })
                     })
     .padding()
     .foregroundColor(Color.orange)
     //.font(Font.largeTitle) <-- set font for all text inside Zstack
 }
*/

// ForEach is not a layout view like ZStack so it will show 4 seperate pre-views
// in simulation or on phone, will show only 1st view and hide the other somewhere

// return ForEach(iterableThingData, content:
// iterableThingData can be an array
//    or range like 0..<4

/*
    ForEach() is a combiner kind of View
    it will return multiple Views
 */

/*
 single card:
 
 var body: some View {
     return ZStack(content: {
         RoundedRectangle(cornerRadius: 10.0).fill(Color.white) // guarantee white background even in dark mode
         RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3.0)
         Text("😆").padding().font(Font.largeTitle)
     })
     .padding()
     .foregroundColor(Color.orange)
     //.font(Font.largeTitle) <-- set font for all text inside Zstack
 }
 */

/*
var body: some View {
    return ZStack(content: {
        // RoundedRectangle(cornerRadius: 10.0).stroke().foregroundColor(Color.orange)
        RoundedRectangle(cornerRadius: 10.0).stroke()
        Text("😆").padding()
    })
    .padding()
    .foregroundColor(Color.orange)
}
 */


// RoundedRectangle behaves like a View, but also like a shape
// shape can be stroked (draw outline, not filled with blk color)
// stroke() returns a View !
// so RoundedRectangle object calling it's function stroke() will return a View
// object calling Swift function call by doing this  .stroke()
// note the dot in .stroked()

// this whole code is a View (returns a View):  RoundedRect().stroke()
//      so we can add on .foreground()  function to it

// dont say foregroundColor(.orange)  wont see orange outline
// must say foregroundColor(Color.organge) !

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

/*
 var body: some View {
     return RoundedRectangle(cornerRadius: 10.0)
     // Text("Hi, world!").padding()
 }
 */
