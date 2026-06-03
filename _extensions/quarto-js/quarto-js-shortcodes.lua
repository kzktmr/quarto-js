function latex()
  if quarto.doc.is_format("typst") then
    return pandoc.RawBlock('typst', '#LaTeX')
  else 
    return pandoc.Span('LaTeX')
  end
end

function tex()
  if quarto.doc.is_format("typst") then
    return pandoc.RawBlock('typst', '#TeX')
  else 
    return pandoc.Span('TeX')
  end
end

function maketitle()
  if quarto.doc.is_format("typst") then
    return pandoc.RawBlock('typst', '#maketitle_wrapper()')
  end
end

function outline()
  if quarto.doc.is_format("typst") then
    return pandoc.RawBlock('typst', '#outline()')
  end
end

function v(args)
  if quarto.doc.is_format("typst") then
    return pandoc.RawInline('typst', '#v(' .. args[1] .. ')')
  end
end

function h(args)
  if quarto.doc.is_format("typst") then
    return pandoc.RawInline('typst', '#h(' .. args[1] .. ')')
  end
end

function kintou(args)
  if quarto.doc.is_format("typst") then
    return pandoc.RawInline('typst', '#kintou(' .. args[1] .. ')[' .. args[2] .. ']')
  end
end

function ruby(args)
  if quarto.doc.is_format("typst") then
    return pandoc.RawInline('typst', '#ruby[' .. args[1] .. '][' .. args[2] .. ']')
  end
end
