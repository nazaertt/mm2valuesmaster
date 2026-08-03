--[[
    Supreme Values - COMPLETE MM2 WEAPON LIST (ALL WEAPONS + EXACT VALUES)
    Made by Oxoe
    
    ALL weapons from Supreme Values website with exact values:
    - Uniques (Corrupt, Gold/Silver/Bronze/Blue/Red/Purple items)
    - Evos (Synthwave, Gingerscythe, Icecrusher, Reaver)
    - Ancients (Icebreaker, Batwing, Elderwood Scythe, etc.)
    - Vintages (Blood, Ghost, Laser, America, etc.)
    - Chromas (All chroma weapons + pets)
    - Godlies (Tier 4 to Tier 0)
    - Legendaries (Tier 3 to Tier 1)
    - Rares (Tier 3 to Tier 1)
    - Uncommons (Tier 4 to Tier 1)
    - Commons (Victim Tier, Tier 3 to Tier 1)
    - Pets
    - Misc
    - Untradables
]]

-- ================= CONFIG =================
local HUB_NAME = "Supreme Values - Complete"
local HUB_CREDIT = "made by Oxoe"
-- ============================================

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")

-- Clean up
local existing = PlayerGui:FindFirstChild("SupremeValuesUI")
if existing then existing:Destroy() end

