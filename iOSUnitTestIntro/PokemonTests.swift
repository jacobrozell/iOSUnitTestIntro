//
//  PokemonTests.swift
//  iOSUnitTestIntroTests
//
//  Created by Jacob Rozell on 5/4/20.
//  Copyright © 2020 jacobrozell. All rights reserved.
//

import XCTest
@testable import iOSUnitTestIntro

class PokemonTests: XCTestCase {
    var squirtle: Pokemon!
    var charmander: Pokemon!
    var psyduck: Pokemon!

    override func setUp() {
        super.setUp()
        squirtle = Pokemon(type: .Water, attackType: .Water)
        charmander = Pokemon(type: .Fire, attackType: .Fire)
        psyduck = Pokemon(type: .Water, attackType: .Water)
    }

    override func tearDown() {
        squirtle = nil
        charmander = nil
        psyduck = nil
    }

    func testThatAWaterPokemonDoesMoreDamageToAFirePokemon() {
        //1. Water attacks Fire
        squirtle.attack(enemy: charmander)
        
        //2. Water attacks Water
        squirtle.attack(enemy: psyduck)
        
        XCTAssertTrue(charmander.health < psyduck.health)
    }

}
