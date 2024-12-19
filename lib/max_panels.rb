# Simulate placing panels in a rectangular roof
def calculate_fit(primary_width, primary_height, secondary_width, secondary_height)
  full_rows = primary_height / secondary_height
  panels_in_full_rows = (primary_width / secondary_width) * full_rows

  leftover_height = primary_height % secondary_height
  panels_in_leftover = (primary_width / secondary_height) * (leftover_height / secondary_width)

  panels_in_full_rows + panels_in_leftover
end

# Get max panels for roof with rectangular shape
def get_max_panels(panel_width, panel_height, roof_width, roof_height)
  orientation1 = calculate_fit(roof_width, roof_height, panel_width, panel_height)
  orientation2 = calculate_fit(roof_width, roof_height, panel_height, panel_width)

  [orientation1, orientation2].max
end