-- ================= COMPLETE WEAPONS DATA WITH EXACT VALUES =================
local WEAPONS_DATA = {
    -- ============================================================
    -- UNIQUES (Corrupt, Gold/Silver/Bronze/Blue/Red/Purple items)
    -- ============================================================
    {name = "Corrupt", type = "Unique", weapon = "🔫", value = "460", demand = "4", rarity = "3", change = "(-10) -2.1%"},
    {name = "slouse's Clown (Gun)", type = "Unique", weapon = "🔫", value = "Priceless", demand = "11", rarity = "0", change = "N/A"},
    {name = "slouse's Clown (Knife)", type = "Unique", weapon = "🔪", value = "Priceless", demand = "11", rarity = "0", change = "N/A"},
    {name = "Sharkseeker", type = "Unique", weapon = "🔪", value = "N/A", demand = "0", rarity = "6", change = "N/A"},
    {name = "Dartbringer", type = "Unique", weapon = "🔫", value = "N/A", demand = "0", rarity = "7", change = "N/A"},
    {name = "Gold Candy", type = "Unique", weapon = "🔪", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Gold Hallow", type = "Unique", weapon = "🔪", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Gold Sugar", type = "Unique", weapon = "🔪", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Gold Elderwood", type = "Unique", weapon = "🔪", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Gold Minty", type = "Unique", weapon = "🔪", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Gold Logchopper", type = "Unique", weapon = "🔪", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Gold Vamp's Edge", type = "Unique", weapon = "🔪", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Gold Iceblaster", type = "Unique", weapon = "🔫", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Gold Icebreaker", type = "Unique", weapon = "🔪", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Gold Harvester", type = "Unique", weapon = "🔪", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Gold Swirly", type = "Unique", weapon = "🔪", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Gold Swirly", type = "Unique", weapon = "🔪", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Gold Elderwood", type = "Unique", weapon = "🔪", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Gold Icecrusher", type = "Unique", weapon = "🔪", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Gold Icepiercer", type = "Unique", weapon = "🔪", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Gold Traveler's", type = "Unique", weapon = "🔪", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Gold Gingerscythe", type = "Unique", weapon = "🔪", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Gold Gingerscope", type = "Unique", weapon = "🔫", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Gold Vampire's Axe", type = "Unique", weapon = "🔪", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Gold Constellation", type = "Unique", weapon = "🔪", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Gold Celestial", type = "Unique", weapon = "🔪", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Gold Synthwave", type = "Unique", weapon = "🔪", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Gold Raygun", type = "Unique", weapon = "🔫", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Gold Snow Dagger", type = "Unique", weapon = "🔪", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Gold Snowcannon", type = "Unique", weapon = "🔫", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Silver Candy", type = "Unique", weapon = "🔪", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Silver Hallow", type = "Unique", weapon = "🔪", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Silver Sugar", type = "Unique", weapon = "🔪", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Silver Elderwood", type = "Unique", weapon = "🔪", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Silver Minty", type = "Unique", weapon = "🔪", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Silver Logchopper", type = "Unique", weapon = "🔪", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Silver Vamp's Edge", type = "Unique", weapon = "🔪", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Silver Iceblaster", type = "Unique", weapon = "🔫", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Silver Icebreaker", type = "Unique", weapon = "🔪", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Silver Harvester", type = "Unique", weapon = "🔪", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Silver Swirly", type = "Unique", weapon = "🔪", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Silver Swirly", type = "Unique", weapon = "🔪", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Silver Elderwood", type = "Unique", weapon = "🔪", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Silver Icecrusher", type = "Unique", weapon = "🔪", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Silver Icepiercer", type = "Unique", weapon = "🔪", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Silver Traveler's", type = "Unique", weapon = "🔪", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Silver Gingerscythe", type = "Unique", weapon = "🔪", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Silver Gingerscope", type = "Unique", weapon = "🔫", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Silver Vampire's Axe", type = "Unique", weapon = "🔪", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Silver Constellation", type = "Unique", weapon = "🔪", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Silver Celestial", type = "Unique", weapon = "🔪", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Silver Synthwave", type = "Unique", weapon = "🔪", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Silver Raygun", type = "Unique", weapon = "🔫", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Silver Snow Dagger", type = "Unique", weapon = "🔪", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Silver Snowcannon", type = "Unique", weapon = "🔫", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Bronze Candy", type = "Unique", weapon = "🔪", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Bronze Hallow", type = "Unique", weapon = "🔪", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Bronze Sugar", type = "Unique", weapon = "🔪", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Bronze Elderwood", type = "Unique", weapon = "🔪", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Bronze Minty", type = "Unique", weapon = "🔪", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Bronze Logchopper", type = "Unique", weapon = "🔪", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Bronze Vamp's Edge", type = "Unique", weapon = "🔪", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Bronze Iceblaster", type = "Unique", weapon = "🔫", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Bronze Icebreaker", type = "Unique", weapon = "🔪", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Bronze Harvester", type = "Unique", weapon = "🔪", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Bronze Swirly", type = "Unique", weapon = "🔪", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Bronze Swirly", type = "Unique", weapon = "🔪", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Bronze Elderwood", type = "Unique", weapon = "🔪", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Bronze Icecrusher", type = "Unique", weapon = "🔪", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Bronze Icepiercer", type = "Unique", weapon = "🔪", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Bronze Traveler's", type = "Unique", weapon = "🔪", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Bronze Gingerscythe", type = "Unique", weapon = "🔪", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Bronze Gingerscope", type = "Unique", weapon = "🔫", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Bronze Vampire's Axe", type = "Unique", weapon = "🔪", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Bronze Constellation", type = "Unique", weapon = "🔪", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Bronze Celestial", type = "Unique", weapon = "🔪", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Bronze Synthwave", type = "Unique", weapon = "🔪", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Bronze Raygun", type = "Unique", weapon = "🔫", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Bronze Snow Dagger", type = "Unique", weapon = "🔪", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Bronze Snowcannon", type = "Unique", weapon = "🔫", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Blue Candy", type = "Unique", weapon = "🔪", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Red Hallow", type = "Unique", weapon = "🔪", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Blue Sugar", type = "Unique", weapon = "🔪", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Blue Elderwood", type = "Unique", weapon = "🔪", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Blue Minty", type = "Unique", weapon = "🔪", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Blue Logchopper", type = "Unique", weapon = "🔪", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Blue Vamp's Edge", type = "Unique", weapon = "🔪", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Red Iceblaster", type = "Unique", weapon = "🔫", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Red Icebreaker", type = "Unique", weapon = "🔪", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Blue Harvester", type = "Unique", weapon = "🔪", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Blue Swirly", type = "Unique", weapon = "🔪", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Blue Swirly", type = "Unique", weapon = "🔪", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Blue Elderwood", type = "Unique", weapon = "🔪", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Red Icecrusher", type = "Unique", weapon = "🔪", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Red Icepiercer", type = "Unique", weapon = "🔪", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Red Traveler's", type = "Unique", weapon = "🔪", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Blue Gingerscythe", type = "Unique", weapon = "🔪", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Blue Gingerscope", type = "Unique", weapon = "🔫", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Purple Vampire's Axe", type = "Unique", weapon = "🔪", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Red Constellation", type = "Unique", weapon = "🔪", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Red Celestial", type = "Unique", weapon = "🔪", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Blue Synthwave", type = "Unique", weapon = "🔪", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Red Raygun", type = "Unique", weapon = "🔫", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Red Snow Dagger", type = "Unique", weapon = "🔪", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    {name = "Red Snowcannon", type = "Unique", weapon = "🔫", value = "Priceless", demand = "0", rarity = "0", change = "N/A"},
    
    -- ============================================================
    -- EVOS (Synthwave, Gingerscythe, Icecrusher, Reaver)
    -- ============================================================
    {name = "Synthwave (Var. 4)", type = "Evo", weapon = "🔫", value = "N/A", demand = "0", rarity = "5", change = "N/A"},
    {name = "Synthwave (Var. 3)", type = "Evo", weapon = "🔫", value = "N/A", demand = "0", rarity = "4", change = "N/A"},
    {name = "Synthwave (Var. 2)", type = "Evo", weapon = "🔫", value = "N/A", demand = "0", rarity = "3", change = "N/A"},
    {name = "Synthwave (Var. 1)", type = "Evo", weapon = "🔫", value = "N/A", demand = "0", rarity = "3", change = "N/A"},
    {name = "Gingerscythe (Var. 4)", type = "Evo", weapon = "🔪", value = "N/A", demand = "0", rarity = "6", change = "N/A"},
    {name = "Gingerscythe (Var. 3)", type = "Evo", weapon = "🔪", value = "N/A", demand = "0", rarity = "5", change = "N/A"},
    {name = "Gingerscythe (Var. 2)", type = "Evo", weapon = "🔪", value = "N/A", demand = "0", rarity = "4", change = "N/A"},
    {name = "Gingerscythe (Var. 1)", type = "Evo", weapon = "🔪", value = "N/A", demand = "0", rarity = "3", change = "N/A"},
    {name = "Icecrusher (Variant 4)", type = "Evo", weapon = "🔪", value = "N/A", demand = "0", rarity = "5", change = "N/A"},
    {name = "Icecrusher (Variant 3)", type = "Evo", weapon = "🔪", value = "N/A", demand = "0", rarity = "4", change = "N/A"},
    {name = "Icecrusher (Variant 2)", type = "Evo", weapon = "🔪", value = "N/A", demand = "0", rarity = "4", change = "N/A"},
    {name = "Icecrusher (Variant 1)", type = "Evo", weapon = "🔪", value = "N/A", demand = "0", rarity = "4", change = "N/A"},
    {name = "Reaver (Variant 4)", type = "Evo", weapon = "🔪", value = "N/A", demand = "0", rarity = "6", change = "N/A"},
    {name = "Reaver (Variant 3)", type = "Evo", weapon = "🔪", value = "N/A", demand = "0", rarity = "5", change = "N/A"},
    {name = "Reaver (Variant 2)", type = "Evo", weapon = "🔪", value = "N/A", demand = "0", rarity = "4", change = "N/A"},
    {name = "Reaver (Variant 1)", type = "Evo", weapon = "🔪", value = "N/A", demand = "0", rarity = "4", change = "N/A"},
    
    -- ============================================================
    -- ANCIENTS
    -- ============================================================
    {name = "Nik's Scythe", type = "Ancient", weapon = "🔪", value = "Priceless", demand = "11", rarity = "0", change = "N/A"},
    {name = "Gingerscope", type = "Ancient", weapon = "🔫", value = "17,750", demand = "6", rarity = "0", change = "(+250) +1.4%"},
    {name = "Traveler's Axe", type = "Ancient", weapon = "🔪", value = "8,100", demand = "5", rarity = "0", change = "(-100) -1.2%"},
    {name = "Celestial", type = "Ancient", weapon = "🔪", value = "2,225", demand = "6", rarity = "0", change = "(+50) +2.3%"},
    {name = "Vampire's Axe", type = "Ancient", weapon = "🔪", value = "1,225", demand = "5", rarity = "0", change = "(+25) +2.1%"},
    {name = "Harvester", type = "Ancient", weapon = "🔪", value = "250", demand = "3", rarity = "0", change = "(-10) -3.8%"},
    {name = "Icepiercer", type = "Ancient", weapon = "🔪", value = "160", demand = "3", rarity = "0", change = "(-10) -5.9%"},
    {name = "Icebreaker", type = "Ancient", weapon = "🔪", value = "65", demand = "1", rarity = "0", change = "(-2) -3.0%"},
    {name = "Batwing", type = "Ancient", weapon = "🔪", value = "42", demand = "1", rarity = "0", change = "(-1) -2.3%"},
    {name = "Elderwood Scythe", type = "Ancient", weapon = "🔪", value = "38", demand = "1", rarity = "0", change = "(-2) -5.0%"},
    {name = "Swirly Axe", type = "Ancient", weapon = "🔪", value = "38", demand = "1", rarity = "0", change = "(-2) -5.0%"},
    {name = "Hallowscythe", type = "Ancient", weapon = "🔪", value = "30", demand = "1", rarity = "0", change = "(-2) -6.3%"},
    {name = "Logchopper", type = "Ancient", weapon = "🔪", value = "18", demand = "1", rarity = "0", change = "(-2) -10.0%"},
    {name = "Icewing", type = "Ancient", weapon = "🔪", value = "13", demand = "2", rarity = "0", change = "(-2) -13.3%"},
    
    -- ============================================================
    -- VINTAGES
    -- ============================================================
    {name = "Blood", type = "Vintage", weapon = "🔪", value = "8", demand = "1", rarity = "0", change = "(+0)"},
    {name = "Ghost (Vintage)", type = "Vintage", weapon = "🔪", value = "8", demand = "1", rarity = "0", change = "(-2) -20.0%"},
    {name = "Laser (Vintage)", type = "Vintage", weapon = "🔫", value = "8", demand = "1", rarity = "0", change = "(+0)"},
    {name = "America", type = "Vintage", weapon = "🔪", value = "7", demand = "1", rarity = "0", change = "(+0)"},
    {name = "Prince", type = "Vintage", weapon = "🔪", value = "6", demand = "1", rarity = "0", change = "(+0)"},
    {name = "Shadow", type = "Vintage", weapon = "🔪", value = "6", demand = "1", rarity = "0", change = "(+0)"},
    {name = "Phaser", type = "Vintage", weapon = "🔫", value = "5", demand = "1", rarity = "0", change = "(+0)"},
    {name = "Cowboy", type = "Vintage", weapon = "🔪", value = "4", demand = "1", rarity = "0", change = "(-1) -20.0%"},
    {name = "Golden", type = "Vintage", weapon = "🔪", value = "4", demand = "1", rarity = "0", change = "(+0)"},
    {name = "Splitter", type = "Vintage", weapon = "🔪", value = "3", demand = "1", rarity = "0", change = "(+0)"},
    
    -- ============================================================
    -- CHROMAS
    -- ============================================================
    {name = "C. Traveler's Gun", type = "Chroma", weapon = "🔫", value = "220,000", demand = "9", rarity = "0", change = "(-5,000) -2.2%"},
    {name = "Chroma Evergun", type = "Chroma", weapon = "🔫", value = "75,000", demand = "8", rarity = "0", change = "(-1,000) -1.3%"},
    {name = "Chroma Evergreen", type = "Chroma", weapon = "🔪", value = "49,000", demand = "7", rarity = "0", change = "(-1,000) -2.0%"},
    {name = "Chroma Bauble", type = "Chroma", weapon = "🔪", value = "34,000", demand = "7", rarity = "0", change = "(-1,000) -2.9%"},
    {name = "C. Vampire's Gun", type = "Chroma", weapon = "🔫", value = "29,000", demand = "7", rarity = "0", change = "(-1,000) -3.3%"},
    {name = "C. Constellation", type = "Chroma", weapon = "🔪", value = "27,000", demand = "7", rarity = "0", change = "(+500) +1.9%"},
    {name = "Chroma Alienbeam", type = "Chroma", weapon = "🔫", value = "24,000", demand = "6", rarity = "0", change = "(-1,000) -4.0%"},
    {name = "Chroma Sunrise", type = "Chroma", weapon = "🔪", value = "13,250", demand = "6", rarity = "0", change = "(+250) +1.9%"},
    {name = "Chroma Raygun", type = "Chroma", weapon = "🔫", value = "12,250", demand = "6", rarity = "0", change = "(+250) +2.1%"},
    {name = "Chroma Snowcannon", type = "Chroma", weapon = "🔫", value = "8,250", demand = "6", rarity = "0", change = "(-250) -2.9%"},
    {name = "Chroma Sunset", type = "Chroma", weapon = "🔪", value = "8,250", demand = "6", rarity = "0", change = "(+250) +3.1%"},
    {name = "Chroma Blizzard", type = "Chroma", weapon = "🔪", value = "8,000", demand = "5", rarity = "0", change = "(-500) -5.9%"},
    {name = "Chroma Snow Dagger", type = "Chroma", weapon = "🔪", value = "4,250", demand = "5", rarity = "0", change = "(-250) -5.6%"},
    {name = "Chroma Snowstorm", type = "Chroma", weapon = "🔪", value = "4,250", demand = "5", rarity = "0", change = "(+50) +1.2%"},
    {name = "Chroma Heart Wand", type = "Chroma", weapon = "🔪", value = "4,250", demand = "5", rarity = "0", change = "(-250) -5.6%"},
    {name = "Chroma Watergun", type = "Chroma", weapon = "🔫", value = "3,400", demand = "5", rarity = "0", change = "(-50) -1.4%"},
    {name = "Chroma Treat", type = "Chroma", weapon = "🔪", value = "2,850", demand = "5", rarity = "0", change = "(+50) +1.8%"},
    {name = "Chroma Sweet", type = "Chroma", weapon = "🔪", value = "2,300", demand = "5", rarity = "0", change = "(+50) +2.2%"},
    {name = "Chroma Icecream", type = "Chroma", weapon = "🔪", value = "2,000", demand = "5", rarity = "0", change = "(-500) -20.0%"},
    {name = "Chroma Sands", type = "Chroma", weapon = "🔪", value = "1,800", demand = "5", rarity = "0", change = "(-200) -10.0%"},
    {name = "Chroma Ornament", type = "Chroma", weapon = "🔪", value = "1,800", demand = "5", rarity = "0", change = "(-100) -5.3%"},
    {name = "Chroma Beachy", type = "Chroma", weapon = "🔪", value = "1,750", demand = "5", rarity = "0", change = "(-250) -12.5%"},
    {name = "Chroma Darkbringer", type = "Chroma", weapon = "🔫", value = "65", demand = "1", rarity = "0", change = "(-5) -7.1%"},
    {name = "Chroma Lightbringer", type = "Chroma", weapon = "🔫", value = "60", demand = "1", rarity = "0", change = "(-5) -7.7%"},
    {name = "Chroma Luger", type = "Chroma", weapon = "🔫", value = "50", demand = "1", rarity = "0", change = "(-2) -3.8%"},
    {name = "Chroma Candleflame", type = "Chroma", weapon = "🔪", value = "40", demand = "1", rarity = "0", change = "(-2) -4.8%"},
    {name = "Chroma Laser", type = "Chroma", weapon = "🔫", value = "40", demand = "1", rarity = "0", change = "(-2) -4.8%"},
    {name = "Chroma Swirly Gun", type = "Chroma", weapon = "🔫", value = "38", demand = "1", rarity = "0", change = "(-2) -5.0%"},
    {name = "C. Elderwood Blade", type = "Chroma", weapon = "🔪", value = "37", demand = "1", rarity = "0", change = "(-1) -2.6%"},
    {name = "Chroma Deathshard", type = "Chroma", weapon = "🔪", value = "35", demand = "1", rarity = "0", change = "(-3) -7.9%"},
    {name = "Chroma Cookiecane", type = "Chroma", weapon = "🔪", value = "32", demand = "1", rarity = "0", change = "(-1) -3.0%"},
    {name = "Chroma Fang", type = "Chroma", weapon = "🔪", value = "32", demand = "1", rarity = "0", change = "(-3) -8.6%"},
    {name = "Chroma Gemstone", type = "Chroma", weapon = "🔪", value = "32", demand = "1", rarity = "0", change = "(-3) -8.6%"},
    {name = "Chroma Shark", type = "Chroma", weapon = "🔪", value = "32", demand = "1", rarity = "0", change = "(-3) -8.6%"},
    {name = "Chroma Slasher", type = "Chroma", weapon = "🔪", value = "32", demand = "1", rarity = "0", change = "(-1) -3.0%"},
    {name = "Chroma Heat", type = "Chroma", weapon = "🔫", value = "28", demand = "1", rarity = "0", change = "(-2) -6.7%"},
    {name = "Chroma Seer", type = "Chroma", weapon = "🔪", value = "28", demand = "1", rarity = "0", change = "(-2) -6.7%"},
    {name = "Chroma Gingerblade", type = "Chroma", weapon = "🔪", value = "27", demand = "1", rarity = "0", change = "(-1) -3.6%"},
    {name = "Chroma Tides", type = "Chroma", weapon = "🔪", value = "27", demand = "1", rarity = "0", change = "(-1) -3.6%"},
    {name = "Chroma Saw", type = "Chroma", weapon = "🔫", value = "23", demand = "1", rarity = "0", change = "(-2) -8.0%"},
    {name = "Chroma Boneblade", type = "Chroma", weapon = "🔪", value = "22", demand = "1", rarity = "0", change = "(-3) -12.0%"},
    {name = "Chroma Fire Bat", type = "Chroma", weapon = "🦇", value = "3", demand = "1", rarity = "0", change = "(-1) -25.0%"},
    {name = "Chroma Fire Bear", type = "Chroma", weapon = "🐻", value = "3", demand = "1", rarity = "0", change = "(-1) -25.0%"},
    {name = "Chroma Fire Bunny", type = "Chroma", weapon = "🐰", value = "3", demand = "1", rarity = "0", change = "(-1) -25.0%"},
    {name = "Chroma Fire Cat", type = "Chroma", weapon = "🐱", value = "3", demand = "1", rarity = "0", change = "(-1) -25.0%"},
    {name = "Chroma Fire Dog", type = "Chroma", weapon = "🐶", value = "3", demand = "1", rarity = "0", change = "(-1) -25.0%"},
    {name = "Chroma Fire Fox", type = "Chroma", weapon = "🦊", value = "3", demand = "1", rarity = "0", change = "(-1) -25.0%"},
    {name = "Chroma Fire Pig", type = "Chroma", weapon = "🐷", value = "3", demand = "1", rarity = "0", change = "(-1) -25.0%"},
    
    -- ============================================================
    -- GODLIES (Tier 4 to Tier 0)
    -- ============================================================
    {name = "Traveler's Gun", type = "Godly", weapon = "🔫", value = "5,600", demand = "5", rarity = "0", change = "(+100) +1.8%"},
    {name = "Evergun", type = "Godly", weapon = "🔫", value = "3,450", demand = "5", rarity = "0", change = "(-25) -0.7%"},
    {name = "Constellation", type = "Godly", weapon = "🔪", value = "2,700", demand = "5", rarity = "0", change = "(-25) -0.9%"},
    {name = "Evergreen", type = "Godly", weapon = "🔪", value = "2,500", demand = "5", rarity = "0", change = "(-25) -1.0%"},
    {name = "Turkey", type = "Godly", weapon = "🔪", value = "2,450", demand = "5", rarity = "0", change = "(-25) -1.0%"},
    {name = "Vampire's Gun", type = "Godly", weapon = "🔫", value = "1,950", demand = "5", rarity = "0", change = "(+25) +1.3%"},
    {name = "Alienbeam", type = "Godly", weapon = "🔫", value = "1,850", demand = "5", rarity = "0", change = "(-25) -1.3%"},
    {name = "Darkshot", type = "Godly", weapon = "🔫", value = "1,675", demand = "6", rarity = "0", change = "(+25) +1.5%"},
    {name = "Darksword", type = "Godly", weapon = "🔪", value = "1,650", demand = "6", rarity = "0", change = "(+25) +1.5%"},
    {name = "Raygun", type = "Godly", weapon = "🔫", value = "1,500", demand = "6", rarity = "0", change = "(+50) +3.4%"},
    {name = "Blossom", type = "Godly", weapon = "🔪", value = "1,320", demand = "6", rarity = "0", change = "(+10) +0.8%"},
    {name = "Sakura", type = "Godly", weapon = "🔪", value = "1,310", demand = "6", rarity = "0", change = "(+10) +0.8%"},
    {name = "Sunrise", type = "Godly", weapon = "🔪", value = "1,125", demand = "5", rarity = "0", change = "(+25) +2.3%"},
    {name = "Snowcannon", type = "Godly", weapon = "🔫", value = "850", demand = "5", rarity = "0", change = "(+25) +3.0%"},
    {name = "Bauble", type = "Godly", weapon = "🔪", value = "825", demand = "5", rarity = "0", change = "(-25) -2.9%"},
    {name = "Sunset", type = "Godly", weapon = "🔪", value = "625", demand = "5", rarity = "0", change = "(+25) +4.2%"},
    {name = "Soul", type = "Godly", weapon = "🔪", value = "615", demand = "5", rarity = "0", change = "(+5) +0.8%"},
    {name = "Spirit", type = "Godly", weapon = "🔪", value = "605", demand = "5", rarity = "0", change = "(+5) +0.8%"},
    {name = "Rainbow Gun", type = "Godly", weapon = "🔫", value = "420", demand = "5", rarity = "0", change = "(+5) +1.2%"},
    {name = "Flora", type = "Godly", weapon = "🔪", value = "410", demand = "5", rarity = "0", change = "(+10) +2.5%"},
    {name = "Rainbow", type = "Godly", weapon = "🔪", value = "410", demand = "5", rarity = "0", change = "(+5) +1.2%"},
    {name = "Bloom", type = "Godly", weapon = "🔪", value = "400", demand = "5", rarity = "0", change = "(+10) +2.6%"},
    {name = "Heart Wand", type = "Godly", weapon = "🔪", value = "340", demand = "4", rarity = "0", change = "(+10) +3.0%"},
    {name = "Ocean", type = "Godly", weapon = "🔪", value = "285", demand = "4", rarity = "0", change = "(+5) +1.8%"},
    {name = "Waves", type = "Godly", weapon = "🔪", value = "280", demand = "4", rarity = "0", change = "(+5) +1.8%"},
    {name = "Xenoknife", type = "Godly", weapon = "🔪", value = "280", demand = "4", rarity = "0", change = "(+5) +1.8%"},
    {name = "Xenoshot", type = "Godly", weapon = "🔫", value = "280", demand = "4", rarity = "0", change = "(+5) +1.8%"},
    {name = "Flowerwood Gun", type = "Godly", weapon = "🔫", value = "265", demand = "4", rarity = "0", change = "(+5) +1.9%"},
    {name = "Blizzard", type = "Godly", weapon = "🔪", value = "260", demand = "4", rarity = "0", change = "(+5) +2.0%"},
    {name = "Flowerwood", type = "Godly", weapon = "🔪", value = "260", demand = "4", rarity = "0", change = "(+5) +2.0%"},
    {name = "Snowstorm", type = "Godly", weapon = "🔪", value = "260", demand = "4", rarity = "0", change = "(+5) +2.0%"},
    {name = "Snow Dagger", type = "Godly", weapon = "🔪", value = "250", demand = "4", rarity = "0", change = "(-5) -2.0%"},
    {name = "Watergun", type = "Godly", weapon = "🔫", value = "250", demand = "3", rarity = "0", change = "(-10) -3.8%"},
    {name = "Icecream", type = "Godly", weapon = "🔪", value = "160", demand = "3", rarity = "0", change = "(-40) -20.0%"},
    {name = "Treat", type = "Godly", weapon = "🔪", value = "155", demand = "3", rarity = "0", change = "(-5) -3.1%"},
    {name = "Beachy", type = "Godly", weapon = "🔪", value = "150", demand = "3", rarity = "0", change = "(-10) -6.3%"},
    {name = "Sands", type = "Godly", weapon = "🔪", value = "150", demand = "3", rarity = "0", change = "(-10) -6.3%"},
    {name = "Sweet", type = "Godly", weapon = "🔪", value = "150", demand = "3", rarity = "0", change = "(-5) -3.2%"},
    {name = "Borealis", type = "Godly", weapon = "🔪", value = "145", demand = "3", rarity = "0", change = "(-5) -3.3%"},
    {name = "Australis", type = "Godly", weapon = "🔪", value = "140", demand = "3", rarity = "0", change = "(-5) -3.4%"},
    {name = "Bat", type = "Godly", weapon = "🔪", value = "120", demand = "2", rarity = "0", change = "(-5) -4.0%"},
    {name = "Pearlshine", type = "Godly", weapon = "🔪", value = "90", demand = "2", rarity = "0", change = "(-5) -5.3%"},
    {name = "Pearl", type = "Godly", weapon = "🔪", value = "85", demand = "2", rarity = "0", change = "(-5) -5.6%"},
    {name = "Candy", type = "Godly", weapon = "🔪", value = "80", demand = "1", rarity = "0", change = "(-5) -5.9%"},
    {name = "Heartblade", type = "Godly", weapon = "🔪", value = "65", demand = "1", rarity = "0", change = "(-2) -3.0%"},
    {name = "Luger", type = "Godly", weapon = "🔫", value = "40", demand = "1", rarity = "0", change = "(-2) -4.8%"},
    {name = "Red Luger", type = "Godly", weapon = "🔫", value = "37", demand = "1", rarity = "0", change = "(-1) -2.6%"},
    {name = "Phantom", type = "Godly", weapon = "🔪", value = "35", demand = "1", rarity = "0", change = "(-2) -5.4%"},
    {name = "Spectre", type = "Godly", weapon = "🔪", value = "35", demand = "1", rarity = "0", change = "(-2) -5.4%"},
    {name = "Candleflame", type = "Godly", weapon = "🔪", value = "33", demand = "1", rarity = "0", change = "(-2) -5.7%"},
    {name = "Darkbringer", type = "Godly", weapon = "🔫", value = "33", demand = "1", rarity = "0", change = "(-2) -5.7%"},
    {name = "Elderwood Blade", type = "Godly", weapon = "🔪", value = "33", demand = "1", rarity = "0", change = "(-2) -5.7%"},
    {name = "Elderwood Revolver", type = "Godly", weapon = "🔫", value = "33", demand = "1", rarity = "0", change = "(-2) -5.7%"},
    {name = "Iceblaster", type = "Godly", weapon = "🔫", value = "33", demand = "1", rarity = "0", change = "(-2) -5.7%"},
    {name = "Lightbringer", type = "Godly", weapon = "🔫", value = "33", demand = "1", rarity = "0", change = "(-2) -5.7%"},
    {name = "Makeshift", type = "Godly", weapon = "🔪", value = "33", demand = "1", rarity = "0", change = "(-2) -5.7%"},
    {name = "Sugar", type = "Godly", weapon = "🔪", value = "32", demand = "1", rarity = "0", change = "(-1) -3.0%"},
    {name = "Ornament", type = "Godly", weapon = "🔪", value = "27", demand = "1", rarity = "0", change = "(-1) -3.6%"},
    {name = "Green Luger", type = "Godly", weapon = "🔫", value = "23", demand = "1", rarity = "0", change = "(-2) -8.0%"},
    {name = "Amerilaser", type = "Godly", weapon = "🔫", value = "22", demand = "1", rarity = "0", change = "(-1) -4.3%"},
    {name = "Laser", type = "Godly", weapon = "🔫", value = "22", demand = "1", rarity = "0", change = "(-1) -4.3%"},
    {name = "Hallowgun", type = "Godly", weapon = "🔫", value = "20", demand = "1", rarity = "0", change = "(-2) -9.1%"},
    {name = "Nightblade", type = "Godly", weapon = "🔪", value = "20", demand = "1", rarity = "0", change = "(-2) -9.1%"},
    {name = "Shark", type = "Godly", weapon = "🔪", value = "20", demand = "1", rarity = "0", change = "(-3) -13.0%"},
    {name = "Icebeam", type = "Godly", weapon = "🔫", value = "18", demand = "1", rarity = "0", change = "(-2) -10.0%"},
    {name = "Plasmabeam", type = "Godly", weapon = "🔫", value = "18", demand = "1", rarity = "0", change = "(-4) -18.2%"},
    {name = "Swirly Gun", type = "Godly", weapon = "🔫", value = "18", demand = "1", rarity = "0", change = "(-2) -10.0%"},
    {name = "Battleaxe II", type = "Godly", weapon = "🔪", value = "17", demand = "1", rarity = "0", change = "(-1) -5.6%"},
    {name = "Blaster", type = "Godly", weapon = "🔫", value = "17", demand = "1", rarity = "0", change = "(-1) -5.6%"},
    {name = "Ginger Luger", type = "Godly", weapon = "🔫", value = "17", demand = "1", rarity = "0", change = "(-3) -15.0%"},
    {name = "Pixel", type = "Godly", weapon = "🔪", value = "17", demand = "1", rarity = "0", change = "(-3) -15.0%"},
    {name = "Gemstone", type = "Godly", weapon = "🔪", value = "15", demand = "1", rarity = "0", change = "(-2) -11.8%"},
    {name = "Iceflake", type = "Godly", weapon = "🔪", value = "15", demand = "1", rarity = "0", change = "(-2) -11.8%"},
    {name = "Old Glory", type = "Godly", weapon = "🔪", value = "15", demand = "1", rarity = "0", change = "(-2) -11.8%"},
    {name = "Plasmablade", type = "Godly", weapon = "🔪", value = "15", demand = "1", rarity = "0", change = "(-2) -11.8%"},
    {name = "Slasher", type = "Godly", weapon = "🔪", value = "15", demand = "1", rarity = "0", change = "(-2) -11.8%"},
    {name = "Vampire's Edge", type = "Godly", weapon = "🔪", value = "15", demand = "1", rarity = "0", change = "(+0)"},
    {name = "Cookiecane", type = "Godly", weapon = "🔪", value = "13", demand = "1", rarity = "0", change = "(-2) -13.3%"},
    {name = "Candy Corn", type = "Godly", weapon = "🔪", value = "8", demand = "1", rarity = "0", change = "(-1) -11.1%"},
    {name = "Hallowscythe", type = "Godly", weapon = "🔪", value = "6", demand = "1", rarity = "0", change = "(-2) -25.0%"},
    {name = "Icewing", type = "Godly", weapon = "🔪", value = "5", demand = "1", rarity = "0", change = "(-1) -16.7%"},
    {name = "Logchopper", type = "Godly", weapon = "🔪", value = "5", demand = "1", rarity = "0", change = "(-1) -16.7%"},
    {name = "Batwing", type = "Godly", weapon = "🔪", value = "4", demand = "1", rarity = "0", change = "(-1) -20.0%"},
    {name = "Elderwood Scythe", type = "Godly", weapon = "🔪", value = "4", demand = "1", rarity = "0", change = "(-1) -20.0%"},
    {name = "Swirly Axe", type = "Godly", weapon = "🔪", value = "4", demand = "1", rarity = "0", change = "(-1) -20.0%"},
    {name = "Harvester", type = "Godly", weapon = "🔪", value = "3", demand = "1", rarity = "0", change = "(-1) -25.0%"},
    
    -- ============================================================
    -- LEGENDARIES (Tier 3 to Tier 1)
    -- ============================================================
    {name = "Latte (Gun)", type = "Legendary", weapon = "🔫", value = "140", demand = "3", rarity = "0", change = "(-5) -3.4%"},
    {name = "Latte (Knife)", type = "Legendary", weapon = "🔪", value = "140", demand = "3", rarity = "0", change = "(-5) -3.4%"},
    {name = "Spectral (Knife)", type = "Legendary", weapon = "🔪", value = "60", demand = "3", rarity = "0", change = "(-5) -7.7%"},
    {name = "Traveler (Gun)", type = "Legendary", weapon = "🔫", value = "60", demand = "3", rarity = "0", change = "(-5) -7.7%"},
    {name = "Aurora (Gun)", type = "Legendary", weapon = "🔫", value = "55", demand = "3", rarity = "0", change = "(-5) -8.3%"},
    {name = "Vampire (Gun)", type = "Legendary", weapon = "🔫", value = "55", demand = "3", rarity = "0", change = "(-5) -8.3%"},
    {name = "Beach", type = "Legendary", weapon = "🔪", value = "35", demand = "2", rarity = "0", change = "(+5) +16.7%"},
    {name = "Cotton Candy", type = "Legendary", weapon = "🔪", value = "35", demand = "2", rarity = "0", change = "(-3) -7.9%"},
    {name = "JD", type = "Legendary", weapon = "🔪", value = "28", demand = "2", rarity = "0", change = "(-2) -6.7%"},
    {name = "Arctic (Gun)", type = "Legendary", weapon = "🔫", value = "10", demand = "2", rarity = "0", change = "(+3) +42.9%"},
    {name = "Cavern (Knife)", type = "Legendary", weapon = "🔪", value = "7", demand = "2", rarity = "0", change = "(-1) -12.5%"},
    {name = "Broken", type = "Legendary", weapon = "🔪", value = "7", demand = "2", rarity = "0", change = "(+0)"},
    {name = "Icedriller", type = "Legendary", weapon = "🔪", value = "5", demand = "2", rarity = "0", change = "(-2) -28.6%"},
    {name = "Nightsky", type = "Legendary", weapon = "🔪", value = "5", demand = "2", rarity = "0", change = "(+1) +25.0%"},
    {name = "Ghost (Knife)", type = "Legendary", weapon = "🔪", value = "5", demand = "1", rarity = "0", change = "(+0)"},
    {name = "Ginger (Gun)", type = "Legendary", weapon = "🔫", value = "5", demand = "1", rarity = "0", change = "(-1) -16.7%"},
    {name = "Bunnies", type = "Legendary", weapon = "🔪", value = "4", demand = "2", rarity = "0", change = "(-1) -20.0%"},
    {name = "Red Scratch", type = "Legendary", weapon = "🔪", value = "4", demand = "1", rarity = "0", change = "(+0)"},
    {name = "Skulls", type = "Legendary", weapon = "🔪", value = "4", demand = "1", rarity = "0", change = "(-1) -20.0%"},
    {name = "Aurora (Knife)", type = "Legendary", weapon = "🔪", value = "3", demand = "2", rarity = "0", change = "(+1) +50.0%"},
    {name = "Spectral (Gun)", type = "Legendary", weapon = "🔫", value = "3", demand = "2", rarity = "0", change = "(+1) +50.0%"},
    {name = "Traveler (Knife)", type = "Legendary", weapon = "🔪", value = "3", demand = "2", rarity = "0", change = "(+1) +50.0%"},
    {name = "Vampire (Knife)", type = "Legendary", weapon = "🔪", value = "3", demand = "2", rarity = "0", change = "(+1) +50.0%"},
    {name = "Witched", type = "Legendary", weapon = "🔪", value = "3", demand = "2", rarity = "0", change = "(-1) -25.0%"},
    {name = "Blue Elite", type = "Legendary", weapon = "🔪", value = "3", demand = "1", rarity = "0", change = "(+0)"},
    {name = "Green Elite", type = "Legendary", weapon = "🔪", value = "3", demand = "1", rarity = "0", change = "(+0)"},
    {name = "Santa's Magic", type = "Legendary", weapon = "🔪", value = "3", demand = "1", rarity = "0", change = "(+0)"},
    {name = "Santa's Spirit", type = "Legendary", weapon = "🔪", value = "3", demand = "1", rarity = "0", change = "(+0)"},
    {name = "Energized (Gun)", type = "Legendary", weapon = "🔫", value = "2", demand = "2", rarity = "0", change = "(+1) +100.0%"},
    {name = "Frostfade (Knife)", type = "Legendary", weapon = "🔪", value = "2", demand = "2", rarity = "0", change = "(+1) +100.0%"},
    {name = "Blue Scratch", type = "Legendary", weapon = "🔪", value = "2", demand = "1", rarity = "0", change = "(+0)"},
    {name = "Ghost (Gun)", type = "Legendary", weapon = "🔫", value = "2", demand = "1", rarity = "0", change = "(+0)"},
    {name = "Bubbles", type = "Legendary", weapon = "🔪", value = "1", demand = "2", rarity = "0", change = "(-1) -50.0%"},
    {name = "Chromatic (Knife)", type = "Legendary", weapon = "🔪", value = "1", demand = "2", rarity = "0", change = "(-1) -50.0%"},
    {name = "Icecracker", type = "Legendary", weapon = "🔪", value = "1", demand = "2", rarity = "0", change = "(-1) -50.0%"},
    {name = "Red Fire", type = "Legendary", weapon = "🔪", value = "1", demand = "1", rarity = "0", change = "(+0)"},
    {name = "Cavern (Gun)", type = "Legendary", weapon = "🔫", value = "1", demand = "1", rarity = "0", change = "(+0)"},
    
    -- ============================================================
    -- RARES (Tier 3 to Tier 1)
    -- ============================================================
    {name = "Cane (Knife)", type = "Rare", weapon = "🔪", value = "675", demand = "4", rarity = "0", change = "(-25) -3.6%"},
    {name = "Dungeon", type = "Rare", weapon = "🔪", value = "240", demand = "3", rarity = "0", change = "(-5) -2.0%"},
    {name = "Darkknife", type = "Rare", weapon = "🔪", value = "75", demand = "3", rarity = "0", change = "(-5) -6.3%"},
    {name = "Silent Night (Knife)", type = "Rare", weapon = "🔪", value = "50", demand = "2", rarity = "0", change = "(-5) -9.1%"},
    {name = "Makeshift (Knife)", type = "Rare", weapon = "🔪", value = "45", demand = "2", rarity = "0", change = "(-5) -10.0%"},
    {name = "Zombified", type = "Rare", weapon = "🔪", value = "40", demand = "2", rarity = "0", change = "(-5) -11.1%"},
    {name = "Starry (Gun)", type = "Rare", weapon = "🔫", value = "27", demand = "2", rarity = "0", change = "(+2) +8.0%"},
    {name = "Swirl", type = "Rare", weapon = "🔪", value = "25", demand = "2", rarity = "0", change = "(-2) -7.4%"},
    {name = "Watcher (Gun)", type = "Rare", weapon = "🔫", value = "25", demand = "2", rarity = "0", change = "(+5) +25.0%"},
    {name = "Magma (Gun)", type = "Rare", weapon = "🔫", value = "17", demand = "2", rarity = "0", change = "(+5) +41.7%"},
    {name = "Silent Night (Gun)", type = "Rare", weapon = "🔫", value = "12", demand = "2", rarity = "0", change = "(-1) -7.7%"},
    {name = "Snowflakes", type = "Rare", weapon = "🔪", value = "12", demand = "2", rarity = "0", change = "(+2) +20.0%"},
    {name = "Floral (Knife)", type = "Rare", weapon = "🔪", value = "10", demand = "2", rarity = "0", change = "(-2) -16.7%"},
    {name = "Ghostfire", type = "Rare", weapon = "🔪", value = "10", demand = "2", rarity = "0", change = "(+2) +25.0%"},
    {name = "Aurora (Knife)", type = "Rare", weapon = "🔪", value = "8", demand = "2", rarity = "0", change = "(-2) -20.0%"},
    {name = "Ghastly (Gun)", type = "Rare", weapon = "🔫", value = "7", demand = "2", rarity = "0", change = "(+2) +40.0%"},
    {name = "Toxic (Knife)", type = "Rare", weapon = "🔪", value = "7", demand = "2", rarity = "0", change = "(-1) -12.5%"},
    {name = "Icicles (Gun)", type = "Rare", weapon = "🔫", value = "5", demand = "2", rarity = "0", change = "(-3) -37.5%"},
    {name = "Wraith (Knife)", type = "Rare", weapon = "🔪", value = "5", demand = "2", rarity = "0", change = "(+2) +66.7%"},
    {name = "Candy Swirl (Gun)", type = "Rare", weapon = "🔫", value = "3", demand = "2", rarity = "0", change = "(-2) -40.0%"},
    {name = "Jack", type = "Rare", weapon = "🔪", value = "3", demand = "2", rarity = "0", change = "(+0)"},
    {name = "Snakebite (Knife)", type = "Rare", weapon = "🔪", value = "3", demand = "2", rarity = "0", change = "(-2) -40.0%"},
    {name = "Sun", type = "Rare", weapon = "🔪", value = "3", demand = "2", rarity = "0", change = "(-2) -40.0%"},
    {name = "Vampire (Gun)", type = "Rare", weapon = "🔫", value = "3", demand = "2", rarity = "0", change = "(-2) -40.0%"},
    {name = "Magma", type = "Rare", weapon = "🔪", value = "3", demand = "1", rarity = "0", change = "(-2) -40.0%"},
    {name = "Bats", type = "Rare", weapon = "🔪", value = "2", demand = "1", rarity = "0", change = "(-1) -33.3%"},
    {name = "Green Marble", type = "Rare", weapon = "🔪", value = "2", demand = "1", rarity = "0", change = "(-1) -33.3%"},
    {name = "Orange Marble", type = "Rare", weapon = "🔪", value = "2", demand = "1", rarity = "0", change = "(+0)"},
    {name = "Toxic (Gun)", type = "Rare", weapon = "🔫", value = "2", demand = "1", rarity = "0", change = "(+0)"},
    {name = "Darkgun", type = "Rare", weapon = "🔫", value = "1", demand = "2", rarity = "0", change = "(+1)"},
    {name = "Gingerbread", type = "Rare", weapon = "🔪", value = "1", demand = "1", rarity = "0", change = "(+0)"},
    {name = "Monster", type = "Rare", weapon = "🔪", value = "1", demand = "1", rarity = "0", change = "(-1) -50.0%"},
    {name = "Aurora (Gun)", type = "Rare", weapon = "🔫", value = "1", demand = "1", rarity = "0", change = "(+0)"},
    {name = "Candy Swirl (Knife)", type = "Rare", weapon = "🔪", value = "1", demand = "1", rarity = "0", change = "(+0)"},
    {name = "Snakebite (Gun)", type = "Rare", weapon = "🔫", value = "1", demand = "1", rarity = "0", change = "(+0)"},
    {name = "Vampire (Knife)", type = "Rare", weapon = "🔪", value = "1", demand = "1", rarity = "0", change = "(+0)"},
    
    -- ============================================================
    -- UNCOMMONS (Tier 4 to Tier 1)
    -- ============================================================
    {name = "Bones", type = "Uncommon", weapon = "🔪", value = "230", demand = "3", rarity = "0", change = "(-5) -2.1%"},
    {name = "Brains", type = "Uncommon", weapon = "🔪", value = "145", demand = "3", rarity = "0", change = "(-5) -3.3%"},
    {name = "Zombified (Knife)", type = "Uncommon", weapon = "🔪", value = "120", demand = "3", rarity = "0", change = "(+5) +4.3%"},
    {name = "Gingerbread (Knife)", type = "Uncommon", weapon = "🔪", value = "75", demand = "3", rarity = "0", change = "(+10) +15.4%"},
    {name = "Sweater (Knife)", type = "Uncommon", weapon = "🔪", value = "60", demand = "3", rarity = "0", change = "(+5) +9.1%"},
    {name = "Snowflake (Knife)", type = "Uncommon", weapon = "🔪", value = "55", demand = "3", rarity = "0", change = "(+5) +10.0%"},
    {name = "Branches", type = "Uncommon", weapon = "🔪", value = "50", demand = "3", rarity = "0", change = "(+5) +11.1%"},
    {name = "Skulls", type = "Uncommon", weapon = "🔪", value = "15", demand = "3", rarity = "0", change = "(+2) +15.4%"},
    {name = "Zombified (Gun)", type = "Uncommon", weapon = "🔫", value = "15", demand = "2", rarity = "0", change = "(+0)"},
    {name = "Void", type = "Uncommon", weapon = "🔪", value = "12", demand = "2", rarity = "0", change = "(+2) +20.0%"},
    {name = "Mummy (2017)", type = "Uncommon", weapon = "🔪", value = "10", demand = "2", rarity = "0", change = "(+2) +25.0%"},
    {name = "Steel (Gun)", type = "Uncommon", weapon = "🔫", value = "8", demand = "2", rarity = "0", change = "(+1) +14.3%"},
    {name = "Wrap (Gun)", type = "Uncommon", weapon = "🔫", value = "8", demand = "2", rarity = "0", change = "(+1) +14.3%"},
    {name = "Wrap (Knife)", type = "Uncommon", weapon = "🔪", value = "8", demand = "2", rarity = "0", change = "(+1) +14.3%"},
    {name = "Gothic (Gun)", type = "Uncommon", weapon = "🔫", value = "7", demand = "2", rarity = "0", change = "(+2) +40.0%"},
    {name = "Zombie", type = "Uncommon", weapon = "🔪", value = "7", demand = "2", rarity = "0", change = "(+2) +40.0%"},
    {name = "Snowman (Gun)", type = "Uncommon", weapon = "🔫", value = "5", demand = "2", rarity = "0", change = "(+2) +66.7%"},
    {name = "Hazard (Gun)", type = "Uncommon", weapon = "🔫", value = "5", demand = "2", rarity = "0", change = "(+2) +66.7%"},
    {name = "Zombie (Gun)", type = "Uncommon", weapon = "🔫", value = "5", demand = "1", rarity = "0", change = "(-2) -28.6%"},
    {name = "Lantern", type = "Uncommon", weapon = "🔪", value = "3", demand = "2", rarity = "0", change = "(+1) +50.0%"},
    {name = "Webs", type = "Uncommon", weapon = "🔪", value = "3", demand = "2", rarity = "0", change = "(+0)"},
    {name = "Zombie (2023)", type = "Uncommon", weapon = "🔪", value = "3", demand = "2", rarity = "0", change = "(+2) +200.0%"},
    {name = "Frozen (Gun)", type = "Uncommon", weapon = "🔫", value = "3", demand = "1", rarity = "0", change = "(-2) -40.0%"},
    {name = "Potion (2017)", type = "Uncommon", weapon = "🔪", value = "3", demand = "1", rarity = "0", change = "(-1) -25.0%"},
    {name = "Gingerbread (Knife)", type = "Uncommon", weapon = "🔪", value = "2", demand = "2", rarity = "0", change = "(+1) +100.0%"},
    {name = "Tree (2021)", type = "Uncommon", weapon = "🔪", value = "2", demand = "2", rarity = "0", change = "(+1) +100.0%"},
    {name = "Meltdown", type = "Uncommon", weapon = "🔪", value = "2", demand = "2", rarity = "0", change = "(+1) +100.0%"},
    {name = "Stars (Knife)", type = "Uncommon", weapon = "🔪", value = "2", demand = "2", rarity = "0", change = "(+1) +100.0%"},
    {name = "Pumpkin Pie", type = "Uncommon", weapon = "🔪", value = "2", demand = "2", rarity = "0", change = "(-1) -33.3%"},
    {name = "Lights (Gun)", type = "Uncommon", weapon = "🔫", value = "2", demand = "1", rarity = "0", change = "(-1) -33.3%"},
    {name = "Mummy (Gun)", type = "Uncommon", weapon = "🔫", value = "2", demand = "1", rarity = "0", change = "(-1) -33.3%"},
    {name = "Potion (Gun)", type = "Uncommon", weapon = "🔫", value = "2", demand = "1", rarity = "0", change = "(-1) -33.3%"},
    {name = "Potion (Knife)", type = "Uncommon", weapon = "🔪", value = "2", demand = "1", rarity = "0", change = "(-1) -33.3%"},
    {name = "Gingerbread (Gun)", type = "Uncommon", weapon = "🔫", value = "1", demand = "2", rarity = "0", change = "(-1) -50.0%"},
    {name = "Moonlight", type = "Uncommon", weapon = "🔪", value = "1", demand = "2", rarity = "0", change = "(+1)"},
    {name = "Frozen (Knife)", type = "Uncommon", weapon = "🔪", value = "1", demand = "1", rarity = "0", change = "(-1) -50.0%"},
    {name = "Holly (Gun)", type = "Uncommon", weapon = "🔫", value = "1", demand = "1", rarity = "0", change = "(-1) -50.0%"},
    {name = "Lights (Knife)", type = "Uncommon", weapon = "🔪", value = "1", demand = "1", rarity = "0", change = "(+0)"},
    {name = "Mummy (Knife)", type = "Uncommon", weapon = "🔪", value = "1", demand = "1", rarity = "0", change = "(-1) -50.0%"},
    {name = "Zombie (Knife)", type = "Uncommon", weapon = "🔪", value = "1", demand = "1", rarity = "0", change = "(-1) -50.0%"},
    {name = "Moons", type = "Uncommon", weapon = "🔪", value = "1", demand = "1", rarity = "0", change = "(-1) -50.0%"},
    {name = "Vampire", type = "Uncommon", weapon = "🔪", value = "1", demand = "1", rarity = "0", change = "(+0)"},
    {name = "Wolf", type = "Uncommon", weapon = "🔪", value = "1", demand = "1", rarity = "0", change = "(+0)"},
    
    -- ============================================================
    -- COMMONS
    -- ============================================================
    {name = "Default Knife", type = "Common", weapon = "🔪", value = "0", demand = "0", rarity = "0", change = "N/A"},
    {name = "Default Gun", type = "Common", weapon = "🔫", value = "0", demand = "0", rarity = "0", change = "N/A"},
    {name = "Glitch1", type = "Common", weapon = "🔪", value = "70", demand = "3", rarity = "0", change = "(-5) -6.7%"},
    {name = "Glitch2", type = "Common", weapon = "🔪", value = "40", demand = "2", rarity = "0", change = "(-5) -11.1%"},
    {name = "Bats (Knife)", type = "Common", weapon = "🔪", value = "230", demand = "3", rarity = "0", change = "(+10) +4.5%"},
    {name = "Ghoulish", type = "Common", weapon = "🔪", value = "100", demand = "3", rarity = "0", change = "(-5) -4.8%"},
    {name = "Gifts (Knife)", type = "Common", weapon = "🔪", value = "95", demand = "3", rarity = "0", change = "(+5) +5.6%"},
    {name = "Pine (Knife)", type = "Common", weapon = "🔪", value = "85", demand = "3", rarity = "0", change = "(+5) +6.3%"},
    {name = "Frosted (Knife)", type = "Common", weapon = "🔪", value = "30", demand = "2", rarity = "0", change = "(+2) +7.1%"},
    {name = "Wrapped (Gun)", type = "Common", weapon = "🔫", value = "30", demand = "2", rarity = "0", change = "(+3) +11.1%"},
    {name = "Sparkle9", type = "Common", weapon = "🔪", value = "30", demand = "2", rarity = "0", change = "(+0)"},
    {name = "Snowflakes (Gun)", type = "Common", weapon = "🔫", value = "25", demand = "2", rarity = "0", change = "(+3) +13.6%"},
    {name = "Snowman (Gun)", type = "Common", weapon = "🔫", value = "25", demand = "2", rarity = "0", change = "(+3) +13.6%"},
    {name = "Webbed (Gun)", type = "Common", weapon = "🔫", value = "25", demand = "2", rarity = "0", change = "(+5) +25.0%"},
    {name = "CandyCorn (2017)", type = "Common", weapon = "🔪", value = "25", demand = "2", rarity = "0", change = "(+3) +13.6%"},
    {name = "Ecto", type = "Common", weapon = "🔪", value = "25", demand = "2", rarity = "0", change = "(+5) +25.0%"},
    {name = "Mummified", type = "Common", weapon = "🔪", value = "20", demand = "2", rarity = "0", change = "(+5) +33.3%"},
    {name = "Sparkle10", type = "Common", weapon = "🔪", value = "20", demand = "2", rarity = "0", change = "(+0)"},
    {name = "Sparkle8", type = "Common", weapon = "🔪", value = "20", demand = "2", rarity = "0", change = "(+0)"},
    {name = "Sparkle7", type = "Common", weapon = "🔪", value = "18", demand = "2", rarity = "0", change = "(+0)"},
    {name = "Elf (Knife)", type = "Common", weapon = "🔪", value = "17", demand = "2", rarity = "0", change = "(+0)"},
    {name = "RIP", type = "Common", weapon = "🔪", value = "17", demand = "2", rarity = "0", change = "(+2) +13.3%"},
    {name = "Coal (Knife)", type = "Common", weapon = "🔪", value = "15", demand = "2", rarity = "0", change = "(+3) +25.0%"},
    {name = "Slimy", type = "Common", weapon = "🔪", value = "15", demand = "2", rarity = "0", change = "(+5) +50.0%"},
    {name = "Pumpkin (2019)", type = "Common", weapon = "🔪", value = "12", demand = "2", rarity = "0", change = "(+2) +20.0%"},
    {name = "Prism", type = "Common", weapon = "🔪", value = "12", demand = "2", rarity = "0", change = "(+2) +20.0%"},
    {name = "Sparkle6", type = "Common", weapon = "🔪", value = "12", demand = "2", rarity = "0", change = "(+0)"},
    {name = "Candy Corn (2019)", type = "Common", weapon = "🔪", value = "10", demand = "2", rarity = "0", change = "(+2) +25.0%"},
    {name = "Elf (2018)", type = "Common", weapon = "🔪", value = "10", demand = "2", rarity = "0", change = "(+2) +25.0%"},
    {name = "Combat II", type = "Common", weapon = "🔪", value = "10", demand = "2", rarity = "0", change = "(+0)"},
    {name = "Phantom", type = "Common", weapon = "🔪", value = "10", demand = "2", rarity = "0", change = "(+2) +25.0%"},
    {name = "Sparkle4", type = "Common", weapon = "🔪", value = "10", demand = "2", rarity = "0", change = "(+2) +25.0%"},
    {name = "Skool", type = "Common", weapon = "🔪", value = "8", demand = "2", rarity = "0", change = "(+0)"},
    {name = "Sparkle5", type = "Common", weapon = "🔪", value = "8", demand = "2", rarity = "0", change = "(+0)"},
    {name = "Tailslide", type = "Common", weapon = "🔪", value = "7", demand = "2", rarity = "0", change = "(-1) -12.5%"},
    {name = "Zombie", type = "Common", weapon = "🔪", value = "7", demand = "2", rarity = "0", change = "(+2) +40.0%"},
    {name = "Ollie", type = "Common", weapon = "🔪", value = "5", demand = "2", rarity = "0", change = "(-2) -28.6%"},
    {name = "Sidewinder", type = "Common", weapon = "🔪", value = "5", demand = "2", rarity = "0", change = "(-2) -28.6%"},
    {name = "Starry", type = "Common", weapon = "🔪", value = "5", demand = "2", rarity = "0", change = "(+2) +66.7%"},
    {name = "Alex", type = "Common", weapon = "🔪", value = "4", demand = "2", rarity = "0", change = "(+1) +33.3%"},
    {name = "Corl", type = "Common", weapon = "🔪", value = "4", demand = "2", rarity = "0", change = "(+1) +33.3%"},
    {name = "Denis", type = "Common", weapon = "🔪", value = "4", demand = "2", rarity = "0", change = "(+1) +33.3%"},
    {name = "Euro", type = "Common", weapon = "🔪", value = "4", demand = "2", rarity = "0", change = "(-1) -20.0%"},
    {name = "Sketchy", type = "Common", weapon = "🔪", value = "4", demand = "2", rarity = "0", change = "(+1) +33.3%"},
    {name = "Sub", type = "Common", weapon = "🔪", value = "4", demand = "2", rarity = "0", change = "(+1) +33.3%"},
    {name = "Apocalypse (Gun)", type = "Common", weapon = "🔫", value = "3", demand = "2", rarity = "0", change = "(+1) +50.0%"},
    {name = "Bats (2020)", type = "Common", weapon = "🔪", value = "3", demand = "2", rarity = "0", change = "(+1) +50.0%"},
    {name = "Infected (Gun)", type = "Common", weapon = "🔫", value = "3", demand = "2", rarity = "0", change = "(+1) +50.0%"},
    {name = "Ghosty", type = "Common", weapon = "🔪", value = "3", demand = "2", rarity = "0", change = "(+0)"},
    {name = "Sparkle1", type = "Common", weapon = "🔪", value = "3", demand = "2", rarity = "0", change = "(+0)"},
    {name = "Sparkle2", type = "Common", weapon = "🔪", value = "3", demand = "2", rarity = "0", change = "(+1) +50.0%"},
    {name = "Sparkle3", type = "Common", weapon = "🔪", value = "3", demand = "2", rarity = "0", change = "(+0)"},
    {name = "Asteroid", type = "Common", weapon = "🔪", value = "2", demand = "1", rarity = "0", change = "(-1) -33.3%"},
    {name = "Grave (Gun)", type = "Common", weapon = "🔫", value = "2", demand = "1", rarity = "0", change = "(-1) -33.3%"},
    {name = "Grind", type = "Common", weapon = "🔪", value = "2", demand = "1", rarity = "0", change = "(+0)"},
    {name = "Slime (Knife)", type = "Common", weapon = "🔪", value = "2", demand = "1", rarity = "0", change = "(-1) -33.3%"},
    {name = "Indy", type = "Common", weapon = "🔪", value = "2", demand = "1", rarity = "0", change = "(+0)"},
    {name = "Slashed", type = "Common", weapon = "🔪", value = "1", demand = "2", rarity = "0", change = "(+1)"},
    {name = "Bats (Gun)", type = "Common", weapon = "🔫", value = "1", demand = "1", rarity = "0", change = "(-1) -50.0%"},
    {name = "Grave (Knife)", type = "Common", weapon = "🔪", value = "1", demand = "1", rarity = "0", change = "(-1) -50.0%"},
    {name = "Haunted (Gun)", type = "Common", weapon = "🔫", value = "1", demand = "1", rarity = "0", change = "(-1) -50.0%"},
    {name = "Haunted (Knife)", type = "Common", weapon = "🔪", value = "1", demand = "1", rarity = "0", change = "(-1) -50.0%"},
    {name = "Slime (Gun)", type = "Common", weapon = "🔫", value = "1", demand = "1", rarity = "0", change = "(-1) -50.0%"},
}

-- ================= UI =================
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "SupremeValuesUI"
ScreenGui.ResetOnSpawn = false
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.Parent = PlayerGui

local Main = Instance.new("Frame")
Main.Size = UDim2.new(0, 500, 0, 500)
Main.Position = UDim2.new(0.5, -250, 0.5, -250)
Main.BackgroundColor3 = Color3.fromRGB(10, 10, 30)
Main.BorderSizePixel = 0
Main.Parent = ScreenGui

local MainCorner = Instance.new("UICorner")
MainCorner.CornerRadius = UDim.new(0, 15)
MainCorner.Parent = Main

local Glow = Instance.new("Frame")
Glow.Size = UDim2.new(1, 10, 1, 10)
Glow.Position = UDim2.new(0, -5, 0, -5)
Glow.BackgroundColor3 = Color3.fromRGB(0, 200, 255)
Glow.BorderSizePixel = 0
Glow.BackgroundTransparency = 0.6
Glow.Parent = Main

local GlowCorner = Instance.new("UICorner")
GlowCorner.CornerRadius = UDim.new(0, 20)
GlowCorner.Parent = Glow

local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, 0, 0, 40)
Title.Position = UDim2.new(0, 0, 0, 10)
Title.BackgroundTransparency = 1
Title.Text = "✦ MM2 VALUES ✦"
Title.TextColor3 = Color3.fromRGB(0, 200, 255)
Title.Font = Enum.Font.GothamBold
Title.TextSize = 22
Title.Parent = Main

