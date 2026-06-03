
local function endTypstBlock(blocks)
  local lastBlock = blocks[#blocks]
  if lastBlock.t == "Para" or lastBlock.t == "Plain" then
    lastBlock.content:insert(pandoc.RawInline('typst', '\n]'))
    return blocks
  else
    blocks:insert(pandoc.RawBlock('typst', ']\n'))
    return blocks
  end
end

function Div(el)
  if el.classes:includes('noindent') then
    local blocks = pandoc.List({
      pandoc.RawBlock('typst', '#noindent[')
    })
    blocks:extend(el.content)
    return endTypstBlock(blocks)
  elseif el.classes:includes('quote') then
    local blocks = pandoc.List({
      pandoc.RawBlock('typst', '#quote[')
    })
    blocks:extend(el.content)
    return endTypstBlock(blocks)
  end
end
