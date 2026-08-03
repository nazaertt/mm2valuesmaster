--[[
    Supreme Values - ULTIMATE MM2 TRADE ASSISTANT
    Made by Oxoe
    
    Features:
    1. Complete weapon list with exact values
    2. Beautiful neon animated menu
    3. Trade Zone - compare your offer vs their offer
    4. Shows profit/loss percentage (red = loss, green = profit)
    5. Smooth animations, no lag
    6. Press V to open/close
]]

-- ================= CONFIG =================
local HUB_NAME = "Supreme Values - Trade Zone"
local HUB_CREDIT = "made by Oxoe"
-- ============================================

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")

-- Clean up
local existing = PlayerGui:FindFirstChild("SupremeValuesUI")
if existing then existing:Destroy() end

-- ================= COMPLETE WEAPONS DATA =================
local WEAPONS_DATA = {
    -- GODLIES
    {name = "Traveler's Gun", type = "Godly", weapon = "🔫", value = 5600},
    {name = "Evergun", type = "Godly", weapon = "🔫", value = 3450},
    {name = "Constellation", type = "Godly", weapon = "🔪", value = 2700},
    {name = "Evergreen", type = "Godly", weapon = "🔪", value = 2500},
    {name = "Turkey", type = "Godly", weapon = "🔪", value = 2450},
    {name = "Vampire's Gun", type = "Godly", weapon = "🔫", value = 1950},
    {name = "Alienbeam", type = "Godly", weapon = "🔫", value = 1850},
    {name = "Darkshot", type = "Godly", weapon = "🔫", value = 1675},
    {name = "Darksword", type = "Godly", weapon = "🔪", value = 1650},
    {name = "Raygun", type = "Godly", weapon = "🔫", value = 1500},
    {name = "Blossom", type = "Godly", weapon = "🔪", value = 1320},
    {name = "Sakura", type = "Godly", weapon = "🔪", value = 1310},
    {name = "Sunrise", type = "Godly", weapon = "🔪", value = 1125},
    {name = "Snowcannon", type = "Godly", weapon = "🔫", value = 850},
    {name = "Bauble", type = "Godly", weapon = "🔪", value = 825},
    {name = "Sunset", type = "Godly", weapon = "🔪", value = 625},
    {name = "Soul", type = "Godly", weapon = "🔪", value = 615},
    {name = "Spirit", type = "Godly", weapon = "🔪", value = 605},
    {name = "Rainbow Gun", type = "Godly", weapon = "🔫", value = 420},
    {name = "Flora", type = "Godly", weapon = "🔪", value = 410},
    {name = "Rainbow", type = "Godly", weapon = "🔪", value = 410},
    {name = "Bloom", type = "Godly", weapon = "🔪", value = 400},
    {name = "Heart Wand", type = "Godly", weapon = "🔪", value = 340},
    {name = "Ocean", type = "Godly", weapon = "🔪", value = 285},
    {name = "Waves", type = "Godly", weapon = "🔪", value = 280},
    {name = "Xenoknife", type = "Godly", weapon = "🔪", value = 280},
    {name = "Xenoshot", type = "Godly", weapon = "🔫", value = 280},
    {name = "Flowerwood Gun", type = "Godly", weapon = "🔫", value = 265},
    {name = "Blizzard", type = "Godly", weapon = "🔪", value = 260},
    {name = "Flowerwood", type = "Godly", weapon = "🔪", value = 260},
    {name = "Snowstorm", type = "Godly", weapon = "🔪", value = 260},
    {name = "Snow Dagger", type = "Godly", weapon = "🔪", value = 250},
    {name = "Watergun", type = "Godly", weapon = "🔫", value = 250},
    {name = "Icecream", type = "Godly", weapon = "🔪", value = 160},
    {name = "Treat", type = "Godly", weapon = "🔪", value = 155},
    {name = "Beachy", type = "Godly", weapon = "🔪", value = 150},
    {name = "Sands", type = "Godly", weapon = "🔪", value = 150},
    {name = "Sweet", type = "Godly", weapon = "🔪", value = 150},
    {name = "Borealis", type = "Godly", weapon = "🔪", value = 145},
    {name = "Australis", type = "Godly", weapon = "🔪", value = 140},
    {name = "Bat", type = "Godly", weapon = "🔪", value = 120},
    {name = "Pearlshine", type = "Godly", weapon = "🔪", value = 90},
    {name = "Pearl", type = "Godly", weapon = "🔪", value = 85},
    {name = "Candy", type = "Godly", weapon = "🔪", value = 80},
    {name = "Heartblade", type = "Godly", weapon = "🔪", value = 65},
    {name = "Luger", type = "Godly", weapon = "🔫", value = 40},
    {name = "Red Luger", type = "Godly", weapon = "🔫", value = 37},
    {name = "Phantom", type = "Godly", weapon = "🔪", value = 35},
    {name = "Spectre", type = "Godly", weapon = "🔪", value = 35},
    {name = "Candleflame", type = "Godly", weapon = "🔪", value = 33},
    {name = "Darkbringer", type = "Godly", weapon = "🔫", value = 33},
    {name = "Elderwood Blade", type = "Godly", weapon = "🔪", value = 33},
    {name = "Elderwood Revolver", type = "Godly", weapon = "🔫", value = 33},
    {name = "Iceblaster", type = "Godly", weapon = "🔫", value = 33},
    {name = "Lightbringer", type = "Godly", weapon = "🔫", value = 33},
    {name = "Makeshift", type = "Godly", weapon = "🔪", value = 33},
    {name = "Sugar", type = "Godly", weapon = "🔪", value = 32},
    {name = "Ornament", type = "Godly", weapon = "🔪", value = 27},
    {name = "Green Luger", type = "Godly", weapon = "🔫", value = 23},
    {name = "Amerilaser", type = "Godly", weapon = "🔫", value = 22},
    {name = "Laser", type = "Godly", weapon = "🔫", value = 22},
    {name = "Hallowgun", type = "Godly", weapon = "🔫", value = 20},
    {name = "Nightblade", type = "Godly", weapon = "🔪", value = 20},
    {name = "Shark", type = "Godly", weapon = "🔪", value = 20},
    {name = "Icebeam", type = "Godly", weapon = "🔫", value = 18},
    {name = "Plasmabeam", type = "Godly", weapon = "🔫", value = 18},
    {name = "Swirly Gun", type = "Godly", weapon = "🔫", value = 18},
    {name = "Battleaxe II", type = "Godly", weapon = "🔪", value = 17},
    {name = "Blaster", type = "Godly", weapon = "🔫", value = 17},
    {name = "Ginger Luger", type = "Godly", weapon = "🔫", value = 17},
    {name = "Pixel", type = "Godly", weapon = "🔪", value = 17},
    {name = "Gemstone", type = "Godly", weapon = "🔪", value = 15},
    {name = "Iceflake", type = "Godly", weapon = "🔪", value = 15},
    {name = "Old Glory", type = "Godly", weapon = "🔪", value = 15},
    {name = "Plasmablade", type = "Godly", weapon = "🔪", value = 15},
    {name = "Slasher", type = "Godly", weapon = "🔪", value = 15},
    {name = "Vampire's Edge", type = "Godly", weapon = "🔪", value = 15},
    {name = "Cookiecane", type = "Godly", weapon = "🔪", value = 13},
    {name = "Candy Corn", type = "Godly", weapon = "🔪", value = 8},
    {name = "Hallowscythe", type = "Godly", weapon = "🔪", value = 6},
    {name = "Icewing", type = "Godly", weapon = "🔪", value = 5},
    {name = "Logchopper", type = "Godly", weapon = "🔪", value = 5},
    {name = "Batwing", type = "Godly", weapon = "🔪", value = 4},
    {name = "Elderwood Scythe", type = "Godly", weapon = "🔪", value = 4},
    {name = "Swirly Axe", type = "Godly", weapon = "🔪", value = 4},
    {name = "Harvester", type = "Godly", weapon = "🔪", value = 3},
    
    -- ANCIENTS
    {name = "Gingerscope", type = "Ancient", weapon = "🔫", value = 17750},
    {name = "Traveler's Axe", type = "Ancient", weapon = "🔪", value = 8100},
    {name = "Celestial", type = "Ancient", weapon = "🔪", value = 2225},
    {name = "Vampire's Axe", type = "Ancient", weapon = "🔪", value = 1225},
    {name = "Harvester", type = "Ancient", weapon = "🔪", value = 250},
    {name = "Icepiercer", type = "Ancient", weapon = "🔪", value = 160},
    {name = "Icebreaker", type = "Ancient", weapon = "🔪", value = 65},
    {name = "Batwing", type = "Ancient", weapon = "🔪", value = 42},
    {name = "Elderwood Scythe", type = "Ancient", weapon = "🔪", value = 38},
    {name = "Swirly Axe", type = "Ancient", weapon = "🔪", value = 38},
    {name = "Hallowscythe", type = "Ancient", weapon = "🔪", value = 30},
    {name = "Logchopper", type = "Ancient", weapon = "🔪", value = 18},
    {name = "Icewing", type = "Ancient", weapon = "🔪", value = 13},
    
    -- CHROMAS
    {name = "C. Traveler's Gun", type = "Chroma", weapon = "🔫", value = 220000},
    {name = "Chroma Evergun", type = "Chroma", weapon = "🔫", value = 75000},
    {name = "Chroma Evergreen", type = "Chroma", weapon = "🔪", value = 49000},
    {name = "Chroma Bauble", type = "Chroma", weapon = "🔪", value = 34000},
    {name = "C. Vampire's Gun", type = "Chroma", weapon = "🔫", value = 29000},
    {name = "C. Constellation", type = "Chroma", weapon = "🔪", value = 27000},
    {name = "Chroma Alienbeam", type = "Chroma", weapon = "🔫", value = 24000},
    {name = "Chroma Sunrise", type = "Chroma", weapon = "🔪", value = 13250},
    {name = "Chroma Raygun", type = "Chroma", weapon = "🔫", value = 12250},
    {name = "Chroma Snowcannon", type = "Chroma", weapon = "🔫", value = 8250},
    {name = "Chroma Sunset", type = "Chroma", weapon = "🔪", value = 8250},
    {name = "Chroma Blizzard", type = "Chroma", weapon = "🔪", value = 8000},
    {name = "Chroma Snow Dagger", type = "Chroma", weapon = "🔪", value = 4250},
    {name = "Chroma Snowstorm", type = "Chroma", weapon = "🔪", value = 4250},
    {name = "Chroma Heart Wand", type = "Chroma", weapon = "🔪", value = 4250},
    {name = "Chroma Watergun", type = "Chroma", weapon = "🔫", value = 3400},
    {name = "Chroma Treat", type = "Chroma", weapon = "🔪", value = 2850},
    {name = "Chroma Sweet", type = "Chroma", weapon = "🔪", value = 2300},
    {name = "Chroma Icecream", type = "Chroma", weapon = "🔪", value = 2000},
    {name = "Chroma Sands", type = "Chroma", weapon = "🔪", value = 1800},
    {name = "Chroma Ornament", type = "Chroma", weapon = "🔪", value = 1800},
    {name = "Chroma Beachy", type = "Chroma", weapon = "🔪", value = 1750},
    {name = "Chroma Darkbringer", type = "Chroma", weapon = "🔫", value = 65},
    {name = "Chroma Lightbringer", type = "Chroma", weapon = "🔫", value = 60},
    {name = "Chroma Luger", type = "Chroma", weapon = "🔫", value = 50},
    {name = "Chroma Candleflame", type = "Chroma", weapon = "🔪", value = 40},
    {name = "Chroma Laser", type = "Chroma", weapon = "🔫", value = 40},
    {name = "Chroma Swirly Gun", type = "Chroma", weapon = "🔫", value = 38},
    {name = "C. Elderwood Blade", type = "Chroma", weapon = "🔪", value = 37},
    {name = "Chroma Deathshard", type = "Chroma", weapon = "🔪", value = 35},
    {name = "Chroma Cookiecane", type = "Chroma", weapon = "🔪", value = 32},
    {name = "Chroma Fang", type = "Chroma", weapon = "🔪", value = 32},
    {name = "Chroma Gemstone", type = "Chroma", weapon = "🔪", value = 32},
    {name = "Chroma Shark", type = "Chroma", weapon = "🔪", value = 32},
    {name = "Chroma Slasher", type = "Chroma", weapon = "🔪", value = 32},
    {name = "Chroma Heat", type = "Chroma", weapon = "🔫", value = 28},
    {name = "Chroma Seer", type = "Chroma", weapon = "🔪", value = 28},
    {name = "Chroma Gingerblade", type = "Chroma", weapon = "🔪", value = 27},
    {name = "Chroma Tides", type = "Chroma", weapon = "🔪", value = 27},
    {name = "Chroma Saw", type = "Chroma", weapon = "🔫", value = 23},
    {name = "Chroma Boneblade", type = "Chroma", weapon = "🔪", value = 22},
    
    -- LEGENDARIES
    {name = "Latte (Gun)", type = "Legendary", weapon = "🔫", value = 140},
    {name = "Latte (Knife)", type = "Legendary", weapon = "🔪", value = 140},
    {name = "Spectral (Knife)", type = "Legendary", weapon = "🔪", value = 60},
    {name = "Traveler (Gun)", type = "Legendary", weapon = "🔫", value = 60},
    {name = "Aurora (Gun)", type = "Legendary", weapon = "🔫", value = 55},
    {name = "Vampire (Gun)", type = "Legendary", weapon = "🔫", value = 55},
    {name = "Beach", type = "Legendary", weapon = "🔪", value = 35},
    {name = "Cotton Candy", type = "Legendary", weapon = "🔪", value = 35},
    {name = "JD", type = "Legendary", weapon = "🔪", value = 28},
    {name = "Arctic (Gun)", type = "Legendary", weapon = "🔫", value = 10},
    {name = "Cavern (Knife)", type = "Legendary", weapon = "🔪", value = 7},
    {name = "Broken", type = "Legendary", weapon = "🔪", value = 7},
    {name = "Icedriller", type = "Legendary", weapon = "🔪", value = 5},
    {name = "Nightsky", type = "Legendary", weapon = "🔪", value = 5},
    {name = "Ghost (Knife)", type = "Legendary", weapon = "🔪", value = 5},
    {name = "Ginger (Gun)", type = "Legendary", weapon = "🔫", value = 5},
    {name = "Bunnies", type = "Legendary", weapon = "🔪", value = 4},
    {name = "Red Scratch", type = "Legendary", weapon = "🔪", value = 4},
    {name = "Skulls", type = "Legendary", weapon = "🔪", value = 4},
    {name = "Aurora (Knife)", type = "Legendary", weapon = "🔪", value = 3},
    {name = "Spectral (Gun)", type = "Legendary", weapon = "🔫", value = 3},
    {name = "Traveler (Knife)", type = "Legendary", weapon = "🔪", value = 3},
    {name = "Vampire (Knife)", type = "Legendary", weapon = "🔪", value = 3},
    {name = "Witched", type = "Legendary", weapon = "🔪", value = 3},
    {name = "Blue Elite", type = "Legendary", weapon = "🔪", value = 3},
    {name = "Green Elite", type = "Legendary", weapon = "🔪", value = 3},
    {name = "Santa's Magic", type = "Legendary", weapon = "🔪", value = 3},
    {name = "Santa's Spirit", type = "Legendary", weapon = "🔪", value = 3},
    {name = "Energized (Gun)", type = "Legendary", weapon = "🔫", value = 2},
    {name = "Frostfade (Knife)", type = "Legendary", weapon = "🔪", value = 2},
    {name = "Blue Scratch", type = "Legendary", weapon = "🔪", value = 2},
    {name = "Ghost (Gun)", type = "Legendary", weapon = "🔫", value = 2},
    {name = "Bubbles", type = "Legendary", weapon = "🔪", value = 1},
    {name = "Chromatic (Knife)", type = "Legendary", weapon = "🔪", value = 1},
    {name = "Icecracker", type = "Legendary", weapon = "🔪", value = 1},
    {name = "Red Fire", type = "Legendary", weapon = "🔪", value = 1},
    {name = "Cavern (Gun)", type = "Legendary", weapon = "🔫", value = 1},
}