local Sub = Instance.new("TextLabel")
Sub.Size = UDim2.new(1, 0, 0, 20)
Sub.Position = UDim2.new(0, 0, 0, 45)
Sub.BackgroundTransparency = 1
Sub.Text = "☆ " .. #WEAPONS_DATA .. " WEAPONS FROM SUPREME VALUES ☆"
Sub.TextColor3 = Color3.fromRGB(200, 150, 255)
Sub.Font = Enum.Font.Gotham
Sub.TextSize = 12
Sub.Parent = Main

local CloseBtn = Instance.new("TextButton")
CloseBtn.Size = UDim2.new(0, 35, 0, 35)
CloseBtn.Position = UDim2.new(1, -45, 0, 10)
CloseBtn.BackgroundColor3 = Color3.fromRGB(255, 0, 50)
CloseBtn.Text = "✕"
CloseBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseBtn.Font = Enum.Font.GothamBold
CloseBtn.TextSize = 18
CloseBtn.AutoButtonColor = false
CloseBtn.Parent = Main

local CloseCorner = Instance.new("UICorner")
CloseCorner.CornerRadius = UDim.new(0, 8)
CloseCorner.Parent = CloseBtn

CloseBtn.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
end)

-- ================= SEARCH BAR =================
local SearchFrame = Instance.new("Frame")
SearchFrame.Size = UDim2.new(0.9, 0, 0, 35)
SearchFrame.Position = UDim2.new(0.05, 0, 0, 75)
SearchFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 50)
SearchFrame.BorderSizePixel = 0
SearchFrame.Parent = Main

