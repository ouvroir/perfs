let $artwork_id := "50000000061962"
let $institution_id := "15"
let $path := "/Users/camilledelattre/Desktop/journiac.json"
let $url := "https://api.navigart.fr/" || $institution_id || "/artworks/" || $artwork_id
let $res := http:send-request(<http:request method='get'/>, $url)
return file:write($path, $res[2], map { "method": "json"}) 