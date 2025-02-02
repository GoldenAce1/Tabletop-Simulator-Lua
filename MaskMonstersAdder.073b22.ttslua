local Board_Monster_Bag_Id = 'f9fe2d'

AddMaskMonsterButton = {
click_function = 'AddMaskMonsterButtonClicked',
function_owner = self,
label = 'Add Mask Monsters to Cup',
tooltip = "Add Mask Monsters to the Cup (perform after setup on board)",
position = {0,0,0},
rotation = {0,270,0},
width = 1380,
height = 240,
font_size = 100
}

function onload()

    self.createButton(AddMaskMonsterButton)
end

function AddMaskMonsterButtonClicked()
    local MaskedMonsterBag = getObjectFromGUID('390884')
    local MonsterBag = getObjectFromGUID(Board_Monster_Bag_Id)

    for _ = 1, #MaskedMonsterBag.getObjects() do
        local obj = MaskedMonsterBag.takeObject({})
        MonsterBag.putObject(obj)
    end
    MonsterBag.randomize()
end