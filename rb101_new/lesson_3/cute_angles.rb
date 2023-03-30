DEGREE = "\xC2\xB0"

def dms(angle)
  degree = angle.to_i
  minutes = (angle - degree) * 60
  minutes_whole = minutes.to_i
  seconds = ((minutes - minutes_whole) * 60).to_i
  p format(%(#{degree}#{DEGREE}%02d'%02d"), minutes, seconds)
end







p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")


#
#The whole units of degrees will remain the same (e.g., if your figure is 121.135 degrees longitude, start with 121 degrees).
#Multiply the decimal portion of the figure by 60 (e.g., .135 * 60 = 8.1).
#The whole number becomes the minutes (8).
#Take the remaining decimal and multiply it by 60 (e.g., .1 * 60 = 6).
#The resulting number becomes the seconds (6 seconds). Seconds can remain as a decimal if needed.
#Take your three sets of numbers and put them together, (e.g., 121°8'6" longitude would be equivalent to 121.135 degrees longitude).

