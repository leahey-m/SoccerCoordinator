// Player Information

let joeSmith = [ "Name" : "Joe SMith", "Height (Inches)" : 42, "Soccer Experience" : true, "Guardian Name(s)" : "Jim and Jan Smith"] as [String : Any]
let jillTanner = [ "Name" : "Jill Tanner", "Height (Inches)" : 36, "Soccer Experience" : true, "Guardian Name(s)" : "Clara Tanner" ] as [String : Any]
let billBon = [ "Name" : "Bill Bon", "Height (Inches)" : 43, "Soccer Experience" : true, "Guardian Name(s)" : "Sara and Jenny Bon"] as [String : Any]
let evaGordon = [ "Name" : "Eva Gordon", "Height (Inches)" : 45, "Soccer Experience" : false, "Guardian Name(s)" : "Wendy and Mike Gordon"] as [String : Any]
let mattGill = [ "Name" : "Matt Gill", "Height (Inches)" : 40, "Soccer Experience" : false, "Guardian Name(s)" : "Charles and Sylvia Gill"] as [String : Any]
let kimmyStein = [ "Name" : "Kimmy Stein", "Height (Inches)" : 41, "Soccer Experience" : false, "Guardian Name(s)" : "Bill and Hillary Stein"] as [String : Any]
let sammyAdams = [ "Name" : "Sammy Adams", "Height (Inches)" : 45, "Soccer Experience" : false, "Guardian Name(s)" : "Jeff Adams"] as [String : Any]
let karlSaygan = [ "Name" : "Karl Saygan", "Height (Inches)" : 42, "Soccer Experience" : true, "Guardian Name(s)" : "Heather Bledsoe"] as [String : Any]
let suzaneGreenberg = [ "Name" : "Suzane Greenberg", "Height (Inches)" : 44, "Soccer Experience" : true, "Guardian Name(s)" : "Henrietta Dumas"] as [String : Any]
let salDali = [ "Name" : "Sal Dali", "Height (Inches)" : 41, "Soccer Experience" : false, "Guardian Name(s)" : "Gala Dali"] as [String : Any]
let joeKavalier = [ "Name" : "Joe Kavalier", "Height (Inches)" : 39, "Soccer Experience" : false, "Guardian Name(s)" : "Sam and Elaine Kavalier"] as [String : Any]
let benFinklestein = [ "Name" : "Ben Finklestein", "Height (Inches)" : 44, "Soccer Experience" : false, "Guardian Name(s)" : "Aaron and Jill Finklestein"] as [String : Any]
let diegoSoto = [ "Name" : "Diego Soto", "Height (Inches)" : 41, "Soccer Experience" : true, "Guardian Name(s)" : "Robin and Sarika Soto"] as [String : Any]
let chloeAlaska = [ "Name" : "Chloe Alaska", "Height (Inches)" : 47, "Soccer Experience" : false, "Guardian Name(s)" : "David and Jamie Alaska"] as [String : Any]
let arnoldWillis = [ "Name" : "Arnold Willis", "Height (Inches)" : 43, "Soccer Experience" : false, "Guardian Name(s)" : "Claire Willis"] as [String : Any]
let phillipHelm = [ "Name" : "Phillip Helm", "Height (Inches)" : 44, "Soccer Experience" : true, "Guardian Name(s)" : "Thomas Helm and Eva Jones"] as [String : Any]
let lesClay = [ "Name" : "Les Clay", "Height (Inches)" : 42, "Soccer Experience" : true, "Guardian Name(s)" : "Wyonna Brown"] as [String : Any]
let herschelKrustofski = [ "Name" : "Herschel Krustofski", "Height (Inches)" : 45, "Soccer Experience" : true, "Guardian Name(s)" : "Hyman and Rachel Krustofski"] as [String : Any]

// Collection of players in League

let players = [joeSmith, jillTanner, billBon, evaGordon, mattGill, kimmyStein, sammyAdams, karlSaygan, suzaneGreenberg, salDali, joeKavalier, benFinklestein, diegoSoto, chloeAlaska, arnoldWillis, phillipHelm, lesClay, herschelKrustofski]

// League Team Declarations

var teamDragons: [[String : Any]] = []
var teamRaptors: [[String : Any]] = []
var teamSharks: [[String : Any]] = []

// Sort Teams Equally based on Experience

