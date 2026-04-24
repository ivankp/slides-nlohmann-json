function add_slides(pref)
  files = { }
  for x in lfs.dir("slides") do
    if x:match('^'..(pref or '')..'%d+%-.*%.tex$') then
      table.insert(files,x)
    end
  end
  table.sort(files)
  for _,x in ipairs(files) do
    tex.sprint("\\input{".."slides/"..x.."}")
  end
end
