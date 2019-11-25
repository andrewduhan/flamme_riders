def getnick
  first_name = FIRSTNAMES.sample
  last_name = LASTNAMES.sample
  inject = true
  nick = ""
  if Random.rand > 0.6
    nick += "the "
    inject = false
  end
  nick += (ADJECTIVES.sample + " ") if Random.rand > 0.5
  if Random.rand > 0.98
    nick += first_name
    inject = false
  else
    nick += NOUNS.sample
  end
  if Random.rand > 0.8
    inject = false
    if Random.rand > 0.5
      nick += " of " + LOCATIONS.sample
    else
      nick += " from " + LOCATIONS.sample
    end
  end
  nick = nick.capitalize.split(" ").map {|word| word.capitalize}.join(" ")
  first_name + ' ' + last_name + ' « ' + nick + ' »'
end