-- ================= UI =================
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "SupremeValuesUI"
ScreenGui.ResetOnSpawn = false
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.Parent = PlayerGui

-- ================= ANIMATED MAIN MENU =================
local Main = Instance.new("Frame")
Main.Size = UDim2.new(0, 0, 0, 0)
Main.Position = UDim2.new(0.5, -350, 0.5, -300)
Main.BackgroundColor3 = Color3.fromRGB(8, 8, 25)
Main.BorderSizePixel = 0
Main.Visible = false
Main.Parent = ScreenGui

local MainCorner = Instance.new("UICorner")
MainCorner.CornerRadius = UDim.new(0, 20)
MainCorner.Parent = Main

-- Glow border
local Glow = Instance.new("Frame")
Glow.Size = UDim2.new(1, 14, 1, 14)
Glow.Position = UDim2.new(0, -7, 0, -7)
Glow.BackgroundColor3 = Color3.fromRGB(0, 200, 255)
Glow.BorderSizePixel = 0
Glow.BackgroundTransparency = 0.7
Glow.Parent = Main

local GlowCorner = Instance.new("UICorner")
GlowCorner.CornerRadius = UDim.new(0, 24)
GlowCorner.Parent = Glow

-- Title
local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, 0, 0, 50)
Title.Position = UDim2.new(0, 0, 0, 10)
Title.BackgroundTransparency = 1
Title.Text = "✦ SUPREME VALUES ✦"
Title.TextColor3 = Color3.fromRGB(0, 255, 255)
Title.Font = Enum.Font.GothamBold
Title.TextSize = 26
Title.Parent = Main

