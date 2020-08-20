local assets = 
{
	Asset("ANIM", "anim/chopperhat.zip"),
	Asset("ANIM", "anim/chopperhat_swap.zip"), 

	Asset("ATLAS", "images/inventoryimages/chopperhat.xml"),
	Asset("IMAGE", "images/inventoryimages/chopperhat.tex"),
}

local prefabs = {}

local function OnEquip(inst, owner) 
    owner.AnimState:OverrideSymbol("swap_hat", "chopperhat_swap", "swap_hat")
    owner.AnimState:Show("HAT")
    owner.AnimState:Show("HAIR_HAT")
    owner.AnimState:Hide("HAIR_NOHAT")
    owner.AnimState:Hide("HAIR")
    
    if owner:HasTag("player") then
        owner.AnimState:Hide("HEAD")
        owner.AnimState:Show("HEAD_HAT")
    end
    
    owner:AddTag("beefalo")
end

local function OnUnequip(inst, owner)
    owner.AnimState:ClearOverrideSymbol("swap_hat")
    owner.AnimState:Hide("HAT")
    owner.AnimState:Hide("HAIR_HAT")
    owner.AnimState:Show("HAIR_NOHAT")
    owner.AnimState:Show("HAIR")
    
    if owner:HasTag("player") then
        owner.AnimState:Show("HEAD")
        owner.AnimState:Hide("HEAD_HAT")
    end
    
    owner:RemoveTag("beefalo")
end

local function fn()
    local inst = CreateEntity()
    
    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddNetwork()

    MakeInventoryPhysics(inst)

    inst.AnimState:SetBank("chopperhat")
    inst.AnimState:SetBuild("chopperhat")
    inst.AnimState:PlayAnimation("idle")

    inst:AddTag("hat")

    if not TheWorld.ismastersim then
        return inst
    end

    inst.entity:SetPristine()

    inst:AddComponent("inspectable")

    inst:AddComponent("tradable")

    inst:AddComponent("inventoryitem")
    inst.components.inventoryitem.imagename = "chopperhat"
    inst.components.inventoryitem.atlasname = "images/inventoryimages/chopperhat.xml"
    
    inst:AddComponent("equippable")
    inst.components.equippable.equipslot = EQUIPSLOTS.HEAD
    inst.components.equippable:SetOnEquip(OnEquip)
    inst.components.equippable:SetOnUnequip(OnUnequip)
	inst.components.equippable.walkspeedmult = 1.15
	inst.components.inventoryitem.keepondeath = true

    MakeHauntableLaunch(inst)

    return inst
end

return Prefab("common/inventory/chopperhat", fn, assets, prefabs)
