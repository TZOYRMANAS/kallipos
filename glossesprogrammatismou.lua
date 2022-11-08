
function Image(img)
      if img.classes:find('glossesprogrammatismou',1) then
        local f = io.open("quotes/" .. img.src, 'r')
        local doc = pandoc.read(f:read('*a'))
        f:close()
        local caption = pandoc.utils.stringify(doc.meta.caption)
        local name = pandoc.utils.stringify(doc.meta.name)
        local am = pandoc.utils.stringify(doc.meta.id) 
        local content = "> " .. caption .. " \n>" .. "Τζουρμανάς Δημήτριος:" .. name .. "\n:Π2018140" .. am 
        return pandoc.RawInLine('markdown', content)
      end
end

