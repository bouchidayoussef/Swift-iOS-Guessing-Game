//
//  main.swift
//  tp
//
//  Created by Youssef Bouchida on 05/02/2024.
//

import Foundation

print("Veuillez entrer votre nom")
if let nom = readLine() {
    print("Bonjour : \(nom)")
}

var nbr = Int.random(in: 1...100)
var nbr_joues = [Int]()
var n = 1

repeat {
    print("Entrez un nombre entre 1 et 100")
    var nbr_tt = Int(readLine() ?? "")
    
    nbr_joues.append(nbr_tt!)
    
    if n>1 && nbr_joues.contains(nbr_tt!) {
        print("attention vous avez deja saisi ce nbr")
    }
    
    if nbr_tt! < nbr
    {
        print("too small")
    }
    if nbr_tt! > nbr
    {
        print("too big")
    }
    
    while nbr_tt == nil || nbr_tt! < 1 || nbr_tt! > 100 {
        print("Bruh, I said between 1 and 100")
        nbr_tt = Int(readLine() ?? "")
        if n>1 && nbr_joues.contains(nbr_tt!) {
            print("attention vous avez deja saisi ce nbr")
        }
        nbr_joues.append(nbr_tt!)
    }
    
    if nbr_tt == nbr {
        print("Niiiice!")
        if n >= 1 && n <= 2
        {
            print("Bravo vous avez beaucoup de chance !")
        }
        if n >= 3 && n <= 5
        {
            print("Bravo très bonne stratégie avec un peu de chance... !")
        }
        if n >= 6 && n <= 10
        {
            print("Bravo bonne stratégie !")
        }
        if n >= 11 && n <= 20
        {
            print("Bien mais vous pouvez mieux faire...")
        }
        print("tes tentavies étaient : \(nbr_joues)")
        break
    } else {
        // print("Ew WRONG, try AGAIN")
        n += 1
    }
    
} while n <= 20

if n > 20 {
    print("You had 20 tries, stupid freak")
    print("tes tentavies étaient : \(nbr_joues)")

    
}