local SearchCorner = Instance.new("UICorner")
SearchCorner.CornerRadius = UDim.new(0, 8)
SearchCorner.Parent = SearchFrame

local SearchIcon = Instance.new("TextLabel")
SearchIcon.Size = UDim2.new(0, 25, 1, 0)
SearchIcon.Position = UDim2.new(0, 5, 0, 0)
SearchIcon.BackgroundTransparency = 1
SearchIcon.Text = "🔍"
SearchIcon.TextColor3 = Color3.fromRGB(200, 200, 255)
SearchIcon.Font = Enum.Font.Gotham
SearchIcon.TextSize = 14
SearchIcon.Parent = SearchFrame

local SearchBox = Instance.new("TextBox")
SearchBox.Size = UDim2.new(1, -35, 1, 0)
SearchBox.Position = UDim2.new(0, 30, 0, 0)
SearchBox.BackgroundTransparency = 1
SearchBox.TextColor3 = Color3.fromRGB(255, 255, 255)
SearchBox.PlaceholderText = "Search weapon..."
SearchBox.PlaceholderColor3 = Color3.fromRGB(130, 130, 180)
SearchBox.Font = Enum.Font.Gotham
SearchBox.TextSize = 14
SearchBox.ClearTextOnFocus = false
SearchBox.Text = ""
SearchBox.Parent = SearchFrame