for player in players {
    switch player["Soccer Experience"] as! Bool {
    case true:
            if(teamDragons.count == teamRaptors.count && teamRaptors.count == teamSharks.count) {
                teamDragons.append(player)
            } else if(teamDragons.count > teamRaptors.count || teamDragons.count > teamSharks.count) {
                if (teamRaptors.count > teamSharks.count) {
                    teamSharks.append(player)
                } else {
                    teamRaptors.append(player)
                }
        }
    case false:
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
 

//////////////////////////////////////////////////////////
// Sort Teams again for 0 < average height < 1.5 inches //
//////////////////////////////////////////////////////////


////////////////
//  Functions //
////////////////

// Print average height of teams
func printAverageHeightOfTeams(teamA: Double, teamB: Double, teamC: Double) {
    print("Average height for Team Dragons is: \(teamA) \nAverage height for Team Raptors is: \(teamB) \nAverage height for Team Sharks is: \(teamC)")
}

// Calculate average height of teams
func calculateAverageHeightOfTeam(players: [[String : Any]]) -> Double {
    var totalHeight = 0
    for player in players {
        totalHeight += player["Height (Inches)"] as! Int
    }
    return Double(totalHeight/players.count)
}

// Determine if average heights are within 1.5 inches of each other
func withinAverageHeightThreshhold(teamDragons: [[String : Any]], teamRaptors: [[String : Any]], teamSharks: [[String : Any]]) -> Bool {
    let averageHeightTeamA = calculateAverageHeightOfTeam(players: teamDragons)
    let averageHeightTeamB = calculateAverageHeightOfTeam(players: teamRaptors)
    let averageHeightTeamC = calculateAverageHeightOfTeam(players: teamSharks)
    
    if(averageHeightTeamA - averageHeightTeamB > -1.5 && averageHeightTeamA - averageHeightTeamB < 1.5) {
        if(averageHeightTeamB - averageHeightTeamC > -1.5 && averageHeightTeamB - averageHeightTeamC < 1.5) {
            if(averageHeightTeamA - averageHeightTeamC > -1.5 && averageHeightTeamA - averageHeightTeamC < 1.5) {
                return true
            }
        }
    }
    printAverageHeightOfTeams(teamA: averageHeightTeamA, teamB: averageHeightTeamB, teamC: averageHeightTeamC)
    return false
}

// Obtain index of tallest player on team
func findTallestPlayer(team: [[String : Any]]) -> Int {
    var index = 0
    var tallestPlayerHeight = 0
    
    for i in 0...team.count - 1 {
        if(tallestPlayerHeight < team[i]["Height (Inches)"] as! Int) {
            tallestPlayerHeight = team[i]["Height (Inches)"] as! Int
            index = i
        }
    }
    
    return index
}

// Obtain Index of shortest player on team
func findShortestPlayer(team: [[String : Any]], experience: Bool) -> Int {
    var index = 0
    var shortestPlayerHeight = team[findTallestPlayer(team: team)]["Height (Inches)"] as! Int
    
    for i in 1...team.count - 1 {
        if(shortestPlayerHeight > team[i]["Height (Inches)"] as! Int && team[i]["Soccer Experience"] as! Bool == experience) {
            shortestPlayerHeight = team[i]["Height (Inches)"] as! Int
            index = i
        }
    }
    
    return index
}




// Calculate average height of teams
var averageHeightOfTeamDragons = calculateAverageHeightOfTeam(players: teamDragons)
var averageHeightOfTeamRaptors = calculateAverageHeightOfTeam(players: teamRaptors)
var averageHeightOfTeamSharks = calculateAverageHeightOfTeam(players: teamSharks)

// Variable to hold swapped player
var swappedPlayer: [String : Any] = [:]

// Sort through teams to obtain an average height differential of at least 1.5 inches

repeat {
    if(averageHeightOfTeamDragons > averageHeightOfTeamRaptors && averageHeightOfTeamDragons > averageHeightOfTeamSharks) {
        swappedPlayer = teamDragons.remove(at: findTallestPlayer(team: teamDragons))
        
        if(averageHeightOfTeamRaptors > averageHeightOfTeamSharks) {
            teamDragons.append(teamSharks.remove(at: findShortestPlayer(team: teamSharks, experience: swappedPlayer["Soccer Experience"] as! Bool)))
            teamSharks.append(swappedPlayer)
        } else {
            teamDragons.append(teamRaptors.remove(at: findShortestPlayer(team: teamRaptors, experience: swappedPlayer["Soccer Experience"] as! Bool)))
            teamRaptors.append(swappedPlayer)
        }
    } else if((averageHeightOfTeamDragons > averageHeightOfTeamRaptors && averageHeightOfTeamDragons < averageHeightOfTeamSharks) ||
        (averageHeightOfTeamDragons < averageHeightOfTeamRaptors && averageHeightOfTeamDragons > averageHeightOfTeamSharks)) {
        if(averageHeightOfTeamRaptors > averageHeightOfTeamSharks) {
            swappedPlayer = teamRaptors.remove(at: findTallestPlayer(team: teamRaptors))
            teamRaptors.append(teamSharks.remove(at: findShortestPlayer(team: teamSharks, experience: swappedPlayer["Soccer Experience"] as! Bool)))
            teamSharks.append(swappedPlayer)
        } else {
            swappedPlayer = teamSharks.remove(at: findTallestPlayer(team: teamSharks))
            teamSharks.append(teamRaptors.remove(at: findShortestPlayer(team: teamRaptors, experience: swappedPlayer["Soccer Experience"] as! Bool)))
            teamRaptors.append(swappedPlayer)
        }
    } else if(averageHeightOfTeamDragons < averageHeightOfTeamRaptors && averageHeightOfTeamDragons < averageHeightOfTeamSharks) {
        if(averageHeightOfTeamRaptors > averageHeightOfTeamSharks) {
            swappedPlayer = teamRaptors.remove(at: findTallestPlayer(team: teamRaptors))
            teamRaptors.append(teamDragons.remove(at: findShortestPlayer(team: teamDragons, experience: swappedPlayer["Soccer Experience"] as! Bool)))
            teamDragons.append(swappedPlayer)
        } else {
            swappedPlayer = teamSharks.remove(at: findTallestPlayer(team: teamSharks))
            teamSharks.append(teamDragons.remove(at: findShortestPlayer(team: teamDragons, experience: swappedPlayer["Soccer Experience"] as! Bool)))
            teamDragons.append(swappedPlayer)
            
        }
    } else {
        if(averageHeightOfTeamDragons == averageHeightOfTeamRaptors && averageHeightOfTeamDragons > averageHeightOfTeamSharks) {
            swappedPlayer = teamDragons.remove(at: findTallestPlayer(team: teamDragons))
            teamDragons.append(teamSharks.remove(at: findShortestPlayer(team: teamSharks, experience: swappedPlayer["Soccer Experience"] as! Bool)))
            teamSharks.append(swappedPlayer)
        } else if(averageHeightOfTeamDragons > averageHeightOfTeamRaptors && averageHeightOfTeamDragons == averageHeightOfTeamSharks) {
            swappedPlayer = teamDragons.remove(at: findTallestPlayer(team: teamDragons))
            teamDragons.append(teamRaptors.remove(at: findShortestPlayer(team: teamRaptors, experience: swappedPlayer["Soccer Experience"] as! Bool)))
            teamRaptors.append(swappedPlayer)
        } else if( averageHeightOfTeamDragons == averageHeightOfTeamRaptors && averageHeightOfTeamDragons < averageHeightOfTeamSharks){
            swappedPlayer = teamSharks.remove(at: findTallestPlayer(team: teamSharks))
            teamSharks.append(teamDragons.remove(at: findShortestPlayer(team: teamDragons, experience: swappedPlayer["Soccer Experience"] as! Bool)))
            teamDragons.append(swappedPlayer)
        } else {
            swappedPlayer = teamRaptors.remove(at: findTallestPlayer(team: teamRaptors))
            teamRaptors.append(teamDragons.remove(at: findShortestPlayer(team: teamDragons, experience: swappedPlayer["Soccer Experience"] as! Bool)))
            teamDragons.append(swappedPlayer)
        }
    }
    
    averageHeightOfTeamDragons = calculateAverageHeightOfTeam(players: teamDragons)
    averageHeightOfTeamSharks = calculateAverageHeightOfTeam(players: teamSharks)
    averageHeightOfTeamRaptors = calculateAverageHeightOfTeam(players: teamRaptors)
} while (!withinAverageHeightThreshhold(teamDragons: teamDragons, teamRaptors: teamRaptors, teamSharks: teamSharks))

printAverageHeightOfTeams(teamA: averageHeightOfTeamDragons, teamB: averageHeightOfTeamRaptors, teamC: averageHeightOfTeamSharks)


///////////////////////////////////////////////////////////
// Part 3: Write Personalized Letters To Player Families //
///////////////////////////////////////////////////////////

// Generate letters function
func generateLettersToFamilies(teamDragons: [[String : Any]], teamRaptors: [[String : Any]], teamSharks: [[String : Any]]) -> [String] {
    var letters: [String] = []
    var letter: String
    
    for player in teamDragons {
        letter = "Dear \(player["Guardian Name(s)"]!), \n\tYour child \(player["Name"]!) has been placed onto this years soccer league team Dragons! The first practice time will be on March 17th at 1pm. We look forward to seeing you there! \nSincerely\n\t Michael Leahey\n\tSoccer Coordinator"
        letters.append(letter)
    }
    for player in teamRaptors{
        letter = "Dear \(player["Guardian Name(s)"]!), \n\tYour child \(player["Name"]!) has been placed onto this years soccer league team Raptors! The first practice time will be on March 11th at 1pm. We look forward to seeing you there! \nSincerely\n\t Michael Leahey\n\tSoccer Coordinator"
        letters.append(letter)
    }
    for player in teamSharks{
        letter = "Dear \(player["Guardian Name(s)"]!), \n\tYour child \(player["Name"]!) has been placed onto this years soccer league team Sharks! The first practice time will be on March 17th at 3pm. We look forward to seeing you there! \n\nSincerely\n\tMichael Leahey\n\tSoccer Coordinator\n\n"
        letters.append(letter)
    }
    return letters
}

// Store letters in collection
let lettersToFamilies = generateLettersToFamilies(teamDragons: teamDragons, teamRaptors: teamRaptors, teamSharks: teamSharks)

// Print letters to console function
func printLetters(letters: [String]) {
    for letter in letters{
        print(letter)
    }
}

printLetters(letters: lettersToFamilies)







