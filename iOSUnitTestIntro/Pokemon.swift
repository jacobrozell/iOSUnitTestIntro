//
//  Pokemon.swift
//  iOSUnitTestIntro
//
//  Created by Jacob Rozell on 5/4/20.
//  Copyright © 2020 jacobrozell. All rights reserved.
//

import Foundation

enum PokemonType {
    case Normal
    case Fire
    case Water
}

enum PokemonAttackType {
    case Normal
    case Fire
    case Water
}

class Pokemon {
    var type: PokemonType
    var attackType: PokemonAttackType
    var health: Int = 100
    
    init(type: PokemonType, attackType: PokemonAttackType) {
        self.type = type
        self.attackType = attackType
    }
    
    func attack(enemy: Pokemon) {
        var damage = 30
        
        if (enemy.type == .Fire && attackType == .Water) {
            damage = 60
        }
        
        if (enemy.type == .Water && attackType == .Fire) {
            damage = 10
        }
        
        enemy.health = enemy.health - damage
    }
    
}

let squirtle = Pokemon(type: .Water, attackType: .Water)