local Sub = Instance.new("TextLabel")
Sub.Size = UDim2.new(1, 0, 0, 20)
Sub.Position = UDim2.new(0, 0, 0, 55)
Sub.BackgroundTransparency = 1
Sub.Text = "☆ TRADE ZONE ☆"
Sub.TextColor3 = Color3.fromRGB(200, 150, 255)
Sub.Font = Enum.Font.Gotham
Sub.TextSize = 14
Sub.Parent = Main

-- ================= TOGGLE BUTTON =================
local ToggleBtn = Instance.new("TextButton")
ToggleBtn.Size = UDim2.new(0, 50, 0, 50)
ToggleBtn.Position = UDim2.new(0.93, 0, 0.83, 0)
ToggleBtn.BackgroundColor3 = Color3.fromRGB(0, 200, 255)
ToggleBtn.Text = "📊"
ToggleBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
ToggleBtn.Font = Enum.Font.GothamBold
ToggleBtn.TextSize = 22
ToggleBtn.AutoButtonColor = false
ToggleBtn.Parent = ScreenGui

local ToggleCorner = Instance.new("UICorner")
ToggleCorner.CornerRadius = UDim.new(0, 14)
ToggleCorner.Parent = ToggleBtn

local ToggleGlow = Instance.new("Frame")
ToggleGlow.Size = UDim2.new(1, 8, 1, 8)
ToggleGlow.Position = UDim2.new(0, -4, 0, -4)
ToggleGlow.BackgroundColor3 = Color3.fromRGB(0, 200, 255)
ToggleGlow.BorderSizePixel = 0
ToggleGlow.BackgroundTransparency = 0.6
ToggleGlow.Parent = ToggleBtn

