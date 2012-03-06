--[[ DocExport
     Export parsable docs as lua data

]]--

all_documentables = Inspect.Documentation()

local addoninfo, DocEx = ...

function DocEx.variables_loaded(name)
  if name == 'DocExport' then
    DocExport = DocExport or {}
    local docexport = Command.Slash.Register("docexport")
    if (docexport) then
      table.insert(docexport, { DocEx.do_export, "DocExport", "/docexport" })
      print("To export documentation:  /docexport")
    else
      print("Couldn't register slash command.")
    end
  end
end

function DocEx.do_export()
  DocExport = DocExport or {}
  for item, _ in pairs(all_documentables) do
    DocExport[item] = Inspect.Documentation(item, true)
  end
  print("Docs exported.")
end

table.insert(Event.Addon.SavedVariables.Load.End, { DocEx.variables_loaded, "DocExport", "variable loaded hook" })
