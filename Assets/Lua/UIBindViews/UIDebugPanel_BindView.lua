--[[Notice:This lua uiview file is auto generate by UIViewExporter，don't modify it manually! --]]

local public = {}

public.viewPath = "Arts/UI/Prefabs/UIDebugPanel.prefab"

function public.BindView(uiView, Panel)
	if nil ~= Panel then
		local collection = Panel:GetComponent("UIComponentCollection")
		if nil ~= collection then
			uiView.m_Text = collection:Get(0)
			uiView.m_ScrollView = collection:Get(1)
			uiView.m_BtnClose = collection:Get(2)
			uiView.m_BtnClear = collection:Get(3)
		else
			error("BindView Error! UIComponentCollection is nil!")
		end
	else
		error("BindView Error! Panel is nil!")
	end
end

return public