local ToggleGlowCorner = Instance.new("UICorner")
ToggleGlowCorner.CornerRadius = UDim.new(0, 16)
ToggleGlowCorner.Parent = ToggleGlow

-- ================= TRADE ZONE =================
local TradeFrame = Instance.new("Frame")
TradeFrame.Size = UDim2.new(0.9, 0, 0, 380)
TradeFrame.Position = UDim2.new(0.05, 0, 0, 85)
TradeFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 35)
TradeFrame.BorderSizePixel = 0
TradeFrame.Parent = Main

local TradeCorner = Instance.new("UICorner")
TradeCorner.CornerRadius = UDim.new(0, 12)
TradeCorner.Parent = TradeFrame

-- Your Offer Section
local YourLabel = Instance.new("TextLabel")
YourLabel.Size = UDim2.new(0.45, 0, 0, 25)
YourLabel.Position = UDim2.new(0.025, 0, 0, 5)
YourLabel.BackgroundTransparency = 1
YourLabel.Text = "📤 YOUR OFFER"
YourLabel.TextColor3 = Color3.fromRGB(0, 255, 200)
YourLabel.Font = Enum.Font.GothamBold
YourLabel.TextSize = 14
YourLabel.TextXAlignment = Enum.TextXAlignment.Left
YourLabel.Parent = TradeFrame

