declare namespace http = 'http://expath.org/ns/http-client' ;
let $csv := csv:doc("/Users/camilledelattre/Desktop/nvx_usages_collections/stage/perfs/csv/frac_lorraine.csv")
let $artworks := 
  for $item in $csv/csv/record/entry
  return fn:normalize-space($item)
let $institution_id := "123"
for $artwork in $artworks
  let $path := "/Users/camilledelattre/Desktop/nvx_usages_collections/stage/perfs/notices/" || $artwork || "-2022-06-20"  || ".json"
  let $url := "https://api.navigart.fr/" || $institution_id || "/artworks/" || $artwork
  let $res := http:send-request(<http:request method='get'/>, $url)
  return file:write($path, $res[2], map { "method": "json"}) 