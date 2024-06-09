--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
local allowedPartNames = {
    "Common","Uncommon","Rare","Epic", "Legendary", "Mythical", "Godly", "Runic", "Arcane", "Ascendant",
    "Stellar", "Aquavortex", "Serene", "Nebula", "Eternal", "Paragon", "Immortal",
    "Ethereal", "Astral", "Odyssey", "Lunar", "Glisten", "Celestial", "Divine",
    "Leviathan", "Omnipotent", "Desolation", "Empyrean", "Aurora", "Abyssal",
    "Cosmic", "Chronos", "Beyond", "Hypergiant", "Fool", "gnarp", "Gentleman",
    "sevenCRYSTAL", "TheRARESTblock", "Icy", "Bit", "Magma", "Dusk", "Pure", "Life", "Aqua", "Diamond", "Binary", "Frost", "Flare", "Icy", "Arcane", "Runic", "Ascendant", "ExoticDiamond", "Digital", "Pyro", "Crystalize", "Solitude", "Syntax", "Polar", "Blaze", "Sanctum", "Prototype", "Glacier", "Inferno", "Lunar", "Odyssey", "Lucid", "Glisten", "Soundspace", "Eruption", "Nova", "Undefined", "Blizzard", "Toxic", "Bluescreen", "Temporal", "Entropy", "Encryption", "Demonic", "Seraphic", "Purity", "Frostbite", "Guardian", "Vaporwave", "Firewall", "Tesseract", "Nuetron", "Depth", "Destiny", "Hypergiant", "Cyberspace", "Primordial", "Terminus", "Blossom", "Prismatic", "Fate", "Apotheosis", "Euphoria", "boCRYSTAL", "Nuetron", "Millionaire", "TROLL", "Lovestruck", "Harvest", "Firework", "Content", "TidalWave", "Elysian", "Shine", "Aether", "Iridescence", "Valor", "Sovereign", "Imperial",
    "InvertedCommon","ChromaticInvertedCommon","Andromeda","InvertedAndromeda","ChromaticAndromeda","InvertedInvertedCommon","InvertedNuetron","ChromaticNuetron","InvertedMythical",
    "InvertedGodly","InvertedRunic","InvertedArcane","InvertedAscendant","InvertedStellar","InvertedAquavortex",
    "InvertedSerene","InvertedNebula","InvertedEternal","InvertedParagon","InvertedImmortal","InvertedEthereal",
    "InvertedAstral","InvertedOdyssey","InvertedLunar","InvertedGlisten","InvertedCelestial","InvertedDivine",
    "InvertedLeviathan","InvertedOmnipotent","InvertedDesolation","InvertedEmpyrean","InvertedAurora",
    "InvertedAbyssal","InvertedCosmic","InvertedChronos","InvertedBeyond","InvertedHypergiant","InvertedFool",
    "Invertedgnarp","InvertedGentleman","InvertedsevenCRYSTAL","InvertedTheRARESTblock","InvertedIcy",
    "InvertedBit","InvertedMagma","InvertedDusk","InvertedPure","InvertedLife","InvertedAqua","InvertedDiamond",
    "InvertedBinary","InvertedFrost","InvertedFlare","InvertedIcy","InvertedArcane","InvertedRunic",
    "InvertedAscendant","InvertedExoticDiamond","InvertedDigital","InvertedPyro","InvertedCrystalize",
    "InvertedSolitude","InvertedSyntax","InvertedPolar","InvertedBlaze","InvertedSanctum","InvertedPrototype",
    "InvertedGlacier","InvertedInferno","InvertedLunar","InvertedOdyssey","InvertedLucid","InvertedGlisten",
    "InvertedSoundspace","InvertedEruption","InvertedNova","InvertedUndefined","InvertedBlizzard","InvertedToxic",
    "InvertedBluescreen","InvertedTemporal","InvertedEntropy","InvertedEncryption","InvertedDemonic",
    "InvertedSeraphic","InvertedPurity","InvertedFrostbite","InvertedGuardian","InvertedVaporwave",
    "InvertedFirewall","InvertedTesseract","InvertedNeutron","InvertedDepth","InvertedDestiny","InvertedHypergiant",
    "InvertedCyberspace","InvertedPrimordial","InvertedTerminus","InvertedBlossom","InvertedPrismatic",
    "InvertedFate","InvertedApotheosis","InvertedEuphoria","InvertedboCRYSTAL","InvertedInvertedCommon",
    "InvertedMillionaire","InvertedTROLL","InvertedLovestruck","InvertedHarvest","InvertedFirework",
    "InvertedContent","InvertedTidalWave","InvertedElysian","InvertedShine","InvertedAether","InvertedIridescence",
    "InvertedValor","InvertedSovereign","InvertedImperial",
    "ChromaticCommon","ChromaticUncommon","ChromaticRare","ChromaticEpic","ChromaticLegendary","ChromaticMythical",
    "ChromaticGodly","ChromaticRunic","ChromaticArcane","ChromaticAscendant","ChromaticStellar","ChromaticAquavortex",
    "ChromaticSerene","ChromaticNebula","ChromaticEternal","ChromaticParagon","ChromaticImmortal","ChromaticEthereal",
    "ChromaticAstral","ChromaticOdyssey","ChromaticLunar","ChromaticGlisten","ChromaticCelestial","ChromaticDivine",
    "ChromaticLeviathan","ChromaticOmnipotent","ChromaticDesolation","ChromaticEmpyrean","ChromaticAurora",
    "ChromaticAbyssal","ChromaticCosmic","ChromaticChronos","ChromaticBeyond","ChromaticHypergiant","ChromaticFool",
    "Chromaticgnarp","ChromaticGentleman","ChromaticsevenCRYSTAL","ChromaticTheRARESTblock","ChromaticIcy",
    "ChromaticBit","ChromaticMagma","ChromaticDusk","ChromaticPure","ChromaticLife","ChromaticAqua","ChromaticDiamond",
    "ChromaticBinary","ChromaticFrost","ChromaticFlare","ChromaticIcy","ChromaticArcane","ChromaticRunic",
    "ChromaticAscendant","ChromaticExoticDiamond","ChromaticDigital","ChromaticPyro","ChromaticCrystalize",
    "ChromaticSolitude","ChromaticSyntax","ChromaticPolar","ChromaticBlaze","ChromaticSanctum","ChromaticPrototype",
    "ChromaticGlacier","ChromaticInferno","ChromaticLunar","ChromaticOdyssey","ChromaticLucid","ChromaticGlisten",
    "ChromaticSoundspace","ChromaticEruption","ChromaticNova","ChromaticUndefined","ChromaticBlizzard","ChromaticToxic",
    "ChromaticBluescreen","ChromaticTemporal","ChromaticEntropy","ChromaticEncryption","ChromaticDemonic",
    "ChromaticSeraphic","ChromaticPurity","ChromaticFrostbite","ChromaticGuardian","ChromaticVaporwave",
    "ChromaticFirewall","ChromaticTesseract","ChromaticNeutron","ChromaticDepth","ChromaticDestiny","ChromaticHypergiant",
    "ChromaticCyberspace","ChromaticPrimordial","ChromaticTerminus","ChromaticBlossom","ChromaticPrismatic",
    "ChromaticFate","ChromaticApotheosis","ChromaticEuphoria","ChromaticboCRYSTAL","ChromaticInvertedCommon",
    "ChromaticMillionaire","ChromaticTROLL","ChromaticLovestruck","ChromaticHarvest","ChromaticFirework",
    "ChromaticContent","ChromaticTidalWave","ChromaticElysian","ChromaticShine","ChromaticAether","ChromaticIridescence",
    "ChromaticValor","ChromaticSovereign","ChromaticImperial"
}

while true do
    for _, v in pairs(game:GetDescendants()) do
        if v:IsA("Part") and table.find(allowedPartNames, v.Name) and v:FindFirstChild("ClickDetector") then
            fireclickdetector(v.ClickDetector)
        end
    end
    wait(0.8)
end