-- ================= FILTER BUTTONS =================
local FilterFrame = Instance.new("Frame")
FilterFrame.Size = UDim2.new(0.9, 0, 0, 28)
FilterFrame.Position = UDim2.new(0.05, 0, 0, 115)
FilterFrame.BackgroundTransparency = 1
FilterFrame.Parent = Main

local filters = {"All", "Unique", "Ancient", "Chroma", "Godly", "Legendary", "Rare", "Uncommon", "Common"}
local filterBtns = {}

for i, filter in pairs(filters) do
    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(0.11, 0, 1, 0)
    btn.Position = UDim2.new((i-1) * 0.11, 0, 0, 0)
    btn.BackgroundColor3 = Color3.fromRGB(20, 20, 50)
    btn.Text = filter
    btn.TextColor3 = Color3.fromRGB(200, 200, 255)
    btn.Font = Enum.Font.Gotham
    btn.TextSize = 10
    btn.AutoButtonColor = false
    btn.Parent = FilterFrame
    
    local btnCorner = Instance.new("UICorner")
    btnCorner.CornerRadius = UDim.new(0, 5)
    btnCorner.Parent = btn
    
    filterBtns[filter] = btn
end

-- ================= RESULTS LIST =================
local ResultsFrame = Instance.new("ScrollingFrame")
ResultsFrame.Size = UDim2.new(0.9, 0, 0, 280)
ResultsFrame.Position = UDim2.new(0.05, 0, 0, 148)
ResultsFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 35)
ResultsFrame.BorderSizePixel = 0
ResultsFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
ResultsFrame.ScrollBarThickness = 4
ResultsFrame.Parent = Main

