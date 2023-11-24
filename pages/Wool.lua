
local l = Buffer:new()

local function wool_table(wools, id_start)
	l:write('<table class="blocks">')
	local i = id_start
	for id, block in ipairs(wools) do
		if (i-id_start) % 11 == 0 then l:write('<tr>') end

		l:write([[
			<td>
				<img src="/images/blocks/%s.webp">
				<div class="center lbl">%s</div>
			</td>
		]], i, block)

		i = i + 1

		if (i-id_start) % 11 == 0 then l:write('</tr>') end
	end
	l:write('</table>')
end

l:write("<p><strong>Wool</strong> blocks are colourful blocks used for making pixel art or the like.</p>")

l:write("<h2>Classic</h2>")
l:write("<p>This was the original colour palette, providing 16 different colours, some which are very vibrant.</p>")

wool_table({
	"Red",
	"Orange",
	"Yellow",
	"Lime",
	"Green",
	"Teal",
	"Aqua",
	"Cyan",
	"Blue",
	"Indigo",
	"Violet",
	"Magenta",
	"Pink",
	"Black",
	"Gray",
	"White"}, 21)

l:write("<h2>CPE</h2>")
l:write("<p>In CPE CustomBlocks v1, the wool colour palette was expanded with five colours to compliment the original set of wool colours.</p>")

wool_table({
	"Light Pink",
	"Forest Green",
	"Brown",
	"Deep Blue",
	"Turquoise"}, 55)

l:write("<h2>Custom</h2>")
l:write("<p>These wool colours were added in Voxelmanip Classic to further expand the palette of colours.</p>")

wool_table({
	"Very Black"}, 93)

return l:output()

