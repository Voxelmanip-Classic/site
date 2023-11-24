function infobox_node(data)
	local l = Buffer:new()
	l:write('<div class="infobox clearfix"><table>')
	l:write('<tr><td class="heading" colspan="2">%s</td></tr>', data.name)
	l:write('<tr><td colspan=2><img src="/images/blocks/%s.webp" style="margin:-11px;height:100px"></td></tr>', data.order)
	l:write('<tr><th style="width:50%%">Order/ID</th><td>%s</td></tr>', data.order)
	if data.origin then
		l:write('<tr><th>Origin</th><td>%s</td></tr>', data.origin)
	end
	l:write('</table></div>')

	return l:output()
end

function thumbnail(data)
	local l = Buffer:new()
	l:write('<div><a href="%s"><img class="thumb" alt="%s" title="%s" src="%s"></a></div>',
		data.src, data.alt, data.alt, data.src)

	return l:output()
end