local ResultsCorner = Instance.new("UICorner")
ResultsCorner.CornerRadius = UDim.new(0, 8)
ResultsCorner.Parent = ResultsFrame

-- ================= ITEM CARD =================
local function createItemCard(parent, item, yPos)
    local card = Instance.new("Frame")
    card.Size = UDim2.new(1, -4, 0, 28)
    card.Position = UDim2.new(0, 2, 0, yPos)
    card.BackgroundColor3 = Color3.fromRGB(25, 25, 55)
    card.BorderSizePixel = 0
    card.Parent = parent
    
    local cardCorner = Instance.new("UICorner")
    cardCorner.CornerRadius = UDim.new(0, 5)
    cardCorner.Parent = card
    
    local typeColors = {
        Unique = Color3.fromRGB(255, 0, 0),
        Ancient = Color3.fromRGB(0, 200, 255),
        Chroma = Color3.fromRGB(255, 0, 255),
        Godly = Color3.fromRGB(255, 200, 0),
        Legendary = Color3.fromRGB(0, 255, 0),
        Rare = Color3.fromRGB(100, 100, 255),
        Uncommon = Color3.fromRGB(0, 255, 200),
        Common = Color3.fromRGB(200, 200, 200)
    }
    
    local typeColor = typeColors[item.type] or Color3.fromRGB(200, 200, 200)
    
    local typeBadge = Instance.new("Frame")
    typeBadge.Size = UDim2.new(0.04, 0, 0.5, 0)
    typeBadge.Position = UDim2.new(0.01, 0, 0.25, 0)
    typeBadge.BackgroundColor3 = typeColor
    typeBadge.BorderSizePixel = 0
    typeBadge.Parent = card
    
    local badgeCorner = Instance.new("UICorner")
    badgeCorner.CornerRadius = UDim.new(0, 3)
    badgeCorner.Parent = typeBadge
    
    local typeLabel = Instance.new("TextLabel")
    typeLabel.Size = UDim2.new(1, 0, 1, 0)
    typeLabel.Position = UDim2.new(0, 0, 0, 0)
    typeLabel.BackgroundTransparency = 1
    typeLabel.Text = item.type:sub(1, 1)
    typeLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    typeLabel.Font = Enum.Font.GothamBold
    typeLabel.TextSize = 8
    typeLabel.Parent = typeBadge
    
    local weaponIcon = Instance.new("TextLabel")
    weaponIcon.Size = UDim2.new(0.04, 0, 0.5, 0)
    weaponIcon.Position = UDim2.new(0.05, 0, 0.25, 0)
    weaponIcon.BackgroundTransparency = 1
    weaponIcon.Text = item.weapon
    weaponIcon.TextColor3 = Color3.fromRGB(255, 255, 200)
    weaponIcon.Font = Enum.Font.Gotham
    weaponIcon.TextSize = 10
    weaponIcon.Parent = card
    
    local nameLabel = Instance.new("TextLabel")
    nameLabel.Size = UDim2.new(0.28, 0, 1, 0)
    nameLabel.Position = UDim2.new(0.09, 0, 0, 0)
    nameLabel.BackgroundTransparency = 1
    nameLabel.Text = item.name
    nameLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    nameLabel.Font = Enum.Font.GothamBold
    nameLabel.TextSize = 10
    nameLabel.TextXAlignment = Enum.TextXAlignment.Left
    nameLabel.Parent = card
    
    local typeText = Instance.new("TextLabel")
    typeText.Size = UDim2.new(0.08, 0, 1, 0)
    typeText.Position = UDim2.new(0.37, 0, 0, 0)
    typeText.BackgroundTransparency = 1
    typeText.Text = item.type
    typeText.TextColor3 = typeColor
    typeText.Font = Enum.Font.Gotham
    typeText.TextSize = 8
    typeText.TextXAlignment = Enum.TextXAlignment.Left
    typeText.Parent = card
    
    local valueLabel = Instance.new("TextLabel")
    valueLabel.Size = UDim2.new(0.10, 0, 1, 0)
    valueLabel.Position = UDim2.new(0.45, 0, 0, 0)
    valueLabel.BackgroundTransparency = 1
    valueLabel.Text = "💰" .. item.value
    valueLabel.TextColor3 = Color3.fromRGB(0, 255, 200)
    valueLabel.Font = Enum.Font.GothamBold
    valueLabel.TextSize = 9
    valueLabel.TextXAlignment = Enum.TextXAlignment.Left
    valueLabel.Parent = card
    
    local demandLabel = Instance.new("TextLabel")
    demandLabel.Size = UDim2.new(0.06, 0, 1, 0)
    demandLabel.Position = UDim2.new(0.55, 0, 0, 0)
    demandLabel.BackgroundTransparency = 1
    demandLabel.Text = "📈" .. item.demand
    demandLabel.TextColor3 = Color3.fromRGB(255, 200, 100)
    demandLabel.Font = Enum.Font.Gotham
    demandLabel.TextSize = 8
    demandLabel.TextXAlignment = Enum.TextXAlignment.Left
    demandLabel.Parent = card
    
    local changeLabel = Instance.new("TextLabel")
    changeLabel.Size = UDim2.new(0.15, 0, 1, 0)
    changeLabel.Position = UDim2.new(0.61, 0, 0, 0)
    changeLabel.BackgroundTransparency = 1
    local changeColor = Color3.fromRGB(255, 100, 100)
    if item.change and item.change:find("+") then
        changeColor = Color3.fromRGB(100, 255, 100)
    end
    changeLabel.Text = "🔄" .. (item.change or "N/A")
    changeLabel.TextColor3 = changeColor
    changeLabel.Font = Enum.Font.Gotham
    changeLabel.TextSize = 8
    changeLabel.TextXAlignment = Enum.TextXAlignment.Left
    changeLabel.Parent = card
    
    card.MouseEnter:Connect(function()
        TweenService:Create(card, TweenInfo.new(0.15), {BackgroundColor3 = Color3.fromRGB(40, 40, 80)}):Play()
    end)
    card.MouseLeave:Connect(function()
        TweenService:Create(card, TweenInfo.new(0.15), {BackgroundColor3 = Color3.fromRGB(25, 25, 55)}):Play()
    end)
    
    return card