-- Their Offer Section
local TheirLabel = Instance.new("TextLabel")
TheirLabel.Size = UDim2.new(0.45, 0, 0, 25)
TheirLabel.Position = UDim2.new(0.525, 0, 0, 5)
TheirLabel.BackgroundTransparency = 1
TheirLabel.Text = "📥 THEIR OFFER"
TheirLabel.TextColor3 = Color3.fromRGB(255, 200, 100)
TheirLabel.Font = Enum.Font.GothamBold
TheirLabel.TextSize = 14
TheirLabel.TextXAlignment = Enum.TextXAlignment.Left
TheirLabel.Parent = TradeFrame

-- Your Items Input
local YourItems = Instance.new("TextBox")
YourItems.Size = UDim2.new(0.42, 0, 0, 30)
YourItems.Position = UDim2.new(0.025, 0, 0, 35)
YourItems.BackgroundColor3 = Color3.fromRGB(25, 25, 50)
YourItems.TextColor3 = Color3.fromRGB(255, 255, 255)
YourItems.PlaceholderText = "Item1, Item2, Item3..."
YourItems.PlaceholderColor3 = Color3.fromRGB(130, 130, 180)
YourItems.Font = Enum.Font.Gotham
YourItems.TextSize = 13
YourItems.ClearTextOnFocus = false
YourItems.Text = ""
YourItems.Parent = TradeFrame

