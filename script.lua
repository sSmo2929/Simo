-- مضاعفة السرعة وإضافة شريك
local function increaseSpeedWithPartner()
    -- الحصول على اللاعب والشخصية
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:FindFirstChild("Humanoid")

    -- التحقق من وجود الـ Humanoid
    if humanoid then
        -- مضاعفة السرعة
        local originalSpeed = humanoid.WalkSpeed
        humanoid.WalkSpeed = originalSpeed * 2
        print("تم مضاعفة السرعة إلى: " .. humanoid.WalkSpeed)

        -- إضافة شريك وهمي
        local partner = Instance.new("Part")
        partner.Name = "SpeedPartner"
        partner.Size = Vector3.new(2, 2, 2)
        partner.Position = character.HumanoidRootPart.Position + Vector3.new(5, 0, 0)
        partner.Anchored = true
        partner.BrickColor = BrickColor.new("Bright blue")
        partner.Parent = workspace

        -- رسالة تأكيد
        print("تم إضافة الشريك!")
    else
        print("لم يتم العثور على Humanoid في الشخصية!")
    end
end

-- استدعاء الدالة
increaseSpeedWithPartner()