end

-- ================= DISPLAY RESULTS =================
local function displayResults(items)
    for _, child in pairs(ResultsFrame:GetChildren()) do
        child:Destroy()
    end
    
    local count = #items
    ResultsFrame.CanvasSize = UDim2.new(0, 0, 0, count * 32 + 5)
    
    for i, item in pairs(items) do
        createItemCard(ResultsFrame, item, (i - 1) * 32 + 2)
    end
end

-- ================= SEARCH FUNCTION =================
local currentFilter = "All"

local function searchItems(query, filter)
    local results = {}
    query = query and query:lower() or ""
    
    for _, item in pairs(WEAPONS_DATA) do
        local match = true
        
        if filter and filter ~= "All" and item.type ~= filter then
            match = false
        end
        
        if query ~= "" then
            if not item.name:lower():find(query) and not item.type:lower():find(query) then
                match = false
            end
        end
        
        if match then
            table.insert(results, item)
        end
    end
    
    displayResults(results)
    
    for f, btn in pairs(filterBtns) do
        if f == filter then
            btn.BackgroundColor3 = Color3.fromRGB(0, 150, 200)
            btn.TextColor3 = Color3.fromRGB(255, 255, 255)
        else
            btn.BackgroundColor3 = Color3.fromRGB(20, 20, 50)
            btn.TextColor3 = Color3.fromRGB(200, 200, 255)
        end
    end