local YourCorner = Instance.new("UICorner")
YourCorner.CornerRadius = UDim.new(0, 6)
YourCorner.Parent = YourItems

-- Their Items Input
local TheirItems = Instance.new("TextBox")
TheirItems.Size = UDim2.new(0.42, 0, 0, 30)
TheirItems.Position = UDim2.new(0.525, 0, 0, 35)
TheirItems.BackgroundColor3 = Color3.fromRGB(25, 25, 50)
TheirItems.TextColor3 = Color3.fromRGB(255, 255, 255)
TheirItems.PlaceholderText = "Item1, Item2, Item3..."
TheirItems.PlaceholderColor3 = Color3.fromRGB(130, 130, 180)
TheirItems.Font = Enum.Font.Gotham
TheirItems.TextSize = 13
TheirItems.ClearTextOnFocus = false
TheirItems.Text = ""
TheirItems.Parent = TradeFrame

local TheirCorner = Instance.new("UICorner")
TheirCorner.CornerRadius = UDim.new(0, 6)
TheirCorner.Parent = TheirItems

-- Calculate Button
local CalcBtn = Instance.new("TextButton")
CalcBtn.Size = UDim2.new(0.8, 0, 0, 40)
CalcBtn.Position = UDim2.new(0.1, 0, 0, 75)
CalcBtn.BackgroundColor3 = Color3.fromRGB(0, 150, 255)
CalcBtn.Text = "📊 CALCULATE TRADE"
CalcBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
CalcBtn.Font = Enum.Font.GothamBold
CalcBtn.TextSize = 16
CalcBtn.AutoButtonColor = false
CalcBtn.Parent = TradeFrame

