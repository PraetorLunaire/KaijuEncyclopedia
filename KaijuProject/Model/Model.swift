//
//  Model.swift
//  KaijuProject
//
//  Created by Rubens Paulico on 18/06/19.
//  Copyright © 2019 Rubens Paulico. All rights reserved.
//

import Foundation
import UIKit


class Model {
    static let instance = Model()
    private init() {}
    
    lazy var kaijuMonsters = [
        
        KaijuProfile(name: "Godzilla (ゴジラ  Gojira)", picture: UIImage(named: "Godzilla_Heisei")!, kaijuButtonName: UIImage(named: "nameGODZILLA")!, firstAppearance: "Godzilla (1954)", description: "Prehistoric amphibious creature mutated by the radiation of nuclear testings.", appearsIn: ["Godzilla (1954)", "Godzilla Raids Again (1955)", "King Kong vs Godzilla (1962)", "Mothra vs Godzilla (1964)", "Ghidorah The Three Headed Monster (1964)", "Invasion of Astro-Monster (1965)", "Ebirah, Horror of the Deep (1966)", "Son of Godzilla (1967)", "Destroy All Monsters (1968)", "All Monsters Attack (1969)", "Godzilla vs. Hedorah (1971)", "Godzilla vs. Gigan (1972)", "Godzilla vs. Megalon (1973)", "Zone Fighter (TV 1973)", "Godzilla vs. Mechagodzilla (1974)", "Terror of Mechagodzilla (1975)", "Godzilla (TV 1978-1979)", "Bye-Bye Jupiter (1984) [stock footage from Ghidorah, the Three-Headed Monster]", "The Return of Godzilla (1984)", "Godzilla vs. Biollante (1989)", "Godzilla vs. King Ghidorah (1991)", "Adventure! Godzilland (TV 1992-1993)", "Godzilla vs. Mothra (1992)", "Godzilla vs. Mechagodzilla II (1993)", "Godzilla vs. SpaceGodzilla (1994)", "Godzilla vs. Destoroyah (1995)", "Get Going! Godzilland (OVA 1994, 1996)", "Godzilla Island (TV 1997-1998) [185 episodes]", "GODZILLA (1998)", "Godzilla: The Series (TV 1998-2000)", "Godzilla 2000: Millennium (1999)", "Godzilla vs. Megaguirus (2000)", "Godzilla, Mothra and King Ghidorah: Giant Monsters All-Out Attack (2001)", "Godzilla Against Mechagodzilla (2002)", "Godzilla: Tokyo S.O.S. (2003)", "Godzilla: Final Wars (2004)", "Godzilla (2014)", "Shin Godzilla (2016)", "Kong: Skull Island (2017) [mentioned; cave paintings]", "GODZILLA: Planet of the Monsters (2017)", "GODZILLA: City on the Edge of Battle (2018)", "GODZILLA: The Planet Eater (2018)", "Godzilla: King of the Monsters (2019)", "Godzilla vs. Kong (2020)" ]),
        
        KaijuProfile(name: "Anguirus (アンギラス Angirasu)", picture: UIImage(named: "Godzilla_Heisei")!, kaijuButtonName: UIImage(named: "nameANGUIRUS")!, firstAppearance: "Godzilla (1954)", description: "Prehistoric Ankylosaurus awakened and mutated by the radiation of nuclear bomb testings.", appearsIn: ["Godzilla Raids Again (1955)", "Frankenstein vs. Baragon (1965) [maquette]", "Destroy All Monsters (1968)", "All Monsters Attack (1969) [stock footage]", "Godzilla vs. Gigan (1972)", "Godzilla vs. Megalon (1973)", "Godzilla vs. Mechagodzilla (1974)", "Adventure! Godzilland 2 (TV 1993) [animated segments]", "Get Going! Godzilland (OVA 1994, 1996) [four OVAs]", "Godzilla Island (TV 1997-1998) [79 episodes]", "Godzilla: Final Wars (2004)", "GODZILLA: Planet of the Monsters (2017) [skeletal remains]"]),
        
        KaijuProfile(name: "Mothra", picture: UIImage(named: "Godzilla_Heisei")!, kaijuButtonName: UIImage(named: "nameGHIDORAH")!, firstAppearance: "Godzilla (1954)", description: "Prehistoric Amphibious Irradiated Creature", appearsIn: ["Godzilla (1954)", "Godzilla Raids Again (1955)", "King Kong vs Godzilla (1962)", "Mothra vs Godzilla (1964)", "Ghidorah The Three Headed Monster (1964)"]),
        
        KaijuProfile(name: "Godzilla (ゴジラ  Gojira)", picture: UIImage(named: "Godzilla_Heisei")!, kaijuButtonName: UIImage(named: "nameBATTRA")!, firstAppearance: "Godzilla (1954)", description: "Prehistoric Amphibious Irradiated Creature", appearsIn: ["Godzilla (1954)", "Godzilla Raids Again (1955)", "King Kong vs Godzilla (1962)", "Mothra vs Godzilla (1964)", "Ghidorah The Three Headed Monster (1964)"]),
        
        KaijuProfile(name: "Godzilla (ゴジラ  Gojira)", picture: UIImage(named: "Godzilla_Heisei")!, kaijuButtonName: UIImage(named: "nameGODZILLA")!, firstAppearance: "Godzilla (1954)", description: "Prehistoric Amphibious Irradiated Creature", appearsIn: ["Godzilla (1954)", "Godzilla Raids Again (1955)", "King Kong vs Godzilla (1962)", "Mothra vs Godzilla (1964)", "Ghidorah The Three Headed Monster (1964)"]),
        
        KaijuProfile(name: "Godzilla (ゴジラ  Gojira)", picture: UIImage(named: "Godzilla_Heisei")!, kaijuButtonName: UIImage(named: "nameGODZILLA")!, firstAppearance: "Godzilla (1954)", description: "Prehistoric Amphibious Irradiated Creature", appearsIn: ["Godzilla (1954)", "Godzilla Raids Again (1955)", "King Kong vs Godzilla (1962)", "Mothra vs Godzilla (1964)", "Ghidorah The Three Headed Monster (1964)"]),
        
        KaijuProfile(name: "Godzilla (ゴジラ  Gojira)", picture: UIImage(named: "Godzilla_Heisei")!, kaijuButtonName: UIImage(named: "nameGODZILLA")!, firstAppearance: "Godzilla (1954)", description: "Prehistoric Amphibious Irradiated Creature", appearsIn: ["Godzilla (1954)", "Godzilla Raids Again (1955)", "King Kong vs Godzilla (1962)", "Mothra vs Godzilla (1964)", "Ghidorah The Three Headed Monster (1964)"]),
        
        KaijuProfile(name: "Godzilla (ゴジラ  Gojira)", picture: UIImage(named: "Godzilla_Heisei")!, kaijuButtonName: UIImage(named: "nameGODZILLA")!, firstAppearance: "Godzilla (1954)", description: "Prehistoric Amphibious Irradiated Creature", appearsIn: ["Godzilla (1954)", "Godzilla Raids Again (1955)", "King Kong vs Godzilla (1962)", "Mothra vs Godzilla (1964)", "Ghidorah The Three Headed Monster (1964)"]),
        
        KaijuProfile(name: "Godzilla (ゴジラ  Gojira)", picture: UIImage(named: "Godzilla_Heisei")!, kaijuButtonName: UIImage(named: "nameGODZILLA")!, firstAppearance: "Godzilla (1954)", description: "Prehistoric Amphibious Irradiated Creature", appearsIn: ["Godzilla (1954)", "Godzilla Raids Again (1955)", "King Kong vs Godzilla (1962)", "Mothra vs Godzilla (1964)", "Ghidorah The Three Headed Monster (1964)"]),
        
        KaijuProfile(name: "Godzilla (ゴジラ  Gojira)", picture: UIImage(named: "Godzilla_Heisei")!, kaijuButtonName: UIImage(named: "nameGODZILLA")!, firstAppearance: "Godzilla (1954)", description: "Prehistoric Amphibious Irradiated Creature", appearsIn: ["Godzilla (1954)", "Godzilla Raids Again (1955)", "King Kong vs Godzilla (1962)", "Mothra vs Godzilla (1964)", "Ghidorah The Three Headed Monster (1964)"])
        
        //KaijuProfile(name: "Godzilla", picture: UIImage(named: "Godzilla Button")!, kaijuButtonName: UIImage(named: "nameGODZILLA")!),


    ]
}