end

SearchBox.Changed:Connect(function(property)
    if property == "Text" then
        searchItems(SearchBox.Text, currentFilter)
    end
end)

for filter, btn in pairs(filterBtns) do
    btn.MouseButton1Click:Connect(function()
        currentFilter = filter
        searchItems(SearchBox.Text, currentFilter)
    end)
end

-- ================= LOAD DATA =================
searchItems("", "All")

-- ================= STATUS BAR =================
local StatusBar = Instance.new("TextLabel")
StatusBar.Size = UDim2.new(0.9, 0, 0, 20)
StatusBar.Position = UDim2.new(0.05, 0, 1, -22)
StatusBar.BackgroundTransparency = 1
StatusBar.Text = "🟢 Loaded " .. #WEAPONS_DATA .. " weapons | All categories"
StatusBar.TextColor3 = Color3.fromRGB(150, 150, 200)
StatusBar.Font = Enum.Font.Gotham
StatusBar.TextSize = 10
StatusBar.Parent = Main

-- ================= TOGGLE BUTTON =================
local ToggleBtn = Instance.new("TextButton")
ToggleBtn.Size = UDim2.new(0, 45, 0, 45)
ToggleBtn.Position = UDim2.new(0.93, 0, 0.85, 0)
ToggleBtn.BackgroundColor3 = Color3.fromRGB(0, 200, 255)
ToggleBtn.Text = "📊"
ToggleBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
ToggleBtn.Font = Enum.Font.GothamBold
ToggleBtn.TextSize = 20
ToggleBtn.AutoButtonColor = false
ToggleBtn.Parent = ScreenGui

local ToggleCorner = Instance.new("UICorner")
ToggleCorner.CornerRadius = UDim.new(0, 12)
ToggleCorner.Parent = ToggleBtn

local ToggleGlow = Instance.new("Frame")
ToggleGlow.Size = UDim2.new(1, 8, 1, 8)
ToggleGlow.Position = UDim2.new(0, -4, 0, -4)
ToggleGlow.BackgroundColor3 = Color3.fromRGB(0, 200, 255)
ToggleGlow.BorderSizePixel = 0
ToggleGlow.BackgroundTransparency = 0.6
ToggleGlow.Parent = ToggleBtn

local ToggleGlowCorner = Instance.new("UICorner")
ToggleGlowCorner.CornerRadius = UDim.new(0, 15)
ToggleGlowCorner.Parent = ToggleGlow

local isOpen = false

ToggleBtn.MouseButton1Click:Connect(function()
    isOpen = not isOpen
    Main.Visible = isOpen
    
    if isOpen then
        TweenService:Create(ToggleBtn, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(255, 0, 200)}):Play()
        TweenService:Create(ToggleGlow, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(255, 0, 200)}):Play()
    else
        TweenService:Create(ToggleBtn, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(0, 200, 255)}):Play()
        TweenService:Create(ToggleGlow, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(0, 200, 255)}):Play()
    end
end)

-- ================= KEYBIND: V =================
UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    if input.KeyCode == Enum.KeyCode.V then
        ToggleBtn.MouseButton1Click:Fire()
    end
end)

-- ================= DRAGGABLE =================
local dragging = false
local dragStart, startPos

Title.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = true
        dragStart = input.Position
        startPos = Main.Position
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
        local delta = input.Position - dragStart
        Main.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end
end)

UserInputService.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = false
    end
end)

print("[Oxoe] Supreme Values loaded! " .. #WEAPONS_DATA .. " weapons from all categories.")