local CalcCorner = Instance.new("UICorner")
CalcCorner.CornerRadius = UDim.new(0, 8)
CalcCorner.Parent = CalcBtn

-- Result Frame
local ResultFrame = Instance.new("Frame")
ResultFrame.Size = UDim2.new(0.95, 0, 0, 80)
ResultFrame.Position = UDim2.new(0.025, 0, 0, 125)
ResultFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 45)
ResultFrame.BorderSizePixel = 0
ResultFrame.Parent = TradeFrame

local ResultCorner = Instance.new("UICorner")
ResultCorner.CornerRadius = UDim.new(0, 8)
ResultCorner.Parent = ResultFrame

-- Result Label
local ResultLabel = Instance.new("TextLabel")
ResultLabel.Size = UDim2.new(1, 0, 1, 0)
ResultLabel.Position = UDim2.new(0, 10, 0, 0)
ResultLabel.BackgroundTransparency = 1
ResultLabel.Text = "Enter items and press Calculate"
ResultLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
ResultLabel.Font = Enum.Font.Gotham
ResultLabel.TextSize = 13
ResultLabel.TextXAlignment = Enum.TextXAlignment.Left
ResultLabel.TextWrapped = true
ResultLabel.Parent = ResultFrame

-- ================= CALCULATE TRADE =================
local function getItemValue(name)
    local searchName = name:lower():gsub("%s+", " "):gsub("^%s+", ""):gsub("%s+$", "")
    
    for _, item in pairs(WEAPONS_DATA) do
        local itemName = item.name:lower():gsub("%s+", " "):gsub("^%s+", ""):gsub("%s+$", "")
        if itemName:find(searchName) or searchName:find(itemName) then
            return item.value
        end
    end
    return nil
end

local function calculateTrade()
    local yourText = YourItems.Text
    local theirText = TheirItems.Text
    
    if yourText == "" or theirText == "" then
        ResultLabel.Text = "⚠️ Please enter items in both fields"
        ResultLabel.TextColor3 = Color3.fromRGB(255, 200, 100)
        return
    end
    
    -- Parse items
    local yourItems = {}
    for item in yourText:gmatch("[^,]+") do
        local clean = item:gsub("^%s+", ""):gsub("%s+$", "")
        if clean ~= "" then table.insert(yourItems, clean) end
    end
    
    local theirItems = {}
    for item in theirText:gmatch("[^,]+") do
        local clean = item:gsub("^%s+", ""):gsub("%s+$", "")
        if clean ~= "" then table.insert(theirItems, clean) end
    end
    
    local yourTotal = 0
    local theirTotal = 0
    local unknownItems = {}
    
    for _, item in pairs(yourItems) do
        local val = getItemValue(item)
        if val then
            yourTotal = yourTotal + val
        else
            table.insert(unknownItems, item)
        end
    end
    
    for _, item in pairs(theirItems) do
        local val = getItemValue(item)
        if val then
            theirTotal = theirTotal + val
        else
            table.insert(unknownItems, item)
        end
    end
    
    local diff = yourTotal - theirTotal
    local percent = 0
    if theirTotal > 0 then
        percent = (diff / theirTotal) * 100
    end
    
    local resultText = ""
    local color = Color3.fromRGB(200, 200, 200)
    
    if #unknownItems > 0 then
        resultText = "⚠️ Unknown items: " .. table.concat(unknownItems, ", ") .. "\n"
    end
    
    resultText = resultText .. "💰 Your Total: " .. yourTotal .. " | Their Total: " .. theirTotal .. "\n"
    
    if diff > 0 then
        resultText = resultText .. "✅ YOU WIN by " .. diff .. " (" .. string.format("%.1f", percent) .. "%)"
        color = Color3.fromRGB(100, 255, 100)
    elseif diff < 0 then
        resultText = resultText .. "❌ YOU LOSE by " .. math.abs(diff) .. " (" .. string.format("%.1f", math.abs(percent)) .. "%)"
        color = Color3.fromRGB(255, 100, 100)
    else
        resultText = resultText .. "⚖️ FAIR TRADE!"
        color = Color3.fromRGB(255, 255, 100)
    end
    
    ResultLabel.Text = resultText
    ResultLabel.TextColor3 = color
    
    -- Animate result
    TweenService:Create(ResultFrame, TweenInfo.new(0.3), {BackgroundColor3 = Color3.fromRGB(30, 30, 60)}):Play()
    wait(0.15)
    TweenService:Create(ResultFrame, TweenInfo.new(0.3), {BackgroundColor3 = Color3.fromRGB(20, 20, 45)}):Play()
