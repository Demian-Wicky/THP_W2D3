def show
  positions = ["𓆣", "𓆣", "𓆣", "𓆣", "𓆣", "𓆣", "𓆣", "𓆣", "𓆣", "𓆣"]

  puts
  puts"                            #{positions[9]}   <- 10"
  puts"                         #{positions[8]} ███  <- 09"
  puts"                      #{positions[7]} █████   <- 08"
  puts"                   #{positions[6]} ███████    <- 07"
  puts"                #{positions[5]} █████████     <- 06     ┌───────┐"
  puts"             #{positions[4]} ███████████      <- 05     │ 10/10 │" 
  puts"          #{positions[3]} █████████████       <- 04     └───────┘"
  puts"       #{positions[2]} ███████████████        <- 03"
  puts"    #{positions[1]} █████████████████         <- 02"
  puts" #{positions[0]} ███████████████████          <- 01"
  puts"█████████████████████           <- 00"
  puts
end
