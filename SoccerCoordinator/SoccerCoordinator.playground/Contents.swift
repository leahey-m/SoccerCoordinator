// Player Information

let joeSmith = [ "Name" : "Joe SMith", "Height (Inches)" : "42", "Soccer Experience" : "Yes", "Guardian Name(s)" : "Jim and Jan Smith"]
let jillTanner = [ "Name" : "Jill Tanner", "Height (Inches)" : "36", "Soccer Experience" : "Yes", "Guardian Name(s)" : "Clara Tanner" ]
let billBon = [ "Name" : "Bill Bon", "Height (Inches)" : "43", "Soccer Experience" : "Yes", "Guardian Name(s)" : "Sara and Jenny Bon"]
let evaGordon = [ "Name" : "Eva Gordon", "Height (Inches)" : "45", "Soccer Experience" : "No", "Guardian Name(s)" : "Wendy and Mike Gordon"]
let mattGill = [ "Name" : "Matt Gill", "Height (Inches)" : "40", "Soccer Experience" : "No", "Guardian Name(s)" : "Charles and Sylvia Gill"]
let kimmyStein = [ "Name" : "Kimmy Stein", "Height (Inches)" : "41", "Soccer Experience" : "No", "Guardian Name(s)" : "Bill and Hillary Stein"]
let sammyAdams = [ "Name" : "Sammy Adams", "Height (Inches)" : "45", "Soccer Experience" : "No", "Guardian Name(s)" : "Jeff Adams"]
let karlSaygan = [ "Name" : "Karl Saygan", "Height (Inches)" : "42", "Soccer Experience" : "Yes", "Guardian Name(s)" : "Heather Bledsoe"]
let suzaneGreenberg = [ "Name" : "Suzane Greenberg", "Height (Inches)" : "44", "Soccer Experience" : "Yes", "Guardian Name(s)" : "Henrietta Dumas"]
let salDali = [ "Name" : "Sal Dali", "Height (Inches)" : "41", "Soccer Experience" : "No", "Guardian Name(s)" : "Gala Dali"]
let joeKavalier = [ "Name" : "Joe Kavalier", "Height (Inches)" : "39", "Soccer Experience" : "No", "Guardian Name(s)" : "Sam and Elaine Kavalier"]
let benFinklestein = [ "Name" : "Ben Finklestein", "Height (Inches)" : "44", "Soccer Experience" : "No", "Guardian Name(s)" : "Aaron and Jill Finklestein"]
let diegoSoto = [ "Name" : "Diego Soto", "Height (Inches)" : "41", "Soccer Experience" : "Yes", "Guardian Name(s)" : "Robin and Sarika Soto"]
let chloeAlaska = [ "Name" : "Chloe Alaska", "Height (Inches)" : "47", "Soccer Experience" : "No", "Guardian Name(s)" : "David and Jamie Alaska"]
let arnoldWillis = [ "Name" : "Arnold Willis", "Height (Inches)" : "43", "Soccer Experience" : "No", "Guardian Name(s)" : "Claire Willis"]
let phillipHelm = [ "Name" : "Phillip Helm", "Height (Inches)" : "44", "Soccer Experience" : "Yes", "Guardian Name(s)" : "Thomas Helm and Eva Jones"]
let lesClay = [ "Name" : "Les Clay", "Height (Inches)" : "42", "Soccer Experience" : "Yes", "Guardian Name(s)" : "Wyonna Brown"]
let herschelKrustofski = [ "Name" : "Herschel Krustofski", "Height (Inches)" : "45", "Soccer Experience" : "Yes", "Guardian Name(s)" : "Hyman and Rachel Krustofski"]

// Collection of players in League

let players = [joeSmith, jillTanner, billBon, evaGordon, mattGill, kimmyStein, sammyAdams, karlSaygan, suzaneGreenberg, salDali, joeKavalier, benFinklestein, diegoSoto, chloeAlaska, arnoldWillis, phillipHelm, lesClay, herschelKrustofski]

// League Team Declarations

var teamDragons: [[String : String]] = []
var teamRaptors: [[String : String]] = []
var teamSharks: [[String : String]] = []

// Sort Teams Equally based on Experience

for player in players {
    switch player["Soccer Experience"]! {
    case "Yes":
            if(teamDragons.count == teamRaptors.count && teamRaptors.count == teamSharks.count) {
                teamDragons.append(player)
            } else if(teamDragons.count > teamRaptors.count || teamDragons.count > teamSharks.count) {
                if (teamRaptors.count > teamSharks.count) {
                    teamSharks.append(player)
                } else {
                    teamRaptors.append(player)
                }
        }
    default:
            if(teamDragons.count == teamRaptors.count && teamRaptors.count == teamSharks.count) {
                teamDragons.append(player)
            } else if(teamDragons.count > teamRaptors.count || teamDragons.count > teamSharks.count) {
                if (teamRaptors.count > teamSharks.count) {
                    teamSharks.append(player)
                } else {
                    teamRaptors.append(player)
                }
            }
    }
}

teamSharks
teamRaptors
teamDragons

var swappedPlayer = teamDragons.remove(at: 1)
teamDragons.append(teamRaptors.remove(at: 3))
teamRaptors.append(swappedPlayer)


//////////////////////////////////////////////////////////
// Sort Teams again for 0 < average height < 1.5 inches //
//////////////////////////////////////////////////////////

// Create average height variables for each team

var totalHeightTeamDragons = 0
var totalHeightTeamRaptors = 0
var totalHeightTeamSharks = 0
var heightOfPlayer: String

for player in teamDragons {
    heightOfPlayer = player["Height (Inches)"]!
    totalHeightTeamDragons += Int(heightOfPlayer)!
}

for player in teamRaptors {
    heightOfPlayer = player["Height (Inches)"]!
    totalHeightTeamRaptors += Int(heightOfPlayer)!
}

for player in teamSharks {
    heightOfPlayer = player["Height (Inches)"]!
    totalHeightTeamSharks += Int(heightOfPlayer)!
}

var avgHeightTeamDragons = totalHeightTeamDragons/teamDragons.count
var avgHeightTeamRaptors = totalHeightTeamRaptors/teamRaptors.count
var avgHeightTeamSharks = totalHeightTeamSharks/teamSharks.count