end

CalcBtn.MouseButton1Click:Connect(calculateTrade)

-- Enter key support
YourItems.FocusLost:Connect(function(enterPressed)
    if enterPressed then calculateTrade() end
end)
TheirItems.FocusLost:Connect(function(enterPressed)
    if enterPressed then calculateTrade() end
end)

-- ================= ANIMATED OPEN/CLOSE =================
local isOpen = false
local isAnimating = false

local function openMenu()
    if isAnimating then return end
    isAnimating = true
    Main.Visible = true
    
    TweenService:Create(ToggleBtn, TweenInfo.new(0.3), {BackgroundColor3 = Color3.fromRGB(255, 0, 200)}):Play()
    TweenService:Create(ToggleGlow, TweenInfo.new(0.3), {BackgroundColor3 = Color3.fromRGB(255, 0, 200)}):Play()
    
    Main.Size = UDim2.new(0, 0, 0, 0)
    TweenService:Create(Main, TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
        Size = UDim2.new(0, 700, 0, 600)
    }):Play()
    
    wait(0.4)
    isOpen = true
    isAnimating = false
end

local function closeMenu()
    if isAnimating then return end
    isAnimating = true
    
    TweenService:Create(ToggleBtn, TweenInfo.new(0.3), {BackgroundColor3 = Color3.fromRGB(0, 200, 255)}):Play()
    TweenService:Create(ToggleGlow, TweenInfo.new(0.3), {BackgroundColor3 = Color3.fromRGB(0, 200, 255)}):Play()
    
    TweenService:Create(Main, TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.In), {
        Size = UDim2.new(0, 0, 0, 0)
    }):Play()
    
    wait(0.3)
    Main.Visible = false
    isOpen = false
    isAnimating = false
end

ToggleBtn.MouseButton1Click:Connect(function()
    if isOpen then
        closeMenu()
    else
        openMenu()
    end
end)

-- ================= KEYBIND: V =================
UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    if input.KeyCode == Enum.KeyCode.V then
        if isOpen then
            closeMenu()
        else
            openMenu()
        end
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

-- ================= HOVER ANIMATIONS =================
CalcBtn.MouseEnter:Connect(function()
    TweenService:Create(CalcBtn, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(50, 200, 255)}):Play()
end)
CalcBtn.MouseLeave:Connect(function()
    TweenService:Create(CalcBtn, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(0, 150, 255)}):Play()
end)

ToggleBtn.MouseEnter:Connect(function()
    TweenService:Create(ToggleBtn, TweenInfo.new(0.2), {Size = UDim2.new(0, 55, 0, 55)}):Play()
end)
ToggleBtn.MouseLeave:Connect(function()
    TweenService:Create(ToggleBtn, TweenInfo.new(0.2), {Size = UDim2.new(0, 50, 0, 50)}):Play()
end)

print("[Oxoe] Supreme Values Trade Zone loaded! Press V to toggle.")
