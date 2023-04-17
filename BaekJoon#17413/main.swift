//
//  main.swift
//  BaekJoon#17413
//
//  Created by 김병엽 on 2023/04/13.
//

import Foundation

func solution() {
    
    let s = readLine()!.map { String($0) }
    
    var stack = [String]()
    var ans = ""
    var tag = false
    
    for ch in s {
        
        if ch == "<" {
            tag.toggle()
            
            if !stack.isEmpty {
                while !stack.isEmpty {
                    ans += stack.removeLast()
                }
            }
            ans.append(ch)
            
        } else if ch == ">" {
            ans.append(ch)
            tag.toggle()
        } else if ch == " " {
            while !stack.isEmpty {
                ans += stack.removeLast()
            }
            ans.append(ch)
        } else {
            if tag {
                ans.append(ch)
            } else {
                stack.append(ch)
            }
        }
        
    }
    
    while !stack.isEmpty {
        ans += stack.removeLast()
    }
    
    print(ans)
}

solution()

