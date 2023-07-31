
local l = Buffer:new()

l:write('<p>This is a list of all blocks currently available on Voxelmanip Classic.</p>')

local blocks = {
	"Stone",
	"Grass",
	"Dirt",
	"Cobblestone",
	"Wood",
	"Sapling",
	"Bedrock",
	"Water",
	"Still Water",
	"Lava",
	"Still Lava",
	"Sand",
	"Gravel",
	"Gold Ore",
	"Iron Ore",
	"Coal Ore",
	"Log",
	"Leaves",
	"Sponge",
	"Glass",
	"Red Wool",
	"Orange Wool",
	"Yellow Wool",
	"Lime Wool",
	"Green Wool",
	"Teal Wool",
	"Aqua Wool",
	"Cyan Wool",
	"Blue Wool",
	"Indigo Wool",
	"Violet Wool",
	"Magenta Wool",
	"Pink Wool",
	"Black Wool",
	"Gray Wool",
	"White Wool",
	"Yellow Flower",
	"Red Flower",
	"Brown Mushroom",
	"Red Mushroom",
	"Block of Gold",
	"Block of Iron",
	"Double Stone Slab",
	"Stone Slab",
	"Bricks",
	"TNT",
	"Bookshelf",
	"Mossy Cobblestone",
	"Obsidian",
	"Cobblestone Slab",
	"Rope",
	"Sandstone",
	"Snow",
	"Fire",
	"Light Pink Wool",
	"Forest Green Wool",
	"Brown Wool",
	"Deep Blue Wool",
	"Turquoise Wool",
	"Ice",
	"Ceramic Tile",
	"Magma Block",
	"Pillar",
	"Crate",
	"Stone Brick",
	"Tall Grass",
	"Strobe Light",
	"Rainbow Wool",
	"Mountain Grass",
	"Cobweb",
	"Clay",
	"Cyan Flower",
	"Diamond Ore",
	"Block of Diamond",
	"Ruby Block",
	"Birch Log",
	"Birch Planks",
	"Spruce Log",
	"Spruce Planks",
	"Glowstone",
	"Nether Reactor",
	"Chair",
	"Table",
	"Granite",
	"Polished Granite",
	"Diorite",
	"Polished Diorite",
	"Andesite",
	"Polished Andesite",
	"Cracked Stone Brick",
	"Mossy Stone Brick",
	"Chiseled Stone Brick",
	"Very Black Wool"}

l:write('<table class="blocks">')
local i = 0
for id, block in ipairs(blocks) do
	if i % 11 == 0 then l:write('<tr>') end

	local url = block:gsub(' ', '_')
	if block:endswith('Wool') and block ~= 'Rainbow Wool' then
		url = 'Wool'
	elseif block == 'Double Stone Slab' then
		url = 'Stone_Slab'
	elseif block == 'Still Water' then
		url = 'Water'
	elseif block == 'Still Lava' then
		url = 'Lava'
	end

	l:write([[
		<td>
			<a href="/wiki/%s">
				<img src="/images/blocks/%s.png">
				<div class="center lbl">%s</div>
			</a>
		</td>
	]], url, id, block)

	i = i + 1

	if i % 11 == 0 then l:write('</tr>') end
end
l:write('</table>')

return l:output()
