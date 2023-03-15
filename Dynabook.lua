function Image(img)
      if img.classes:find('Dynabook',1) then
        local f = io.open("glosses/" .. img.src, 'r')
        local doc = pandoc.read(f:read('*a'))
        f:close()
        local contribution = pandoc.utils.stringify(doc.meta.contribution)
        local title = pandoc.utils.stringify(doc.meta.title)
        local student = pandoc.utils.stringify(doc.meta.student)
        local am = pandoc.utils.stringify(doc.meta.id) 
        local content = title .. " | > _" .. contribution .. "_ \n>" .. "Ονοματεπώνυμο:" .. student .. "\nΑΜ:" .. am 
        return pandoc.RawInline('markdown',content)
      end
end
