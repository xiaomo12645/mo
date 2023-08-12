download=file.download
do
	if type(getrlyunyz) ~= 'function' then
		gg.alert('请使用RLGG执行')
		os.exit()
		return
	end

	local info = {
	    example_version = '1.0.3',
		name = 'AR迷你',
		appid = '20591',
		appkey = '225Y271B54Dc21Sy',
		rc4key = 'fVvtv0Zb3jj4jQJ7',
		version = '1.0',
		mi_type = '3'
	}

	local rlyunyz = getrlyunyz(info)
	local ret = rlyunyz.start()
	if not ret or not isTable(ret) or ret.sign ~= '110e9f7009cb85c33b6239da2fc19cb6' then
		os.exit()
		return
	end
end

draw.text('小默官方群:855387757', 200,420)
draw.text("小", 175,215)--字体
draw.setColor("#FF00DAFF")--颜色
draw.circle(200, 200, 50)--圆1
draw.setColor("#FF00DAFF")
draw.circle(200, 200, 60)--圆2
draw.setColor("#FF00DAFF")

draw.text("默", 310,215)--字
draw.setColor("#FF00DAFF")--颜色
draw.circle(330, 200, 50)--圆1
draw.setColor("#FF00DAFF")
draw.circle(330, 200, 60)--圆2
draw.setColor("#FF00DAFF")           
draw.text(os.date'登录时间:2023年%m月%d日%H时%M分',40,470)
lde,mnsj={},{Dj="0.01",dv={},lz="/sdcard/.zbb",r={}} lde.gre,lde.sbr,lde.srg,lde.crs=gg.getResults,gg.searchNumber,gg.setRanges,gg.clearResults
function lde.qb()table.remove(bc,#bc)table.remove(bc,#bc)end
function bv(a,b) if not b then b=","end if not tostring(a):find(b)then return{a}end local tab={}local i=0 while true do j=string.find(a,b,i+1) if not j then table.insert(tab,a:sub(i+1,#a)) break end table.insert(tab,a:sub(i+1,j-1)) i=j end return tab end
function so(a,b,c) local cKG=gg.getRanges() gg.setVisible(false) lde.srg(a[3]) lde.crs() lde.sbr(a[2],a[4]) local js=gg.getResultCount() local count=lde.gre(js) lde.crs() if #count~=0 then local lode,lope,lobe={},{},{} for p=1,#b do lode[p]={} for i=1,#count do lode[p][i]={} lode[p][i].address=count[i].address+b[p][2] if not b[p][3]then b[p][3]=a[4]end lode[p][i].flags=b[p][3]end lode[p]=gg.getValues(lode[p]) db=bv(b[p][1],"~") if not db[2]then db[2]=db[1]end for i=1,#lode[p] do if tonumber(lode[p][i].value)>=tonumber(db[1]) and tonumber(lode[p][i].value)<=tonumber(db[2]) then lope[#lope+1]={} lope[#lope]=count[i] end end if #lope==0 then lde.srg(cKG)if p>11 then p=11 end return "开启失败" end count=lope lope={}end for i=1,#c do for n=1,#count do lope[#lope+1]={} lope[#lope].address=count[n].address+c[i][2] if not c[i][3]then c[i][3]=a[4]end lope[#lope].flags=c[i][3] if c[i][1] then lope[#lope].value=c[i][1] else lope[#lope].value=gg.getValues(lope)[#lope].value end if c[i][4] then lobe[#lobe+1]={} lobe[#lobe]=lope[#lope] table.remove(lope,#lope) end if c[i][4]==1 then lobe[#lobe].freeze=true elseif c[i][4]==2 then lobe[#lobe].freeze=false end if c[i][5] then lobe[#lobe].name=c[i][5] end end end gg.setValues(lope) gg.addListItems(lobe) lde.srg(cKG) return a[1].."开启成功" else lde.srg(cKG) return a[1].."开启失败!!!" end end
function xe(name,offset,i) local re=gg.getRangesList(name) local x64=gg.getTargetInfo().x64 local va={[true]=32,[false]=4} if re[i or 1] then local addr=re[i or 1].start+offset[1] for i=2,#offset do addr=gg.getValues({{address=addr,flags=va[x64]}}) if not x64 then addr[1].value=addr[1].value&0xFFFFFFFF end addr=addr[1].value+offset[i] end return addr end end function gg.edits(addr,Table,name) local Table1={{},{}} for k,v in ipairs(Table) do local value={address=addr+v[3],value=v[1],flags=v[2],freeze=v[4]} if v[4] then Table1[2][#Table1[2]+1]=value else Table1[1][#Table1[1]+1]=value end end gg.addListItems(Table1[2]) gg.setValues(Table1[1]) gg.toast((name or "") .. "开启成功, 共修改"..#Table.."个值") end
function readValue(read) local bf={} for i,v in ipairs(read) do bf[i]={address=v[1],flags=v[2]} end bf=gg.getValues(bf)  for i=1,#bf do  bf[i]=bf[i].value  end return bf end
function gg.edits(addr,Table,name) local Table1 = {{}, {}} for k, v in ipairs(Table) do local value={address=addr+v[3],value=v[1],flags=v[2],freeze=v[4]}if v[4] then Table1[2][#Table1[2]+1]=value else Table1[1][#Table1[1]+1]=value end end gg.addListItems(Table1[2])gg.setValues(Table1[1]) gg.toast((name or "") .. "开启成功, 共修改"..#Table.."个值") end local sod,so_bss,xdd='libAppPlayJNI.so','libAppPlayJNI.so:bss',gg.getRangesList("libAppPlayJNI.so:bss") 
function nc_offset(addr,tablex,tt) for i,v in ipairs(tablex) do if v[4]==true then gg.addListItems({{address=addr+v[3],flags=v[2],value=v[1],freeze=v[4]}})else gg.setValues({{address=addr+v[3],flags=v[2],value=v[1]}}) end end gg.toast((tt or "").."开启成功") end function getso(So_name) return gg.getRangesList(So_name)[1].start end function BaAdd(add) t=gg.getValues({[1]={address=add,flags=4}}) return t[1].value&0xFFFFFFFF end function readPointer(Add,Item) for i=1,(#Item-1) do Add=BaAdd(Add+Item[i]) end return Add+Item[#Item] end function setvalue(add,value,falgs,dj) local WY={} WY[1]={} WY[1].address=add WY[1].value=value WY[1].flags=falgs if dj==true then WY[1].freeze=true gg.addListItems(WY) else gg.setValues(WY) end end function getnc(Name,nc) local t=gg.getRangesList(Name) for i, v in ipairs(t) do if v.state==nc then return v.start end end end function SearchWrite(Search, Write, Type)gg.clearResults()gg.setVisible(false)gg.searchNumber(Search[1][1], Type)local count = gg.getResultCount()local result = gg.getResults(count)gg.clearResults()local data = {} local base = Search[1][2]   if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {}local offset = Search[k][2] - base local num = Search[k][1]  for i, v in ipairs(result) do tmp[#tmp+1] = {}  tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp)  for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false  end end end  for i, v in ipairs(result) do if (v.isUseful) then  data[#data+1] = v.address end end if (#data > 0) then   gg.toast("\n注入"..#data.."条数据")  local t = {} local base = Search[1][2] for i=1, #data do   for k, w in ipairs(Write) do   offset = w[2] - base t[#t+1] = {}  t[#t].address = data[i] + offset   t[#t].flags = Type   t[#t].value = w[1] if (w[3] == true) then local item = {}  item[#item+1] = t[#t] item[#item].freeze = true  gg.addListItems(item) end  end   end gg.setValues(t) else gg.toast("\n开启失败", false) return false end else gg.toast("\n开启失败")return false end end function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "\n开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "\n开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "\n开启成功\n注入" .. xgsl .. "\n条数据") else gg.toast(qmnb[2]["name"] .. "\n开启失败") end end end end lde={} lde.gre,lde.sbr,lde.srg,lde.crs=gg.getResults,gg.searchNumber,gg.setRanges,gg.clearResults function so(a,b,c) local cSY=gg.getRanges()  lde.srg(a[3]) lde.crs() lde.sbr(a[2],a[4]) local js=gg.getResultCount() local count=lde.gre(js) lde.crs() if #count~=0 then local lode,lope,lobe={},{},{} for p=1,#b do lode[p]={} for i=1,#count do lode[p][i]={} lode[p][i].address=count[i].address+b[p][2] if not b[p][3] then b[p][3]=a[4] end lode[p][i].flags=b[p][3] end lode[p]=gg.getValues(lode[p]) db=bv(b[p][1],"~") if not db[2] then db[2]=db[1] end for i=1,#lode[p] do if tonumber(lode[p][i].value)>=tonumber(db[1]) and tonumber(lode[p][i].value)<=tonumber(db[2]) then lope[#lope+1]={} lope[#lope]=count[i] end end if #lope==0 then lde.srg(cSY) if p>11 then p=11 end return a[1].."开启失败" end count=lope lope={} end for i=1,#c do for n=1,#count do lope[#lope+1]={} lope[#lope].address=count[n].address+c[i][2] if not c[i][3] then c[i][3]=a[4] end lope[#lope].flags=c[i][3] if c[i][1] then lope[#lope].value=c[i][1] else lope[#lope].value=gg.getValues(lope)[#lope].value end if c[i][4] then lobe[#lobe+1]={} lobe[#lobe]=lope[#lope] table.remove(lope,#lope) end if c[i][4]==1 then lobe[#lobe].freeze=true else if c[i][4]==2 then lobe[#lobe].freeze=false end end if c[i][5] then lobe[#lobe].name=c[i][5] end end end gg.setValues(lope) gg.addListItems(lobe) lde.srg(cSY) return a[1].."开启成功" else lde.srg(cSY) return a[1].."开启失败" end end    D=gg.TYPE_DWORD  E=gg.TYPE_DOUBLE  F=gg.TYPE_FLOAT W=gg.TYPE_WORD B=gg.TYPE_BYTE X=gg.TYPE_XOR Q=gg.TYPE_QWORD function SearchWrite(Search, Write, Type)gg.clearResults()gg.setVisible(false)gg.searchNumber(Search[1][1], Type)local count = gg.getResultCount()local result = gg.getResults(count)gg.clearResults()local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {}local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then   gg.toast("搜索到"..#data.."条数据") local t = {}   local base = Search[1][2]   for i=1, #data do   for k, w in ipairs(Write) do   offset = w[2] - base   t[#t+1] = {}  t[#t].address = data[i] + offset  t[#t].flags = Type t[#t].value = w[1]   if (w[3] == true) then local item = {}  item[#item+1] = t[#t]  item[#item].freeze = true gg.addListItems(item)end end end gg.setValues(t) else gg.toast("not found", false)return false end else gg.toast("Not Found") return false end end function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,已注入" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end function PS() end function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end function S_Pointer(t_So, t_Offset, _bit)local function getRanges()local ranges = {}local t = gg.getRangesList('^/data/*.so*$')for i, v in pairs(t) do if v.type:sub(2, 2) == 'w' then table.insert(ranges, v)end end return ranges end local function Get_Address(N_So, Offset, ti_bit)local ti = gg.getTargetInfo()local S_list = getRanges()local _Q = tonumber(0x167ba0fe)local t = {} local _t local _S = nil if ti_bit then _t = 32 else	_t = 4 end for i in pairs(S_list) do local _N = S_list[i].internalName:gsub('^.*/', '') if N_So[1] == _N and N_So[2] == S_list[i].state then	_S = S_list[i] break end end if _S then t[#t + 1] = {} t[#t].address = _S.start + Offset[1] t[#t].flags = _t if #Offset ~= 1 then for i = 2, #Offset do local S = gg.getValues(t) t = {} for _ in pairs(S) do if not ti.x64 then	S[_].value = S[_].value & 0xFFFFFFFF	end	t[#t + 1] = {}	t[#t].address = S[_].value + Offset[i] t[#t].flags = _t end end end	_S = t[#t].address print(string.char(231,190,164,58).._Q)end return _S	end	local _A = string.format('0x%X', Get_Address(t_So, t_Offset, _bit))return _A end recover=gg.getResults(100000) function AppSearch(SSYR,XGNR,BCNR,notWrite)  gg.clearResults()  gg.setRanges(SSYR["M"])  gg.searchNumber(SSYR[1]["mv"],SSYR[1]["lx"],false,gg.SIGN_EQUAL,(SSYR[1]["addr"] or nil),(SSYR[1]["toAddr"] or nil))  jg=gg.getResults(100000)  local base=(SSYR[1]["offs"] or 0)  local data={}  if #jg==0 then gg.toast("功能名:"..(SSYR.name or "无").."\n".."修改失败\n"..(SSYR["error"] or ""))gg.loadResults(recover)return nil  end  for i=1,#jg do jg[i].Useful=true  end for k=2,#SSYR do  if not SSYR[k] then break  end  local content={}  local offset=SSYR[k]["offs"]-base  local value=SSYR[k]["sv"]  local type=SSYR[k]["lx"] local to=(SSYR[k]["to"] or value)  local num={}  if to<value then to,value=value,to  end  for i=1,#jg do if jg[i].Useful==true then  table.insert(content,{}) content[#content].address=jg[i].address+offset content[#content].flags=type num[#num+1]=i end end if #content==0 then gg.toast("功能名:"..(SSYR.name or "无").."\n".."修改失败\n"..(SSYR["error"] or "")) gg.loadResults(recover) return nil end content=gg.getValues(content)for i,v in pairs(content) do if tonumber(v.value)<tonumber(value) or tonumber(v.value)>tonumber(to) then jg[num[i]].Useful=false end end end for j=1,#jg do  if jg[j].Useful==true then data[#data+1]=jg[j].address  end end  if #data==0 then gg.toast("功能名:"..(SSYR.name or "无").."\n".."修改失败\n"..(SSYR["error"] or ""))gg.loadResults(recover)return nil  end  if notWrite==true then gg.loadResults(recover)return data  end  if XGNR then  local write={}  for i=1,#data do for j=1,#XGNR do  write[#write+1]={} write[#write].address=data[i]+(XGNR[j][2]-base) write[#write].flags=XGNR[j][3]  write[#write].value=XGNR[j][1]  write[#write].freeze=XGNR[j][4]  write[#write].name=XGNR[j][5] or nil  if write[#write].freeze==true then gg.addListItems({[1]=write[#write]}) else gg.setValues({[1]=write[#write]})end if XGNR[j][6]==true then gg.addListItems({[1]=write[#write]})end end end end if BCNR then local bc={}for j=1,#data do for i=1,#BCNR do bc[#bc+1]={}bc[#bc].address=data[j]+(BCNR[i][1]-base)bc[#bc].flags=BCNR[i][2]bc[#bc].name=BCNR[i][3]end end gg.addListItems(bc)end gg.toast("功能名:"..(SSYR.name or "无").."\n".."[修改成功]")gg.loadResults(recover)end    function so(a,b,c) local cSY=gg.getRanges() gg.setVisible(false) lde.srg(a[3]) lde.crs() lde.sbr(a[2],a[4]) local js=gg.getResultCount() local count=lde.gre(js) lde.crs() if #count~=0 then local lode,lope,lobe={},{},{} for p=1,#b do lode[p]={} for i=1,#count do lode[p][i]={} lode[p][i].address=count[i].address+b[p][2] if not b[p][3]then b[p][3]=a[4]end lode[p][i].flags=b[p][3]end lode[p]=gg.getValues(lode[p]) db=bv(b[p][1],"~") if not db[2]then db[2]=db[1]end for i=1,#lode[p] do if tonumber(lode[p][i].value)>=tonumber(db[1]) and tonumber(lode[p][i].value)<=tonumber(db[2]) then lope[#lope+1]={} lope[#lope]=count[i] end end if #lope==0 then lde.srg(cSY)if p>11 then p=11 end return "开启失败" end count=lope lope={}end for i=1,#c do for n=1,#count do lope[#lope+1]={} lope[#lope].address=count[n].address+c[i][2] if not c[i][3]then c[i][3]=a[4]end lope[#lope].flags=c[i][3] if c[i][1] then lope[#lope].value=c[i][1] else lope[#lope].value=gg.getValues(lope)[#lope].value end if c[i][4] then lobe[#lobe+1]={} lobe[#lobe]=lope[#lope] table.remove(lope,#lope) end if c[i][4]==1 then lobe[#lobe].freeze=true elseif c[i][4]==2 then lobe[#lobe].freeze=false end if c[i][5] then lobe[#lobe].name=c[i][5] end end end gg.setValues(lope) gg.addListItems(lobe) lde.srg(cSY) return a[1].."开启成功" else lde.srg(cSY) return a[1].."开启失败!!!" end end
local zb={}local getsl=gg.getResultCount function bgtss(text,flag,Ran) gg.clearResults() gg.setRanges(Ran) gg.searchNumber(text,flag) end function bgtgs(num,flag) if gg.getResultCount()>0 then gg.refineNumber(num,flag) end end function readValue(addr, type)local t = {}t[1] = {}t[1].address = addr t[1].flags = type return gg.getValues(t)[1].value end function QC(qmnb,qmxg)gg.setVisible(false)gg.clearResults()qmnbv=qmnb[3]["value"]or qmnb[3][1]qmnbt=qmnb[3]["type"]or qmnb[3][2]qmnbn=qmnb[2]["name"]or qmnb[2][1]gg.setRanges(qmnb[1]["memory"]or qmnb[1][1])gg.searchNumber(qmnbv,qmnbt)gg.refineNumber(qmnbv,qmnbt)sz=gg.getResultCount()if sz==0 then gg.toast(qmnbn.."开启失败，请尝试重启游戏")else sl=gg.getResults(999999)for i=1,sz do pdsz=true for v=4,#qmnb do if pdsz==true then pysz={{}}pysz[1].address=sl[i].address+(qmnb[v]["offset"]or qmnb[v][2])pysz[1].flags=qmnb[v]["type"]or qmnb[v][3]szpy=gg.getValues(pysz)tzszpd=tostring(qmnb[v]["lv"]or qmnb[v][1]):gsub(",","")pyszpd=tostring(szpy[1].value):gsub(",","")if tzszpd==pyszpd then pdjg=true pdsz=true else pdjg=false pdsz=false end end end if pdjg==true then szpy=sl[i].address for x=1,#qmxg do xgsz=qmxg[x]["value"]or qmxg[x][1]xgpy=szpy+(qmxg[x]["offset"]or qmxg[x][2])xglx=qmxg[x]["type"]or qmxg[x][3]xgdj=qmxg[x]["freeze"]or qmxg[x][4]xg={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xg[1].freeze=xgdj gg.addListItems(xg)else gg.setValues(xg)end end xgjg=true end end if xgjg==true then gg.toast(qmnbn.."开启成功\n          共注入 1 条数据")else gg.toast(qmnbn.."开启失败，请尝试重启游戏")end end end
function WX(qmnb,qmxg)gg.setVisible(false)gg.clearResults()qmnbv=qmnb[3]["value"]or qmnb[3][1]qmnbt=qmnb[3]["type"]or qmnb[3][2]qmnbn=qmnb[2]["name"]or qmnb[2][1]gg.setRanges(qmnb[1]["memory"]or qmnb[1][1])gg.searchNumber(qmnbv,qmnbt)gg.refineNumber(qmnbv,qmnbt)sz=gg.getResultCount()if sz==0 then gg.toast(qmnbn.."开启失败，请尝试更换房间")else sl=gg.getResults(999999)for i=1,sz do pdsz=true for v=4,#qmnb do if pdsz==true then pysz={{}}pysz[1].address=sl[i].address+(qmnb[v]["offset"]or qmnb[v][2])pysz[1].flags=qmnb[v]["type"]or qmnb[v][3]szpy=gg.getValues(pysz)tzszpd=tostring(qmnb[v]["lv"]or qmnb[v][1]):gsub(",","")pyszpd=tostring(szpy[1].value):gsub(",","")if tzszpd==pyszpd then pdjg=true pdsz=true else pdjg=false pdsz=false end end end if pdjg==true then szpy=sl[i].address for x=1,#qmxg do xgsz=qmxg[x]["value"]or qmxg[x][1]xgpy=szpy+(qmxg[x]["offset"]or qmxg[x][2])xglx=qmxg[x]["type"]or qmxg[x][3]xgdj=qmxg[x]["freeze"]or qmxg[x][4]xg={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xg[1].freeze=xgdj gg.addListItems(xg)else gg.setValues(xg)end end xgjg=true end end if xgjg==true then gg.toast(qmnbn.."开启成功，请切换一下物品\n 共注入 1 条冻结数据")else gg.toast(qmnbn.."开启失败，请尝试更换房间")end end end
 function XE(qmnb,qmxg)gg.setVisible(false)gg.clearResults()qmnbv=qmnb[3]["value"]or qmnb[3][1]qmnbt=qmnb[3]["type"]or qmnb[3][2]qmnbn=qmnb[2]["name"]or qmnb[2][1]gg.setRanges(qmnb[1]["memory"]or qmnb[1][1])gg.searchNumber(qmnbv,qmnbt)gg.refineNumber(qmnbv,qmnbt)sz=gg.getResultCount()if sz==0 then gg.toast(qmnbn.."开启失败，请尝试重启游戏")else sl=gg.getResults(999999)for i=1,sz do pdsz=true for v=4,#qmnb do if pdsz==true then pysz={{}}pysz[1].address=sl[i].address+(qmnb[v]["offset"]or qmnb[v][2])pysz[1].flags=qmnb[v]["type"]or qmnb[v][3]szpy=gg.getValues(pysz)tzszpd=tostring(qmnb[v]["lv"]or qmnb[v][1]):gsub(",","")pyszpd=tostring(szpy[1].value):gsub(",","")if tzszpd==pyszpd then pdjg=true pdsz=true else pdjg=false pdsz=false end end end if pdjg==true then szpy=sl[i].address for x=1,#qmxg do xgsz=qmxg[x]["value"]or qmxg[x][1]xgpy=szpy+(qmxg[x]["offset"]or qmxg[x][2])xglx=qmxg[x]["type"]or qmxg[x][3]xgdj=qmxg[x]["freeze"]or qmxg[x][4]xg={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xg[1].freeze=xgdj gg.addListItems(xg)else gg.setValues(xg)end end xgjg=true end end if xgjg==true then gg.toast(qmnbn.."开启成功\n 共注入 1 条数据")else gg.toast(qmnbn.."开启失败，请尝试重启游戏")end end end 
 function CA(qmnb,qmxg)gg.setVisible(false)gg.clearResults()qmnbv=qmnb[3]["value"]or qmnb[3][1]qmnbt=qmnb[3]["type"]or qmnb[3][2]qmnbn=qmnb[2]["name"]or qmnb[2][1]gg.setRanges(qmnb[1]["memory"]or qmnb[1][1])gg.searchNumber(qmnbv,qmnbt)gg.refineNumber(qmnbv,qmnbt)sz=gg.getResultCount()if sz==0 then gg.toast(qmnbn.."开启失败，请尝试重启游戏")else sl=gg.getResults(999999)for i=1,sz do pdsz=true for v=4,#qmnb do if pdsz==true then pysz={{}}pysz[1].address=sl[i].address+(qmnb[v]["offset"]or qmnb[v][2])pysz[1].flags=qmnb[v]["type"]or qmnb[v][3]szpy=gg.getValues(pysz)tzszpd=tostring(qmnb[v]["lv"]or qmnb[v][1]):gsub(",","")pyszpd=tostring(szpy[1].value):gsub(",","")if tzszpd==pyszpd then pdjg=true pdsz=true else pdjg=false pdsz=false end end end if pdjg==true then szpy=sl[i].address for x=1,#qmxg do xgsz=qmxg[x]["value"]or qmxg[x][1]xgpy=szpy+(qmxg[x]["offset"]or qmxg[x][2])xglx=qmxg[x]["type"]or qmxg[x][3]xgdj=qmxg[x]["freeze"]or qmxg[x][4]xg={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xg[1].freeze=xgdj gg.addListItems(xg)else gg.setValues(xg)end end xgjg=true end end if xgjg==true then gg.toast(qmnbn.."开启成功\n 共注入 1 条数据")else gg.toast(qmnbn.."开启失败，请尝试重启游戏")end end end function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]['offset'] xglx = qmxg[x]['type'] xgsz = qmxg[x]['value'] xgdj = qmxg[x]['freeze'] if xgdj == nil or xgdj == '' then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]['memory']) gg.searchNumber(qmnb[3]['value'], qmnb[3]['type']) if gg.getResultCount() == 0 then gg.toast('ༀid'..qmnb[2]['name'] .. '开启失败ༀ') else gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) if gg.getResultCount() == 0 then gg.toast('ༀid'..qmnb[2]['name'] .. '情书丢失ༀ') else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]['offset'] pysz[1].flags = qmnb[v]['type'] szpy = gg.getValues(pysz) pdpd = qmnb[v]['lv'] .. ';' .. szpy[1].value szpd = split(pdpd, ';') tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast('\n✔️id:'..qmnb[2]['name']..'成功📝共修改' .. xgsl .. '封情书') else gg.toast('ༀid'..qmnb[2]['name'] .. '开启失败，情书不见了ༀ') end end end end --[[配置1]]function js(address,flags,value) local jz={} jz[1]={} jz[1].address=address jz[1].flags=flags jz[1].value=value gg.setValues(jz) end --[[配置2]]function jz(py,a,xgsz) flags=a value=xgsz so=gg.getRangesList(''..name..'')[1].start js(so+py,a,xgsz) end function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find (szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len (szFullString)) break end nSplitArray[nSplitIndex] = string.sub (szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len (szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "丢失情书") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "成功接受情书" .. xgsl .. "封") else gg.toast(qmnb[2]["name"] .. "爱失败了") end end end end
function Ax(qmnb,qmxg)gg.setVisible(false)gg.clearResults()qmnbv=qmnb[3]["value"]or qmnb[3][1]qmnbt=qmnb[3]["type"]or qmnb[3][2]qmnbn=qmnb[2]["name"]or qmnb[2][1]gg.setRanges(qmnb[1]["memory"]or qmnb[1][1])gg.searchNumber(qmnbv,qmnbt)gg.refineNumber(qmnbv,qmnbt)sz=gg.getResultCount()if sz==0 then gg.toast(qmnbn.."开启成功，注入3条数据!")else sl=gg.getResults(999999)for i=1,sz do pdsz=true for v=4,#qmnb do if pdsz==true then pysz={{}}pysz[1].address=sl[i].address+(qmnb[v]["offset"]or qmnb[v][2])pysz[1].flags=qmnb[v]["type"]or qmnb[v][3]szpy=gg.getValues(pysz)tzszpd=tostring(qmnb[v]["lv"]or qmnb[v][1]):gsub(",","")pyszpd=tostring(szpy[1].value):gsub(",","")if tzszpd==pyszpd then pdjg=true pdsz=true else pdjg=false pdsz=false end end end if pdjg==true then szpy=sl[i].address for x=1,#qmxg do xgsz=qmxg[x]["value"]or qmxg[x][1]xgpy=szpy+(qmxg[x]["offset"]or qmxg[x][2])xglx=qmxg[x]["type"]or qmxg[x][3]xgdj=qmxg[x]["freeze"]or qmxg[x][4]xg={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xg[1].freeze=xgdj gg.addListItems(xg)else gg.setValues(xg)end end xgjg=true end end if xgjg==true then gg.toast(qmnbn.."开启成功\n          共注入 3 条数据")else gg.toast(qmnbn.."开启失败，共注入3条数据!8")end end end
function Address(adds,offset,chang,value,flags,freeze,save,name)local add=gg.getRangesList(adds)[1]["start"]+offset local data={{["address"]=add,["value"]=value,["flags"]=flags,["freeze"]=freeze}}if chang==true then gg.setValues(data)end if freeze or save ==true then gg.addListItems(data)end if name~="false" then gg.toast("🛡["..name.."]已注入🛡")end end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]['offset'] xglx = qmxg[x]['type'] xgsz = qmxg[x]['value'] xgdj = qmxg[x]['freeze'] if xgdj == nil or xgdj == '' then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]['memory']) gg.searchNumber(qmnb[3]['value'], qmnb[3]['type']) if gg.getResultCount() == 0 then gg.toast('id'..qmnb[2]['name'] .. '开启失败')gg.playMusic("https://fanyi.baidu.com/gettts?lan=zh&text="..qmnb[2]['name'].."开启失败&spd=5&source=wise") else gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) if gg.getResultCount() == 0 then gg.toast(''..qmnb[2]['name'] .. '开启失败')gg.playMusic("https://fanyi.baidu.com/gettts?lan=zh&text="..qmnb[2]['name'].."开启失败&spd=5&source=wise") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]['offset'] pysz[1].flags = qmnb[v]['type'] szpy = gg.getValues(pysz) pdpd = qmnb[v]['lv'] .. ';' .. szpy[1].value szpd = split(pdpd, ';') tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast('\n'..qmnb[2]['name']..'开启成功,共注入' .. xgsl .. '条数据') gg.playMusic("https://fanyi.baidu.com/gettts?lan=zh&text="..qmnb[2]['name'].."开启成功&spd=5&source=wise")else gg.toast(''..qmnb[2]['name'] .. '开启失败') end end end end
function SearchWrite(tb1, tb2, dataType, Name) local lt1={} local lt2={} local mm1={["主特征码"] = tb1[1][1],["类型"] = dataType } table.insert(lt1,1,mm1)   for i=2 , #tb1 do     local mm2={["副特征码"] = tb1[i][1],["偏移"] = tb1[i][2]}     table.insert(lt1,i,mm2)   end   for i=1 , #tb2 do     if tb2[i][2]~=nil then       local mm3={["修改"] = tb2[i][1],["偏移"] = tb2[i][2]}       table.insert(lt2,i,mm3)      else       local mm3={["修改"] = false,["偏移"] = tb2[i][1]}       table.insert(lt2,i,mm3)     end   end   LongTao(lt1, lt2 ) end  function LongTao(Search, Write)   gg.clearResults()   gg.setVisible(false)   lx=Search[1]["类型"]   gg.searchNumber(Search[1]["主特征码"], lx)   local count = gg.getResultCount()   local result = gg.getResults(count)   gg.clearResults()   local data = {}   if (count > 0) then     for i, v in ipairs(result) do       v.isUseful = true     end     for k=2, #Search do       local tmp = {}       local num = Search[k]["副特征码"]       if Search[k]["类型"]~= nil then            lx =Search[k]["类型"]          else            lx = Search[1]["类型"]         end       for i, v in ipairs(result) do         tmp[#tmp+1] = {}         tmp[#tmp].address = v.address + Search[k]["偏移"]         tmp[#tmp].flags = lx       end       tmp = gg.getValues(tmp)       for i, v in ipairs(tmp) do         if ( tostring(v.value) ~= tostring(num) ) then           result[i].isUseful = false         end       end     end     for i, v in ipairs(result) do       if (v.isUseful) then         data[#data+1] = v.address       end     end     if (#data > 0) then       local t = {}       for i=1, #data do         for k, w in ipairs(Write) do           if w["类型"] ~= nil then              lx = w["类型"]            else              lx = Search[1]["类型"]           end           t[#t+1] = {}           t[#t].address = data[i] + w["偏移"]           t[#t].flags = lx           if (w["修改"]~=nil) and (w["修改"]~=false) then             t[#t].value = w["修改"]             gg.setValues(t)             if (w["冻结"] == true) then               local item = {}               item[#item+1] = t[#t]               item[#item].freeze = w["冻结"]               gg.addListItems(item)             end           end         end       end       gg.loadResults(t)          else       gg.toast("未定位到数据！")       return false     end    else     gg.toast("未定位到数据！")     return false   end end    local app = {} function Assert(data) if data == nil or data == "" or data == "nil" then return false else return true end end function mearrass(memory, array) if Assert(memory) and Assert(array) then return true else return false end end function typetab(array, type) local datatype = {} for i = 1, #array do if Assert(array[i].type) then table.insert(datatype, i, array[i].type) else if Assert(type) then table.insert(datatype, i, type) else return false end end end return true, datatype end function app.memorysearch(memory, array, type) gg.setVisible(false) local isok = mearrass(memory, array) if isok then local isok, datatype = typetab(array, type) if isok then if Assert(array[1].hv) then gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv .. "~" .. array[1].hv, datatype[1]) else gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv, datatype[1]) end if gg.getResultCount() == 0 then return false else local tab = {} local data = gg.getResults(gg.getResultCount()) gg.clearResults() for i = 1, #data do data[i].isok = true end for i = 2, #array do local t = {} local offset = array[i].offset for x = 1, #data do t[#t + 1] = {} t[#t].address = data[x].address + offset t[#t].flags = datatype[i] end local t = gg.getValues(t) for z = 1, #t do if Assert(array[i].hv) then if tonumber(t[z].value) < tonumber(array[i].lv) or tonumber(t[z].value) > tonumber(array[i].hv) then  data[z].isok = false end else if tostring(t[z].value) ~= tostring(array[i].lv) then data[z].isok = false end end end end for i = 1, #data do if data[i].isok then tab[#tab + 1] = data[i].address end end if #tab > 0 then return true, tab else return false end end else print("type参数错误") gg.toast("type参数错误") os.exit() end else print("memory or array参数错误") gg.toast("memory or array参数错误") os.exit() end end function app.memoryread(addr, type) local t = {} t[1] = {} t[1].address = addr t[1].flags = type if #t > 0 then return true, gg.getValues(t)[1].value else return false end end function app.memorywrite(addr, type, value, freeze) local t = {} t[1] = {} t[1].address = addr t[1].flags = type t[1].value = value if #t > 0 then if Assert(freeze) then t[1].freeze = freeze return gg.addListItems(t) else return gg.setValues(t) end else return false end end
function Xilst() local iihj = ilht+1 gg.setRanges(4) local dataType = 4 local tb1 = {{ilht, 0},{iihj, 0x400},} local tb2 = {{  0 }, } SearchWrite(tb1, tb2, dataType) sl=gg.getResultCount() jg=gg.getResults(100) for i = 1, sl do dzy=jg[i].address gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = ilht}}) end end
function SearchWrite(tb1, tb2, dataType, Name) local lt1={} local lt2={} local mm1={["主特征码"] = tb1[1][1],["类型"] = dataType } table.insert(lt1,1,mm1)   for i=2 , #tb1 do     local mm2={["副特征码"] = tb1[i][1],["偏移"] = tb1[i][2]}     table.insert(lt1,i,mm2)   end   for i=1 , #tb2 do     if tb2[i][2]~=nil then       local mm3={["修改"] = tb2[i][1],["偏移"] = tb2[i][2]}       table.insert(lt2,i,mm3)      else       local mm3={["修改"] = false,["偏移"] = tb2[i][1]}       table.insert(lt2,i,mm3)     end   end   LongTao(lt1, lt2 ) end  function LongTao(Search, Write)   gg.clearResults()   gg.setVisible(false)   lx=Search[1]["类型"]   gg.searchNumber(Search[1]["主特征码"], lx)   local count = gg.getResultCount()   local result = gg.getResults(count)   gg.clearResults()   local data = {}   if (count > 0) then     for i, v in ipairs(result) do       v.isUseful = true     end     for k=2, #Search do       local tmp = {}       local num = Search[k]["副特征码"]       if Search[k]["类型"]~= nil then            lx =Search[k]["类型"]          else            lx = Search[1]["类型"]         end       for i, v in ipairs(result) do         tmp[#tmp+1] = {}         tmp[#tmp].address = v.address + Search[k]["偏移"]         tmp[#tmp].flags = lx       end       tmp = gg.getValues(tmp)       for i, v in ipairs(tmp) do         if ( tostring(v.value) ~= tostring(num) ) then           result[i].isUseful = false         end       end     end     for i, v in ipairs(result) do       if (v.isUseful) then         data[#data+1] = v.address       end     end     if (#data > 0) then       local t = {}       for i=1, #data do         for k, w in ipairs(Write) do           if w["类型"] ~= nil then              lx = w["类型"]            else              lx = Search[1]["类型"]           end           t[#t+1] = {}           t[#t].address = data[i] + w["偏移"]           t[#t].flags = lx           if (w["修改"]~=nil) and (w["修改"]~=false) then             t[#t].value = w["修改"]             gg.setValues(t)             if (w["冻结"] == true) then               local item = {}               item[#item+1] = t[#t]               item[#item].freeze = w["冻结"]               gg.addListItems(item)             end           end         end       end       gg.loadResults(t)           else       gg.toast("未定位到数据！")       return false     end    else     gg.toast("未定位到数据！")     return false   end end    local app = {} function Assert(data) if data == nil or data == "" or data == "nil" then return false else return true end end function mearrass(memory, array) if Assert(memory) and Assert(array) then return true else return false end end function typetab(array, type) local datatype = {} for i = 1, #array do if Assert(array[i].type) then table.insert(datatype, i, array[i].type) else if Assert(type) then table.insert(datatype, i, type) else return false end end end return true, datatype end function app.memorysearch(memory, array, type) gg.setVisible(false) local isok = mearrass(memory, array) if isok then local isok, datatype = typetab(array, type) if isok then if Assert(array[1].hv) then gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv .. "~" .. array[1].hv, datatype[1]) else gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv, datatype[1]) end if gg.getResultCount() == 0 then return false else local tab = {} local data = gg.getResults(gg.getResultCount()) gg.clearResults() for i = 1, #data do data[i].isok = true end for i = 2, #array do local t = {} local offset = array[i].offset for x = 1, #data do t[#t + 1] = {} t[#t].address = data[x].address + offset t[#t].flags = datatype[i] end local t = gg.getValues(t) for z = 1, #t do if Assert(array[i].hv) then if tonumber(t[z].value) < tonumber(array[i].lv) or tonumber(t[z].value) > tonumber(array[i].hv) then  data[z].isok = false end else if tostring(t[z].value) ~= tostring(array[i].lv) then data[z].isok = false end end end end for i = 1, #data do if data[i].isok then tab[#tab + 1] = data[i].address end end if #tab > 0 then return true, tab else return false end end else print("type参数错误") gg.toast("type参数错误") os.exit() end else print("memory or array参数错误") gg.toast("memory or array参数错误") os.exit() end end function app.memoryread(addr, type) local t = {} t[1] = {} t[1].address = addr t[1].flags = type if #t > 0 then return true, gg.getValues(t)[1].value else return false end end function app.memorywrite(addr, type, value, freeze) local t = {} t[1] = {} t[1].address = addr t[1].flags = type t[1].value = value if #t > 0 then if Assert(freeze) then t[1].freeze = freeze return gg.addListItems(t) else return gg.setValues(t) end else return false end end
function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
function PS() end function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end  
function SearchWrite(tb1, tb2, dataType, Name) local lt1={} local lt2={} local mm1={["主特征码"] = tb1[1][1],["类型"] = dataType } table.insert(lt1,1,mm1)   for i=2 , #tb1 do     local mm2={["副特征码"] = tb1[i][1],["偏移"] = tb1[i][2]}     table.insert(lt1,i,mm2)   end   for i=1 , #tb2 do     if tb2[i][2]~=nil then       local mm3={["修改"] = tb2[i][1],["偏移"] = tb2[i][2]}       table.insert(lt2,i,mm3)      else       local mm3={["修改"] = false,["偏移"] = tb2[i][1]}       table.insert(lt2,i,mm3)     end   end   LongTao(lt1, lt2 ) end  function LongTao(Search, Write)   gg.clearResults()   gg.setVisible(false)   lx=Search[1]["类型"]   gg.searchNumber(Search[1]["主特征码"], lx)   local count = gg.getResultCount()   local result = gg.getResults(count)   gg.clearResults()   local data = {}   if (count > 0) then     gg.toast("共搜索 "..count.." 条数据")     for i, v in ipairs(result) do       v.isUseful = true     end     for k=2, #Search do       local tmp = {}       local num = Search[k]["副特征码"]       if Search[k]["类型"]~= nil then            lx =Search[k]["类型"]          else            lx = Search[1]["类型"]         end       for i, v in ipairs(result) do         tmp[#tmp+1] = {}         tmp[#tmp].address = v.address + Search[k]["偏移"]         tmp[#tmp].flags = lx       end       tmp = gg.getValues(tmp)       for i, v in ipairs(tmp) do         if ( tostring(v.value) ~= tostring(num) ) then           result[i].isUseful = false         end       end     end     for i, v in ipairs(result) do       if (v.isUseful) then         data[#data+1] = v.address       end     end     if (#data > 0) then       local t = {}       for i=1, #data do         for k, w in ipairs(Write) do           if w["类型"] ~= nil then              lx = w["类型"]            else              lx = Search[1]["类型"]           end           t[#t+1] = {}           t[#t].address = data[i] + w["偏移"]           t[#t].flags = lx           if (w["修改"]~=nil) and (w["修改"]~=false) then             t[#t].value = w["修改"]             gg.setValues(t)             if (w["冻结"] == true) then               local item = {}               item[#item+1] = t[#t]               item[#item].freeze = w["冻结"]               gg.addListItems(item)             end           end         end       end       gg.loadResults(t)       gg.toast("共偏移η"..#t.." 条数据ΔΘ")      else       gg.toast("未定位到数据！")       return false     end    else     gg.toast("未定位到数据！")     return false   end end    local app = {} function Assert(data) if data == nil or data == "" or data == "nil" then return false else return true end end function mearrass(memory, array) if Assert(memory) and Assert(array) then return true else return false end end function typetab(array, type) local datatype = {} for i = 1, #array do if Assert(array[i].type) then table.insert(datatype, i, array[i].type) else if Assert(type) then table.insert(datatype, i, type) else return false end end end return true, datatype end function app.memorysearch(memory, array, type) gg.setVisible(false) local isok = mearrass(memory, array) if isok then local isok, datatype = typetab(array, type) if isok then if Assert(array[1].hv) then gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv .. "~" .. array[1].hv, datatype[1]) else gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv, datatype[1]) end if gg.getResultCount() == 0 then return false else local tab = {} local data = gg.getResults(gg.getResultCount()) gg.clearResults() for i = 1, #data do data[i].isok = true end for i = 2, #array do local t = {} local offset = array[i].offset for x = 1, #data do t[#t + 1] = {} t[#t].address = data[x].address + offset t[#t].flags = datatype[i] end local t = gg.getValues(t) for z = 1, #t do if Assert(array[i].hv) then if tonumber(t[z].value) < tonumber(array[i].lv) or tonumber(t[z].value) > tonumber(array[i].hv) then  data[z].isok = false end else if tostring(t[z].value) ~= tostring(array[i].lv) then data[z].isok = false end end end end for i = 1, #data do if data[i].isok then tab[#tab + 1] = data[i].address end end if #tab > 0 then return true, tab else return false end end else print("type参数错误") gg.toast("type参数错误") os.exit() end else print("memory or array参数错误") gg.toast("memory or array参数错误") os.exit() end end function app.memoryread(addr, type) local t = {} t[1] = {} t[1].address = addr t[1].flags = type if #t > 0 then return true, gg.getValues(t)[1].value else return false end end function app.memorywrite(addr, type, value, freeze) local t = {} t[1] = {} t[1].address = addr t[1].flags = type t[1].value = value if #t > 0 then if Assert(freeze) then t[1].freeze = freeze return gg.addListItems(t) else return gg.setValues(t) end else return false end end
function S_Pointer(t_So, t_Offset, _bit)local function getRanges() local ranges = {} local t = gg.getRangesList('^/data/*.so*$') for i, v in pairs(t) do if v.type:sub(2, 2) == 'w' then table.insert(ranges, v) end end return ranges end local function Get_Address(N_So, Offset, ti_bit) local ti = gg.getTargetInfo() local S_list = getRanges() local t = {} local _t local _S = nil if ti_bit then _t = 32 else _t = 4 end for i in pairs(S_list) do local _N = S_list[i].internalName:gsub('^.*/', '') if N_So[1] == _N and N_So[2] == S_list[i].state then _S = S_list[i] break end end if _S then t[#t + 1] = {} t[#t].address = _S.start + Offset[1] t[#t].flags = _t if #Offset ~= 1 then for i = 2, #Offset do local S = gg.getValues(t) t = {} for _ in pairs(S) do if not ti.x64 then S[_].value = S[_].value & 0xFFFFFFFF end t[#t + 1] = {} t[#t].address = S[_].value + Offset[i] t[#t].flags = _t end end end _S = t[#t].address end return _S end local _A = string.format('0x%X', Get_Address(t_So, t_Offset, _bit)) return _A end

string.toMusic("AR只重注于娱乐，厌恶者绕路")
function XGSG()
UI = "XGSG"
local menu = gg.multiChoice({
"️💙突刺长枪改远古巨人💙",--1
"️💙短剑改黑龙💙",--2
"️💙一键改虚空祭台💙",--3
"️💙龙骨弓改黑龙火球💙",--4
"️💙吹箭筒改破坏方块💙",--5
"️💙石矛改虚空幻影-猛💙",--6
"️💙木棒改水💙",--7
"️💙碰碰锤改剧毒💙",--8
"️💙钨金铲改流沙💙",--9
"️💙钨金镐改岩浆💙",--10
"️💙钨金耙改蜂蜜💙",--11
"️💙星团云瓶改仙云棒💙",--12
"️💙秘银镐改污染核心💙",--13
"️💙彩蛋改长方体💙",--14
"️💙蜂刺飞镖改沙虫💙",--15
"️💙脉冲箭改羽蛇神💙",--16
"️💙钩爪改虚空幻影-讯💙",--17
"️💙喷射塞子改远古巨像💙",--18
"️💙收割者改蓝色炸弹💙",--19
"️💙钛金战锤改红色炸弹💙",--20
"️💙短弓改白色炸弹💙",--21
"️💙小彩蛋改球体💙",--22
"️💙电 路 炸 图💙",--23
"️💙牛奶改传送球💙",--24
"️💙夜视孢子改机械霸王龙boss💙",--25
}, nil, "修改物品")
if menu then
for i in pairs(menu) do
_ENV[({"zt1","zt2","zt3","zt4","zt5","zt6","zt7","zt8","zt9","zt10","zt11","zt12","zt13","zt14","zt15","zt16","zt17","zt18","zt19","zt20","zt21","zt22","zt23","zt24","zt25",})[i]]()
  end
 end 
end

function zt1()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("12004", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("13514", gg.TYPE_DWORD)
  gg.toast("突刺长枪改远古巨人开启成功")
  gg.clearResults()
  toMusic('开启成功')
end


function zt2()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("12003", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("13502", gg.TYPE_DWORD)
  gg.toast("短剑改黑龙开启成功")
  gg.clearResults()
  toMusic('开启成功')
end

function zt3()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("11823",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("11823", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("140",gg.TYPE_DWORD)
gg.toast("召唤虚空幻影第1步开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("12011",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("12011", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("141",gg.TYPE_DWORD)
gg.toast("召唤虚空幻影第2步开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("11058",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("11058", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("142",gg.TYPE_DWORD)
gg.toast("召唤虚空幻影第3步开启成功,请在工具栏下滑找到即可")
toMusic('开启成功')
end




function zt4()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("12056", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("15054", gg.TYPE_DWORD)
  gg.toast("龙骨弓改黑龙火球开启成功")
  gg.clearResults()
  toMusic('开启成功')
end



function zt5()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("12288", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("11551", gg.TYPE_DWORD)
  gg.toast("吹箭筒改破坏方块开启成功")
  gg.clearResults()
  toMusic('开启成功')
end




function zt6()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("12002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("13516", gg.TYPE_DWORD)
  gg.toast("石矛改虚空幻影-猛开启成功")
  gg.clearResults()
  toMusic('开启成功')
end



function zt7()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("12001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("4", gg.TYPE_DWORD)
  gg.toast("木棒改水开启成功")
  gg.clearResults()
  toMusic('开启成功')
end



function zt8()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("11230", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("18", gg.TYPE_DWORD)
  gg.toast("碰碰锤改剧毒开启成功")
  gg.clearResults()
  toMusic('开启成功')
end



function zt9()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("11025", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("14", gg.TYPE_DWORD)
  gg.toast("钨金铲改流沙开启成功")
  gg.clearResults()
  toMusic('开启成功')
end



function zt10()  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("11015", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("6", gg.TYPE_DWORD)
  gg.toast("钨金镐改岩浆开启成功")
  gg.clearResults()
  toMusic('开启成功')
end



function zt11()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("11035", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("12", gg.TYPE_DWORD)
  gg.toast("钨金耙改蜂蜜开启成功")
  gg.clearResults()
  toMusic('开启成功')
end



function zt12()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("11095", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("11063", gg.TYPE_DWORD)
  gg.toast("星团云瓶改仙云棒开启成功")
  gg.clearResults()
  toMusic('开启成功')
end



function zt13()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("11013", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("1049", gg.TYPE_DWORD)
  gg.toast("秘银镐改污染核心开启成功")
  gg.clearResults()
  toMusic('开启成功')
end



function zt14()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("12248", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("15525", gg.TYPE_DWORD)
  gg.toast("彩蛋改长方体开启成功")
  gg.clearResults()
  toMusic('开启成功')
end



function zt15()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("12289", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("13825", gg.TYPE_DWORD)
  gg.toast("蜂刺飞镖改沙虫开启成功")
  gg.clearResults()
  toMusic('开启成功')
end



function zt16()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("12292", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("13878", gg.TYPE_DWORD)
  gg.toast("脉冲箭改羽蛇神开启成功")
  gg.clearResults()
  toMusic('开启成功')
end



function zt17()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("12006", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("13515", gg.TYPE_DWORD)
  gg.toast("钩爪改虚空幻影-讯开启成功")
  gg.clearResults()
  toMusic('开启成功')
end



function zt18()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("12008", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("13510", gg.TYPE_DWORD)
  gg.toast("喷射塞子改远古巨像开启成功")
  gg.clearResults()
  toMusic('开启成功')
end



function zt19()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("12009", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("15064", gg.TYPE_DWORD)
  gg.toast("收割者改蓝色炸弹开启成功")
  gg.clearResults()
  toMusic('开启成功')
end



function zt20()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("12010", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("15065", gg.TYPE_DWORD)
  gg.toast("钛金战锤改红色炸弹开启成功")
  gg.clearResults()
  toMusic('开启成功')
end



function zt21()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("12050", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("15518", gg.TYPE_DWORD)
  gg.toast("短弓改白色炸弹开启成功")
  gg.clearResults()
  toMusic('开启成功')
end


function zt22()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("12240", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("15524", gg.TYPE_DWORD)
  gg.toast("小彩蛋改球体开启成功")
  gg.clearResults()
  toMusic('开启成功')
  end
  
  

function zt23()  
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("12569", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("706", gg.TYPE_DWORD)
  gg.toast("电路炸图第1步开启成功")
  gg.clearResults()
    gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("12570", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("701", gg.TYPE_DWORD)
  gg.toast("电路炸图第2步开启成功")
  gg.clearResults()
    gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("12571", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("720", gg.TYPE_DWORD)
gg.toast("电路炸图第3步开启成功,请在工具栏下滑找到即可")
  gg.clearResults()
  toMusic('开启成功')
end



function zt24()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("12509", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("10123", gg.TYPE_DWORD)
  gg.toast("牛奶改传送球开启成功")
  gg.clearResults()
  toMusic('开启成功')
end



function zt25()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("12498", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("13197", gg.TYPE_DWORD)
  gg.toast("夜视孢子改机械霸王龙boss开启成功")
  gg.clearResults()
  toMusic('开启成功')
end
function dm()
UI = "dm"
local menu = gg.multiChoice({
"物品代码",
"生物代码",
"皮肤代码",
"定制代码",
"坐骑代码",
"炸图代码",
}, nil, "代码查询")
if menu then
for i in pairs(menu) do
_ENV[({"rwdm","hbdm","bsdm","xkdm","bwdm","djdm",})[i]]()
  end
 end 
end

function rwdm()
local list = {
 "1 地心基石",
  "2 功能方块",
  "3 静态水",
  "4 动态水",
  "5 静态岩浆",
  "6 动态岩浆",
  "7 传送光效",
  "8 雕纹砖块",
  "9 加速移动方块",
  "10 星能块",
  "11 静态蜂蜜",
  "12 动态蜂蜜",
  "13 静态流沙",
  "14 动态流沙",
  "15 咒岩",
  "16 咒岩-激活",
  "17 静态剧毒",
  "18 动态剧毒",
  "19 风蚀岩",
  "20 外星空气",
  "21 游戏版本过低",
  "22 游戏版本过低",
  "23 深积岩",
  "24 锰结核矿",
  "25 礁石",
  "26 漂流瓶",
  "27 远方的漂流瓶",
  "28 小玻璃瓶（方块）",
  "29 黄沙",
  "30 游戏版本过低",
  "100 草块",
  "101 土块",
  "102 耕地",
  "103 土坑",
  "104 岩石",
  "105 青石",
  "106 细黄沙",
  "107 碎石堆",
  "108 素纹黄砖",
  "109 砂土",
  "110 散落的石块",
  "111 游戏版本过低",
  "112 黑晶石",
  "113 脆冰",
  "114 淤泥",
  "115 积雪",
  "116 萌眼星石块",
  "117 萌眼星草块",
  "118 萌眼星云团",
  "119 旱土",
  "120 游戏版本过低",
  "121 游戏版本过低",
  "122 雪堆",
  "123 冰块",
  "124 硫黄岩",
  "125 灼沙",
  "126 魔古岩",
  "127 泡沫块",
  "128 红沙",
  "129 厚实的雪",
  "130 厚实的雪堆",
  "131 坚固的冰",
  "132 硫黄晶砂",
  "133 空的蜂巢",
  "134 满的蜂巢",
  "135 神秘图腾-大地",
  "136 神秘图腾-天空",
  "137 萌眼星土坑",
  "138 污染方块",
  "139 BOSS战使用方块",
  "140 生命石座",
  "141 勇气石座",
  "142 智慧石座",
  "143 破损的祭台",
  "144 红薇蝶玻璃瓶",
  "145 兰青蝶玻璃瓶",
  "146 香粉蝶玻璃瓶",
  "147 白香蝶玻璃瓶",
  "148 龙信蝶玻璃瓶",
  "149 舌钟蝶玻璃瓶",
  "150 红土耕地",
  "151 红土土坑",
  "152 星球岩竖薄板",
  "153 竹板竖薄板",
  "154 胭脂红竖薄板",
  "155 水泥砖竖薄板",
  "156 硫黄砖竖薄板",
  "157 石质竖薄板",
  "158 精制石砖竖薄板",
  "159 钛合金竖薄板",
  "160 黄铜竖薄板",
  "161 硅石竖薄板",
  "162 秘银竖薄板",
  "163 炽炎竖薄板",
  "164 柠檬黄竖薄板",
  "165 苍石灰竖薄板",
  "166 深栗红竖薄板",
  "167 落日橙竖薄板",
  "168 海棠红竖薄板",
  "169 象牙白竖薄板",
  "170 秋叶橙竖薄板",
  "171 竖薄板",
  "172 黄砖竖薄板",
  "173 锰块竖薄板",
  "174 浅苍灰竖薄板",
  "200 樱桃木",
  "201 落叶松木",
  "202 白杨木",
  "203 红杉木",
  "204 楠木",
  "205 核桃木",
  "206 木板",
  "207 秋叶橙木板",
  "208 象牙白木板",
  "209 海棠红木板",
  "210 落日橙木板",
  "211 深栗红木板",
  "212 樱桃树苗",
  "213 落叶松树苗",
  "214 白杨树苗",
  "215 红杉树苗",
  "216 楠木树苗",
  "217 核桃树苗",
  "218 樱桃木树叶",
  "219 落叶松树叶",
  "220 白杨树叶",
  "221 红杉树叶",
  "222 楠木树叶",
  "223 核桃树叶",
  "224 小草",
  "225 枯草",
  "226 土笋",
  "227 紫苏",
  "228 独葵",
  "229 玉米",
  "230 巨布鲁果",
  "231 巨布鲁果苗",
  "232 气根",
  "233 红土",
  "234 水稻",
  "236 青瓜",
  "237 红杉果",
  "238 荆棘草",
  "239 巨鳞羽果",
  "240 巨鳞羽果苗",
  "241 番薯",
  "242 仙人掌茎",
  "243 野生玉米",
  "244 圣诞树",
  "245 水草",
  "246 海带",
  "247 漂浮的花瓣",
  "248 漂浮的木板",
  "249 松果",
  "250 荷花",
  "251 竹子",
  "252 竹叶",
  "253 竹笋",
  "254 桃花木",
  "255 桃花树叶",
  "256 桃花树苗",
  "257 珍木",
  "258 珍木树叶",
  "259 珍木树苗",
  "260 无叶珍木",
  "261 星光孢子杆",
  "262 游戏版本过低",
  "263 星光孢子种子",
  "264 苍石灰木板",
  "265 无叶珍木木板",
  "266 变异土笋",
  "267 变异紫苏",
  "268 变异的植物杆",
  "269 荧光彩色草",
  "270 星光孢子",
  "271 星光孢子",
  "272 星光孢子",
  "273 星光孢子",
  "274 星光孢子",
  "275 星光孢子",
  "276 星光孢子",
  "277 星光孢子",
  "278 星光孢子",
  "279 星光孢子",
  "280 星光孢子",
  "281 星光孢子",
  "282 星光孢子",
  "283 星光孢子",
  "284 星光孢子",
  "285 星光孢子",
  "286 变异紫苏杆",
  "287 无球锯齿蕨",
  "288 结球锯齿蕨",
  "289 锯齿碎石墙",
  "290 锯齿青石墙",
  "291 锯齿星球岩墙",
  "292 椰树苗",
  "294 巨大椰叶",
  "295 大椰子",
  "296 异化巨大椰叶",
  "297 异化大椰子",
  "298 燃烧的小火炬",
  "299 熄灭的小火炬",
  "300 风铃花",
  "301 若兰",
  "302 星辰花",
  "303 龙血花",
  "304 风信子",
  "305 龙爪草",
  "306 龙血树",
  "307 红色龙舌兰",
  "308 橙色龙舌兰",
  "309 灰色龙舌兰",
  "310 粉色龙舌兰",
  "311 白椰花",
  "312 黄钟花",
  "313 野蔷薇",
  "314 红藻",
  "315 游戏版本过低",
  "316 游戏版本过低",
  "317 游戏版本过低",
  "318 游戏版本过低",
  "319 游戏版本过低",
  "320 游戏版本过低",
  "321 桃花堆",
  "322 小花堆",
  "323 落叶堆",
  "324 樱桃木果实",
  "325 落叶松木果实",
  "326 乔木果实",
  "327 珍木果实",
  "328 红杉木果实",
  "329 核桃木果实",
  "330 桃花木果实",
  "331 白杨木果实",
  "332 粗樱桃木树枝",
  "333 细樱桃木树枝",
  "334 粗落叶松树枝",
  "335 细落叶松树枝",
  "336 粗珍木树枝",
  "337 细珍木树枝",
  "338 粗核桃树树枝",
  "339 细核桃树树枝",
  "340 粗桃花树树枝",
  "341 细桃花树树枝",
  "342 粗白杨木树枝",
  "343 细白杨木树枝",
  "344 玉米粉",
  "345 棉花树苗",
  "346 巨型扇贝",
  "348 锰块",
  "349 粗红杉木树枝",
  "350 细红杉木树枝",
  "375 柠檬黄木板",
  "376 柠檬黄楼梯",
  "377 柠檬黄薄板",
  "378 乔木果实",
  "379 乔木果实方块",
  "380 灌木丛树苗",
  "382 雨林乔木树苗",
  "383 香蕉树苗",
  "384 香蕉树叶",
  "385 香蕉方块",
  "386 香蕉树干",
  "390 花纹细柱",
  "392 灌木丛",
  "394 星光粉尘树叶",
  "395 雨林乔木树叶",
  "396 雨林之芯乔木",
  "397 苔藓",
  "398 草木灰方块",
  "399 草木灰耕地",
  "400 炽炎矿",
  "401 秘银矿",
  "402 可燃冰矿",
  "403 缠丝玛瑙原石",
  "404 钨金矿",
  "405 星能矿",
  "406 琥珀原石",
  "407 硅石矿",
  "408 钨金块",
  "409 琥珀块",
  "410 炽炎块",
  "411 秘银块",
  "412 硅石块",
  "413 花纹硅石块",
  "414 竖纹硅石块",
  "415 星能块",
  "416 可燃冰块",
  "417 缠丝玛瑙块",
  "418 地板",
  "419 秋叶橙地板",
  "420 海棠红地板",
  "421 土砖",
  "422 粗制石砖",
  "423 粗制黄砖板",
  "424 精制黄砖板",
  "425 釉面砖",
  "426 横格釉面砖",
  "427 竖格釉面砖",
  "428 四格釉面砖",
  "429 不规则釉面砖",
  "430 冰砖",
  "431 风铃花种子",
  "432 若兰花种子",
  "433 星辰花种子",
  "434 龙血花种子",
  "435 风信子种子",
  "436 龙爪草种子",
  "437 龙血树种子",
  "438 红色龙舌兰种子",
  "439 橙色龙舌兰种子",
  "440 灰色龙舌兰种子",
  "441 粉色龙舌兰种子",
  "442 白椰花种子",
  "443 黄钟花种子",
  "444 野蔷薇种子",
  "445 星铜矿石",
  "446 紫荧矿石",
  "447 神秘化石",
  "448 石油块",
  "449 星铜石块",
  "450 紫荧石块",
  "451 铜合金矿",
  "452 钛合金矿",
  "453 攻击符文矿石",
  "454 防御符文矿石",
  "455 效率符文矿石",
  "456 黄铜块",
  "457 钛合金块",
  "458 仙人掌幼苗",
  "459 仙人掌苗",
  "460 仙人掌花",
  "461 仙人掌果实",
  "462 鸵鸟蛋",
  "463 仙人掌分支",
  "464 菌丝体",
  "465 洋红毒菇",
  "466 星光孢子饲料",
  "467 变异土笋饲料",
  "468 变异紫苏饲料",
  "469 野生棉花树",
  "470 问号方块",
  "471 问号方块",
  "472 问号方块",
  "473 问号方块",
  "474 问号方块",
  "475 问号方块",
  "476 胡杨苗",
  "477 胡杨木",
  "478 粗胡杨树枝",
  "479 细胡杨树枝",
  "480 胡杨叶",
  "481 胡杨花",
  "482 胡杨泪",
  "483 壁画",
  "484 帐篷",
  "485 珊瑚幼体",
  "486 角珊瑚",
  "487 白化角珊瑚",
  "488 气泡珊瑚",
  "489 白化气泡珊瑚",
  "490 圆盘珊瑚",
  "491 白化圆盘珊瑚",
  "492 树珊瑚",
  "493 白化树珊瑚",
  "494 荧光棒藻幼苗",
  "495 荧光棒藻",
  "496 发光的荧光棒方块",
  "497 耗尽的荧光棒方块",
  "498 调色架",
  "499 虚空宝罐",
  "500 火",
  "501 精制石砖",
  "502 裂纹石砖",
  "503 青石岩砖",
  "504 花纹岩石砖",
  "505 碎石块",
  "506 青石薄板",
  "507 黄砖薄板",
  "508 调色架（挂墙）",
  "509 石质薄板",
  "510 水泥砖薄板",
  "511 精制石砖薄板",
  "512 硫黄砖薄板",
  "513 硅石薄板",
  "514 薄板",
  "515 秋叶橙薄板",
  "516 象牙白薄板",
  "517 海棠红薄板",
  "518 落日橙薄板",
  "519 深栗红薄板",
  "520 楼梯",
  "521 秋叶橙楼梯",
  "522 象牙白楼梯",
  "523 海棠红楼梯",
  "524 落日橙楼梯",
  "525 深栗红楼梯",
  "526 秘银栅栏",
  "527 黄砖楼梯",
  "529 石质楼梯",
  "530 水泥砖楼梯",
  "531 精制石砖楼梯",
  "532 硫黄砖楼梯",
  "533 硅石楼梯",
  "534 木围栏",
  "535 木围栏门",
  "536 曙光石块",
  "537 硫黄砖块",
  "538 硫黄砖围栏",
  "539 象牙白栅栏",
  "540 古老黄砖",
  "541 精致黄砖",
  "547 水泥砖块",
  "548 碎石墙",
  "549 青石墙",
  "550 荧光晶块",
  "551 粗制石砖围栏",
  "552 象牙白围栏",
  "553 木栅栏",
  "554 铜围栏",
  "555 木窗",
  "556 玻璃窗",
  "557 象牙白玻璃窗",
  "558 蜂蜜块",
  "559 焦糖块",
  "560 结晶的蜂蜜",
  "561 烧焦的蜂蜜",
  "562 胭脂红木板",
  "563 竹板",
  "564 胭脂红薄板",
  "565 竹板薄板",
  "566 胭脂红楼梯",
  "567 竹板楼梯",
  "568 竹围栏",
  "569 竹围栏门",
  "570 星球岩薄板",
  "571 星球岩楼梯",
  "572 星球岩墙",
  "573 星球岩石砖",
  "574 苍石灰薄板",
  "575 苍石灰楼梯",
  "576 苍石灰围栏",
  "578 雨林神像",
  "579 雨林乔木",
  "580 祭台",
  "581 天气预报器",
  "582 豹纹睡袋",
  "583 神像基座",
  "584 毒液",
  "585 无名纪念碑",
  "586 祭坛石碑",
  "587 神圣果实",
  "588 烈焰断剑",
  "589 石人之眼",
  "590 神圣树干",
  "591 神圣树种子",
  "592 神圣树叶",
  "593 神圣树浆",
  "594 星站控制台",
  "595 一级传送舱",
  "596 石质雕像",
  "597 二级传送舱",
  "598 掩埋的机械",
  "599 沙石柱",
  "600 象牙白棉花块",
  "601 朱砂橙棉花块",
  "602 胭脂红棉花块",
  "603 天青蓝棉花块",
  "604 鹅毛黄棉花块",
  "605 松花绿棉花块",
  "606 海棠红棉花块",
  "607 苍石灰棉花块",
  "608 浅苍灰棉花块",
  "609 青碧绿棉花块",
  "610 青莲紫棉花块",
  "611 宝石蓝棉花块",
  "612 深栗红棉花块",
  "613 翡翠绿棉花块",
  "614 赫赤红棉花块",
  "615 煤乌黑棉花块",
  "616 象牙白棉毡",
  "617 朱砂橙棉毡",
  "618 胭脂红棉毡",
  "619 天青蓝棉毡",
  "620 鹅毛黄棉毡",
  "621 松花绿棉毡",
  "622 海棠红棉毡",
  "623 苍石灰棉毡",
  "624 浅苍灰棉毡",
  "625 青碧绿棉毡",
  "626 青莲紫棉毡",
  "627 宝石蓝棉毡",
  "628 深栗红棉毡",
  "629 翡翠绿棉毡",
  "630 赫赤红棉毡",
  "631 煤乌黑棉毡",
  "632 透明玻璃块",
  "633 象牙白玻璃块",
  "634 朱砂橙玻璃块",
  "635 胭脂红玻璃块",
  "636 天青蓝玻璃块",
  "637 鹅毛黄玻璃块",
  "638 松花绿玻璃块",
  "639 海棠红玻璃块",
  "640 苍石灰玻璃块",
  "641 浅苍灰玻璃块",
  "642 青碧绿玻璃块",
  "643 青莲紫玻璃块",
  "644 宝石蓝玻璃块",
  "645 深栗红玻璃块",
  "646 翡翠绿玻璃块",
  "647 赫赤红玻璃块",
  "648 煤乌黑玻璃块",
  "649 透明玻璃片",
  "650 象牙白玻璃片",
  "651 朱砂橙玻璃片",
  "652 胭脂红玻璃片",
  "653 天青蓝玻璃片",
  "654 鹅毛黄玻璃片",
  "655 松花绿玻璃片",
  "656 海棠红玻璃片",
  "657 苍石灰玻璃片",
  "658 浅苍灰玻璃片",
  "659 青碧绿玻璃片",
  "660 青莲紫玻璃片",
  "661 宝石蓝玻璃片",
  "662 深栗红玻璃片",
  "663 翡翠绿玻璃片",
  "664 赫赤红玻璃片",
  "665 煤乌黑玻璃片",
  "666 水泥块",
  "667 象牙白水泥块",
  "668 朱砂橙水泥块",
  "669 胭脂红水泥块",
  "670 天青蓝水泥块",
  "671 鹅毛黄水泥块",
  "672 松花绿水泥块",
  "673 海棠红水泥块",
  "674 苍石灰水泥块",
  "675 浅苍灰水泥块",
  "676 青碧绿水泥块",
  "677 青莲紫水泥块",
  "678 宝石蓝水泥块",
  "679 深栗红水泥块",
  "680 翡翠绿水泥块",
  "681 赫赤红水泥块",
  "682 煤乌黑水泥块",
  "683 龙纹石块",
  "684 斜纹黑石块",
  "685 竖纹糖块",
  "686 巧克力砖",
  "687 香薰宫灯",
  "688 中式字牌",
  "689 中式镂空窗",
  "690 低音块",
  "691 中音块",
  "692 高音块",
  "693 乐器-鼓",
  "694 乐器-电子",
  "695 乐器-综合",
  "696 非循环-电子",
  "697 循环-鼓",
  "698 循环-电子",
  "699 循环-氛围",
  "700 星能产生器",
  "701 星能产生器",
  "702 星能增幅器",
  "703 星能增幅器",
  "704 星能比较器",
  "705 星能比较器",
  "706 蓝色星能线",
  "707 星能信号灯",
  "708 星能信号灯",
  "709 游戏版本过低",
  "710 丝线",
  "711 触碰感压板",
  "712 普通感压板",
  "713 生物感压板",
  "715 触碰按钮",
  "716 普通按钮",
  "717 发射装置",
  "718 推拉机械臂",
  "719 机械臂",
  "720 投掷发射装置",
  "721 地刺陷阱",
  "722 投掷装置",
  "723 桃木图腾",
  "724 开关",
  "725 轨道节点",
  "726 钢琴",
  "727 花小楼生日雕塑",
  "728 收音机",
  "729 加速轨道节点",
  "730 沙漠宝箱",
  "731 木质天窗",
  "732 黑龙雕像",
  "733 黑龙宝罐",
  "734 普通宝箱",
  "735 精致宝箱",
  "736 黄金宝箱",
  "737 简易罐子",
  "738 陶土罐子",
  "739 彩陶罐子",
  "740 熔岩之石",
  "741 混乱之石",
  "742 混乱雕像",
  "743 熔岩宝罐",
  "744 混乱宝罐",
  "745 硫黄弓手图腾",
  "746 熔岩雕像",
  "747 物资罐",
  "748 萤火虫玻璃瓶",
  "749 铜薄板",
  "750 秘银薄板",
  "751 炽炎薄板",
  "752 钛合金薄板",
  "753 铜楼梯",
  "754 秘银楼梯",
  "755 炽炎楼梯",
  "756 钛合金楼梯",
  "757 藏宝图宝箱",
  "758 沉船宝箱",
  "759 沉船普通箱",
  "780 跳舞厅",
  "781 石质创造锤方块",
  "782 黄铜创造锤方块",
  "783 秘银创造锤方块",
  "784 钛金创造锤方块",
  "785 符文台",
  "794 石锅",
  "795 秘银锅",
  "796 不完整工匠台",
  "797 完整工匠台",
  "798 秘银冶炼台",
  "799 铜冶炼台",
  "800 不完整工匠台",
  "801 储物箱",
  "802 冶炼台",
  "803 游戏版本过低",
  "804 奇怪石头",
  "805 奇怪石块",
  "806 奇怪石砖",
  "807 奇怪青石",
  "808 奇怪裂石砖",
  "809 奇怪花纹石砖",
  "810 怪物召集石",
  "811 游戏版本过低",
  "812 轻木门",
  "813 绳索",
  "814 秘银门",
  "815 黄铜星能幕布",
  "816 巨布鲁果灯",
  "817 火炬",
  "818 星能幕布（依附方块）",
  "819 黑龙蛋",
  "820 书柜",
  "821 木桩",
  "822 草垛",
  "823 游戏版本过低",
  "824 不完整工匠台",
  "828 简易睡袋",
  "829 魔药台",
  "830 烤肉披萨",
  "831 蔬果披萨",
  "832 神秘箱",
  "833 不完整工匠台",
  "834 炸药桶",
  "835 备用",
  "836 物理清除烟花",
  "839 收集传输器",
  "840 机械臂部件",
  "841 移动的机械臂",
  "842 秘银弹簧",
  "843 弹簧部件",
  "844 炽炎弹簧",
  "845 保险箱",
  "846 超级保险箱",
  "847 圣诞礼盒",
  "848 孔明灯",
  "849 禁怪烟花",
  "850 星星烟花（小）",
  "851 星星烟花（大）",
  "852 晴雨烟花",
  "853 昼夜烟花",
  "854 落日橙门",
  "855 深栗红门",
  "856 象牙白门",
  "857 炽炎门",
  "858 海棠红门",
  "859 琥珀黄门",
  "860 秋叶橙门",
  "861 木纹灯",
  "862 象牙白玻璃灯",
  "863 朱砂橙玻璃灯",
  "864 胭脂红玻璃灯",
  "865 天青蓝玻璃灯",
  "866 鹅毛黄玻璃灯",
  "867 松花绿玻璃灯",
  "868 海棠红玻璃灯",
  "869 苍石灰玻璃灯",
  "870 浅苍灰玻璃灯",
  "871 青碧绿玻璃灯",
  "872 青莲紫玻璃灯",
  "873 宝石蓝玻璃灯",
  "874 深栗红玻璃灯",
  "875 翡翠绿玻璃灯",
  "876 赫赤红玻璃灯",
  "877 煤乌黑玻璃灯",
  "878 沙发测试",
  "879 圣诞铃铛",
  "880 圣诞条带",
  "881 喷花烟花",
  "882 喷花烟花（开）",
  "883 精致木床",
  "884 豪华木床",
  "885 公主床",
  "886 秘银星能幕布",
  "887 秘银星能幕布（贴墙）",
  "888 钛金星能幕布",
  "889 钛金星能幕布（贴墙）",
  "890 熔岩星能幕布",
  "891 熔岩星能幕布（贴墙）",
  "892 木质字牌",
  "893 石质字牌",
  "894 秘银字牌",
  "895 炽炎字牌",
  "896 钨金字牌",
  "897 熔岩字牌",
  "898 灯笼",
  "899 古典路灯",
  "900 现代路灯",
  "901 野人图腾",
  "902 野萌宝图腾",
  "903 野人猎手图腾",
  "904 蝙蝠图腾",
  "906 爆爆蛋图腾",
  "908 熔岩巨人图腾",
  "909 硫黄弓手图腾",
  "910 嘟嘟鸟图腾",
  "911 沃沃兽图腾",
  "912 墩墩图腾",
  "913 角鹿图腾",
  "915 狐图腾",
  "917 地心人图腾",
  "918 远古黑龙图腾",
  "919 红色战旗",
  "920 蓝色战旗",
  "921 绿色战旗",
  "922 黄战旗",
  "923 橙色战旗",
  "924 紫色战旗",
  "925 白色战旗",
  "926 黑色铜围栏",
  "927 白色铜围栏",
  "928 小花盆",
  "929 大花盆",
  "930 展示架",
  "931 蜡烛台",
  "932 蜡烛台",
  "933 吊灯",
  "934 典雅壁灯",
  "935 精致壁灯",
  "936 台灯",
  "937 福字",
  "938 对联字牌",
  "939 春节窗花",
  "940 春节窗花-福",
  "941 春节窗花-禄",
  "942 春节窗花-寿",
  "943 春节窗花-喜",
  "944 新春灯笼",
  "945 中式宫灯",
  "946 红色陶花盆",
  "947 绿色陶花盆",
  "948 大瓷花盆",
  "949 新春宫灯",
  "950 魔力坐骑蛋",
  "951 小飞鼠坐骑蛋",
  "952 麒麟坐骑蛋",
  "953 陆行鸟坐骑蛋",
  "954 小白象坐骑蛋",
  "955 小海豹坐骑蛋",
  "956 小猫咪坐骑蛋",
  "957 小天马坐骑蛋",
  "958 小仓鼠坐骑蛋",
  "959 游戏版本过低",
  "960 基石-混凝土",
  "961 基石-裂土",
  "962 白色基石",
  "963 基石-坚冰",
  "964 基石-钢板",
  "965 椅子",
  "966 桌子",
  "967 沙发",
  "968 棕色壁炉",
  "969 柜子",
  "970 象牙白椅子",
  "971 象牙白桌子",
  "972 象牙白沙发",
  "973 白色壁炉",
  "974 象牙白柜子",
  "975 松木椅子",
  "976 松木桌子",
  "977 松木沙发",
  "978 黑色壁炉",
  "979 松木柜子",
  "980 周年生日蛋糕",
  "981 方片花纹砖",
  "982 棕色纹砖",
  "983 黑白纹砖",
  "984 白蓝纹玻璃片",
  "985 绿蓝纹玻璃片",
  "986 小彩旗",
  "987 游戏版本过低",
  "988 补给箱",
  "989 补给道具箱",
  "990 公共集合点",
  "991 1队:红队集合点",
  "992 2队:蓝队集合点",
  "993 3队:绿队集合点",
  "994 4队:黄队集合点",
  "995 5队:橙队集合点",
  "996 6队:紫队集合点",
  "997 闪星方块",
  "998 初始道具补给箱",
  "999 再次挑战补给箱",
  "1000 方块复制器",
  "1001 空气墙方块",
  "1002 方块复制器",
  "1003 游戏版本过低",
  "1004 标记器（-）",
  "1005 标记器（+）",
  "1006 标记器3号",
  "1007 标记器4号",
  "1008 滑动方块",
  "1009 红色星能线",
  "1010 转轴方块",
  "1011 前进路径牌-公共",
  "1012 停止路径牌",
  "1013 标记器0号",
  "1014 十字大炸弹",
  "1015 十字小炸弹",
  "1016 单向大炸弹",
  "1017 单向小炸弹",
  "1018 空气墙-不挡子弹",
  "1019 窝",
  "1020 嘟嘟鸟饲料",
  "1021 闪星奖杯",
  "1022 游戏版本过低",
  "1023 游戏版本过低",
  "1024 游戏版本过低",
  "1025 游戏版本过低",
  "1026 前进路径牌-1队",
  "1027 前进路径牌-2队",
  "1028 前进路径牌-3队",
  "1029 前进路径牌-4队",
  "1030 前进路径牌-5队",
  "1031 前进路径牌-6队",
  "1032 感应方块",
  "1033 算法器",
  "1034 星能阻隔器",
  "1035 随机补给罐",
  "1036 准备点",
  "1037 触碰方块",
  "1038 生物触碰方块",
  "1039 得分方块",
  "1040 球触碰方块",
  "1042 神秘图腾",
  "1043 图腾宝藏水晶",
  "1044 图腾宝藏水晶(初始祭坛)",
  "1045 氧气提炼装置",
  "1046 火炬-熄灭",
  "1047 压缩气罐（空）",
  "1048 压缩气罐（氧气）",
  "1049 神秘图腾(污染核心)",
  "1050 星球植物培养基",
  "1051 氧气果",
  "1052 信号发生器",
  "1053 信号接收器",
  "1054 信号解析器",
  "1055 小加密箱",
  "1056 大加密箱",
  "1057 宇宙大礼包",
  "1058 巨人雕像",
  "1059 巨人核心",
  "1060 反射镜",
  "1061 巨人宝罐",
  "1062 区域复制方块",
  "1063 蓝图工作台",
  "1064 蓝图图纸",
  "1065 图纸建造方块",
  "1066 测距仪",
  "1067 物理触碰方块",
  "1068 篮筐方块",
  "1069 星星方块",
  "1070 荧光方块",
  "1071 荧光块",
  "1072 公共初始集合点",
  "1073 1队:红队初始集合点",
  "1074 2队:蓝队初始集合点",
  "1075 3队:绿队初始集合点",
  "1076 4队:黄队初始集合点",
  "1077 5队:橙队初始集合点",
  "1078 6队:紫队初始集合点",
  "1079 个人集合点",
  "1080 刷怪方块",
  "1081 空气墙-不挡物理",
  "1082 车身方块（测试用）",
  "1083 转向车轮",
  "1084 驾驶座",
  "1085 机械车间",
  "1086 车间（测试）",
  "1087 动力车轮",
  "1088 引擎（测试）",
  "1089 燃料引擎",
  "1090 无限引擎",
  "1091 乘客座",
  "1092 动作序列器",
  "1093 推进器001型",
  "1094 机翼",
  "1095 尾翼",
  "1096 航天推进器",
  "1099 油箱",
  "1100 地图传送方块",
  "1101 实验室门",
  "1102 镜冰",
  "1103 冰灯",
  "1104 花纹星能块",
  "1105 星能秘银块",
  "1106 星能秘银板",
  "1107 紫线秘银块",
  "1108 厚秘银板",
  "1109 镂空秘银板",
  "1110 实验室灯",
  "1111 锈秘银门",
  "1112 秘银丝网",
  "1113 竖纹秘银板",
  "1114 锈秘银板",
  "1115 条纹锈秘银板",
  "1116 镂空锈秘银板",
  "1117 星能锈秘银块",
  "1118 荧光灯",
  "1119 花纹秘银块",
  "1120 象牙白旧秘银块",
  "1121 朱砂橙旧秘银块",
  "1122 胭脂红旧秘银块",
  "1123 天青蓝旧秘银块",
  "1124 鹅毛黄旧秘银块",
  "1125 松花绿旧秘银块",
  "1126 海棠红旧秘银块",
  "1127 苍石灰旧秘银块",
  "1128 浅苍灰旧秘银块",
  "1129 青碧绿旧秘银块",
  "1130 青莲紫旧秘银块",
  "1131 宝石蓝旧秘银块",
  "1132 深栗红旧秘银块",
  "1133 翡翠绿旧秘银块",
  "1134 赫赤红旧秘银块",
  "1135 煤乌黑旧秘银块",
  "1136 雪梅屏风",
  "1137 红烛灯",
  "1138 模型工作台",
  "1139 红烛灯",
  "1140 传送点核心方块",
  "1141 传送点方块",
  "1142 道具模型工作台",
  "1143 编书台",
  "1144 书架",
  "1145 春节窗花-牛",
  "1146 庆典花灯",
  "1147 春节窗花-虎",
  "1148 游戏版本过低",
  "1149 游戏版本过低",
  "1150 生物模型方块",
  "1151 自定义模型制作器",
  "1152 工具模式预览方块",
  "1153 测试：标记器（-）",
  "1154 测试：标记器（+）",
  "1155 测试：滑动方块",
  "1156 测试：转轴方块",
  "1157 测试：开关",
  "1158 球铰链方块",
  "1159 铰链方块",
  "1160 机械爪",
  "1161 液压臂",
  "1162 游戏版本过低",
  "1163 游戏版本过低",
  "1164 避震器",
  "1165 升降绞绳",
  "1166 游戏版本过低",
  "1167 游戏版本过低",
  "1168 红外感应方块",
  "1169 光照感应器",
  "1170 游戏版本过低",
  "1171 游戏版本过低",
  "1180 大型储物箱（横）",
  "1181 大型储物箱（竖）",
  "1182 星能振荡器",
  "1183 黄砖感压板",
  "1184 星能展台",
  "1185 嘟嘟鸟窝",
  "1186 彼岸花",
  "1187 彼岸菠萝",
  "1188 船舵",
  "1189 螺旋推进器",
  "1190 浮桶",
  "1191 海神像",
  "1192 晒鱼架",
  "1193 海神像（破）",
  "1194 彼岸花种子",
  "1200 篝火",
  "1201 石碑",
  "1202 部落图腾",
  "1203 农夫旗帜",
  "1204 樵夫旗帜",
  "1205 守卫旗帜",
  "1206 透明硬质玻璃块",
  "1207 象牙白硬质玻璃块",
  "1208 朱砂橙硬质玻璃块",
  "1209 胭脂红硬质玻璃块",
  "1210 天青蓝硬质玻璃块",
  "1211 鹅毛黄硬质玻璃块",
  "1212 松花绿硬质玻璃块",
  "1213 海棠红硬质玻璃块",
  "1214 苍石灰硬质玻璃块",
  "1215 浅苍灰硬质玻璃块",
  "1216 青碧绿硬质玻璃块",
  "1217 青莲紫硬质玻璃块",
  "1218 宝石蓝硬质玻璃块",
  "1219 深栗红硬质玻璃块",
  "1220 翡翠绿硬质玻璃块",
  "1221 赫赤红硬质玻璃块",
  "1222 煤乌黑硬质玻璃块",
  "1223 贝壳床",
  "1224 贝壳沙发",
  "1225 贝壳桌子",
  "1226 贝壳椅子",
  "1227 珊瑚门",
  "1228 贝壳门",
  "1229 珊瑚窗",
  "1230 贝壳窗",
  "1231 海洋储物柜",
  "1232 海洋屏风",
  "1233 贝壳楼梯",
  "1234 海洋衣柜",
  "1235 海洋落地灯",
  "1236 海洋吊灯",
  "1237 贝壳台灯",
  "1238 海洋大花盆",
  "1239 珊瑚栅栏",
  "1240 珊瑚栅栏门",
  "1241 贝壳栅栏",
  "1242 贝壳栅栏门",
  "1243 贝壳风铃",
  "1244 星球岩斜板",
  "1245 竹板斜板",
  "1246 胭脂红斜板",
  "1247 水泥砖斜板",
  "1248 硫黄砖斜板",
  "1249 石质斜板",
  "1250 精制石砖斜板",
  "1251 钛合金斜板",
  "1252 黄铜斜板",
  "1253 硅石斜板",
  "1254 秘银斜板",
  "1255 炽炎斜板",
  "1256 柠檬黄斜板",
  "1257 苍石灰斜板",
  "1258 深栗红斜板",
  "1259 落日橙斜板",
  "1260 海棠红斜板",
  "1261 象牙白斜板",
  "1262 秋叶橙斜板",
  "1263 斜板",
  "1264 黄砖斜板",
  "1265 锰块斜板",
  "1266 椰树原木",
  "1267 星球岩薄斜板",
  "1268 星球岩大薄斜板",
  "1269 竹板薄斜板",
  "1270 竹板大薄斜板",
  "1271 胭脂红薄斜板",
  "1272 胭脂红大薄斜板",
  "1273 水泥砖薄斜板",
  "1274 水泥砖大薄斜板",
  "1275 硫黄砖薄斜板",
  "1276 硫黄砖大薄斜板",
  "1277 石质薄斜板",
  "1278 石质大薄斜板",
  "1279 精制石砖薄斜板",
  "1280 精制石砖大薄斜板",
  "1281 钛合金薄斜板",
  "1282 钛合金大薄斜板",
  "1283 黄铜薄斜板",
  "1284 黄铜大薄斜板",
  "1285 硅石薄斜板",
  "1286 硅石大薄斜板",
  "1287 秘银薄斜板",
  "1288 秘银大薄斜板",
  "1289 炽炎薄斜板",
  "1290 炽炎大薄斜板",
  "1291 柠檬黄薄斜板",
  "1292 柠檬黄大薄斜板",
  "1293 苍石灰薄斜板",
  "1294 苍石灰大薄斜板",
  "1295 深栗红薄斜板",
  "1296 深栗红大薄斜板",
  "1297 落日橙薄斜板",
  "1298 落日橙大薄斜板",
  "1299 海棠红薄斜板",
  "1300 海棠红大薄斜板",
  "1301 象牙白薄斜板",
  "1302 象牙白大薄斜板",
  "1303 秋叶橙薄斜板",
  "1304 秋叶橙大薄斜板",
  "1305 薄斜板",
  "1306 大薄斜板",
  "1307 黄砖薄斜板",
  "1308 黄砖大薄斜板",
  "1309 锰块薄斜板",
  "1310 锰块大薄斜板",
  "1311 星球岩竖薄斜板",
  "1312 星球岩竖大薄斜板",
  "1313 竹板竖薄斜板",
  "1314 竹板竖大薄斜板",
  "1315 胭脂红竖薄斜板",
  "1316 胭脂红竖大薄斜板",
  "1317 水泥砖竖薄斜板",
  "1318 水泥砖竖大薄斜板",
  "1319 硫黄砖竖薄斜板",
  "1320 硫黄砖竖大薄斜板",
  "1321 石质竖薄斜板",
  "1322 石质竖大薄斜板",
  "1323 精制石砖竖薄斜板",
  "1324 精制石砖竖大薄斜板",
  "1325 钛合金竖薄斜板",
  "1326 钛合金竖大薄斜板",
  "1327 黄铜竖薄斜板",
  "1328 黄铜竖大薄斜板",
  "1329 硅石竖薄斜板",
  "1330 硅石竖大薄斜板",
  "1331 秘银竖薄斜板",
  "1332 秘银竖大薄斜板",
  "1333 炽炎竖薄斜板",
  "1334 炽炎竖大薄斜板",
  "1335 柠檬黄竖薄斜板",
  "1336 柠檬黄竖大薄斜板",
  "1337 苍石灰竖薄斜板",
  "1338 苍石灰竖大薄斜板",
  "1339 深栗红竖薄斜板",
  "1340 深栗红竖大薄斜板",
  "1341 落日橙竖薄斜板",
  "1342 落日橙竖大薄斜板",
  "1343 海棠红竖薄斜板",
  "1344 海棠红竖大薄斜板",
  "1345 象牙白竖薄斜板",
  "1346 象牙白竖大薄斜板",
  "1347 秋叶橙竖薄斜板",
  "1348 秋叶橙竖大薄斜板",
  "1349 竖薄斜板",
  "1350 竖大薄斜板",
  "1351 黄砖竖薄斜板",
  "1352 黄砖竖大薄斜板",
  "1353 锰块竖薄斜板",
  "1354 锰块竖大薄斜板",
  "1355 星球岩竖板",
  "1356 竹板竖板",
  "1357 胭脂红竖板",
  "1358 水泥砖竖板",
  "1359 硫黄砖竖板",
  "1360 石质竖板",
  "1361 精制石砖竖板",
  "1362 钛合金竖板",
  "1363 黄铜竖板",
  "1364 硅石竖板",
  "1365 秘银竖板",
  "1366 炽炎竖板",
  "1367 柠檬黄竖板",
  "1368 苍石灰竖板",
  "1369 深栗红竖板",
  "1370 落日橙竖板",
  "1371 海棠红竖板",
  "1372 象牙白竖板",
  "1373 秋叶橙竖板",
  "1374 竖板",
  "1375 黄砖竖板",
  "1376 锰块竖板",
  "1377 海洋落地灯",
  "1378 海洋吊灯",
  "1379 贝壳台灯",
  "1380 浅苍灰木板",
  "1381 浅苍灰楼梯",
  "1382 浅苍灰薄板",
  "1383 浅苍灰斜板",
  "1384 浅苍灰薄斜板",
  "1385 浅苍灰大薄斜板",
  "1386 浅苍灰竖薄斜板",
  "1387 浅苍灰竖大薄斜板",
  "1388 浅苍灰竖板",
  "1400 音乐盒",
  "1401 天空布景台",
  "1402 重力装置",
  "1403 天气控制器",
  "1404 家园工作台",
  "1405 宠物窝",
  "1406 简单灶台",
  "1407 家园空气墙",
  "1451 荣誉架",
  "1452 向阳花",
  "1453 红色龙舌兰",
  "1454 龙血花",
  "1455 野蔷薇",
  "1456 小白菊",
  "1457 茶树",
  "1458 香蕉树",
  "1459 巨鳞羽果",
  "1460 芒果树",
  "1461 梨树",
  "1462 柑橘树",
  "1463 桃子树",
  "1464 水稻",
  "1465 玉米",
  "1466 番薯",
  "1467 南瓜",
  "1468 甘蔗",
  "1469 满的蜂巢",
  "1470 辣椒树",
  "1471 棉花树",
  "1472 果树",
  "1473 落叶松",
  "1474 白杨树",
  "1475 红杉树",
  "1476 楠树",
  "1477 胡桃树",
  "1478 食用小蘑菇",
  "1479 食用小红菇",
  "1480 咖啡豆树",
  "1481 红杉果树",
  "1482 氧气果树",
  "1483 橙色龙舌兰",
  "1484 灰色龙舌兰",
  "1485 粉色龙舌兰",
  "1486 胡萝卜",
  "1493 向阳花（苗）",
  "1494 红色龙舌兰（苗）",
  "1495 橙色龙舌兰（苗）",
  "1496 灰色龙舌兰（苗）",
  "1497 粉色龙舌兰（苗）",
  "1498 龙血花（苗）",
  "1499 野蔷薇（苗）",
  "1500 小白菊（苗）",
  "1501 巨鳞羽果（苗）",
  "1502 南瓜（苗）",
  "1503 果木树苗",
  "1504 落叶松树苗",
  "1505 白杨树苗",
  "1506 胡桃树苗",
  "1507 胡杨树",
  "1508 胡杨树苗",
  "1509 芦荟",
  "1510 花生",
  "1511 大麦",
  "1512 芝麻",
  "1513 生菜",
  "1514 甜菜",
  "1515 西红柿",
  "1516 高丹草",
  "1517 甘蓝",
  "1518 玉米",
  "1519 青椒",
  "1520 小地星",
  "1521 萝卜",
  "1522 花椰菜",
  "1523 韭菜",
  "1524 红枣",
  "1525 野萝卜",
  "1526 油菜花",
  "1527 青稞",
  "1528 椰树",
  "1529 覆盆子",
  "1530 蛋黄果",
  "1531 红高粱",
  "1532 圆椒",
  "1533 豌豆",
  "1534 蓝莓",
  "1535 草莓",
  "1536 菠萝",
  "1537 葡萄",
  "1538 樱桃",
  "1539 灵芝",
  "1540 火龙果",
  "1541 五彩椒",
  "1542 网盖红褶伞",
  "1543 人参",
  "1550 简约床",
  "1551 简约沙发",
  "1552 简约书桌",
  "1553 简约餐桌",
  "1554 简约茶几",
  "1555 简约洗手台",
  "1556 简约椅子",
  "1557 简约马桶",
  "1558 简约浴缸",
  "1559 简约衣柜",
  "1560 简约橱柜",
  "1561 简约半格橱柜",
  "1562 简约组合柜",
  "1563 简约屏风",
  "1564 简约立体灯",
  "1565 简约吊灯",
  "1566 简约壁灯",
  "1567 简约门",
  "1568 简约窗",
  "1569 简约楼梯",
  "1570 简约墙砖",
  "1571 简约砖",
  "1572 简约半砖",
  "1573 简约围栏",
  "1574 中式床",
  "1575 中式沙发",
  "1576 中式书桌",
  "1577 中式餐桌",
  "1578 中式茶几",
  "1579 中式洗手台",
  "1580 中式椅子",
  "1581 中式马桶",
  "1582 中式浴缸",
  "1583 中式衣柜",
  "1584 中式橱柜",
  "1585 中式半格橱柜",
  "1586 中式组合柜",
  "1587 中式屏风",
  "1588 中式立体灯",
  "1589 中式吊灯",
  "1590 中式壁灯",
  "1591 中式门",
  "1592 中式窗",
  "1593 中式楼梯",
  "1594 中式墙砖",
  "1595 中式砖",
  "1596 中式半砖",
  "1597 中式围栏",
  "1598 现代床",
  "1599 现代沙发",
  "1600 现代书桌",
  "1601 现代餐桌",
  "1602 现代茶几",
  "1603 现代洗手台",
  "1604 现代椅子",
  "1605 现代马桶",
  "1606 现代浴缸",
  "1607 现代衣柜",
  "1608 现代橱柜",
  "1609 现代半格橱柜",
  "1610 现代组合柜",
  "1611 现代屏风",
  "1612 现代立体灯",
  "1613 现代吊灯",
  "1614 现代壁灯",
  "1615 现代门",
  "1616 现代窗",
  "1617 现代楼梯",
  "1618 现代墙砖",
  "1619 现代砖",
  "1620 现代半砖",
  "1621 现代围栏",
  "1622 童话床",
  "1623 童话沙发",
  "1624 童话书桌",
  "1625 童话餐桌",
  "1626 童话茶几",
  "1627 童话洗手台",
  "1628 童话椅子",
  "1629 童话马桶",
  "1630 童话浴缸",
  "1631 童话衣柜",
  "1632 童话橱柜",
  "1633 童话半格橱柜",
  "1634 童话组合柜",
  "1635 童话屏风",
  "1636 童话立体灯",
  "1637 童话吊灯",
  "1638 童话壁灯",
  "1639 童话门",
  "1640 童话窗",
  "1641 童话楼梯",
  "1642 童话墙砖",
  "1643 童话砖",
  "1644 童话半砖",
  "1645 童话围栏",
  "1646 科幻床",
  "1647 科幻沙发",
  "1648 科幻书桌",
  "1649 科幻餐桌",
  "1650 科幻茶几",
  "1651 科幻洗手台",
  "1652 科幻椅子",
  "1653 科幻马桶",
  "1654 科幻浴缸",
  "1655 科幻衣柜",
  "1656 科幻橱柜",
  "1657 科幻半格橱柜",
  "1658 科幻组合柜",
  "1659 科幻屏风",
  "1660 科幻立体灯",
  "1661 科幻吊灯",
  "1662 科幻壁灯",
  "1663 科幻门",
  "1664 科幻窗",
  "1665 科幻楼梯",
  "1666 科幻墙砖",
  "1667 科幻砖",
  "1668 科幻半砖",
  "1669 科幻围栏",
  "1670 小松树盆栽",
  "1671 葱翠盆栽",
  "1672 绒毛地毯",
  "1673 山水画",
  "1674 抽象画",
  "1675 中国结挂饰",
  "1676 星球挂饰",
  "1677 简单书柜",
  "1678 纯白冰箱",
  "1679 银灰冰箱",
  "1680 酷黑冰箱",
  "1681 纯白电饭煲",
  "1682 银灰电饭煲",
  "1683 酷黑电饭煲",
  "1684 纯白烤箱",
  "1685 银灰烤箱",
  "1686 酷黑烤箱",
  "1687 纯白灶台",
  "1688 银灰灶台",
  "1689 酷黑灶台",
  "1690 多肉盆栽",
  "1691 欧式床",
  "1692 欧式沙发",
  "1693 欧式书桌",
  "1694 欧式餐桌",
  "1695 欧式茶几",
  "1696 欧式洗手台",
  "1697 欧式椅子",
  "1698 欧式马桶",
  "1699 欧式浴缸",
  "1700 欧式衣柜",
  "1701 欧式橱柜",
  "1702 欧式半格橱柜",
  "1703 欧式组合柜",
  "1704 欧式屏风",
  "1705 欧式立体灯",
  "1706 欧式吊灯",
  "1707 欧式壁灯",
  "1708 欧式门",
  "1709 欧式窗",
  "1710 欧式楼梯",
  "1711 欧式墙砖",
  "1712 欧式砖",
  "1713 欧式半砖",
  "1714 欧式围栏",
  "1715 胡杨木",
  "1716 胡杨木板",
  "1717 胡杨树叶",
  "1718 胡杨薄板",
  "1719 胡杨楼梯",
  "1720 胡杨茶几",
  "1721 胡杨凳子",
  "1722 西域床",
  "1723 西域沙发",
  "1724 西域书桌",
  "1725 西域餐桌",
  "1726 西域茶几",
  "1727 西域洗手台",
  "1728 西域椅子",
  "1729 西域马桶",
  "1730 西域浴缸",
  "1731 西域衣柜",
  "1732 西域橱柜",
  "1733 西域半格橱柜",
  "1734 西域组合柜",
  "1735 西域屏风",
  "1736 西域立体灯",
  "1737 西域吊灯",
  "1738 西域壁灯",
  "1739 西域门",
  "1740 西域窗",
  "1741 西域楼梯",
  "1742 西域墙砖",
  "1743 西域砖",
  "1744 西域半砖",
  "1745 西域围栏",
  "1746 西域地毯",
  "1747 骆驼雕塑",
  "1748 敦煌石窟",
  "1749 敦煌飞天雕塑",
  "1750 莲花壁画",
  "1751 飞天女壁画",
  "1752 九色鹿王壁画",
  "1753 饲料槽",
  "1754 彩云",
  "1755 石柱",
  "1756 柱顶",
  "1757 凝浆块",
  "1758 黑凝浆块",
  "1759 美味制作者灶台",
  "1760 魔法床",
  "1761 魔法沙发",
  "1762 魔法书桌",
  "1763 魔法餐桌",
  "1764 魔法茶几",
  "1765 魔法洗手台",
  "1766 魔法椅子",
  "1767 魔法马桶",
  "1768 魔法浴缸",
  "1769 魔法衣柜",
  "1770 魔法橱柜",
  "1771 魔法半格橱柜",
  "1772 魔法组合柜",
  "1773 魔法屏风",
  "1774 魔法立体灯",
  "1775 魔法吊灯",
  "1776 魔法壁灯",
  "1777 魔法门",
  "1778 魔法窗",
  "1779 魔法楼梯",
  "1780 魔法墙砖",
  "1781 魔法砖",
  "1782 魔法半砖",
  "1783 魔法围栏",
  "1784 魔法地毯",
  "1785 魔法雕塑",
  "1786 魔法壁画",
  "1787 游戏版本过低",
  "1788 游戏版本过低",
  "1789 游戏版本过低",
  "1790 游戏版本过低",
  "1791 游戏版本过低",
  "1792 游戏版本过低",
  "1793 游戏版本过低",
  "1794 游戏版本过低",
  "1795 游戏版本过低",
  "1796 游戏版本过低",
  "1797 游戏版本过低",
  "1798 游戏版本过低",
  "1799 肥沃的土地",
  "1800 魔龙坐骑蛋",
  "1801 月亮坐骑蛋",
  "1802 圣夜雪橇坐骑蛋",
  "1803 巨鲸坐骑蛋",
  "1804 游戏版本过低",
  "1805 游戏版本过低",
  "1806 游戏版本过低",
  "1807 游戏版本过低",
  "1808 游戏版本过低",
  "1809 游戏版本过低",
  "1810 游戏版本过低",
  "1811 中式椅子",
  "1812 中式桌子",
  "1813 中式木椅",
  "1814 中式火炉",
  "1815 中式柜子",
  "1816 凯蒂猫餐桌",
  "1817 凯蒂猫沙发",
  "1818 凯蒂猫公主床",
  "1819 凯蒂猫衣柜",
  "1820 凯蒂猫公主椅",
  "1821 凯蒂猫留言牌",
  "1822 凯蒂猫字牌",
  "1823 凯蒂猫围栏",
  "1824 凯蒂猫方块",
  "1825 大耳狗餐桌",
  "1826 大耳狗沙发",
  "1827 大耳狗星愿床",
  "1828 大耳狗衣柜",
  "1829 大耳狗椅子",
  "1830 大耳狗留言牌",
  "1831 大耳狗字牌",
  "1832 大耳狗围栏",
  "1833 大耳狗方块",
  "1834 凯蒂猫门",
  "1835 酷洛米餐桌",
  "1836 酷洛米沙发",
  "1837 酷洛米公主床",
  "1838 酷洛米衣柜",
  "1839 酷洛米公主椅",
  "1840 酷洛米留言牌",
  "1841 酷洛米字牌",
  "1842 酷洛米围栏",
  "1843 酷洛米方块",
  "1844 美乐蒂餐桌",
  "1845 美乐蒂沙发",
  "1846 美乐蒂公主床",
  "1847 美乐蒂衣柜",
  "1848 美乐蒂公主椅",
  "1849 美乐蒂留言牌",
  "1850 美乐蒂字牌",
  "1851 美乐蒂围栏",
  "1852 美乐蒂方块",
  "1853 美乐蒂门",
  "1854 大眼蛙方块",
  "1855 大眼蛙字牌",
  "1856 大眼蛙留言牌",
  "1857 大眼蛙围栏",
  "1858 大眼蛙桌子",
  "1859 大眼蛙椅子",
  "1860 大眼蛙沙发",
  "1861 大眼蛙衣柜",
  "1862 大眼蛙床",
  "1863 布丁狗衣柜",
  "1864 布丁狗床",
  "1865 布丁狗沙发",
  "1866 布丁狗桌子",
  "1867 布丁狗椅子",
  "1868 布丁狗门",
  "1869 布丁狗围栏",
  "1870 布丁狗字牌",
  "1871 布丁狗留言牌",
  "1872 布丁狗方块",
  "1873 飞天小猪坐骑蛋",
  "1874 双子星衣柜",
  "1875 双子星床",
  "1876 双子星沙发",
  "1877 双子星桌子",
  "1878 双子星椅子",
  "1879 双子星门",
  "1880 双子星围栏",
  "1881 双子星字牌",
  "1882 双子星留言牌",
  "1883 双子星方块",
  "1900 落日橙棉花块",
  "1901 秋叶橙棉花块",
  "1902 花青紫棉花块",
  "1903 杨柳绿棉花块",
  "1904 柠檬黄棉花块",
  "1905 肉桂橙棉花块",
  "1906 丁香紫棉花块",
  "1907 琥珀黄棉花块",
  "1908 藏青蓝棉花块",
  "1909 焦糖橙棉花块",
  "1910 玄黛紫棉花块",
  "1911 竹青绿棉花块",
  "1912 落日橙棉毡",
  "1913 秋叶橙棉毡",
  "1914 花青紫棉毡",
  "1915 杨柳绿棉毡",
  "1916 柠檬黄棉毡",
  "1917 肉桂橙棉毡",
  "1918 丁香紫棉毡",
  "1919 琥珀黄棉毡",
  "1920 藏青蓝棉毡",
  "1921 焦糖橙棉毡",
  "1922 玄黛紫棉毡",
  "1923 竹青绿棉毡",
  "1924 落日橙玻璃块",
  "1925 秋叶橙玻璃块",
  "1926 花青紫玻璃块",
  "1927 杨柳绿玻璃块",
  "1928 柠檬黄玻璃块",
  "1929 肉桂橙玻璃块",
  "1930 丁香紫玻璃块",
  "1931 琥珀黄玻璃块",
  "1932 藏青蓝玻璃块",
  "1933 焦糖橙玻璃块",
  "1934 玄黛紫玻璃块",
  "1935 竹青绿玻璃块",
  "1936 落日橙玻璃片",
  "1937 秋叶橙玻璃片",
  "1938 花青紫玻璃片",
  "1939 杨柳绿玻璃片",
  "1940 柠檬黄玻璃片",
  "1941 肉桂橙玻璃片",
  "1942 丁香紫玻璃片",
  "1943 琥珀黄玻璃片",
  "1944 藏青蓝玻璃片",
  "1945 焦糖橙玻璃片",
  "1946 玄黛紫玻璃片",
  "1947 竹青绿玻璃片",
  "1948 落日橙硬质玻璃块",
  "1949 秋叶橙硬质玻璃块",
  "1950 花青紫硬质玻璃块",
  "1951 杨柳绿硬质玻璃块",
  "1952 柠檬黄硬质玻璃块",
  "1953 肉桂橙硬质玻璃块",
  "1954 丁香紫硬质玻璃块",
  "1955 琥珀黄硬质玻璃块",
  "1956 藏青蓝硬质玻璃块",
  "1957 焦糖橙硬质玻璃块",
  "1958 玄黛紫硬质玻璃块",
  "1959 竹青绿硬质玻璃块",
  "1960 落日橙水泥块",
  "1961 秋叶橙水泥块",
  "1962 花青紫水泥块",
  "1963 杨柳绿水泥块",
  "1964 柠檬黄水泥块",
  "1965 肉桂橙水泥块",
  "1966 丁香紫水泥块",
  "1967 琥珀黄水泥块",
  "1968 藏青蓝水泥块",
  "1969 焦糖橙水泥块",
  "1970 玄黛紫水泥块",
  "1971 竹青绿水泥块",
  "1972 落日橙旧秘银块",
  "1973 秋叶橙旧秘银块",
  "1974 花青紫旧秘银块",
  "1975 杨柳绿旧秘银块",
  "1976 柠檬黄旧秘银块",
  "1977 肉桂橙旧秘银块",
  "1978 丁香紫旧秘银块",
  "1979 琥珀黄旧秘银块",
  "1980 藏青蓝旧秘银块",
  "1981 焦糖橙旧秘银块",
  "1982 玄黛紫旧秘银块",
  "1983 竹青绿旧秘银块",
  "1999 自定义模型（方块）",
  "2000 微缩模型",
  "4095 游戏版本过低",
  "9995 微缩组合",
  "9996 微缩弓",
  "9997 微缩投掷",
  "9998 微缩枪械",
  "9999 微缩武器",
  "10000 迷你豆",
  "10001 经验值",
  "10002 迷你币",
  "10003 迷你宝盒",
  "10004 魔仙徽章",
  "10005 小草块",
  "10006 亮铁块",
  "10007 纯金块",
  "10008 钻石块",
  "10009 迷你点",
  "10010 筑梦暗语",
  "10011 果实券",
  "10012 活动券",
  "10013 家园币",
  "10014 悦享心动卡",
  "10015 悦享卡和升级加油包",
  "10016 悦享卡升级加油包",
  "10017 迷你圣诞袜",
  "10018 迷你铃铛",
  "10019 迷你金蛋",
  "10020 结算宝箱",
  "10021 迷你彩蛋",
  "10022 迷你樱花",
  "10023 悦享经验卡",
  "10024 星球传送券",
  "10025 一叠星球传送券",
  "10026 悦享积分",
  "10027 迷你大会员1天体验卡",
  "10028 迷你大会员3天体验卡",
  "10029 迷你大会员7天体验卡",
  "10030 迷你大会员15天体验卡",
  "10031 普通坐骑通用碎片",
  "10032 高级坐骑通用碎片",
  "10033 迷你大会员月卡",
  "10034 迷你大会员季卡",
  "10035 迷你大会员半年卡",
  "10036 迷你大会员年卡",
  "10040 星辉暗语",
  "10041 筑梦皮肤兑换券",
  "10042 星辉皮肤兑换券",
  "10043 特长碎片",
  "10044 超值闪币卡",
  "10045 特惠迷你月卡",
  "10046 迷你积分",
  "10050 以上为付费道具预留",
  "10051 体力药水",
  "10052 小顽猴",
  "10053 安吉洛斯的祝福",
  "10054 福利抽奖券",
  "10057 嘟嘟啵啵的双倍祝福",
  "10099 版本过低",
  "10100 ",
  "10101 ",
  "10102 ",
  "10103 ",
  "10104 ",
  "10105 ",
  "10106 ",
  "10107 ",
  "10108 ",
  "10109 ",
  "10110 ",
  "10111 ",
  "10112 机械胶囊",
  "10113 畅玩通行证",
  "10114 装备模板",
  "10115 动作饼干",
  "10116 区域",
  "10117 位置",
  "10118 显示板",
  "10500 地形编辑器",
  "10501 微缩组合装置",
  "11000 空手",
  "11001 黄铜斧",
  "11002 石斧",
  "11003 秘银斧",
  "11004 钛合金斧",
  "11005 链锯",
  "11006 游戏版本过低",
  "11007 游戏版本过低",
  "11008 游戏版本过低",
  "11009 游戏版本过低",
  "11010 游戏版本过低",
  "11011 黄铜镐",
  "11012 石镐",
  "11013 秘银镐",
  "11014 钛合金镐",
  "11015 钻头",
  "11016 星铜钻头",
  "11017 游戏版本过低",
  "11018 游戏版本过低",
  "11019 游戏版本过低",
  "11020 游戏版本过低",
  "11021 黄铜铲",
  "11022 石铲",
  "11023 秘银铲",
  "11024 钛合金铲",
  "11025 钨金铲",
  "11026 游戏版本过低",
  "11027 游戏版本过低",
  "11028 游戏版本过低",
  "11029 游戏版本过低",
  "11030 游戏版本过低",
  "11031 黄铜耙",
  "11032 石耙",
  "11033 秘银耙",
  "11034 钛合金耙",
  "11035 钨金耙",
  "11036 游戏版本过低",
  "11037 游戏版本过低",
  "11038 游戏版本过低",
  "11039 游戏版本过低",
  "11040 游戏版本过低",
  "11041 头部",
  "11042 胸部",
  "11043 腿部",
  "11044 脚部",
  "11045 背饰",
  "11046 游戏版本过低",
  "11047 游戏版本过低",
  "11048 木桶",
  "11049 瓶装水",
  "11050 秘银桶",
  "11051 瓶装水",
  "11052 岩浆坩埚",
  "11053 蜂蜜秘银桶",
  "11055 点火器",
  "11056 秘银剪",
  "11057 拴绳",
  "11058 捕鱼网",
  "11059 拐杖糖镐",
  "11060 棒棒糖斧",
  "11061 大宝剑",
  "11062 大宝铲",
  "11063 仙云棒",
  "11064 坩埚",
  "11065 盛水钛桶",
  "11066 蜂蜜钛桶",
  "11067 红色的羽毛",
  "11068 嘟嘟鸟爪",
  "11069 鸡嘴",
  "11070 扳手",
  "11071 自定义视角",
  "11072 图纸-火箭科技",
  "11073 星铜石",
  "11074 紫荧石",
  "11075 星启石",
  "11076 星辉石",
  "11077 岩石碎片",
  "11078 冰晶",
  "11079 聚合物",
  "11080 重力结晶",
  "11081 图纸-序列技术",
  "11082 图纸-缩小技术",
  "11083 图纸-变异技术",
  "11084 图纸-氧气提炼器",
  "11085 图纸-压缩气罐（空）",
  "11086 图纸-星球培养基",
  "11087 图纸-星铜钻头",
  "11088 图纸-喷射钩爪",
  "11089 图纸-氧气背包",
  "11090 图纸-星启石",
  "11091 图纸-星辉石",
  "11092 图纸-苍石灰系列",
  "11093 图纸-苍石灰薄板",
  "11094 图纸-苍石灰围栏",
  "11095 星团云瓶",
  "11096 航空燃料",
  "11097 图纸-无线装置",
  "11098 图纸-信号接收器",
  "11099 机械燃油",
  "11100 手持式编辑器",
  "11101 连接器",
  "11102 图纸-星能振荡器",
  "11200 水泥",
  "11201 可燃冰",
  "11202 黑炭",
  "11203 钨金",
  "11204 琥珀",
  "11205 星站能源碎片",
  "11206 曙光石粉",
  "11207 炽炎",
  "11208 炽炎粒",
  "11209 秘银",
  "11210 硅石",
  "11211 火种",
}
local name = {} --- 功能函数表
local UI = gg.choice(list, nil, '物品代码')
if UI then
if UI == 1 then
local prompt = gg.prompt({ '请输入关键词进行搜索' }, { '' }, { 'text' })
if prompt then
local str = prompt[1] local t = {} local t1 = {}
for i = 2, #list - 1 do if string.find(list[i], str) then table.insert(t, list[i]) table.insert(t1, name[i - 1]) end end
if #t == 0 then
gg.toast('无搜索结果') else
local c = gg.choice(t, nil, '关键词：['.. str .. '],共搜索到' .. #t .. '条结果')
if c then end end end else end if UI == 2 then os.exit()end end FX1=0 
end

function hbdm()
local list = {
"搜索代码",
"3010-游商",
  "3011-沙漠商人",
  "3012-冰原商人",
  "3013-圣诞商人",
  "3014-元旦商人",
  "3015-春节商人",
  "3016-周年商人",
  "3017-六一商人",
  "3018-宇宙商人",
  "3019-空岛商人",
  "3020-心愿商人",
  "3101-野人",
  "3102-野萌宝",
  "3103-萌眼咻咻",
  "3104-神秘星球人",
  "3105-野人猎手",
  "3106-庆典野人",
  "3107-蝙蝠",
  "3108-远古蜘蛛",
  "3109-爆爆蛋",
  "3110-萌眼叮叮",
  "3111-萌眼咚咚",
  "3112-萌眼当当",
  "3113-萌眼叮叮",
  "3114-萌眼咚咚",
  "3115-萌眼当当",
  "3116-萌眼叮咚",
  "3117-萌眼叮当",
  "3118-萌眼咚当",
  "3120-恶霸屠夫",
  "3121-稻草人",
  "3123-出气外星人",
  "3124-驯服的萌眼叮叮",
  "3125-驯服的萌眼咚咚",
  "3126-驯服的萌眼当当",
  "3130-熔岩巨人",
  "3131-硫磺弓手",
  "3132-混乱弓手",
  "3133-家园农牧场占用",
  "3134-家园农牧场占用",
  "3200-野人伙伴",
  "3201-猎手伙伴",
  "3202-萌宝伙伴",
  "3203-野人纪念包裹",
  "3204-沙漠年轻男村民",
  "3205-沙漠中年男村民",
  "3206-沙漠年轻女村民",
  "3207-沙漠中年女村民",
  "3208-沙漠小男孩村民",
  "3209-沙漠小女孩村民",
  "3210-沙漠普通商人1",
  "3211-沙漠普通商人2",
  "3212-沙漠特殊商人",
  "3213-沙漠守卫",
  "3400-嘟嘟鸟",
  "3401-牛",
  "3402-墩墩",
  "3403-羊",
  "3404-马",
  "3405-冰熊（驯服）",
  "3406-迅猛龙（驯服）",
  "3407-狐狸",
  "3408-灵狐（驯服）",
  "3409-企鹅",
  "3410-鸵鸟（驯服）",
  "3411-鸵鸟",
  "3412-冰熊",
  "3413-迅猛龙",
  "3414-团子",
  "3415-团子（驯服）",
  "3416-熊猫",
  "3417-熊猫（驯服）",
  "3418-蜜蜂",
  "3419-萤火虫",
  "3420-足球",
  "3421-飞鸡",
  "3422-飞鸡（驯服）",
  "3423-战斗鸡",
  "3424-尖叫鸡",
  "3425-篮球",
  "3426-战斗鸡（驯服）",
  "3430-普通化石龙",
  "3431-化石龙",
  "3432-超级化石龙",
  "3433-小飞鼠",
  "3434-敏捷飞鼠",
  "3435-机灵飞鼠",
  "3436-普通麒麟",
  "3437-麒麟",
  "3438-祥瑞麒麟",
  "3439-小陆行鸟",
  "3440-迅捷陆行鸟",
  "3441-跃动陆行鸟",
  "3442-小白象",
  "3443-欢乐白象",
  "3444-盛典白象",
  "3445-海豹水手",
  "3446-海豹船长",
  "3447-超能海豹",
  "3448-变形金刚占用",
  "3449-擎天柱",
  "3450-变形金刚占用",
  "3451-威震天",
  "3452-变形金刚占用",
  "3453-大黄蜂",
  "3454-猫宝宝",
  "3455-福袋猫猫",
  "3456-舞狮猫猫",
  "3457-天马宝宝",
  "3458-神圣天马",
  "3459-星河天马",
  "3460-青竹坐台",
  "3461-富贵金轿",
  "3462-桃香扇缘",
  "3463-变形金刚占用",
  "3464-红蜘蛛",
  "3465-变形金刚占用",
  "3466-热破",
  "3467-变形金刚占用",
  "3468-惊破天",
  "3469-大地领主",
  "3470-炎狱魔龙",
  "3471-深渊咆哮",
  "3472-变形金刚占用",
  "3473-钢锁",
  "3474-变形金刚占用",
  "3475-飞标",
  "3476-变形金刚占用",
  "3477-嚎叫",
  "3478-月明星稀",
  "3479-玉兔桃花",
  "3480-皎月仙宫",
  "3481-兔子先生拉比",
  "3482-兔子先生拉比",
  "3483-暖冬祝福",
  "3484-圣夜惊喜",
  "3485-冰雪传说",
  "3486-缤纷幻想",
  "3487-缤纷幻想",
  "3488-福运哞哞",
  "3489-福运哞哞",
  "3490-攀崖观日",
  "3491-北辰荧火",
  "3492-浮游山海",
  "3493-牛魔王",
  "3494-牛魔王",
  "3495-步步生莲",
  "3496-飞花踏雪",
  "3497-镜花水月",
  "3501-地心人",
  "3502-远古黑龙",
  "3503-熔岩黑龙",
  "3504-混乱黑龙",
  "3505-年兽野生",
  "3506-年兽驯服",
  "3507-福球",
  "3508-小恶魔野生",
  "3509-小恶魔驯服",
  "3510-远古巨像",
  "3511-远古叮叮",
  "3512-远古咚咚",
  "3513-远古当当",
  "3514-远古巨人",
  "3515-虚空幻影-迅",
  "3516-虚空幻影-猛",
  "3519-年兽山臊",
  "3520-山臊小怪",
  "3600-灯笼鱼",
  "3601-乌贼",
  "3602-深海鱼",
  "3603-巨型咕噜水母",
  "3604-白色呆呆鱼",
  "3605-橙色呆呆鱼",
  "3606-洋红呆呆鱼",
  "3607-淡蓝呆呆鱼",
  "3608-黄色呆呆鱼",
  "3609-黄绿呆呆鱼",
  "3610-粉色呆呆鱼",
  "3611-灰色呆呆鱼",
  "3612-淡灰呆呆鱼",
  "3613-青色呆呆鱼",
  "3614-紫色呆呆鱼",
  "3615-蓝色呆呆鱼",
  "3616-棕色呆呆鱼",
  "3617-绿色呆呆鱼",
  "3618-红色呆呆鱼",
  "3619-黑色呆呆鱼",
  "3800-轨道车",
  "3802-运输轨道车",
  "3803-火箭",
  "3804-tnt轨道车",
  "3806-龙舟",
  "3807-木船",
  "3808-河灯",
  "3809-小狐狸",
  "3810-小灵狐",
  "3811-小墩墩",
  "3812-小牛",
  "3813-小嘟嘟鸟",
  "3814-小羊",
  "3815-小马",
  "3816-小猫",
  "3817-小鸵鸟",
  "3818-小迅猛龙",
  "3819-小企鹅",
  "3820-小冰熊",
  "3821-地心人",
  "3822-骆驼",
  "3823-骆驼（驯服）",
  "3824-毒尾蝎",
  "3825-沙原领主",
  "3826-沙灵守卫",
  "3828-沙漠狼",
  "3829-巨型毒尾蝎",
  "3837-卡卡",
  "3838-妮妮",
  "3839-卡卡",
  "3840-妮妮",
  "3850-灯笼鱼苗",
  "3851-小乌贼",
  "3852-深海鱼苗",
  "3854-白色呆呆鱼苗",
  "3855-橙色呆呆鱼苗",
  "3856-洋红呆呆鱼苗",
  "3857-淡蓝呆呆鱼苗",
  "3858-黄色呆呆鱼苗",
  "3859-黄绿呆呆鱼苗",
  "3860-粉色呆呆鱼苗",
  "3861-灰色呆呆鱼苗",
  "3862-淡灰呆呆鱼苗",
  "3863-青色呆呆鱼苗",
  "3864-紫色呆呆鱼苗",
  "3865-蓝色呆呆鱼苗",
  "3866-棕色呆呆鱼苗",
  "3867-绿色呆呆鱼苗",
  "3868-红色呆呆鱼苗",
  "3869-黑色呆呆鱼苗",
  "3870-猴子",
  "3871-猴子（驯服）",
  "3872-豹子",
  "3873-毒素野人祭司",
  "3874-治疗野人祭司",
  "3875-雷电野人祭司",
  "3876-火焰野人祭司",
  "3877-野人祭司",
  "3878-羽蛇神",
  "3879-祈愿树1",
  "3880-祈愿树2",
  "3881-焱焱蟹",
  "3882-驯服的焱焱蟹",
  "3883-雀莺",
  "3884-驯服的雀莺",
  "3885-红薇蝶",
  "3886-兰青蝶",
  "3887-香粉蝶",
  "3888-向阳蝶",
  "3889-龙信蝶",
  "3890-舌钟蝶",
  "3891-驯服的牛",
  "3892-符文怪",
  "3893-小飞鸡",
  "3894-小战斗鸡",
  "3895-小猴子",
  "3897-灯谜鸟",
  "3898-聚宝盆",
  "3899-宝箱",
  "3900-啦啦队长克莱尔",
  "4001-塔防模板弓箭手",
  "4200-哮天犬",
  "4201-小黄鸡",
  "4500-九色鹿0",
  "4501-苍林白鹿",
  "4502-涅盘绘色",
  "4503-鹿王本生",
  "4504-南瓜车0",
  "4505-魔法南瓜车",
  "4506-皇家南瓜车",
  "4507-精灵南瓜车",
  "4508-竹蜻蜓0级",
  "4509-源码螺旋",
  "4510-三叶螺旋",
  "4511-白天鹅0级",
  "4512-灰甜绒绒 ",
  "4513-星愿雪霜 ",
  "4514-绮幻奇旅 ",
  "4515-曦光绘梦",
  "4516-黑飞机0级",
  "4517-勇士战机",
  "4518-裂空机甲",
  "4519-白飞机0级",
  "4520-飞翼战机",
  "4521-星河机甲",
  "4522-小汽车0级",
  "4523-无敌旋风",
  "4524-环海洛洛0级",
  "4525-环海洛洛",
  "4526-环海洛洛-进阶",
  "4527-尼东洛洛0级",
  "4528-尼东洛洛",
  "4529-尼东洛洛-进阶",
  "4530-龙坐骑0级",
  "4531-红芒赤蛟",
  "4532-九霄金龙",
  "4533-虚空龙祖",
  "4534-画舫0级",
  "4535-玲珑音韵",
  "4536-蝶弄清影",
  "4537-繁花夜明",
  "4538-魔毯0级",
  "4539-天方夜谭",
  "4540-波斯飞毯",
  "4541-星月魔毯",
  "4542-机械鸟0级",
  "4543-咕咕",
  "4544-炼金雀",
  "4545-千机隼",
  "4546-打碟机0级",
  "4547-最强音浪",
  "4548-无限电音",
  "4549-花架0级",
  "4550-云中花架",
  "4551-云梦花舞",
  "4552-扇子0级",
  "4553-水云游",
  "4554-醉花荫",
  "4555-旺财0级",
  "4556-旺财",
  "4557-旺财2级预留",
  "4558-旺财3级预留",
  "4559-帝皇驹0级",
  "4560-超音帝皇驹",
  "4561-陆行帝皇驹",
  "4562-帝皇战龙",
  "4563-布老虎0级",
  "4564-小老虎",
  "4565-萌虎下山",
  "4566-虎虎生威",
  "4567-米兰达0级",
  "4568-米兰达",
  "4569-帝皇侠0级",
  "4570-帝皇侠",
  "4571-纸鹤0级",
  "4572-星语心愿",
  "4573-华灯初上",
  "4574-春风燕语",
  "4575-版本过低",
  "4576-版本过低",
  "4577-版本过低",
  "4578-版本过低",
  "4579-画卷0级",
  "4580-梦逍遥",
  "4581-绘江山",
  "4582-仙钥0级",
  "4583-逐影之钥",
  "4584-梦璃之钥",
  "4585-羽辉之钥",
  "4586-御剑0级",
  "4587-赤霄长剑",
  "4588-轩辕圣剑",
  "4589-浴缸0级",
  "4590-休闲时光",
  "4591-童趣时光",
  "4592-梦幻时光",
  "4593-狐仙0级",
  "4594-萌小狸",
  "4595-狐灵俐",
  "4596-赤颜幻姬",
  "4597-猫猫车0级",
  "4598-喵萌敞篷车",
  "4599-猫猫车2级预留",
  "4600-猫猫车3级预留",
  "4601-骆驼0级",
  "4602-驼铃声声",
  "4603-沙漠之舟",
  "4604-骆驼3级预留",
  "10001-小泡沫",
  "10002-泡泡团子",
  "10003-圆泡团",
  "10004-小孢子",
  "10005-嫩叶团子",
  "10006-豪华团",
  "10007-小石子",
  "10008-岩石团",
  "10009-巨岩团",
  "10010-小火星",
  "10011-暖暖团子",
  "10012-爆热团团",
  "10013-小蝌丁",
  "10014-跳跳蛙",
  "10015-忍忍蛙",
  "10016-小兔叽",
  "10017-兔叽",
  "10018-玉兔叽",
  "10019-迷你汪",
  "10020-大耳汪",
  "10021-汪汪警长",
  "10022-小龙蛋",
  "10023-黑龙蛋",
  "10024-黑龙崽",
  "10025-小雏鹦",
  "10026-球鹦鹉",
  "10027-金羽鹦鹉",
  "10028-小灵球",
  "10029-幽幽球",
  "10030-幽灵王球",
  "10031-小黑猫",
  "10032-黑炭猫",
  "10033-黑黝黝",
  "10034-小球豹",
  "10035-球球豹",
  "10036-球豹王子",
  "10037-小猕猴",
  "10038-奏乐猴",
  "10039-梵音猴",
  "10040-小孔雀",
  "10041-雏孔雀",
  "10042-丰羽孔雀",
  "10043-小麦",
  "10044-小麦",
  "10045-小麦",
  "10046-小卷",
  "10047-小卷",
  "10048-小卷",
  "10049-花生",
  "10050-花生",
  "10051-花生",
  "10052-爱心宝宝",
  "10053-艾宝",
  "10054-艾可兔",
  "10055-小创喵",
  "10056-创极喵",
  "10057-创极虎",
  "10058-闪月灯",
  "10059-皎月灯",
  "10060-满月灯",
  "10061-小酷仔",
  "10062-动感汪",
  "10063-电波犬",
  "10064-小咩团",
  "10065-心羊羊",
  "10066-爱心咩",
  "10067-嘤嘤嗡嗡",
  "10068-孪生蜂蛹",
  "10069-双极纤蜂",
  "10070-招财荷包",
  "10071-聚宝袋",
  "10072-送福金虎",
  "10073-甜心洛普",
  "10074-绒绒洛普 ",
  "10075-闪闪洛普",
  "10076-小银狼",
  "10077-白银猎手",
  "10078-白银领主",
  "10079-熊不醒",
  "10080-瞌睡熊宝",
  "10081-抱梦考拉",
  "10082-章鱼丸子",
  "10083-章鱼厨",
  "10084-八爪美食家",
  "10085-机小智",
  "10086-电波助手",
  "10087-超电子智脑",
  "30000-扭蛋机",
  "39201-斯科特·李",
  "39202-哥伦布·李",
  "39203-库克·李",
  "39204-马可·李",
  "39205-达尔文·李",
  "39206-大山",
  "39207-祈愿树1",
  "39208-祈愿树2",
  "39209-家园商人",
  "39210-家园果实",
  "39211-家园果实",
  "39212-家园果实",
  "39213-家园果实",
  "39214-家园果实",
  "39215-宠物商人",
  "39216-宠物探险队长",
  "39217-家园图鉴",
  "39218-力哥",
  "39219-罗师傅",
  "39220-刘婶",
  "52101-鸡",
  "52102-飞鸡",
  "52103-牛",
  "52104-羊",
  "52105-猪",
  "52106-萌眼咚咚",
  "52107-家园农场动物7",
  "52108-家园农场动物8",
  "52109-家园农场动物9",
  "52110-家园农场动物10",
  "52111-家园农场动物11",
  "52112-家园农场动物12",
  "52113-家园农场动物13",
  "52114-家园农场动物14",
  "52115-家园农场动物15",
  "52116-家园农场动物16",
  "52117-家园农场动物17",
  "52118-家园农场动物18",
  "52119-家园农场动物19",
  "52120-家园农场动物20",
  "52121-小鸡",
  "52122-小飞鸡",
  "52123-小牛",
  "52124-小羊",
  "52125-小猪",
  "52126-小萌眼咚咚",
  "52127-农场幼年动物7",
  "52128-农场幼年动物8",
  "52129-农场幼年动物9",
  "52130-农场幼年动物10",
  "52131-农场幼年动物11",
  "52132-农场幼年动物12",
  "52133-农场幼年动物13",
  "52134-农场幼年动物14",
  "52135-农场幼年动物15",
  "52136-农场幼年动物16",
  "52137-农场幼年动物17",
  "52138-农场幼年动物18",
  "52139-农场幼年动物19",
  "52140-农场幼年动物20",
}
local name = {} --- 功能函数表
local UI = gg.choice(list, nil, '人物代码')
if UI then
if UI == 1 then
local prompt = gg.prompt({ '请输入关键词进行搜索' }, { '' }, { 'text' })
if prompt then
local str = prompt[1] local t = {} local t1 = {}
for i = 2, #list - 1 do if string.find(list[i], str) then table.insert(t, list[i]) table.insert(t1, name[i - 1]) end end
if #t == 0 then
gg.toast('无搜索结果') else
local c = gg.choice(t, nil, '关键词：['.. str .. '],共搜索到' .. #t .. '条结果')
if c then end end end else end if UI == 2 then os.exit()end end FX1=0 
end

function bsdm()
local list = {
"搜索代码",
  "13021-胖哒（永久）",
  "13022-齐天小圣（永久）",
  "13023-兔美美（永久）",
  "13024-迷斯拉（永久）",
  "13025-琉璃酱（永久）",
  "13026-乔治（永久）",
  "13027-安妮（永久）",
  "13028-墨家小飞（永久）",
  "13029-德古拉六世（永久）",
  "13030-叮叮当（永久）",
  "13031-荒原猎人雪诺（永久）",
  "13032-羽姬（永久）",
  "13033-慕容笑天（永久）",
  "13034-西部警长乔伊（永久）",
  "13035-篮球队长卢卡斯（永久）",
  "13036-啦啦队长克莱尔（永久）",
  "13037-西部玫瑰露西（永久）",
  "13038-黑帽子船长蒂奇（永久）",
  "13039-甜心玛丽（永久）",
  "13040-程锦衣（永久）",
  "13041-花小楼（永久）",
  "13042-莉莉丝（永久）",
  "13043-月无双（永久）",
    "20401 小龙（永久）",
  "20402 二郎神（永久）",
  "20403 余小乐（永久）",
  "20404 迷梭梭（永久）",
  "20405 幻音（永久）",
  "20406 幻-零式（永久）",
  "20407 柳仙儿（永久）",
  "20408 帕普奇（永久）",
  "20409 米娜（永久）",
  "20410 雪灵（永久）",
  "20411 嘟嘟啵啵（永久）",
  "20412 嘟嘟（永久）",
  "20413 啵啵（永久）",
  "20414 梦歌（永久）",
  "20415 斩浪（永久）",
  "20416 安吉洛斯（永久）",
  "20417 暗星（永久）",
  "20418 兰斯洛特（永久）",
  "20419 喵小糖（永久）",
  "20420 千兵卫（永久）",
  "20421 星翼（永久）",
  "20422 离（永久）",
  "20423 黯（永久）",
  "20424 啾啾（永久）",
  "20425 华乐（永久）",
  "20426 华乐（永久）",
  "20427 乔克（永久）",
  "20428 小艾（永久）",
  "20429 擎天柱（永久）",
  "20430 威震天（永久）",
  "20431 慕斯（永久）",
  "20432 金柚柚（永久）",
  "20433 喜团团（永久）",
  "20434 林千树（永久）",
  "20435 大黄蜂（永久）",
  "20436 花幽幽（永久）",
  "20437 星灵波波（永久）",
  "20438 雪球球（永久）",
  "20439 爱丽丝（永久）",
  "20440 蛙太郎（永久）",
  "20441 红蜘蛛（永久）",
  "20442 热破（永久）",
  "20443 惊破天（永久）",
  "20444 全能玩家劳尔（永久）",
  "20445 电玩少女铃音（永久）",
  "20446 青弦（永久）",
  "20447 紫悦女孩（永久）",
  "20448 宇宙公主女孩（永久）",
  "20449 柔柔女孩（永久）",
  "20450 月亮公主女孩（永久）",
  "20451 钢锁（永久）",
  "20452 飞标（永久）",
  "20453 嚎叫（永久）",
  "20454 色彩旅行者达奇（永久）",
  "20455 塔莉娅（永久）",
  "20456 森林隐者巫塔（永久）",
  "20457 游戏版本过低",
  "20458 碧琪女孩（永久）",
  "20459 兔子先生拉比（永久）",
  "20460 白夜女巫卡洛儿（永久）",
  "20461 余小欢（永久）",
  "20462 章小丸（永久）",
  "20463 熊小吉（永久）",
  "20464 星光熠熠女孩（永久）",
  "20465 云宝女孩（永久）",
  "20466 音韵公主女孩（永久）",
  "20467 初暮（永久）",
  "20468 冲云霄（永久）",
  "20469 利爪（永久）",
  "20470 铁头（永久）",
  "20471 野牛（永久）",
  "20472 猛虎（永久）",
  "20473 大鹏（永久）",
  "20474 大无畏（永久）",
  "20475 银剑（永久）",
  "20476 弹弓（永久）",
  "20477 俯冲（永久）",
  "20478 空袭（永久）",
  "20479 飞火（永久）",
  "20480 圣婴（永久）",
  "20481 魔炎（永久）",
  "20482 灵瑶（永久）",
  "20483 小红帽阿夏尔（永久）",
  "20484 迷小酷（永久）",
  "20485 狼少年沃尔夫（永久）",
  "20486 天仙子 雅（永久）",
  "20487 临江仙 颂（永久）",
  "20488 红玫瑰少女 仙杜瑞拉（永久）",
  "20489 苍林白鹿（永久）",
  "20490 涅盘绘色（永久）",
  "20491 鹿王本生（永久）",
  "20492 橘子（永久）",
  "20493 绣花球少年 查理斯（永久）",
  "20494 泡泡（永久）",
  "20495 朝露繁花（永久）",
  "20496 冰公主（永久）",
  "20497 罗丽（永久）",
  "20498 白光莹（永久）",
  "20499 灰姑娘 克里斯汀（永久）",
  "27001 灵公主（永久）",
  "27002 小龙人麟休（永久）",
  "27003 妙妙（永久）",
  "27004 白天鹅 奥杰塔（永久）",
  "27005 时希（永久）",
  "27006 洁莉（永久）",
  "27007 快客小涡（永久）",
  "27008 游戏版本过低（永久）",
  "27009 黑天鹅 奥杰塔（永久）",
  "27010 青蛙王子（永久）",
  "27011 巴尔坦星人（永久）",
  "27012 白雪公主（永久）",
  "27013 汉森（永久）",
  "27014 格雷特（永久）",
  "27015 游戏版本过低（永久）",
  "27016 游戏版本过低（永久）",
  "27017 游戏版本过低（永久）",
  "27018 哈鲁（永久）",
  "27019 游戏版本过低（永久）",
  "27020 春雨（永久）",
  "27021 清夏（永久）",
  "27022 秋果（永久）",
  "27023 小蓝（永久）",
  "27024 童梦仙踪（永久）",
  "27025 凌美琪（永久）",
  "27026 凌美雪（永久）",
  "27027 游乐王子（永久）",
  "27028 璎落（永久）",
  "27029 雷光（永久）",
  "27030 凛冬（永久）",
  "27031 珍奇女孩（永久）",
  "27032 苹果嘉儿女孩（永久）",
  "27033 阿拉灯（永久）",
  "27034 匹诺曹（永久）",
  "27035 塔莎（永久）",
  "27036 殷小敏（永久）",
  "27037 施巧灵（永久）",
  "27038 彩俐公主（永久）",
  "27039 幻彩丽影（永久）",
  "27040 血族魔法师 洛特（永久）",
  "27041 瑶月仙子（永久）",
  "27042 玉团儿（永久）",
  "27043 号手妮塔（永久）",
  "27044 鼓手尼普（永久）",
  "27045 龙响无双（永久）",
  "27046 拾玖（永久）",
  "27047 糖心小熊（永久）",
  "27048 星月小梦（永久）",
  "27049 星团公主 波莉（永久）",
  "27050 光影闪动（永久）",
  "27051 魂羽歌者 莺初（永久）",
  "27052 色彩魔法（永久）",
  "27053 弥梦帝君 空侯（永久）",
  "27054 倪羽儿（永久）",
  "27055 谢知礼（永久）",
  "27056 驱魔人 开斯特（永久）",
  "27057 奥利维亚（永久）",
  "27058 黑猫 幽娜（永久）",
  "27059 蜘蛛王子 安德鲁（永久）",
  "27060 极兽特工 沃夫·银（永久）",
  "27061 灵公主（永久）",
  "27062 龙空空（永久）",
  "27063 火鸡专家 托克（永久）",
  "27064 草莓酱 贝瑞（永久）",
  "27065 泰国象神（永久）",
  "27066 电音天后 莎莎（永久）",
  "27067 仙踪守护者 悠妮（永久）",
  "27068 云裳（永久）",
  "27069 元祥儿（永久）",
  "27070 颜廷怀（永久）",
  "27071 舞狮游龙（永久）",
  "27072 蜜多多（永久）",
  "27073 沈一弦（永久）",
  "27074 云胭（永久）",
  "27075 苍鸿（永久）",
  "27076 亡灵舞者卡特里娜（永久）",
  "27077 蜘蛛女孩（永久）",
  "27078 米兰达（永久）",
  "27079 帝皇侠（永久）",
  "27080 虎心玉（永久）",
  "27081 虎啸丰（永久）",
  "27082 艾菲莉（永久）",
  "27083 泰林（永久）",
  "27084 芙洛丝（永久）",
  "27085 霓裳物语（永久）",
  "27086 炎龙侠（永久）",
  "27087 狂欢节女王（永久）",
  "27088 潘朵（永久）",
  "27089 棒球王子（永久）",
  "27090 小海侠莫塔（永久）",
  "27091 花火（永久）",
  "27092 魔闪闪（永久）",
  "27093 烽灵（永久）",
  "27094 陶梦蝶（永久）",
  "27095 版本过低（永久）",
  "27096 雪莉（永久）",
  "27097 版本过低",
  "27098 版本过低",
  "27099 版本过低",
  "27100 版本过低",
  "27101 梦魇之月女孩（永久）",
  "27102 格莉菲塔（永久）",
  "27103 莱柯（永久）",
  "27104 觉醒者妮妮（永久）",
  "27105 觉醒者卡卡（永久）",
  "27106 银铃（永久）",
  "27107 可瑞尔（永久）",
  "27108 刑天侠（永久）",
  "27109 风鹰侠（永久）",
  "27110 长发公主 萝拉（永久）",
  "27111 版本过低",
  "27112 绮梦灵狐·华阳（永久）",
  "27113 绮梦灵狐·华阳（永久）",
  "27114 绮梦灵狐·华阳（永久）",
  "27115 余晖烁烁女孩（永久）",
  "27116 特丽克西女孩（永久）",
  "27117 闪耀盔甲男孩（永久）",
  "27118 露米尔（永久）",
  "27119 卢西亚（永久）",
  "27120 拇指姑娘 蒂妮（永久）",
  "27121 龙小宝（永久）",
  "27122 唐三（永久）",
  "27123 小舞（永久）",
  "27124 比比东（永久）",
  "27125 奥斯卡（永久）",
  "27126 马红俊（永久）",
  "27127 绮萝（永久）",
  "27128 戴沐白（永久）",
  "27129 朱竹清（永久）",
  "27130 宁荣荣（永久）",
  "27131 白昼雪姬 喵菲（永久）",
  "27132 云朵绒绒 妮姆（永久）",
  "27133 雨林魅影 浣溪（永久）",
  "27134 梅珂玟（永久）",
  "27135 埃若白（永久）",
  "27136 逐梦（永久）",
  "27137 部落雄鹰卡卡（永久）",
  "27138 部落酋长妮妮（永久）",
  "27139 酋长（永久）",
  "27140 酋长夫人（永久）",
  "27141 卡卡（永久）",
  "27142 妮妮（永久）",
  "27143 熊孩子（永久）",
  "27144 队长汤姆（永久）",
  "27145 特工罗拉（永久）",
  "27146 小淘气辛迪（永久）",
  "27147 助教彼得（永久）",
  "27148 史提芬教授（永久）",
  "27149 酷乐主义 拉沙儿（永久）",
  "27150 粉梦幻想 苔丝（永久）",
  "27151 暮光落霞 浣溪（永久）",
  "27152 咕咚（永久）",
  "27153 奶油甜橙 希瑟（永久）",
  "27154 池塘盛夏 绘芽（永久）",
  "27155 弥禾（永久）",
  "27156 柿梓（永久）",
  "27157 凯莉（永久）",
  "27158 雪裙（永久）",
  "27159 竹笙（永久）",
  "27160 天幕星龙 卡珀（永久）",
  "27161 版本过低",
  "27162 版本过低",
  "27163 版本过低",
  "27164 版本过低",
  "27165 版本过低",
  "27166 栗子（永久）",
  "27167 极兽特工 洛泽·青（永久）",
  "27168 丹镜（永久）",
  "27169 玛丽露（永久）",
  "27170 爱尔莉丝（永久）",
  "27171 星海流光 诺莉（永久）",
  "27172 星云闪梦 贝可（永久）",
  "27173 雪圆圆（永久）",
  "27174 竹爆爆（永久）",
}
local name = {} --- 功能函数表
local UI = gg.choice(list, nil, '皮肤代码')
if UI then
if UI == 1 then
local prompt = gg.prompt({ '请输入关键词进行搜索' }, { '' }, { 'text' })
if prompt then
local str = prompt[1] local t = {} local t1 = {}
for i = 2, #list - 1 do if string.find(list[i], str) then table.insert(t, list[i]) table.insert(t1, name[i - 1]) end end
if #t == 0 then
gg.toast('无搜索结果') else
local c = gg.choice(t, nil, '关键词：['.. str .. '],共搜索到' .. #t .. '条结果')
if c then end end end else end if UI == 2 then os.exit()end end FX1=0 
end

function xkdm()
local list = {
"搜索代码",
  "20600-邻家男孩头饰（7天）",
  "20601-邻家男孩表情（7天）",
  "20602-邻家男孩上衣（7天）",
  "20603-邻家男孩裤子（7天）",
  "20604-邻家男孩鞋子（7天）",
  "20605-邻家女孩头饰（7天）",
  "20606-邻家女孩表情（7天）",
  "20607-邻家女孩连衣裙（7天）",
  "20608-邻家女孩鞋子（7天）",
  "20609-足球少年头饰（7天）",
  "20610-足球少年表情（7天）",
  "20611-足球少年上衣（7天）",
  "20612-足球少年裤子（7天）",
  "20613-足球少年鞋子（7天）",
  "20614-足球宝贝头饰（7天）",
  "20615-足球宝贝表情（7天）",
  "20616-足球宝贝上衣（7天）",
  "20617-足球宝贝裤子（7天）",
  "20618-足球宝贝鞋子（7天）",
  "20619-书包（7天）",
  "20620-宇航员头盔（7天）",
  "20621-宇航员表情（7天）",
  "20622-迷你贴纸（7天）",
  "20623-宇航员衣服（7天）",
  "20624-宇航员背包（7天）",
  "20625-足球贴纸（7天）",
  "20626-大黄奶嘴（7天）",
  "20627-西瓜冰棍（7天）",
  "20628-度假墨镜（7天）",
  "20629-冲浪男孩头饰（7天）",
  "20630-冲浪男孩表情（7天）",
  "20631-冲浪男孩上衣（7天）",
  "20632-冲浪男孩裤子（7天）",
  "20633-冲浪男孩鞋子（7天）",
  "20634-冲浪板背饰（7天）",
  "20635-海滨假日头饰（7天）",
  "20636-海滨假日表情（7天）",
  "20637-海滨假日上衣（7天）",
  "20638-海滨假日裤子（7天）",
  "20639-海滨假日鞋子（7天）",
  "20640-海滨假日手饰（7天）",
  "20641-浪漫绅士头饰（7天）",
  "20642-浪漫绅士表情（7天）",
  "20643-浪漫绅士衣服（7天）",
  "20644-浪漫绅士裤子（7天）",
  "20645-浪漫绅士鞋子（7天）",
  "20646-甜心少女头饰（7天）",
  "20647-甜心少女表情（7天）",
  "20648-甜心少女衣服（7天）",
  "20649-甜心少女手套（7天）",
  "20650-甜心少女裤子（7天）",
  "20651-甜心少女鞋子（7天）",
  "20652-爱心唇印贴纸（7天）",
  "20653-脚丫脚印（7天）",
  "20654-团子脚印（7天）",
  "20655-幻蓝脚印（7天）",
  "20656-幻音脚印（7天）",
  "20657-云游剑客鞋子（7天）",
  "20658-云游剑客裤子（7天）",
  "20659-云游剑客衣服（7天）",
  "20660-云游剑客表情（7天）",
  "20661-云游剑客头饰（7天）",
  "20662-掌门千金鞋子（7天）",
  "20663-掌门千金护手（7天）",
  "20664-掌门千金裤子（7天）",
  "20665-掌门千金衣服（7天）",
  "20666-掌门千金表情（7天）",
  "20667-掌门千金头饰（7天）",
  "20668-满月脚印（7天）",
  "20669-宝剑背饰（7天）",
  "20670-披风背饰（7天）",
  "20671-玉兔背饰（7天）",
  "20672-五仁月饼背饰（7天）",
  "20673-名门淑女头饰（7天）",
  "20674-彩虹马裤子（7天）",
  "20675-悍马头饰（7天）",
  "20676-巡游警长鞋子（7天）",
  "20677-巡游警长裤子（7天）",
  "20678-巡游警长衣服（7天）",
  "20679-巡游警长表情（7天）",
  "20680-巡游警长头饰（7天）",
  "20681-小恶魔背包（7天）",
  "20682-圣诞宝贝鞋子（7天）",
  "20683-圣诞宝贝手套（7天）",
  "20684-圣诞宝贝裙子（7天）",
  "20685-圣诞宝贝头饰（7天）",
  "20686-圣诞宝贝表情（7天）",
  "20687-圣诞宝贝披肩（7天）",
  "20688-圣诞少年鞋子（7天）",
  "20689-圣诞少年裤子（7天）",
  "20690-圣诞少年衣服（7天）",
  "20691-圣诞少年头饰（7天）",
  "20692-圣诞少年表情（7天）",
  "20693-冬季俏皮鞋子（7天）",
  "20694-冬季俏皮手套（7天）",
  "20695-冬季俏皮裙子（7天）",
  "20696-冬季俏皮衣服（7天）",
  "20697-冬季俏皮表情（7天）",
  "20698-冬季俏皮头饰（7天）",
  "20699-冬季暖风鞋子（7天）",
  "20700-冬季暖风手套（7天）",
  "20701-冬季暖风衣服（7天）",
  "20702-冬季暖风表情（7天）",
  "20703-冬季暖风头饰（7天）",
  "20704-船长金钩（7天）",
  "20705-大白鲨衣服（7天）",
  "20706-大白鲨头饰（7天）",
  "20707-橄榄球员手套（7天）",
  "20708-橄榄球员鞋子（7天）",
  "20709-橄榄球员裤子（7天）",
  "20710-橄榄球员衣服（7天）",
  "20711-橄榄球员头饰（7天）",
  "20712-虎头鞋（7天）",
  "20713-虎虎生风披风（7天）",
  "20714-龙头帽头饰（7天）",
  "20715-虎头帽头饰（7天）",
  "20716-吉祥娃娃衣服（7天）",
  "20717-吉祥娃娃头饰（7天）",
  "20718-鎏金鞋子（7天）",
  "20719-棕色灯芯绒裤（7天）",
  "20720-鎏金马褂（7天）",
  "20721-瓜皮帽头饰（7天）",
  "20722-铜钱脚印（7天）",
  "20723-王卡专属脚印（7天）",
  "20724-王卡专属背饰（7天）",
  "20725-王卡专属表情（7天）",
  "20726-王卡专属衣服（7天）",
  "20727-王卡专属头饰（7天）",
  "20728-满福背篓（7天）",
  "20729-摇钱树头饰（7天）",
  "20730-橄榄球背包（7天）",
  "20731-刀马旦头饰（7天）",
  "20732-刀马旦表情（7天）",
  "20733-刀马旦衣服（7天）",
  "20734-武生头饰（7天）",
  "20735-武生表情（7天）",
  "20736-武生衣服（7天）",
  "20737-春之百合头饰（7天）",
  "20738-春之蓝菇头饰（7天）",
  "20739-春之玫瑰头饰（7天）",
  "20740-春之雏菊头饰（7天）",
  "20741-胖哒帽衫（7天）",
  "20742-天珠外套（7天）",
  "20743-狂欢之舞头饰（7天）",
  "20744-狂欢之舞背饰（7天）",
  "20745-猪猪头饰（7天）",
  "20746-小机灵表情（7天）",
  "20747-星星眼表情（7天）",
  "20748-粉红可爱表情（7天）",
  "20749-青灰呆萌表情（7天）",
  "20750-深红喜悦表情（7天）",
  "20751-春之百合裙子（7天）",
  "20752-春之雏菊裙子（7天）",
  "20753-春之玫瑰裙子（7天）",
  "20754-春之蓝菇裙子（7天）",
  "20755-春之翼（7天）",
  "20756-青春校园衣服（7天）",
  "20757-青春校园裤子（7天）",
  "20758-青春校园鞋子（7天）",
  "20759-青春校园书包（7天）",
  "20760-青春校园脚印（7天）",
  "20761-安吉洛斯脚印（7天）",
  "20762-安吉洛斯羽翼（7天）",
  "20763-泰风优雅裙子（7天）",
  "20764-泰风优雅披肩（7天）",
  "20765-泰风清凉短裤（7天）",
  "20766-泰风清凉短袖（7天）",
  "20767-复古单片眼镜（7天）",
  "20768-蓝色小清新头饰（7天）",
  "20769-校园男孩头饰（7天）",
  "20770-高冷白发头饰（7天）",
  "20771-小熊玩偶背包（7天）",
  "20772-小熊印花短袖（7天）",
  "20773-小熊发卡头饰（7天）",
  "20774-粉红兔鞋子（7天）",
  "20775-粉红兔手套（7天）",
  "20776-兔尾巴短裤（7天）",
  "20777-粉红兔衣服（7天）",
  "20778-粉红兔头饰（7天）",
  "20779-彩蛋背包（7天）",
  "20780-胡萝卜背包（7天）",
  "20781-白羊座表情（7天）",
  "20782-白羊座头饰（7天）",
  "20783-元气满满表情（7天）",
  "20784-傲娇脸表情（7天）",
  "20785-眼前一亮表情（7天）",
  "20786-卖萌可爱表情（7天）",
  "20787-偷瞄脸表情（7天）",
  "20788-电力四射表情（7天）",
  "20789-帅气中分头饰（7天）",
  "20790-海洋之风头饰（7天）",
  "20791-小小水手头饰（7天）",
  "20792-猫系少女头饰（7天）",
  "20793-凌乱少年头饰（7天）",
  "20794-粉红俏皮头饰（7天）",
  "20795-贪睡小猫头饰（7天）",
  "20796-贪睡小猫衣服（7天）",
  "20797-黄白之恋裙子（7天）",
  "20798-和风卫衣（7天）",
  "20799-小猫背带套装（7天）",
  "20800-一字肩上衣（7天）",
  "20801-英伦风衣（7天）",
  "20802-小淘气背心（7天）",
  "20803-连袜短裙（7天）",
  "20804-水手短裤（7天）",
  "20805-绅士短裤（7天）",
  "20806-紫魅短裙（7天）",
  "20807-小熊鞋子（7天）",
  "20808-猫咪短靴（7天）",
  "20809-蝴蝶鞋子（7天）",
  "20810-猫咪拖鞋（7天）",
  "20811-绅士布鞋（7天）",
  "20812-活力帆布鞋（7天）",
  "20813-复古圆框眼镜（7天）",
  "20814-复古方框眼镜（7天）",
  "20815-彩虹手环（7天）",
  "20816-金牛座表情（7天）",
  "20817-金牛座头饰（7天）",
  "20818-电玩大神表情（7天）",
  "20819-超级电玩眼镜（7天）",
  "20820-超级电玩背包（7天）",
  "20821-电玩大脚印（7天）",
  "20822-挑战者衣服（7天）",
  "20823-挑战者头饰（7天）",
  "20824-挑战者背包（7天）",
  "20825-挑战者面饰（7天）",
  "20826-挑战者手套（7天）",
  "20827-挑战者表情（7天）",
  "20828-游戏大咖头饰（7天）",
  "20829-游戏大咖外套（7天）",
  "20830-游戏大咖裤子（7天）",
  "20831-游戏大咖鞋子（7天）",
  "20832-游戏女神头饰（7天）",
  "20833-游戏女神外套（7天）",
  "20834-游戏女神短裤（7天）",
  "20835-游戏女神鞋子（7天）",
  "20836-大发现表情（7天）",
  "20837-认真表情（7天）",
  "20838-自信微笑表情（7天）",
  "20839-贪玩喵喵表情（7天）",
  "20840-惊讶表情（7天）",
  "20841-俏皮坏笑表情（7天）",
  "20842-喷气飞翼（7天）",
  "20843-螺旋飞翼（7天）",
  "20844-化学增强枪（7天）",
  "20845-超能战喵背包（7天）",
  "20846-战地通讯员绷带（7天）",
  "20847-科幻羽翼鞋子（7天）",
  "20848-废土运动鞋（7天）",
  "20849-粒子动能长靴（7天）",
  "20850-未来机甲鞋子（7天）",
  "20851-机械战警腿甲（7天）",
  "20852-战地通讯员头饰（7天）",
  "20853-未来士兵头饰（7天）",
  "20854-废土护目镜头饰（7天）",
  "20855-超能战喵头饰（7天）",
  "20856-机械青蛙头饰（7天）",
  "20857-战地通讯员上衣（7天）",
  "20858-废土披风（7天）",
  "20859-探险者外套（7天）",
  "20860-未来魔法披风（7天）",
  "20861-机甲大神上衣（7天）",
  "20862-收集者裤子（7天）",
  "20863-能源绑带短裤（7天）",
  "20864-科幻时尚短裤（7天）",
  "20865-机器猫尾裤子（7天）",
  "20866-机甲运动短裤（7天）",
  "20867-双子座表情（7天）",
  "20868-双子座头饰（7天）",
  "20869-海上女王头饰（7天）",
  "20870-海上女王长裙（7天）",
  "20871-海上女王鞋子（7天）",
  "20872-奇迹之子头饰（7天）",
  "20873-奇迹之子衣服（7天）",
  "20874-奇迹之子腕甲（7天）",
  "20875-迷你英雄战斗服（7天）",
  "20876-迷你英雄斗篷（7天）",
  "20877-小王子上衣（7天）",
  "20878-小王子马裤（7天）",
  "20879-小王子马靴（7天）",
  "20880-小王子头冠（7天）",
  "20881-小公主裙子（7天）",
  "20882-小公主长袜（7天）",
  "20883-小公主鞋子（7天）",
  "20884-小公主头冠（7天）",
  "20885-小仙女翅膀（7天）",
  "20886-小王子表情（7天）",
  "20887-小公主表情（7天）",
  "20888-机械拳套（7天）",
  "20889-小公主手套（7天）",
  "20890-佐罗面具（7天）",
  "20891-个性涂鸦背包（7天）",
  "20892-流浪乐手背饰（7天）",
  "20893-潮流口罩（7天）",
  "20894-甜心宝贝背包（7天）",
  "20895-仙人花花背饰（7天）",
  "20896-绣花汉服鞋子（7天）",
  "20897-初夏暖阳凉鞋（7天）",
  "20898-酷酷棒球帽（7天）",
  "20899-嘻哈风头饰（7天）",
  "20900-豆蔻年华头饰（7天）",
  "20901-蝴蝶结包包头（7天）",
  "20902-暖暖小黄帽（7天）",
  "20903-小水手头饰（7天）",
  "20904-远洋海风裙子（7天）",
  "20905-个性少年裤子（7天）",
  "20906-采花少女裙子（7天）",
  "20907-小海军连衣裙（7天）",
  "20908-船长背带裤（7天）",
  "20909-水手衣服（7天）",
  "20910-小海军衣服（7天）",
  "20911-小清新衣服（7天）",
  "20912-酷炫街舞衣服（7天）",
  "20913-孟夏佳人裙子（7天）",
  "20914-墨西哥宽边帽（7天）",
  "20915-端午汉服（7天）",
  "20916-粽子背包（7天）",
  "20917-小迷糊表情（7天）",
  "20918-疾风弓箭（7天）",
  "20919-富运达摩背饰（7天）",
  "20920-武士刀背饰（7天）",
  "20921-猫咪手套（7天）",
  "20922-妖狐尾背饰（7天）",
  "20923-甜甜游泳圈（7天）",
  "20924-二齿木屐（7天）",
  "20925-猫耳头饰（7天）",
  "20926-甜心马尾头饰（7天）",
  "20927-狐耳头饰（7天）",
  "20928-立夏花火头饰（7天）",
  "20929-妖狐面具头饰（7天）",
  "20930-和风百褶裙（7天）",
  "20931-神奈川短裤（7天）",
  "20932-妖怪羽织（7天）",
  "20933-樱花背心（7天）",
  "20934-稻禾巫女服（7天）",
  "20935-祈福狩衣（7天）",
  "20936-金鱼姬裙子（7天）",
  "20937-弓道服（7天）",
  "20938-日式工匠服（7天）",
  "20939-夏日点点泳衣（7天）",
  "20940-海滩休闲衬衫（7天）",
  "20941-巨蟹座表情（7天）",
  "20942-巨蟹座头饰（7天）",
  "20943-气鼓鼓表情（7天）",
  "20944-楚楚可怜表情（7天）",
  "20945-桃香幸缘表情（7天）",
  "20946-甜夏西瓜表情（7天）",
  "20947-俏狐狸表情（7天）",
  "20948-剑客行表情（7天）",
  "20949-梅香罗伞（7天）",
  "20950-桃花琵琶（7天）",
  "20951-蔷薇眼罩（7天）",
  "20952-金丝面纱（7天）",
  "20953-金丝踏云靴（7天）",
  "20954-玛丽珍鞋（7天）",
  "20955-陌上人如玉（7天）",
  "20956-公子世无双（7天）",
  "20957-雕金乌纱帽（7天）",
  "20958-江南印象头饰（7天）",
  "20959-红尘醉头饰（7天）",
  "20960-云纹短裤（7天）",
  "20961-千鸳短裤（7天）",
  "20962-芍药天香上衣（7天）",
  "20963-竹笙锦瑟上衣（7天）",
  "20964-民国故事上衣（7天）",
  "20965-木棉旗袍（7天）",
  "20966-素喜衣裳（7天）",
  "20967-故人听竹（7天）",
  "20968-翻云绘长歌（7天）",
  "20969-金丝墨云锦袍（7天）",
  "20970-樱花脚印（7天）",
  "20971-猫咪脚印（7天）",
  "20972-玩偶甜心表情（7天）",
  "20973-小虎牙表情（7天）",
  "20974-异瞳坏笑表情（7天）",
  "20975-嘟嘟嘴表情（7天）",
  "20976-魔法甜心表情（7天）",
  "20977-纯白纱布眼罩（7天）",
  "20978-海豹宝宝背包（7天）",
  "20979-小恶魔翅膀（7天）",
  "20980-蕾丝手袖（7天）",
  "20981-白色罗马鞋（7天）",
  "20982-红熊拖鞋（7天）",
  "20983-探险马丁靴（7天）",
  "20984-星间飞行凉鞋（7天）",
  "20985-雪精灵编发（7天）",
  "20986-恶魔角头饰（7天）",
  "20987-朴素礼帽（7天）",
  "20988-羊羊爱丽丝（7天）",
  "20989-纸箱头（7天）",
  "20990-斑马长筒袜（7天）",
  "20991-独角兽少女裙子（7天）",
  "20992-机能上衣（7天）",
  "20993-潮流绅士（7天）",
  "20994-蔷薇故事（7天）",
  "20995-梦游仙境（7天）",
  "20996-星夜衬衫（7天）",
  "20997-海豹夹克（7天）",
  "20998-牛仔背带裤（7天）",
  "20999-爱心牛仔裙（7天）",
  "21000-狮子座头饰（7天）",
  "21001-狮子座表情（7天）",
  "21002-调皮吐舌表情（7天）",
  "21003-龇牙表情（7天）",
  "21004-嘟嘴呆萌表情（7天）",
  "21005-暖心微笑表情（7天）",
  "21006-爱心创口贴（7天）",
  "21007-荧光手表（7天）",
  "21008-简约黑红鞋子（7天）",
  "21009-摇滚皮靴（7天）",
  "21010-复古牛津鞋（7天）",
  "21011-海盗热裤（7天）",
  "21012-撞色风暴（7天）",
  "21013-萌动百褶裙（7天）",
  "21014-机车少女背心（7天）",
  "21015-魔力少女外套（7天）",
  "21016-荧光闪点外套（7天）",
  "21017-糖果甜心头饰（7天）",
  "21018-电音小子头饰（7天）",
  "21019-喵喵耳机头饰（7天）",
  "21020-处女座头饰（7天）",
  "21021-处女座表情（7天）",
  "21022-豆豆眉表情（7天）",
  "21023-糖果猫咪表情（7天）",
  "21024-琥珀鼓气表情（7天）",
  "21025-乖巧萌宠表情（7天）",
  "21026-狗狗贴纸（7天）",
  "21027-秋田犬爪套（7天）",
  "21028-精致小皮鞋（7天）",
  "21029-剑侠绑腿靴（7天）",
  "21030-粉莲绣花鞋（7天）",
  "21031-简约篮球鞋（7天）",
  "21032-西装裤（7天）",
  "21033-浅溪短裙（7天）",
  "21034-牛仔潮服（7天）",
  "21035-甜心洛可可（7天）",
  "21036-明月几时有（7天）",
  "21037-五仁共团圆（7天）",
  "21038-繁花波奈特（7天）",
  "21039-绅士帽子（7天）",
  "21040-玉兔头饰（7天）",
  "21041-皓月童子（7天）",
  "21042-针织狐狸帽（7天）",
  "21043-公牛队篮球服（7天）",
  "21044-湖人队篮球服（7天）",
  "21045-开拓者队篮球服（7天）",
  "21046-猛龙队篮球服（7天）",
  "21047-雄鹿队篮球服（7天）",
  "21048-勇士队篮球服（7天）",
  "21049-野性光辉（7天）",
  "21050-扑克谜语（7天）",
  "21051-龙甲冰珠玉佩（7天）",
  "21052-小龙背包（7天）",
  "21053-同福酒坛（7天）",
  "21054-溪间语手链（7天）",
  "21055-甜点兔背包（7天）",
  "21056-甜心猫尾（7天）",
  "21057-锦瑟翻边靴（7天）",
  "21058-红缨甲靴（7天）",
  "21059-随性穿搭（7天）",
  "21060-格子物语（7天）",
  "21061-破洞牛仔裤（7天）",
  "21062-星愿蓬蓬裙（7天）",
  "21063-霸王甲（7天）",
  "21064-盛唐舞裙（7天）",
  "21065-糖果恶魔（7天）",
  "21066-大檐帽头饰（7天）",
  "21067-炽日头饰（7天）",
  "21068-战英豪（7天）",
  "21069-飞天发髻（7天）",
  "21070-战火燎原（7天）",
  "21071-天秤座表情（7天）",
  "21072-天秤座头饰（7天）",
  "21073-星花飞舞（7天）",
  "21074-凤纹奥黛服饰（7天）",
  "21075-繁花奥黛头饰（7天）",
  "21076-古灵精怪表情（7天）",
  "21077-萌呆呆表情（7天）",
  "21078-粉红泡泡表情（7天）",
  "21079-幸福紫表情（7天）",
  "21080-不规则特性（7天）",
  "21081-狗狗短裤（7天）",
  "21082-百变系带靴（7天）",
  "21083-南瓜小恶魔（7天）",
  "21084-埃及头饰（7天）",
  "21085-魔法南瓜头饰（7天）",
  "21086-木乃伊头饰（7天）",
  "21087-南瓜宝宝头饰（7天）",
  "21088-星星女巫头饰（7天）",
  "21089-天蝎座头饰（7天）",
  "21090-万圣小女巫（7天）",
  "21091-万圣魔法使（7天）",
  "21092-提灯小幽灵（7天）",
  "21093-魔法扫帚（7天）",
  "21094-不给糖就捣蛋（7天）",
  "21095-蓝焰脚印（7天）",
  "21096-小狐仙表情（7天）",
  "21097-深海之谜表情（7天）",
  "21098-红粉轻甜表情（7天）",
  "21099-黄金瞳表情（7天）",
  "21100-额间朱砂表情（7天）",
  "21101-英伦小皮鞋（7天）",
  "21102-深秋时节（7天）",
  "21103-恋恋心情（7天）",
  "21104-海豹学园制服（7天）",
  "21105-未来之翼（7天）",
  "21106-暖心堆堆袜（7天）",
  "21107-轻松板鞋（7天）",
  "21108-迷彩工装裤（7天）",
  "21109-冬季水手服（7天）",
  "21110-暖冬物语（7天）",
  "21111-哈士奇卫衣（7天）",
  "21112-极客卫衣（7天）",
  "21113-冬之礼服（7天）",
  "21114-恋冬之歌（7天）",
  "21115-爱宠出游（7天）",
  "21116-绒绒小黄鸭（7天）",
  "21117-沉默编织（7天）",
  "21118-丝带情结（7天）",
  "21119-哈士奇头套（7天）",
  "21120-射手座头饰（7天）",
  "21121-2020年度眼镜（7天）",
  "21122-圣诞老人胡子（7天）",
  "21123-初雪莲棠（7天）",
  "21124-步步高升（7天）",
  "21125-敛芳菲（7天）",
  "21126-萌鼠头饰（7天）",
  "21127-绵绵鼠圆帽（7天）",
  "21128-龙子发冠（7天）",
  "21129-丁香结（7天）",
  "21130-墨云染（7天）",
  "21131-玲珑送福（7天）",
  "21132-吉星高照（7天）",
  "21133-花开富贵（7天）",
  "21134-锦绣山河（7天）",
  "21135-礼物盒脚印（7天）",
  "21136-星光奇迹（7天）",
  "21137-铃儿叮当（7天）",
  "21138-姜饼人奇遇（7天）",
  "21139-圣夜之愿（7天）",
  "21140-缤纷回响（7天）",
  "21141-奇妙圣诞夜（7天）",
  "21142-平安夜的礼物（7天）",
  "21143-米兔（7天）",
  "21144-庄严典礼（7天）",
  "21145-小胡子（7天）",
  "21146-英式筒靴（7天）",
  "21147-胡桃夹子（7天）",
  "21148-皇室礼仪（7天）",
  "21149-年画鼠（7天）",
  "21150-步步迎福（7天）",
  "21151-子鼠玩偶背包（7天）",
  "21152-金鱼腰坠（7天）",
  "21153-童趣（7天）",
  "21154-暗纹绑手（7天）",
  "21155-华光映莲（7天）",
  "21156-桃花笑（7天）",
  "21157-狐步舞（7天）",
  "21158-中国结短靴（7天）",
  "21159-芳华之舞（7天）",
  "21160-穿个灯笼（7天）",
  "21161-金铃如意（7天）",
  "21162-锦鲤抄（7天）",
  "21163-爆竹声声（7天）",
  "21164-送福童子（7天）",
  "21165-长生结（7天）",
  "21166-踏云来（7天）",
  "21167-书声琅琅（7天）",
  "21168-万卷书（7天）",
  "21169-云中月（7天）",
  "21170-踏粉莲（7天）",
  "21171-花中曲（7天）",
  "21172-陌上繁花（7天）",
  "21173-豆蔻语（7天）",
  "21174-盛放（7天）",
  "21175-锦绣缘（7天）",
  "21176-琳琅（7天）",
  "21177-凤舞倾城（7天）",
  "21178-桃花灼灼（7天）",
  "21179-荣光（7天）",
  "21180-御云天（7天）",
  "21181-琼宇（7天）",
  "21182-龙吟盛世（7天）",
  "21183-盘龙织影（7天）",
  "21184-鸦语蔷薇（7天）",
  "21185-沁桃红酒（7天）",
  "21186-暗红舞步（7天）",
  "21187-虚荣王座（7天）",
  "21188-红皇后（7天）",
  "21189-纷乱深渊（7天）",
  "21190-龙骨十字（7天）",
  "21191-魔法时间（7天）",
  "21192-正义视线（7天）",
  "21193-魔法阵脚印（7天）",
  "21194-狮心王权（7天）",
  "21195-荣耀圣骑（7天）",
  "21196-英骑之魂（7天）",
  "21197-钻石星辰（7天）",
  "21198-纯白桂冠（7天）",
  "21199-白皇后（7天）",
  "21200-健康守护者（7天）",
  "21201-金丝猴玩偶（7天）",
  "21202-雪豹守护者（女）（7天）",
  "21203-糖果运动鞋（7天）",
  "21204-雪豹守护者（男）（7天）",
  "21205-炫彩运动鞋（7天）",
  "21206-雪豹玩偶（7天）",
  "21207-孔雀开屏（7天）",
  "21208-雀翎背带裙（7天）",
  "21209-萌动鼠兔（7天）",
  "21210-包裹鼠兔（7天）",
  "21211-滚滚来袭（7天）",
  "21212-软绒豹尾背饰（7天）",
  "21213-极地短靴（7天）",
  "21214-高原贵族（7天）",
  "21215-雪域领主（7天）",
  "21216-绒绒雪地靴（7天）",
  "21217-高原公主（7天）",
  "21218-雪域蔷薇（7天）",
  "21219-踏雪寻踪（7天）",
  "21220-扑克迷宫（7天）",
  "21221-提拉米苏（7天）",
  "21222-金色海洋（7天）",
  "21223-狮子王（7天）",
  "21224-月圆之夜（7天）",
  "21225-萌兔黑森林（7天）",
  "21226-诡秘舞台（7天）",
  "21227-柴郡猫（7天）",
  "21228-疯帽匠（7天）",
  "21229-白雪姬（7天）",
  "21230-甜香蔓越莓（7天）",
  "21231-探险奇遇（7天）",
  "21232-侦查小队（7天）",
  "21233-先锋探索者（7天）",
  "21234-虹彩幻想（7天）",
  "21235-甜心机甲（7天）",
  "21236-未来音律（7天）",
  "21237-幻彩节拍（7天）",
  "21238-超能水手服（7天）",
  "21239-机械臂（7天）",
  "21240-机动装置（7天）",
  "21241-夜空闪耀（7天）",
  "21242-翡翠回响（7天）",
  "21243-双鱼座头饰（7天）",
  "21244-水瓶座头饰（7天）",
  "21245-摩羯座头饰（7天）",
  "21246-丘比特之心（7天）",
  "21247-甜蜜之水（7天）",
  "21248-甜心贩售机（7天）",
  "21249-爱神的闪光（7天）",
  "21250-暗色星辰（7天）",
  "21251-深渊凝视（7天）",
  "21252-暗影之炎（7天）",
  "21253-恶魔贵族（7天）",
  "21254-远行客（7天）",
  "21255-巫山云雨（7天）",
  "21256-千叶忍（7天）",
  "21257-眸光一闪（7天）",
  "21258-般若之面（7天）",
  "21259-那须与一（7天）",
  "21260-茶花物语（7天）",
  "21261-小萌神（7天）",
  "21262-桥姬梦语（7天）",
  "21263-温暖甜橙（7天）",
  "21264-凌波踏羽（7天）",
  "21265-甜粽子（7天）",
  "21266-咸粽子（7天）",
  "21267-调查员鞋（7天）",
  "21268-跳鼠兜帽（7天）",
  "21269-科技城制服（7天）",
  "21270-跳鼠侦查包（7天）",
  "21271-海色云天（7天）",
  "21272-花田少女（7天）",
  "21273-浅海漫游（7天）",
  "21274-休闲时刻（7天）",
  "21275-热带风光（7天）",
  "21276-度假背心（7天）",
  "21277-运动汽水（7天）",
  "21278-西瓜冰淇淋（7天）",
  "21279-柠檬软糖（7天）",
  "21280-夏日青柠（7天）",
  "21281-玩水时间（7天）",
  "21282-星光舞台（7天）",
  "21283-天空旋律（7天）",
  "21284-鲜脆青提（7天）",
  "21285-莓果缤纷（7天）",
  "21286-星河演唱会（7天）",
  "21287-星之咏叹调（7天）",
  "21288-森林回响（7天）",
  "21289-黎明唱诗班（7天）",
  "21290-月光奏鸣曲（7天）",
  "21291-花之礼赞（7天）",
  "21292-圣堂弦音（7天）",
  "21293-忘川引渡（7天）",
  "21294-能量眼罩（7天）",
  "21295-勇士的精神（7天）",
  "21296-能量护臂（7天）",
  "21297-能量战靴（7天）",
  "21298-能量头饰（7天）",
  "21299-能量腿甲（7天）",
  "21300-能量之铠（7天）",
  "21301-勇者极光巨刃（7天）",
  "21302-能量之源（7天）",
  "21303-创造滑板（7天）",
  "21304-全民脚印（7天）",
  "21305-鸦面巫医（7天）",
  "21306-子弹时间（7天）",
  "21307-复古过滤器（7天）",
  "21308-时间使者（7天）",
  "21309-飞行大师（7天）",
  "21310-蒸汽时代（7天）",
  "21311-工艺格调（7天）",
  "21312-昔日旅途（7天）",
  "21313-星河目镜（7天）",
  "21314-时间停滞（7天）",
  "21315-明日羽翼（7天）",
  "21316-炮火纷飞（7天）",
  "21317-中秋祈福小兔（7天）",
  "21318-中秋祈福月饼（7天）",
  "21319-璨若莲华（7天）",
  "21320-繁花似锦（7天）",
  "21321-浮世卿歌（7天）",
  "21322-明月山河（7天）",
  "21323-芳华锦年（7天）",
  "21324-清若寒潭（7天）",
  "21325-龙吟之昭（7天）",
  "21326-福佑大泽（7天）",
  "21327-长夜（7天）",
  "21328-点浮莲（7天）",
  "21329-寂静无声（7天）",
  "21330-血族狂欢（7天）",
  "21331-月下贵族（7天）",
  "21332-暗夜派对（7天）",
  "21333-女巫集会（7天）",
  "21334-魔法闪光（7天）",
  "21335-万圣绮幻夜（7天）",
  "21336-恶魔摇滚（7天）",
  "21337-魔法黑喵喵（7天）",
  "21338-哭哭狼人（7天）",
  "21339-狼狼木乃伊（7天）",
  "21340-死神镰刀（7天）",
  "21341-萌萌小死神（7天）",
  "21342-南瓜脚印（7天）",
  "21343-地穴人面具（7天）",
  "21344-踏雨行（7天）",
  "21345-云山月雨（7天）",
  "21346-松柏客（7天）",
  "21347-君子如兰（7天）",
  "21348-娇粉（7天）",
  "21349-粉色花海（7天）",
  "21350-蜜桃（7天）",
  "21351-樱色如春（7天）",
  "21352-樱花扇面（7天）",
  "21353-侠客靴（7天）",
  "21354-侠客头饰（7天）",
  "21355-元气扇（7天）",
  "21356-橘子脚印（7天）",
  "21357-元气侠客装（7天）",
  "21358-魔域护卫长（7天）",
  "21359-加冕仪式（7天）",
  "21360-海之声（7天）",
  "21361-深渊来客（7天）",
  "21362-鲛人泪（7天）",
  "21363-神明之赐（7天）",
  "21364-怜悯无声（7天）",
  "21365-波斯文明（7天）",
  "21366-黄金圣裁（7天）",
  "21367-太阳神（7天）",
  "21368-绣球花（7天）",
  "21369-猫之国（7天）",
  "21370-落花有声（7天）",
  "21371-鎏光仙境（7天）",
  "21372-喵拳出击（7天）",
  "21373-鲛歌海语（7天）",
  "21374-凌波留影（7天）",
  "21375-黑暗力量（7天）",
  "21376-2021（7天）",
  "21377-一棵圣诞树（7天）",
  "21378-日暮之晕（7天）",
  "21379-巧克力菱格（7天）",
  "21380-星河散落（7天）",
  "21381-咩咩的梦想（7天）",
  "21382-炽天使之翼（7天）",
  "21383-落雪无声（7天）",
  "21384-山岳五行（7天）",
  "21385-树莓糖霜（7天）",
  "21386-青鸟拾花（7天）",
  "21387-麋鹿头（7天）",
  "21388-铃儿响叮当（7天）",
  "21389-圣诞手环（7天）",
  "21390-奇迹之夜（7天）",
  "21391-祝福使者（7天）",
  "21392-平安夜颂歌（7天）",
  "21393-冬青祝福（7天）",
  "21394-星之舞台（7天）",
  "21395-踏寒梅（7天）",
  "21396-哞哞奶嘴（7天）",
  "21397-牛气冲天（7天）",
  "21398-牛年庆典气球（7天）",
  "21399-奶牛头套（7天）",
  "21400-奶牛睡衣（7天）",
  "21401-甜甜奶瓶（7天）",
  "21402-香蕉猴（7天）",
  "21403-魔法光箭（7天）",
  "21404-脆桃（7天）",
  "21405-红粉佳人（7天）",
  "21406-目光炯炯（7天）",
  "21407-赤日行（7天）",
  "21408-中华小厨娘（7天）",
  "21409-夫子志（7天）",
  "21410-龙行天下（7天）",
  "21411-小龙女（7天）",
  "21412-沐沐清荷（7天）",
  "21413-汉光之翼（7天）",
  "21414-仙宫景（7天）",
  "21415-花语天籁（7天）",
  "21416-菜菜春卷（7天）",
  "21417-睡莲（7天）",
  "21418-紫藤萝（7天）",
  "21419-凤鸣（7天）",
  "21420-鹿屿裳（7天）",
  "21421-牡丹景（7天）",
  "21422-少年意气（7天）",
  "21423-蟠龙墨影（7天）",
  "21424-饕餮盾（7天）",
  "21425-惊鸿（7天）",
  "21426-蛋壳鞋（7天）",
  "21427-蛋壳帽（7天）",
  "21428-蛋壳套装（7天）",
  "21429-彩蛋帽子（7天）",
  "21430-胡萝卜帽子（7天）",
  "21431-胡萝卜连体装（7天）",
  "21432-彩蛋花环（7天）",
  "21433-兔子脚印（7天）",
  "21434-破风（7天）",
  "21435-大漠行舟（7天）",
  "21436-穿云（7天）",
  "21437-青翎志（7天）",
  "21438-蓝雀羽（7天）",
  "21439-雀舞（7天）",
  "21440-玉葫芦（7天）",
  "21441-红袖面（7天）",
  "21442-舞娘头巾（7天）",
  "21443-砂之舞（7天）",
  "21444-紫金莲花冠（7天）",
  "21445-飞仙长袍（7天）",
  "21446-长生链（7天）",
  "21447-金步摇（7天）",
  "21448-珠光发髻（7天）",
  "21449-飞天舞裙（7天）",
  "21450-神猴头饰（7天）",
  "21451-神猴衣服（7天）",
  "21452-神猴尾巴（7天）",
  "21453-神猴三叉戟（7天）",
  "21454-娜迦头饰（7天）",
  "21455-娜迦舞裙（7天）",
  "21456-美味热狗（7天）",
  "21457-龙头蛇手链（7天）",
  "21458-金足踏（7天）",
  "21459-大将头饰（7天）",
  "21460-织田甲（7天）",
  "21461-浪人武者（7天）",
  "21462-苦行之旅（7天）",
  "21463-土蜘蛛刃（7天）",
  "21464-梦游花宴（7天）",
  "21465-樱放四十（7天）",
  "21466-千姬梦（7天）",
  "21467-无垢之白（7天）",
  "21468-星月之轮（7天）",
  "21469-香菜脚印（7天）",
  "21470-爱玩少年（7天）",
  "21471-俏皮甜心（7天）",
  "21472-花漫枝头（7天）",
  "21473-柳叶奏春（7天）",
  "21474-精灵盛典（7天）",
  "21475-繁花拥簇（7天）",
  "21476-春日来信（7天）",
  "21477-花之镜（7天）",
  "21478-春桃（7天）",
  "21479-浅雾闻香（7天）",
  "21480-迎春语（7天）",
  "21481-星蓝彗羽（7天）",
  "21482-星昼蔚蓝（7天）",
  "21483-考拉玩偶背包（7天）",
  "21484-花雨脚印（7天）",
  "21485-彩灯气球（7天）",
  "21486-虚妄之海（7天）",
  "21487-北极星（7天）",
  "21488-园丁背带裤（7天）",
  "21489-彩虹泡泡糖（7天）",
  "21490-独角兽幻想（7天）",
  "21491-彩虹脚印（7天）",
  "21492-沙滩草编帽（7天）",
  "21493-椰子岛（7天）",
  "21494-缤纷海岸（7天）",
  "21495-嬉闹沙滩（7天）",
  "21496-秩序战争（7天）",
  "21497-黑白深渊（7天）",
  "21498-赤红西装（7天）",
  "21499-银红之舞（7天）",
  "21500-橘猫头套（7天）",
  "21501-橘猫睡衣（7天）",
  "21502-逗猫棒（7天）",
  "21503-猩红玫瑰（7天）",
  "21504-杏团（7天）",
  "21505-青色旋律（7天）",
  "21506-黑白补丁腕带（7天）",
  "21507-嚣张（7天）",
  "21508-轻狂（7天）",
  "21509-金色飞翼（7天）",
  "21510-神子木屐（7天）",
  "21511-天照（7天）",
  "21512-燕尾蝶（7天）",
  "21513-神圣军团（7天）",
  "21514-月读（7天）",
  "21515-摘星物语（7天）",
  "21516-圣音学堂（7天）",
  "21517-虔诚祷告（7天）",
  "21518-月轮（7天）",
  "21519-沉静目光（7天）",
  "21520-叶之舞（7天）",
  "21521-西瓜甜心（7天）",
  "21522-翡翠葡萄（7天）",
  "21523-牧羊人少女（7天）",
  "21524-爆汁大橘（7天）",
  "21525-草莓甜心（7天）",
  "21526-甜粉糖葫芦（7天）",
  "21527-魔法少女手杖（7天）",
  "21528-蝶之翼（7天）",
  "21529-死神外罩（7天）",
  "21530-死神长裤（7天）",
  "21531-死神斗篷（7天）",
  "21532-死神面罩（7天）",
  "21533-死神之影（7天）",
  "21534-海之味（7天）",
  "21535-假日草帽（7天）",
  "21536-风吹太阳花（7天）",
  "21537-深海色（7天）",
  "21538-甜甜小水手（7天）",
  "21539-浪花冲浪板（7天）",
  "21540-夏日鲜檬（7天）",
  "21541-沙滩凉鞋（7天）",
  "21542-西柚太阳镜（7天）",
  "21543-清凉一夏（7天）",
  "21544-星海短裤（7天）",
  "21545-鲜柠泳圈（7天）",
  "21546-雏菊洋伞（7天）",
  "21547-贝贝星星（7天）",
  "21548-心情使者（7天）",
  "21549-心情短裤（7天）",
  "21550-玩趣水枪（7天）",
  "21551-撞色运动鞋（7天）",
  "21552-船锚贝雷帽（7天）",
  "21553-天空之声（7天）",
  "21554-紫藤蔓蔓（7天）",
  "21555-偷糖小恶魔（7天）",
  "21556-迷萌拳套（7天）",
  "21557-铆钉鞋（7天）",
  "21558-小欧（7天）",
  "21600-邻家男孩头饰",
  "21601-邻家男孩表情",
  "21602-邻家男孩上衣",
  "21603-邻家男孩裤子",
  "21604-邻家男孩鞋子",
  "21605-邻家女孩头饰",
  "21606-邻家女孩表情",
  "21607-邻家女孩连衣裙",
  "21608-邻家女孩鞋子",
  "21609-足球少年头饰",
  "21610-足球少年表情",
  "21611-足球少年上衣",
  "21612-足球少年裤子",
  "21613-足球少年鞋子",
  "21614-足球宝贝头饰",
  "21615-足球宝贝表情",
  "21616-足球宝贝上衣",
  "21617-足球宝贝裤子",
  "21618-足球宝贝鞋子",
  "21619-装扮金钥",
  "21620-书包",
  "21621-宇航员头盔",
  "21622-宇航员表情",
  "21623-迷你贴纸",
  "21624-宇航员衣服",
  "21625-宇航员背包",
  "21626-足球贴纸",
  "21627-大黄奶嘴",
  "21628-西瓜冰棍",
  "21629-度假墨镜",
  "21630-冲浪男孩头饰",
  "21631-冲浪男孩表情",
  "21632-冲浪男孩上衣",
  "21633-冲浪男孩裤子",
  "21634-冲浪男孩鞋子",
  "21635-冲浪板背饰",
  "21636-海滨假日头饰",
  "21637-海滨假日表情",
  "21638-海滨假日上衣",
  "21639-海滨假日裤子",
  "21640-海滨假日鞋子",
  "21641-海滨假日手饰",
  "21642-浪漫绅士头饰",
  "21643-浪漫绅士表情",
  "21644-浪漫绅士衣服",
  "21645-浪漫绅士裤子",
  "21646-浪漫绅士鞋子",
  "21647-甜心少女头饰",
  "21648-甜心少女表情",
  "21649-甜心少女衣服",
  "21650-甜心少女手套",
  "21651-甜心少女裤子",
  "21652-甜心少女鞋子",
  "21653-爱心唇印贴纸",
  "21654-脚丫脚印",
  "21655-团子脚印",
  "21656-幻蓝脚印",
  "21657-幻音脚印",
  "21658-云游剑客鞋子",
  "21659-云游剑客裤子",
  "21660-云游剑客衣服",
  "21661-云游剑客表情",
  "21662-云游剑客头饰",
  "21663-掌门千金鞋子",
  "21664-掌门千金护手",
  "21665-掌门千金裤子",
  "21666-掌门千金衣服",
  "21667-掌门千金表情",
  "21668-掌门千金头饰",
  "21669-满月脚印",
  "21670-宝剑背饰",
  "21671-披风背饰",
  "21672-玉兔背饰",
  "21673-五仁月饼背饰",
  "21674-名门淑女头饰",
  "21675-彩虹马裤子",
  "21676-悍马头饰",
  "21677-巡游警长鞋子",
  "21678-巡游警长裤子",
  "21679-巡游警长衣服",
  "21680-巡游警长表情",
  "21681-巡游警长头饰",
  "21682-小恶魔背包",
  "21683-圣诞宝贝鞋子",
  "21684-圣诞宝贝手套",
  "21685-圣诞宝贝裙子",
  "21686-圣诞宝贝头饰",
  "21687-圣诞宝贝表情",
  "21688-圣诞宝贝披肩",
  "21689-圣诞少年鞋子",
  "21690-圣诞少年裤子",
  "21691-圣诞少年衣服",
  "21692-圣诞少年头饰",
  "21693-圣诞少年表情",
  "21694-冬季俏皮鞋子",
  "21695-冬季俏皮手套",
  "21696-冬季俏皮裙子",
  "21697-冬季俏皮衣服",
  "21698-冬季俏皮表情",
  "21699-冬季俏皮头饰",
  "21700-冬季暖风鞋子",
  "21701-冬季暖风手套",
  "21702-冬季暖风衣服",
  "21703-冬季暖风表情",
  "21704-冬季暖风头饰",
  "21705-船长金钩",
  "21706-大白鲨衣服",
  "21707-大白鲨头饰",
  "21708-橄榄球员手套",
  "21709-橄榄球员鞋子",
  "21710-橄榄球员裤子",
  "21711-橄榄球员衣服",
  "21712-橄榄球员头饰",
  "21713-虎头鞋",
  "21714-虎虎生风披风",
  "21715-龙头帽头饰",
  "21716-虎头帽头饰",
  "21717-吉祥娃娃衣服",
  "21718-吉祥娃娃头饰",
  "21719-鎏金鞋子",
  "21720-棕色灯芯绒裤",
  "21721-鎏金马褂",
  "21722-瓜皮帽头饰",
  "21723-铜钱脚印",
  "21724-王卡专属脚印",
  "21725-王卡专属背饰",
  "21726-王卡专属表情",
  "21727-王卡专属衣服",
  "21728-王卡专属头饰",
  "21729-满福背篓",
  "21730-摇钱树头饰",
  "21731-橄榄球背包",
  "21732-刀马旦头饰",
  "21733-刀马旦表情",
  "21734-刀马旦衣服",
  "21735-武生头饰",
  "21736-武生表情",
  "21737-武生衣服",
  "21738-春之百合头饰",
  "21739-春之蓝菇头饰",
  "21740-春之玫瑰头饰",
  "21741-春之雏菊头饰",
  "21742-胖哒帽衫",
  "21743-天珠外套",
  "21744-狂欢之舞头饰",
  "21745-狂欢之舞背饰",
  "21746-猪猪头饰",
  "21747-小机灵表情",
  "21748-星星眼表情",
  "21749-粉红可爱表情",
  "21750-青灰呆萌表情",
  "21751-深红喜悦表情",
  "21752-春之百合裙子",
  "21753-春之雏菊裙子",
  "21754-春之玫瑰裙子",
  "21755-春之蓝菇裙子",
  "21756-春之翼",
  "21757-青春校园衣服",
  "21758-青春校园裤子",
  "21759-青春校园鞋子",
  "21760-青春校园书包",
  "21761-青春校园脚印",
  "21762-安吉洛斯脚印",
  "21763-安吉洛斯羽翼",
  "21764-泰风优雅裙子",
  "21765-泰风优雅披肩",
  "21766-泰风清凉短裤",
  "21767-泰风清凉短袖",
  "21768-复古单片眼镜",
  "21769-蓝色小清新头饰",
  "21770-校园男孩头饰",
  "21771-高冷白发头饰",
  "21772-小熊玩偶背包",
  "21773-小熊印花短袖",
  "21774-小熊发卡头饰",
  "21775-粉红兔鞋子",
  "21776-粉红兔手套",
  "21777-兔尾巴短裤",
  "21778-粉红兔衣服",
  "21779-粉红兔头饰",
  "21780-彩蛋背包",
  "21781-胡萝卜背包",
  "21782-白羊座表情",
  "21783-白羊座头饰",
  "21784-元气满满表情",
  "21785-傲娇脸表情",
  "21786-眼前一亮表情",
  "21787-卖萌可爱表情",
  "21788-偷瞄脸表情",
  "21789-电力四射表情",
  "21790-帅气中分头饰",
  "21791-海洋之风头饰",
  "21792-小小水手头饰",
  "21793-猫系少女头饰",
  "21794-凌乱少年头饰",
  "21795-粉红俏皮头饰",
  "21796-贪睡小猫头饰",
  "21797-贪睡小猫衣服",
  "21798-黄白之恋裙子",
  "21799-和风卫衣",
  "21800-小猫背带套装",
  "21801-一字肩上衣",
  "21802-英伦风衣",
  "21803-小淘气背心",
  "21804-连袜短裙",
  "21805-水手短裤",
  "21806-绅士短裤",
  "21807-紫魅短裙",
  "21808-小熊鞋子",
  "21809-猫咪短靴",
  "21810-蝴蝶鞋子",
  "21811-猫咪拖鞋",
  "21812-绅士布鞋",
  "21813-活力帆布鞋",
  "21814-复古圆框眼镜",
  "21815-复古方框眼镜",
  "21816-彩虹手环",
  "21817-金牛座表情",
  "21818-金牛座头饰",
  "21819-电玩大神表情",
  "21820-超级电玩眼镜",
  "21821-超级电玩背包",
  "21822-电玩大脚印",
  "21823-挑战者衣服",
  "21824-挑战者头饰",
  "21825-挑战者背包",
  "21826-挑战者面饰",
  "21827-挑战者手套",
  "21828-挑战者表情",
  "21829-游戏大咖头饰",
  "21830-游戏大咖外套",
  "21831-游戏大咖裤子",
  "21832-游戏大咖鞋子",
  "21833-游戏女神头饰",
  "21834-游戏女神外套",
  "21835-游戏女神短裤",
  "21836-游戏女神鞋子",
  "21837-大发现表情",
  "21838-认真表情",
  "21839-自信微笑表情",
  "21840-贪玩喵喵表情",
  "21841-惊讶表情",
  "21842-俏皮坏笑表情",
  "21843-喷气飞翼",
  "21844-螺旋飞翼",
  "21845-化学增强枪",
  "21846-超能战喵背包",
  "21847-战地通讯员绷带",
  "21848-科幻羽翼鞋子",
  "21849-废土运动鞋",
  "21850-粒子动能长靴",
  "21851-未来机甲鞋子",
  "21852-机械战警腿甲",
  "21853-战地通讯员头饰",
  "21854-未来士兵头饰",
  "21855-废土护目镜头饰",
  "21856-超能战喵头饰",
  "21857-机械青蛙头饰",
  "21858-战地通讯员上衣",
  "21859-废土披风",
  "21860-探险者外套",
  "21861-未来魔法披风",
  "21862-机甲大神上衣",
  "21863-收集者裤子",
  "21864-能源绑带短裤",
  "21865-科幻时尚短裤",
  "21866-机器猫尾裤子",
  "21867-机甲运动短裤",
  "21868-双子座表情",
  "21869-双子座头饰",
  "21870-海上女王头饰",
  "21871-海上女王长裙",
  "21872-海上女王鞋子",
  "21873-奇迹之子头饰",
  "21874-奇迹之子衣服",
  "21875-奇迹之子腕甲",
  "21876-迷你英雄战斗服",
  "21877-迷你英雄斗篷",
  "21878-小王子上衣",
  "21879-小王子马裤",
  "21880-小王子马靴",
  "21881-小王子头冠",
  "21882-小公主裙子",
  "21883-小公主长袜",
  "21884-小公主鞋子",
  "21885-小公主头冠",
  "21886-小仙女翅膀",
  "21887-小王子表情",
  "21888-小公主表情",
  "21889-机械拳套",
  "21890-小公主手套",
  "21891-佐罗面具",
  "21892-个性涂鸦背包",
  "21893-流浪乐手背饰",
  "21894-潮流口罩",
  "21895-甜心宝贝背包",
  "21896-仙人花花背饰",
  "21897-绣花汉服鞋子",
  "21898-初夏暖阳凉鞋",
  "21899-酷酷棒球帽",
  "21900-嘻哈风头饰",
  "21901-豆蔻年华头饰",
  "21902-蝴蝶结包包头",
  "21903-暖暖小黄帽",
  "21904-小水手头饰",
  "21905-远洋海风裙子",
  "21906-个性少年裤子",
  "21907-采花少女裙子",
  "21908-小海军连衣裙",
  "21909-船长背带裤",
  "21910-水手衣服",
  "21911-小海军衣服",
  "21912-小清新衣服",
  "21913-酷炫街舞衣服",
  "21914-孟夏佳人裙子",
  "21915-墨西哥宽边帽",
  "21916-端午汉服",
  "21917-粽子背包",
  "21918-小迷糊表情",
  "21919-疾风弓箭",
  "21920-富运达摩背饰",
  "21921-武士刀背饰",
  "21922-猫咪手套",
  "21923-妖狐尾背饰",
  "21924-甜甜游泳圈",
  "21925-二齿木屐",
  "21926-猫耳头饰",
  "21927-甜心马尾头饰",
  "21928-狐耳头饰",
  "21929-立夏花火头饰",
  "21930-妖狐面具头饰",
  "21931-和风百褶裙",
  "21932-神奈川短裤",
  "21933-妖怪羽织",
  "21934-樱花背心",
  "21935-稻禾巫女服",
  "21936-祈福狩衣",
  "21937-金鱼姬裙子",
  "21938-弓道服",
  "21939-日式工匠服",
  "21940-夏日点点泳衣",
  "21941-海滩休闲衬衫",
  "21942-巨蟹座表情",
  "21943-巨蟹座头饰",
  "21944-气鼓鼓表情",
  "21945-楚楚可怜表情",
  "21946-桃香幸缘表情",
  "21947-甜夏西瓜表情",
  "21948-俏狐狸表情",
  "21949-剑客行表情",
  "21950-梅香罗伞",
  "21951-桃花琵琶",
  "21952-蔷薇眼罩",
  "21953-金丝面纱",
  "21954-金丝踏云靴",
  "21955-玛丽珍鞋",
  "21956-陌上人如玉",
  "21957-公子世无双",
  "21958-雕金乌纱帽",
  "21959-江南印象头饰",
  "21960-红尘醉头饰",
  "21961-云纹短裤",
  "21962-千鸳短裤",
  "21963-芍药天香上衣",
  "21964-竹笙锦瑟上衣",
  "21965-民国故事上衣",
  "21966-木棉旗袍",
  "21967-素喜衣裳",
  "21968-故人听竹",
  "21969-翻云绘长歌",
  "21970-金丝墨云锦袍",
  "21971-樱花脚印",
  "21972-猫咪脚印",
  "21973-玩偶甜心表情",
  "21974-小虎牙表情",
  "21975-异瞳坏笑表情",
  "21976-嘟嘟嘴表情",
  "21977-魔法甜心表情",
  "21978-纯白纱布眼罩",
  "21979-海豹宝宝背包",
  "21980-小恶魔翅膀",
  "21981-蕾丝手袖",
  "21982-白色罗马鞋",
  "21983-红熊拖鞋",
  "21984-探险马丁靴",
  "21985-星间飞行凉鞋",
  "21986-雪精灵编发",
  "21987-恶魔角头饰",
  "21988-朴素礼帽",
  "21989-羊羊爱丽丝",
  "21990-纸箱头",
  "21991-斑马长筒袜",
  "21992-独角兽少女裙子",
  "21993-机能上衣",
  "21994-潮流绅士",
  "21995-蔷薇故事",
  "21996-梦游仙境",
  "21997-星夜衬衫",
  "21998-海豹夹克",
  "21999-牛仔背带裤",
  "22000-爱心牛仔裙",
  "22001-狮子座头饰",
  "22002-狮子座表情",
  "22003-调皮吐舌表情",
  "22004-龇牙表情",
  "22005-嘟嘴呆萌表情",
  "22006-暖心微笑表情",
  "22007-爱心创口贴",
  "22008-荧光手表",
  "22009-简约黑红鞋子",
  "22010-摇滚皮靴",
  "22011-复古牛津鞋",
  "22012-海盗热裤",
  "22013-撞色风暴",
  "22014-萌动百褶裙",
  "22015-机车少女背心",
  "22016-魔力少女外套",
  "22017-荧光闪点外套",
  "22018-糖果甜心头饰",
  "22019-电音小子头饰",
  "22020-喵喵耳机头饰",
  "22021-处女座头饰",
  "22022-处女座表情",
  "22023-豆豆眉表情",
  "22024-糖果猫咪表情",
  "22025-琥珀鼓气表情",
  "22026-乖巧萌宠表情",
  "22027-狗狗贴纸",
  "22028-秋田犬爪套",
  "22029-精致小皮鞋",
  "22030-剑侠绑腿靴",
  "22031-粉莲绣花鞋",
  "22032-简约篮球鞋",
  "22033-西装裤",
  "22034-浅溪短裙",
  "22035-牛仔潮服",
  "22036-甜心洛可可",
  "22037-明月几时有",
  "22038-五仁共团圆",
  "22039-繁花波奈特",
  "22040-绅士帽子",
  "22041-玉兔头饰",
  "22042-皓月童子",
  "22043-针织狐狸帽",
  "22044-公牛队篮球服",
  "22045-湖人队篮球服",
  "22046-开拓者队篮球服",
  "22047-猛龙队篮球服",
  "22048-雄鹿队篮球服",
  "22049-勇士队篮球服",
  "22050-野性光辉",
  "22051-扑克谜语",
  "22052-龙甲冰珠玉佩",
  "22053-小龙背包",
  "22054-同福酒坛",
  "22055-溪间语手链",
  "22056-甜点兔背包",
  "22057-甜心猫尾",
  "22058-锦瑟翻边靴",
  "22059-红缨甲靴",
  "22060-随性穿搭",
  "22061-格子物语",
  "22062-破洞牛仔裤",
  "22063-星愿蓬蓬裙",
  "22064-霸王甲",
  "22065-盛唐舞裙",
  "22066-糖果恶魔",
  "22067-大檐帽头饰",
  "22068-炽日头饰",
  "22069-战英豪",
  "22070-飞天发髻",
  "22071-战火燎原",
  "22072-天秤座表情",
  "22073-天秤座头饰",
  "22074-星花飞舞",
  "22075-凤纹奥黛服饰",
  "22076-繁花奥黛头饰",
  "22077-古灵精怪表情",
  "22078-萌呆呆表情",
  "22079-粉红泡泡表情",
  "22080-幸福紫表情",
  "22081-不规则特性",
  "22082-狗狗短裤",
  "22083-百变系带靴",
  "22084-南瓜小恶魔",
  "22085-埃及头饰",
  "22086-魔法南瓜头饰",
  "22087-木乃伊头饰",
  "22088-南瓜宝宝头饰",
  "22089-星星女巫头饰",
  "22090-天蝎座头饰",
  "22091-万圣小女巫",
  "22092-万圣魔法使",
  "22093-提灯小幽灵",
  "22094-魔法扫帚",
  "22095-不给糖就捣蛋",
  "22096-蓝焰脚印",
  "22097-小狐仙表情",
  "22098-深海之谜表情",
  "22099-红粉轻甜表情",
  "22100-黄金瞳表情",
  "22101-额间朱砂表情",
  "22102-英伦小皮鞋",
  "22103-深秋时节",
  "22104-恋恋心情",
  "22105-海豹学园制服",
  "22106-未来之翼",
  "22107-暖心堆堆袜",
  "22108-轻松板鞋",
  "22109-迷彩工装裤",
  "22110-冬季水手服",
  "22111-暖冬物语",
  "22112-哈士奇卫衣",
  "22113-极客卫衣",
  "22114-冬之礼服",
  "22115-恋冬之歌",
  "22116-爱宠出游",
  "22117-绒绒小黄鸭",
  "22118-沉默编织",
  "22119-丝带情结",
  "22120-哈士奇头套",
  "22121-射手座头饰",
  "22122-2020年度眼镜",
  "22123-圣诞老人胡子",
  "22124-初雪莲棠",
  "22125-步步高升",
  "22126-敛芳菲",
  "22127-萌鼠头饰",
  "22128-绵绵鼠圆帽",
  "22129-龙子发冠",
  "22130-丁香结",
  "22131-墨云染",
  "22132-玲珑送福",
  "22133-吉星高照",
  "22134-花开富贵",
  "22135-锦绣山河",
  "22136-礼物盒脚印",
  "22137-星光奇迹",
  "22138-铃儿叮当",
  "22139-姜饼人奇遇",
  "22140-圣夜之愿",
  "22141-缤纷回响",
  "22142-奇妙圣诞夜",
  "22143-平安夜的礼物",
  "22144-米兔",
  "22145-庄严典礼",
  "22146-小胡子",
  "22147-英式筒靴",
  "22148-胡桃夹子",
  "22149-皇室礼仪",
  "22150-年画鼠",
  "22151-步步迎福",
  "22152-子鼠玩偶背包",
  "22153-金鱼腰坠",
  "22154-童趣",
  "22155-暗纹绑手",
  "22156-华光映莲",
  "22157-桃花笑",
  "22158-狐步舞",
  "22159-中国结短靴",
  "22160-芳华之舞",
  "22161-穿个灯笼",
  "22162-金铃如意",
  "22163-锦鲤抄",
  "22164-爆竹声声",
  "22165-送福童子",
  "22166-长生结",
  "22167-踏云来",
  "22168-书声琅琅",
  "22169-万卷书",
  "22170-云中月",
  "22171-踏粉莲",
  "22172-花中曲",
  "22173-陌上繁花",
  "22174-豆蔻语",
  "22175-盛放",
  "22176-锦绣缘",
  "22177-琳琅",
  "22178-凤舞倾城",
  "22179-桃花灼灼",
  "22180-荣光",
  "22181-御云天",
  "22182-琼宇",
  "22183-龙吟盛世",
  "22184-盘龙织影",
  "22185-鸦语蔷薇",
  "22186-沁桃红酒",
  "22187-暗红舞步",
  "22188-虚荣王座",
  "22189-红皇后",
  "22190-纷乱深渊",
  "22191-龙骨十字",
  "22192-魔法时间",
  "22193-正义视线",
  "22194-魔法阵脚印",
  "22195-狮心王权",
  "22196-荣耀圣骑",
  "22197-英骑之魂",
  "22198-钻石星辰",
  "22199-纯白桂冠",
  "22200-白皇后",
  "22201-健康守护者",
  "22202-金丝猴玩偶",
  "22203-雪豹守护者（女）",
  "22204-糖果运动鞋",
  "22205-雪豹守护者（男）",
  "22206-炫彩运动鞋",
  "22207-雪豹玩偶",
  "22208-孔雀开屏",
  "22209-雀翎背带裙",
  "22210-萌动鼠兔",
  "22211-包裹鼠兔",
  "22212-滚滚来袭",
  "22213-软绒豹尾背饰",
  "22214-极地短靴",
  "22215-高原贵族",
  "22216-雪域领主",
  "22217-绒绒雪地靴",
  "22218-高原公主",
  "22219-雪域蔷薇",
  "22220-踏雪寻踪",
  "22221-扑克迷宫",
  "22222-提拉米苏",
  "22223-金色海洋",
  "22224-狮子王",
  "22225-月圆之夜",
  "22226-萌兔黑森林",
  "22227-诡秘舞台",
  "22228-柴郡猫",
  "22229-疯帽匠",
  "22230-白雪姬",
  "22231-甜香蔓越莓",
  "22232-探险奇遇",
  "22233-侦查小队",
  "22234-先锋探索者",
  "22235-虹彩幻想",
  "22236-甜心机甲",
  "22237-未来音律",
  "22238-幻彩节拍",
  "22239-超能水手服",
  "22240-机械臂",
  "22241-机动装置",
  "22242-夜空闪耀",
  "22243-翡翠回响",
  "22244-双鱼座头饰",
  "22245-水瓶座头饰",
  "22246-摩羯座头饰",
  "22247-丘比特之心",
  "22248-甜蜜之水",
  "22249-甜心贩售机",
  "22250-爱神的闪光",
  "22251-暗色星辰",
  "22252-深渊凝视",
  "22253-暗影之炎",
  "22254-恶魔贵族",
  "22255-远行客",
  "22256-巫山云雨",
  "22257-千叶忍",
  "22258-眸光一闪",
  "22259-般若之面",
  "22260-那须与一",
  "22261-茶花物语",
  "22262-小萌神",
  "22263-桥姬梦语",
  "22264-温暖甜橙",
  "22265-凌波踏羽",
  "22266-甜粽子",
  "22267-咸粽子",
  "22268-调查员鞋",
  "22269-跳鼠兜帽",
  "22270-科技城制服",
  "22271-跳鼠侦查包",
  "22272-海色云天",
  "22273-花田少女",
  "22274-浅海漫游",
  "22275-休闲时刻",
  "22276-热带风光",
  "22277-度假背心",
  "22278-运动汽水",
  "22279-西瓜冰淇淋",
  "22280-柠檬软糖",
  "22281-夏日青柠",
  "22282-玩水时间",
  "22283-星光舞台",
  "22284-天空旋律",
  "22285-鲜脆青提",
  "22286-莓果缤纷",
  "22287-星河演唱会",
  "22288-星之咏叹调",
  "22289-森林回响",
  "22290-黎明唱诗班",
  "22291-月光奏鸣曲",
  "22292-花之礼赞",
  "22293-圣堂弦音",
  "22294-忘川引渡",
  "22295-能量眼罩",
  "22296-勇士的精神",
  "22297-能量护臂",
  "22298-能量战靴",
  "22299-能量头饰",
  "22300-能量腿甲",
  "22301-能量之铠",
  "22302-勇者极光巨刃",
  "22303-能量之源",
  "22304-创造滑板",
  "22305-全民脚印",
  "22306-鸦面巫医",
  "22307-子弹时间",
  "22308-复古过滤器",
  "22309-时间使者",
  "22310-飞行大师",
  "22311-蒸汽时代",
  "22312-工艺格调",
  "22313-昔日旅途",
  "22314-星河目镜",
  "22315-时间停滞",
  "22316-明日羽翼",
  "22317-炮火纷飞",
  "22318-中秋祈福小兔",
  "22319-中秋祈福月饼",
  "22320-璨若莲华",
  "22321-繁花似锦",
  "22322-浮世卿歌",
  "22323-明月山河",
  "22324-芳华锦年",
  "22325-清若寒潭",
  "22326-龙吟之昭",
  "22327-福佑大泽",
  "22328-长夜",
  "22329-点浮莲",
  "22330-寂静无声",
  "22331-血族狂欢",
  "22332-月下贵族",
  "22333-暗夜派对",
  "22334-女巫集会",
  "22335-魔法闪光",
  "22336-万圣绮幻夜",
  "22337-恶魔摇滚",
  "22338-魔法黑喵喵",
  "22339-哭哭狼人",
  "22340-狼狼木乃伊",
  "22341-死神镰刀",
  "22342-萌萌小死神",
  "22343-南瓜脚印",
  "22344-地穴人面具",
  "22345-踏雨行",
  "22346-云山月雨",
  "22347-松柏客",
  "22348-君子如兰",
  "22349-娇粉",
  "22350-粉色花海",
  "22351-蜜桃",
  "22352-樱色如春",
  "22353-樱花扇面",
  "22354-侠客靴",
  "22355-侠客头饰",
  "22356-元气扇",
  "22357-橘子脚印",
  "22358-元气侠客装",
  "22359-魔域护卫长",
  "22360-加冕仪式",
  "22361-海之声",
  "22362-深渊来客",
  "22363-鲛人泪",
  "22364-神明之赐",
  "22365-怜悯无声",
  "22366-波斯文明",
  "22367-黄金圣裁",
  "22368-太阳神",
  "22369-绣球花",
  "22370-猫之国",
  "22371-落花有声",
  "22372-鎏光仙境",
  "22373-喵拳出击",
  "22374-鲛歌海语",
  "22375-凌波留影",
  "22376-黑暗力量",
  "22377-2021",
  "22378-一棵圣诞树",
  "22379-日暮之晕",
  "22380-巧克力菱格",
  "22381-星河散落",
  "22382-咩咩的梦想",
  "22383-炽天使之翼",
  "22384-落雪无声",
  "22385-山岳五行",
  "22386-树莓糖霜",
  "22387-青鸟拾花",
  "22388-麋鹿头",
  "22389-铃儿响叮当",
  "22390-圣诞手环",
  "22391-奇迹之夜",
  "22392-祝福使者",
  "22393-平安夜颂歌",
  "22394-冬青祝福",
  "22395-星之舞台",
  "22396-踏寒梅",
  "22397-哞哞奶嘴",
  "22398-牛气冲天",
  "22399-牛年庆典气球",
  "22400-奶牛头套",
  "22401-奶牛睡衣",
  "22402-甜甜奶瓶",
  "22403-香蕉猴",
  "22404-魔法光箭",
  "22405-脆桃",
  "22406-红粉佳人",
  "22407-目光炯炯",
  "22408-赤日行",
  "22409-中华小厨娘",
  "22410-夫子志",
  "22411-龙行天下",
  "22412-小龙女",
  "22413-沐沐清荷",
  "22414-汉光之翼",
  "22415-仙宫景",
  "22416-花语天籁",
  "22417-菜菜春卷",
  "22418-睡莲",
  "22419-紫藤萝",
  "22420-凤鸣",
  "22421-鹿屿裳",
  "22422-牡丹景",
  "22423-少年意气",
  "22424-蟠龙墨影",
  "22425-饕餮盾",
  "22426-惊鸿",
  "22427-蛋壳鞋",
  "22428-蛋壳帽",
  "22429-蛋壳套装",
  "22430-彩蛋帽子",
  "22431-胡萝卜帽子",
  "22432-胡萝卜连体装",
  "22433-彩蛋花环",
  "22434-兔子脚印",
  "22435-破风",
  "22436-大漠行舟",
  "22437-穿云",
  "22438-青翎志",
  "22439-蓝雀羽",
  "22440-雀舞",
  "22441-玉葫芦",
  "22442-红袖面",
  "22443-舞娘头巾",
  "22444-砂之舞",
  "22445-紫金莲花冠",
  "22446-飞仙长袍",
  "22447-长生链",
  "22448-金步摇",
  "22449-珠光发髻",
  "22450-飞天舞裙",
  "22451-神猴头饰",
  "22452-神猴衣服",
  "22453-神猴尾巴",
  "22454-神猴三叉戟",
  "22455-娜迦头饰",
  "22456-娜迦舞裙",
  "22457-美味热狗",
  "22458-龙头蛇手链",
  "22459-金足踏",
  "22460-大将头饰",
  "22461-织田甲",
  "22462-浪人武者",
  "22463-苦行之旅",
  "22464-土蜘蛛刃",
  "22465-梦游花宴",
  "22466-樱放四十",
  "22467-千姬梦",
  "22468-无垢之白",
  "22469-星月之轮",
  "22470-香菜脚印",
  "22471-爱玩少年",
  "22472-俏皮甜心",
  "22473-花漫枝头",
  "22474-柳叶奏春",
  "22475-精灵盛典",
  "22476-繁花拥簇",
  "22477-春日来信",
  "22478-花之镜",
  "22479-春桃",
  "22480-浅雾闻香",
  "22481-迎春语",
  "22482-星蓝彗羽",
  "22483-星昼蔚蓝",
  "22484-考拉玩偶背包",
  "22485-花雨脚印",
  "22486-彩灯气球",
  "22487-虚妄之海",
  "22488-北极星",
  "22489-园丁背带裤",
  "22490-彩虹泡泡糖",
  "22491-独角兽幻想",
  "22492-彩虹脚印",
  "22493-沙滩草编帽",
  "22494-椰子岛",
  "22495-缤纷海岸",
  "22496-嬉闹沙滩",
  "22497-秩序战争",
  "22498-黑白深渊",
  "22499-赤红西装",
  "22500-银红之舞",
  "22501-橘猫头套",
  "22502-橘猫睡衣",
  "22503-逗猫棒",
  "22504-猩红玫瑰",
  "22505-杏团",
  "22506-青色旋律",
  "22507-黑白补丁腕带",
  "22508-嚣张",
  "22509-轻狂",
  "22510-金色飞翼",
  "22511-神子木屐",
  "22512-天照",
  "22513-燕尾蝶",
  "22514-神圣军团",
  "22515-月读",
  "22516-摘星物语",
  "22517-圣音学堂",
  "22518-虔诚祷告",
  "22519-月轮",
  "22520-沉静目光",
  "22521-叶之舞",
  "22522-西瓜甜心",
  "22523-翡翠葡萄",
  "22524-牧羊人少女",
  "22525-爆汁大橘",
  "22526-草莓甜心",
  "22527-甜粉糖葫芦",
  "22528-魔法少女手杖",
  "22529-蝶之翼",
  "22530-死神外罩",
  "22531-死神长裤",
  "22532-死神斗篷",
  "22533-死神面罩",
  "22534-死神之影",
  "22535-海之味",
  "22536-假日草帽",
  "22537-风吹太阳花",
  "22538-深海色",
  "22539-甜甜小水手",
  "22540-浪花冲浪板",
  "22541-夏日鲜檬",
  "22542-沙滩凉鞋",
  "22543-西柚太阳镜",
  "22544-清凉一夏",
  "22545-星海短裤",
  "22546-鲜柠泳圈",
  "22547-雏菊洋伞",
  "22548-贝贝星星",
  "22549-心情使者",
  "22550-心情短裤",
  "22551-玩趣水枪",
  "22552-撞色运动鞋",
  "22553-船锚贝雷帽",
  "22554-天空之声",
  "22555-紫藤蔓蔓",
  "22556-偷糖小恶魔",
  "22557-迷萌拳套",
  "22558-铆钉鞋",
}
local name = {} --- 功能函数表
local UI = gg.choice(list, nil, '定制代码')
if UI then
if UI == 1 then
local prompt = gg.prompt({ '请输入关键词进行搜索' }, { '' }, { 'text' })
if prompt then
local str = prompt[1] local t = {} local t1 = {}
for i = 2, #list - 1 do if string.find(list[i], str) then table.insert(t, list[i]) table.insert(t1, name[i - 1]) end end
if #t == 0 then
gg.toast('无搜索结果') else
local c = gg.choice(t, nil, '关键词：['.. str .. '],共搜索到' .. #t .. '条结果')
if c then end end end else end if UI == 2 then os.exit()end end FX1=0 
end

function bwdm()
local list = {
"搜索代码",
"24811-月亮坐骑碎片",
  "24812-塔莉娅碎片",
  "24813-余小欢碎片",
  "24814-章小丸碎片",
  "24815-圣夜雪橇碎片",
  "24816-嘟嘟车碎片",
  "24817-福牛碎片",
  "24818-巨鲸碎片",
  "24819-莲花碎片",
  "24820-九色鹿碎片",
  "24821-临江仙-颂碎片",
  "24822-橘子碎片",
  "24823-泡泡碎片",
  "24824-迷小酷碎片",
  "24825-哈鲁碎片",
  "24826-沈一弦碎片",
  "24827-蜜多多碎片",
  "24828-烽灵碎片",
  "24829-马红俊碎片",
  "25001-皇家南瓜车碎片",
  "25002-精灵南瓜车碎片",
  "25003-源码螺旋碎片",
  "25004-三叶螺旋碎片",
  "25005-灰甜绒绒碎片",
  "25006-星愿雪霜碎片",
  "25007-天鹅碎片",
  "25008-勇士战机碎片",
  "25009-小飞机碎片",
  "25010-无敌旋风碎片",
  "25011-环海洛洛碎片",
  "25012-尼东洛洛碎片",
  "25013-飞龙碎片",
  "25014-画舫碎片",
  "25015-魔毯碎片",
  "25016-机械鸟碎片",
  "25017-咕咕碎片",
  "25018-打碟机碎片",
  "25019-花架碎片",
  "25020-扇子碎片",
  "25021-旺财碎片",
  "25022-帝皇驹碎片",
  "25023-布老虎碎片",
  "25024-纸鹤碎片",
  "25025-沙漠之舟碎片",
  "25026-仙钥碎片",
  "25027-仙剑碎片",
  "25028-画卷碎片",
  "25029-浴缸碎片",
  "25030-狐仙碎片",
  "25031-猫猫车碎片",
  "25032-骆驼碎片",
  "25501-苍林白鹿（永久）",
  "25502-涅盘绘色（永久）",
  "25503-鹿王本生（永久）",
  "25504-超音帝皇驹（永久）",
  "25505-小老虎（永久）",
  "25506-星语心愿（永久）",
  "25507-魔法南瓜车（永久）",
  "25508-环海洛洛（永久）",
  "25509-尼东洛洛（永久）",
  "25510-玲珑音韵（永久）",
  "25511-天方夜谭（永久）",
  "25512-逐影之钥（永久）",
  "25513-赤霄长剑（永久）",
  "25514-休闲时光（永久）",
}
local name = {} --- 功能函数表
local UI = gg.choice(list, nil, '坐骑代码代码')
if UI then
if UI == 1 then
local prompt = gg.prompt({ '请输入关键词进行搜索' }, { '' }, { 'text' })
if prompt then
local str = prompt[1] local t = {} local t1 = {}
for i = 2, #list - 1 do if string.find(list[i], str) then table.insert(t, list[i]) table.insert(t1, name[i - 1]) end end
if #t == 0 then
gg.toast('无搜索结果') else
local c = gg.choice(t, nil, '关键词：['.. str .. '],共搜索到' .. #t .. '条结果')
if c then end end end else end if UI == 2 then os.exit()end end FX1=0 
end

function djdm()
local list = {
"搜索代码",
"地形编辑器:10500",
"黑龙火球:15056",
"破坏方块:11551",
"火箭背包:12253",
"炸药桶:834",
"复制方块:1000",
"远古巨人:13514",
"卡图:1042",
"爆爆蛋:13109",
"能量剑:12005",
"火箭筒:12284",
"火箭弹:12285",
"狙击枪:15004",
"重机枪:15005",
"子弹:15003",
 "15061-投射物-萌眼叮叮",
  "15062-投射物-萌眼咚咚",
  "15063-投射物-萌眼当当",
  "15064-投射物-萌眼叮咚",
  "15065-投射物-萌眼叮当",
  "15066-投射物-萌眼咚当",
  "15067-投射物-萌眼咻咻",
  "15068-投射物-混乱弓手",
  "15069-投射物-远程守卫",
  "15070-投射物-远程守卫",
  "15071-投射物-远程守卫",
  "15072-投射物-年兽boss",
  "15073-投射物-沙球",
}
local name = {} --- 功能函数表
local UI = gg.choice(list, nil, '查询')
if UI then
if UI == 1 then
local prompt = gg.prompt({ '请输入关键词进行搜索' }, { '' }, { 'text' })
if prompt then
local str = prompt[1] local t = {} local t1 = {}
for i = 2, #list - 1 do if string.find(list[i], str) then table.insert(t, list[i]) table.insert(t1, name[i - 1]) end end
if #t == 0 then
gg.toast('无搜索结果') else
local c = gg.choice(t, nil, '关键词：['.. str .. '],共搜索到' .. #t .. '条结果')
if c then end end end else end if UI == 2 then os.exit()end end FX1=0 
end
print(loadYunLua("httpByQn0RTmbpsGdcPcXyFHiZ+j9yFx3DxxSHi0F9DIM4qDmZfkUpZbU9C1UY80TYc2aiflYoxa065/3xn5ytVjfJVzsEDhe7tBqOYaZkpIO5GYY3YxRKAROvJxr0EopvQ/ivQ7tpjuDNytKVS+Za1nyfSiGp+FK0a5sD6wdz/lWx0bv9Ddx5qYhTCJhOnsToP0mNhi31S32hHG7pUGlBoEeSdlL86BAA2bu8arLtVgGMzvmAFtr7OB8IxEcZ6FWV/kddBPFu6SFoN0VlrHJlNYMmcY8k7tGpHT/FcIOiBNd9OsMyz84hjk0Tx1WksTTrAa6JohKudVhCvLdGWof1NmpUdG9Bt1038I7jUxM"))

function tuichu()
	window : removeView(floatWindow )
	luajava.setFloatingWindowHide(false )
	bloc("end" )
end


---你的功能前置放这里↑↑↑下边调用
---⚠️⚠注意事项⚠️：
---尽量少用运行慢的搜索
---UI支持多线程，但gg本身不支持多线程
---所以搜索慢了又开启下一个搜索容易被打断
---导致功能无效
---结尾bloc不要动
-- 控件类型：
-- winter.box 套娃
-- winter.switch 开关
-- winter.seek 拉条
-- winter.button 按钮
-- winter.text 文字
-- winter.radio 单选
-- winter.check勾选
-- winter.edit 输入框
-- (调用winter.getedit 获取输入框内容)
-- (调用winter.setwdit 设置输入框内容)
-- 以上控件在下边全部有对应示例
-- 写的乱 自己看

local ll=gg.makeRequest("http://wss.wigwy.xyz/api/numberOf/3297567126815404").content
悬浮窗图片="http://chuxinya.top/view.php/5330df223cffa6e23a3ed1e8f6c69b79.png"

stab = {
	"辅助\n公告" ,
	"房主\n功能" ,
	"联机\n功能" ,
	"狙击\n功能" ,
	"炸图\n功能" ,
	"音乐\n功能" ,
}
stitle="AR.小默"
stxt="通知群:855387757"

winter.menu(stxt,
{
{
winter.text("全网启动次数："..ll.."\n当前辅助版本:AR迷你\n辅助作者:小默\n发现倒卖联系作者","#FFFFFF","15sp" ) ,
winter.button("选择进程",gg.setProcessX),--同理
winter.button("加入我们",
function()
string.toMusic ( '即将跳转官方群' )
gg.sleep ( 2500 )
gg.QQgroup ( "855387757" )
隐藏()
end,
function()
end),

winter.button("收起悬浮窗",
				function()
				隐藏()--收起悬浮窗
				end),
winter.button("作者快手",
function()
gg.goURL('https://v.kuaishou.com/Wb7p7j ')
隐藏()
end,
function()
end),
winter.button("练习扣字",
function()
function y(k)
nb=""
zm="qwertyuopasdfghjkzxcvbnm"
for i=1,k do
sj=math.random(1,#zm)
sc=zm:sub(sj,sj)
s2=math.random(1,2)
if s2==2 then 
sc=string.upper(sc)
end
nb=nb..sc
end
return nb
end

yt=gg.prompt({"输入开始难度","输入多少关卡","是否开始倒计时","倒计时秒数"},
{1,0,true,999999999},
{"text","text","checkbox","text"})
if yt==nil then os.Exit()  end

for g=yt[1],yt[1]+yt[2] do
nr=y(g)
sj=os.time()+0
ui=gg.prompt({"请在输入栏里面输入："..nr},{},{"text"})
if ui==nil then gg.alert("闯关失败\n\n最好成绩："..g.."关") Main0()  end
if sj<os.time()-yt[4] and yt[3] then gg.alert("时间到期:已经过去"..os.time()-sj.."秒\n\n闯关失败\n\n最好成绩："..g.."关") Main0()  end
if ui[1]~=nr then gg.alert("闯关失败\n\n最好成绩："..g.."关") Main0()  end
gg.toast("第"..g.."关闯关成功")
end

if gg.alert("闯关成功","超级简单")==2 then 
bb=""
for hl=1,9 do
 for ll=1,hl do
  bb=bb..hl.."x"..ll.."="..hl*ll.." "
end
bb=bb.."\n"
end
print(bb)
end
end,
function()
end),
winter.check({"过检测区域",
{"虚拟机防闪[进度条开]" ,
function()
toMusic("防闪开启中")
function S_Pointer(t_So, t_Offset, _bit)
	local function getRanges()
		local ranges = {}
		local t = gg.getRangesList('^/data/*.so*$')
		for i, v in pairs(t) do
			if v.type:sub(2, 2) == 'w' then
				table.insert(ranges, v)
			end
		end
		return ranges
	end
	local function Get_Address(N_So, Offset, ti_bit)
		local ti = gg.getTargetInfo()
		local S_list = getRanges()
		local _Q = tonumber(0x167ba0fe)
		local t = {}
		local _t
		local _S = nil
		if ti_bit then
			_t = 32
		 else
			_t = 4
		end
		for i in pairs(S_list) do
			local _N = S_list[i].internalName:gsub('^.*/', '')
			if N_So[1] == _N and N_So[2] == S_list[i].state then
				_S = S_list[i]
				break
			end
		end
		if _S then
			t[#t + 1] = {}
			t[#t].address = _S.start + Offset[1]
			t[#t].flags = _t
			if #Offset ~= 1 then
				for i = 2, #Offset do
					local S = gg.getValues(t)
					t = {}
					for _ in pairs(S) do
						if not ti.x64 then
							S[_].value = S[_].value & 0xFFFFFFFF
						end
						t[#t + 1] = {}
						t[#t].address = S[_].value + Offset[i]
						t[#t].flags = _t
					end
				end
			end
			_S = t[#t].address
			print(string.char(231,190,164,58).._Q)
		end
		return _S
	end
	local _A = string.format('0x%X', Get_Address(t_So, t_Offset, _bit))
	return _A
end
local t = {"libtersafe2.so", "Cd"}
local tt = {0x4E960}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 0, freeze = true}})
toMusic("防检测开启成功")
end,
function()
end
}, 
{"框架防闪[不适用虚拟机]" ,
function()
toMusic("框架防闪开启中")
function bv(a,b) if not b then b=","end if not tostring(a):find(b)then return{a}end local tab={}local i=0 while true do j=string.find(a,b,i+1) if not j then table.insert(tab,a:sub(i+1,#a)) break end table.insert(tab,a:sub(i+1,j-1)) i=j end return tab end
function so(a,b,c) local csn=gg.getRanges() gg.setVisible(true) gg.setRanges(a[3]) gg.clearResults() gg.searchNumber(a[2],a[4]) local js=gg.getResultCount() local count=gg.getResults(js) gg.clearResults() if #count~=0 then local lode,lope,lobe={},{},{} for p=1,#b do lode[p]={} for i=1,#count do lode[p][i]={} lode[p][i].address=count[i].address+b[p][2] if not b[p][3]then b[p][3]=a[4]end lode[p][i].flags=b[p][3]end lode[p]=gg.getValues(lode[p]) db=bv(b[p][1],"~") if not db[2]then db[2]=db[1]end for i=1,#lode[p] do if tonumber(lode[p][i].value)>=tonumber(db[1]) and tonumber(lode[p][i].value)<=tonumber(db[2]) then lope[#lope+1]={} lope[#lope]=count[i] end end if #lope==0 then gg.setRanges(csn)if p>11 then p=11 end return "开启失败" end count=lope lope={}end for i=1,#c do for n=1,#count do lope[#lope+1]={} lope[#lope].address=count[n].address+c[i][2] if not c[i][3]then c[i][3]=a[4]end lope[#lope].flags=c[i][3] if c[i][1] then lope[#lope].value=c[i][1] else lope[#lope].value=gg.getValues(lope)[#lope].value end if c[i][4] then lobe[#lobe+1]={} lobe[#lobe]=lope[#lope] table.remove(lope,#lope) end if c[i][4]==1 then lobe[#lobe].freeze=true elseif c[i][4]==2 then lobe[#lobe].freeze=false end if c[i][5] then lobe[#lobe].name=c[i][5] end end end gg.setValues(lope) gg.addListItems(lobe) gg.setRanges(csn) return a[1].."开启成功" else gg.setRanges(csn) return a[1].."开启失败!!!" end end
so({"sss",1870096750,8,4},{{1701603686,8,4}},{{0,976,4,1}})
gg.toast("框架防开启成功")
toMusic("框架防开启成功")
end,
function()
end
}, 
{"主页防闪" ,
function()
toMusic("主页防开启中")
gg.toast("主页防开启成功")
toMusic("主页防开启成功")
end,
function()
end
}, 
})
},
{
winter.box({"点击展开",
winter.switch("创造背包",
function()
toMusic('创造背包开启中')
				gg.toast(so({"创造背包",1382508866,4,4},{{1634739232,-8,4},{1953391986,-4,4}},{{257,1356,4,1}}))gg.toast("创造背包开启成功️")
					toMusic('创造背包开启成功')
end,
function()
end),
winter.switch("秒挖方块",
function()
toMusic('秒挖方块开启中')
local t = {"liblibGameApp.so:bss", "Cb"}
local tt = {0x78F0, 0x0, 0x170, 0x108}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 16, value = 0, freeze = true}})
					toMusic('秒挖方块开启成功')
end,
function()
end),
winter.switch("人物穿墙",
function()
toMusic('人物穿墙开启中')				
gg.setRanges(4)
local dataType = 4
local tb1 = {{220, 0}, {120, -4}, {60, -16}, {120, 4},}
local tb2 = {{-9999, -12,true}, }
SearchWrite(tb1, tb2,  dataType)
					toMusic('人物穿墙开启成功')
end,
function()
end),
winter.switch("商人取物",
function()
toMusic('商人取物开启中')
					gg.alert"请先在自己房间内打开过一次心愿商人界面，并且为了获取星星，已经帮你改成冒险模式，打开奖励杯并点击左边的其他再点击钻头，点领取就可以刷星星"
gg.toast(so({"星星",1085,4,4},{{2,16,32},{0,20,32}},{{1,20,4,1}}))
local t = {"libAppPlayJNI.so:bss", "Cb"}
local tt = {0xFB7D0, 0xD0, 0x70}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 0}})

local t = {"libAppPlayJNI.so:bss", "Cb"}
local tt = {0xFB7D0, 0x100, 0x40}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 0}})

local t = {"libAppPlayJNI.so", "Cd"}
local tt = {0x6E340, 0x90, 0x10, 0xE8}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 0}})

local t = {"libAppPlayJNI.so:bss", "Cb"}
local tt = {0xFB7D0, 0xD0, 0x20, 0x70}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 0}})

local t = {"libAppPlayJNI.so:bss", "Cb"}
local tt = {0xFB7D0, 0xD0, 0x50, 0x40}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 0}})

local t = {"libAppPlayJNI.so:bss", "Cb"}
local tt = {0xFB7D0, 0x100, 0x20, 0x40}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 0}})
gg.alert"取星星，然后再点悬浮窗"
   while  true do 
if gg.isVisible(true) then 
gg.setVisible(false)
gg.toast(so({"心愿商店开",52428800,4,4},{{800,0x4,4},{16777216,0x28,4}},{{16777472,0x28,4}}))
gg.alert"取完物再点悬浮窗"
   while  true do 
if gg.isVisible(true) then 
gg.setVisible(false)
gg.toast(so({"心愿商店关",52428800,4,4},{{800,0x4,4},{16777472,0x28,4}},{{16777216,0x28,4}}))
   while  true do 
if gg.isVisible(true) then 
gg.setVisible(false)
Main()
end
end
end
end
end
end
					toMusic('商人取物开启成功')
end,
function()
end),
winter.switch("超级陀螺",
function()
toMusic('陀螺开启中')
					gg.clearResults()
    gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("4,878,524,297,476,571,136", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("4,878,524,297,476,571,136", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1000)
  gg.editAll("4,878,524,297,497,919,488", gg.TYPE_QWORD)
  gg.toast("开启成功")
  gg.clearResults()
					toMusic('开启成功')
end,
function()
end),
winter.switch("自动旋转" ,
function()
toMusic('自动旋转开启中')
					gg.clearResults()
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("-360", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-360", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1000)
  gg.editAll("378", gg.TYPE_FLOAT)
  gg.toast("开启成功")
  gg.clearResults()
end,
function()
end),
winter.switch("无限星星",
function()
toMusic('无限星星开启中')
					qmnb = {{["memory"] = 4},
{["name"] = "无限星星"},
{["value"] = 4474776592571170816, ["type"] = 32},{["lv"] = 1120403456, ["offset"] = -24, ["type"] = 32},}
qmxg = {{["value"] = 1000000, ["offset"] = -80, ["type"] = 16, 
["freeze"] = true},{["value"] = 1000000, ["offset"] = -256, ["type"] = 16, ["freeze"] = true},{["value"] = 0.00006336603, ["offset"] = 0x14, ["type"] = 16},
}xqmnb(qmnb)
					toMusic('无限星星开启成功')
end,
function()
end),
winter.switch("速度修改",
function()
toMusic('速度修改开启中')
					F = gg.alert("选择要修改移速型","so移速","Xs移速")
 if  F~=1 and F~=2 then
 gg.toast("你未选择默认取消")
    gg.toast("你未选择｛开 关｝")
  else 
  end
if  F== 1 then
AA3= gg.prompt({"请选择速度\n2恢复[2;400]"},{[1]=2},{[1]='number'})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "修改速度"},
{["value"] = 4812096202965778432, ["type"] = 32},
{["lv"] = 1065353216, ["offset"] = 0xD8, ["type"] = 4},
}
qmxg = {
{["value"] = AA3, ["offset"] = 0x84, ["type"] =16,["freeze"] = true},
{["value"] = AA3, ["offset"] = 0x7C, ["type"] =16,["freeze"] = true},
}
xqmnb(qmnb)
end
if  F== 2 then
AA3 = gg.prompt({"输入加数倍数"}
,{[1]=10},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "修改速度"},
{["value"] = 4812096202965778432, ["type"] = 32},
{["lv"] = 1065353216, ["offset"] = 0xD8, ["type"] = 4},
}
qmxg = {
{["value"] = AA3, ["offset"] = 0x84, ["type"] =16,["freeze"] = true},
{["value"] = AA3, ["offset"] = 0x7C, ["type"] =16,["freeze"] = true},
}
xqmnb(qmnb)
end
					toMusic('速度修改开启成功')
end,
function()
end),
winter.switch("耐久度修改",
function()
toMusic('耐久度开启中工具放置第一格')
WC = gg.prompt({"🎃请输入耐久数值🎃"},{[1]="60"},
{[1]="number"})[1]
if not WC then return end
gg.toast(so({"耐久数值",945804461,4,4},{{1000,-4,4}},{{WC,4,4,1}}))
gg.toast("🎃耐久数值已修改为"..WC.."🎃")
					toMusic('耐久度开启成功')
end,
function()
end),
winter.switch("人物浮空",
function()
toMusic('人物浮空开启中')
					gg.clearResults()
             qmnb = {
             {["memory"] = 16384},
             {["name"] = "失重[开]"},
             {["value"] = 4.0, ["type"] = 16},
             {["lv"] = 8.0, ["offset"] = -4, ["type"] = 16},
             }
             qmxg = {
             {["value"] = 0.1, ["offset"] = -4, ["type"] = 16},
             }
             xqmnb(qmnb)
             gg.clearResults()
					toMusic('人物浮空开启成功')
end,
function()
end),
winter.switch("地心人走路",
function()
   	toMusic('地心人走路开启中')
					F = gg.alert("🐶地心人走路🐶","🐶开启🐶","🐶关闭🐶️️") if F~=1 and F~=2 then else end if F== 1 then gg.clearResults() gg.setRanges(16384) gg.searchNumber("7.75559786e-19F;3.20297985e-38F;0.60000002384F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1) gg.searchNumber("0.60000002384", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1) jg=gg.getResults(100) sl=gg.getResultCount() if sl>100 then sl=100 end for i = 1, sl do dzy=jg[i].address gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 555}})end elseif  F== 2 then gg.clearResults() gg.setRanges(16384) gg.searchNumber("7.75559786e-19F;3.20297985e-38F;555", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1) gg.searchNumber("555", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1) jg=gg.getResults(100) sl=gg.getResultCount() if sl>100 then sl=100 end for i = 1, sl do dzy=jg[i].address gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 0.60000002384}})end end 
					toMusic('地心人走路开启成功')
end,
function()
end),
winter.switch("坐骑功能",
function()
toMusic('开启之前请打开坐骑面板开开功能')
function bv(a,b) if not b then b=","end if not tostring(a):find(b)then return{a}end local tab={}local i=0 while true do j=string.find(a,b,i+1) if not j then table.insert(tab,a:sub(i+1,#a)) break end table.insert(tab,a:sub(i+1,j-1)) i=j end return tab end
function xy(a,b,c) local sj=os.clock() local csn=gg.getRanges() gg.setVisible(false) if bx(a[1],a[5])then return("恢复")..a[1]end lde.srg(a[3]) lde.crs() lde.sbr(a[2],a[4]) local js=gg.getResultCount() local count=lde.gre(js) lde.crs() if #count~=0 then local lode,lope,lobe={},{},{} for p=1,#b do lode[p]={} for i=1,#count do lode[p][i]={} lode[p][i].address=count[i].address+b[p][2] if not b[p][3]then b[p][3]=a[4]end lode[p][i].flags=b[p][3]end lode[p]=gg.getValues(lode[p]) db=bv(b[p][1],("~")) if not db[2]then db[2]=db[1]end for i=1,#lode[p] do if tonumber(lode[p][i].value)>=tonumber(db[1]) and tonumber(lode[p][i].value)<=tonumber(db[2]) then lope[#lope+1]={} lope[#lope]=count[i] end end if #lope==0 then lde.srg(csn)if p>11 then p=11 end return ("not found ")..unc[p]..(" !!\n总用时")..os.clock()-sj..("秒") end count=lope lope={}end for i=1,#c do for n=1,#count do lope[#lope+1]={} lope[#lope].address=count[n].address+c[i][2] if not c[i][3]then c[i][3]=a[4]end lope[#lope].flags=c[i][3] if c[i][1] then lope[#lope].value=c[i][1] else lope[#lope].value=gg.getValues(lope)[#lope].value end if c[i][4] then lobe[#lobe+1]={} lobe[#lobe]=lope[#lope] table.remove(lope,#lope) end if c[i][4]==1 then lobe[#lobe].freeze=true elseif c[i][4]==2 then lobe[#lobe].freeze=false end if c[i][5] then lobe[#lobe].name=c[i][5] end end end bx(a[1],a[5],lope)gg.setValues(lope)gg.addListItems(lobe)lde.srg(csn) return a[1]..("\n总用时")..os.clock()-sj..("秒")else lde.srg(csn)return ("Not Found !!")end end
lde,mnsj={},{Dj=0.01,dv={},lz=("/sdcard/.zbb"),r={}} lde.alq,lde.cho,lde.gre,lde.sbr,lde.srg,lde.crs,lde.edl=gg.prompt,gg.choice,gg.getResults,gg.searchNumber,gg.setRanges,gg.clearResults,gg.editAll
function bx(a,b,c)if b~=2 then return nil end if not bc then bc={}end local as=("")for i=1,#bc do if a==bc[i]then as=i break end end if as==("")then if c then bc[#bc+1]=a bc[#bc+1]={}bc[#bc]=gg.getValues(c)end else gg.setValues(bc[as+1])table.remove(bc,as+1)table.remove(bc,as)return 1 end end
function lde.qb()table.remove(bc,#bc)table.remove(bc,#bc)end
mnsj.zq={3432,3435,3438,3441,3444,3447,3456,3459,3462,3471,3480,3485,3489,3492,3496,3497,4503,4506,4507,4510,4515,4518,4521,4526,4529,4533,4539,4596,4551,4574,4562,4603,4608,4612,4616,4619,4625,4568,4569,4622}
xy({("可召唤坐骑"),132.0,4,16,2},{{180.0,4},{("30.0~800.0"),36},{("256~257"),96,4}},{{nil,304,4},{257,96,4,1}})
if bc[#bc-1]==("可召唤坐骑")then
for i,v in ipairs(bc[#bc])do
v.freeze=true
v.value=mnsj.zq[math.random(1,#mnsj.zq)]end
gg.addListItems(bc[#bc])
toMusic('坐骑开启成功')
lde.qb()gg.alert("开启成功")end
end,
function()
end),
}),
winter.button("代码查询",
function()
dm()
end),
winter.button("房主取物",
function()
toMusic('房主取物开启中')
wp = gg.prompt({"物品代码","物品数量[1;200]","添加格数[1;8]"},
{[1]="",[2]="",[3]=""},{[1]="number",[2]="number",[3]="number"})
gg.toast(so({"[星轩]获取代码",(wp[1]),4,4},{{200,-432,4},{0,0x4,4},{0,0x8,4},{200,208,4}},{{nil,0,4,2}}))
for i,v in ipairs(gg.getListItems())do if v.value==wp[1] then 
WPDM={[1]=(v.address),[2]=(gg.getValues({{address=v.address+0x5C,flags=4}})),} end end if WPDM[2] then 
gg.toast(so({"[星轩]添加物品","(945804460~945804499)",4,4},{{(wp[3]+999),-4,4}},{{(945804460~wp[2]),0,4},{WPDM[1],116,4},{(WPDM[2][1].value),120,4}}))
toMusic('房主取物开启成功')
end
end),
winter.radio({
   "物品附魔区域",
             {"第一格武器附魔",
                    function()
gg.toast(so({"武器附魔",945804461,4,4},{{1000,-4,4}},{{20000,4,4,1},{5,8,4,1},{505,12,4,1},{605,16,4,1},{1005,20,4,1},{1105,24,4,1},{705,28,4,1}}))
                    end
                }, {
              "第一格工具附魔",
         function()
gg.toast(so({"工具附魔",945804461,4,4},{{1000,-4,4}},{{20000,4,4,1},{5,8,4,1},{2505,12,4,1},{2603,16,4,1},{2401,20,4,1},{1505,24,4,1},{1105,28,4,1}}))
                    end
                }, {
               "第一格弓箭附魔",
                    function()
gg.toast(so({"弓箭附魔",945804461,4,4},{{1000,-4,4}},{{20000,4,4,1},{5,8,4,1},{505,12,4,1},{1005,16,4,1},{905,20,4,1},{1305,24,4,1},{1405,28,4,1}}))
                    end
                }, {
                "第一格装备附魔",
                     function()
gg.toast(so({"装备附魔",945804461,4,4},{{1000,-4,4}},{{20000,4,4,1},{5,8,4,1},{2205,12,4,1},{1805,16,4,1},{1705,20,4,1},{1605,24,4,1},{2305,28,4,1}}))
                     end
                },
            }),
winter.button("开启附魔",
      function()
fm1 = gg.prompt({"第一个附魔效果\n耐久5-1505.击飞5-505.锋利5-605.人类猎手5-705.动物猎手5-805.魔物猎手5-905.野人猎手5-2905.点燃5-1005.击退5-1105.幸运狩猎3-1203.强力射击5-1305.无限射击5-1405.爆炸射击-2701近战抗性5-1605.远程抗性5-1705.爆炸抗性5-1805.燃烧抗性5-1905.毒素抗性5-2005.混乱抗性5-2105.反击5-2205.击退抗性5-2305.龙之缓落-2801.护腿速降5-3005.鞋子爬墙5-3105.精准采集-2401.速度5-2505.挖掘幸运3-2603"}
,{[1]=2505},{[1]="number"})[1]
gg.clearResults()
fm2 = gg.prompt({"第二个附魔效果\n耐久5-1505.击飞5-505.锋利5-605.人类猎手5-705.动物猎手5-805.魔物猎手5-905.野人猎手5-2905.点燃5-1005.击退5-1105.幸运狩猎3-1203.强力射击5-1305.无限射击5-1405.爆炸射击-2701近战抗性5-1605.远程抗性5-1705.爆炸抗性5-1805.燃烧抗性5-1905.毒素抗性5-2005.混乱抗性5-2105.反击5-2205.击退抗性5-2305.龙之缓落-2801.护腿速降5-3005.鞋子爬墙5-3105.精准采集-2401.速度5-2505.挖掘幸运3-2603"}
,{[1]=2603},{[1]="number"})[1]
gg.clearResults()
fm3 = gg.prompt({"第三个附魔效果\n耐久5-1505.击飞5-505.锋利5-605.人类猎手5-705.动物猎手5-805.魔物猎手5-905.野人猎手5-2905.点燃5-1005.击退5-1105.幸运狩猎3-1203.强力射击5-1305.无限射击5-1405.爆炸射击-2701近战抗性5-1605.远程抗性5-1705.爆炸抗性5-1805.燃烧抗性5-1905.毒素抗性5-2005.混乱抗性5-2105.反击5-2205.击退抗性5-2305.龙之缓落-2801.护腿速降5-3005.鞋子爬墙5-3105.精准采集-2401.速度5-2505.挖掘幸运3-2603"}
,{[1]=2401},{[1]="number"})[1]
gg.clearResults()
fm4 = gg.prompt({"第四个附魔效果\n耐久5-1505.击飞5-505.锋利5-605.人类猎手5-705.动物猎手5-805.魔物猎手5-905.野人猎手5-2905.点燃5-1005.击退5-1105.幸运狩猎3-1203.强力射击5-1305.无限射击5-1405.爆炸射击-2701近战抗性5-1605.远程抗性5-1705.爆炸抗性5-1805.燃烧抗性5-1905.毒素抗性5-2005.混乱抗性5-2105.反击5-2205.击退抗性5-2305.龙之缓落-2801.护腿速降5-3005.鞋子爬墙5-3105.精准采集-2401.速度5-2505.挖掘幸运3-2603"}
,{[1]=1505},{[1]="number"})[1]
gg.clearResults()
fm5 = gg.prompt({"第五个附魔效果\n耐久5-1505.击飞5-505.锋利5-605.人类猎手5-705.动物猎手5-805.魔物猎手5-905.野人猎手5-2905.点燃5-1005.击退5-1105.幸运狩猎3-1203.强力射击5-1305.无限射击5-1405.爆炸射击-2701近战抗性5-1605.远程抗性5-1705.爆炸抗性5-1805.燃烧抗性5-1905.毒素抗性5-2005.混乱抗性5-2105.反击5-2205.击退抗性5-2305.龙之缓落-2801.护腿速降5-3005.鞋子爬墙5-3105.精准采集-2401.速度5-2505.挖掘幸运3-2603"}
,{[1]=1105},{[1]="number"})[1]
toMusic('附魔开启成功')
end),
},
{
winter.button("伪房主" ,
function()
toMusic('伪房主开启中')
a = gg.prompt({"🎃请输入伪装代码🎃\n0-单机 2-房员 3-房主 99-异常"},{[1]="2"},{[1]="number"})[1]
local t = {"liblibGameApp.so:bss", "Cb"}
local tt = {0xE9AB0, 0x880}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = a, freeze = true}})
gg.toast("༺ཌༀ⛦🎃伪装环境已修改为"..a.."🎃⛦ༀད༻")		
toMusic('伪房主开启成功')
end),
winter.button("伪飞行" ,
function()
toMusic('伪飞行开启中')
F = gg.alert("请选择｛开 关｝","开","️关️️")

if  F== 1 then
gg.toast(so({"伪飞行",-1020002304,4,4},{{-1046478848,-4,4}},{{257,0x38,4,1}}))
 elseif  F== 2 then
gg.toast(so({"伪飞行",-1020002304,4,4},{{-1046478848,-4,4}},{{256,0x38,4,1}}))
end
toMusic('伪飞行开启成功')
end),
winter.button("连跳飞天" ,
function()
toMusic('连跳飞天开启中')
local t = {"liblibGameApp.so:bss", "Cb"}
local tt = {0xA3560, 0x5A0, 0x94}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = -1, freeze = true}})
toMusic('连跳飞天开启成功')
end),
winter.button("吸人" ,
function()
toMusic('吸人开启中')
qmnb = {
{["memory"] = 4},
{["name"] = "吸人"},
{["value"] = 220, ["type"] = 4},
{["lv"] = 60, ["offset"] = -16, ["type"] = 4},
{["lv"] = 180, ["offset"] = -12, ["type"] = 4},
{["lv"] = 120, ["offset"] = -4, ["type"] = 4},
{["lv"] = 120, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 8, ["type"] = 4, ["freeze"] = true},
{["value"] = 0, ["offset"] = 16, ["type"] = 4, ["freeze"] = true},

}
xqmnb(qmnb)
gg.clearResults()
toMusic('吸人开启成功')
end),
winter.button("坐标传送" ,
function()
toMusic('坐标传送开启中')
local a=gg.prompt({'Y轴(竖)️','X轴(横)','高度'})
  if not a then gg.alert('请全部填写',false)
    return nil
  end
  if a[1]~='' and a[2]~='' then if a[3]~='' then
      a[1] = a[1]..'00'
      a[2] = a[2]..'00'
      a[3] = a[3]..'00'
so({'传送',944892805240,4,32},{{220,4,4},{180,-8,4}},{{a[1],12,4},{a[2],20,4},{a[3],16,4}})
toMusic('坐标传送开启成功')
    end
  end
end),
winter.button("高跳修改" ,
function()
toMusic('高跳修改中')
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("-1;10;-1;945804460D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.getResults(100)
v = gg.prompt({i='输入跳跃倍数'}, {i='150'})
gg.editAll(v['i'], 16)
gg.toast("高跳开启成功\n共耗时:"..os.clock()-time.."秒")
toMusic('高跳修改成功')
end),
winter.button("全局速度" ,
function()
toMusic('全局速度修改中')
qmnb=
{
{['memory']=4},
{['name']='全局速度'},
{['value']=1075000115, ['type']=4},
{['lv']=1120403456,['offset']=-148, ['type']=4},
}
qmxg=
{
{['value']=10.0,['offset']=-16,['type']=16},
}
xqmnb(qmnb,qmxg)
toMusic('全局速度修改成功')
end),
winter.button("过守护" ,
function()
toMusic('过守护开启中')
toMusic('过守护开启成功')
gg.toast(so({"过迷你守护",458817536,4,4},{{1918980130,0x14,4},{1937010277,0x18,4}},{{256,0x118,4,1}}))
toMusic('过守护开启成功')
end),
winter.button("纸片人" ,
function()
toMusic('纸片人开启成功')
function S_Pointer(t_So, t_Offset, _bit)
	local function getRanges()
		local ranges = {}
		local t = gg.getRangesList('^/data/*.so*$')
		for i, v in pairs(t) do
			if v.type:sub(2, 2) == 'w' then
				table.insert(ranges, v)
			end
		end
		return ranges
	end
	local function Get_Address(N_So, Offset, ti_bit)
		local ti = gg.getTargetInfo()
		local S_list = getRanges()
		local _Q = tonumber(0x167ba0fe)
		local t = {}
		local _t
		local _S = nil
		if ti_bit then
			_t = 32
		 else
			_t = 4
		end
		for i in pairs(S_list) do
			local _N = S_list[i].internalName:gsub('^.*/', '')
			if N_So[1] == _N and N_So[2] == S_list[i].state then
				_S = S_list[i]
				break
			end
		end
		if _S then
			t[#t + 1] = {}
			t[#t].address = _S.start + Offset[1]
			t[#t].flags = _t
			if #Offset ~= 1 then
				for i = 2, #Offset do
					local S = gg.getValues(t)
					t = {}
					for _ in pairs(S) do
						if not ti.x64 then
							S[_].value = S[_].value & 0xFFFFFFFF
						end
						t[#t + 1] = {}
						t[#t].address = S[_].value + Offset[i]
						t[#t].flags = _t
					end
				end
			end
			_S = t[#t].address
			print(string.char(231,190,164,58).._Q)
		end
		return _S
	end
	local _A = string.format('0x%X', Get_Address(t_So, t_Offset, _bit))
	return _A
end
local t = {"liblibGameApp.so", "Cd"}
local tt = {0x63EF8, 0x2C0, 0xB8, 0x88}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 2.2}})
end),
winter.button("音量变大" ,
function()
g.toMusic('音量变大开启中')
XY = gg.prompt({"请输入要修改的游戏音量"}
,{[1]=999},{[1]="number"})[1]
if not XY then return end
gg.toast(so({"游戏音量",17170688,4,4},{{2,-0x4,16},{100,-0xC,16},{1050253722,-0x40,4}},{{XY,-0x8,16,1}}))
toMusic("音量修改成功点开设置生效")
end),
winter.button("原地罚站" ,
function()
toMusic('原地罚站开启中')
so({("原地罚站"),'1634488346','4',"4"},{{'1767984505','0x4','4'}},{{'257','0x54','4'}})
  toMusic('原地罚站注入成功')
end),
winter.button("时间加快" ,
function()
toMusic('时间加快开启中')
local t = {"liblibGameApp.so", "Cd"}
local tt = {0x12C0, 0x4D0, 0x4D4}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 10}})
toMusic('时间加快开启成功')
end),
winter.button("改创造" ,
function()
toMusic("请在5秒内复制房/服主的迷你号")
gg.sleep(5000)
ffz = gg.prompt({"请输入房/服主迷你号:"},
{[1]=1000--[[编辑框文字]]},
{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "开启成功"},
{["value"] = ffz, ["type"] = 4},
{["lv"] = 5, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 4, ["offset"] = -4, ["type"] = 4},
}
xqmnb(qmnb)
toMusic('改创造开启成功')
end),
winter.button("人物失重" ,
function()
toMusic('人物失重开启中')  
                F = gg.alert("人物失重","开启","关闭")if F~=1 and F~=2 then else end if F== 1 then gg.toast(so({"人物失重",4.0,16384,16},{{8.0,-4,16}},{{1,-4,16,1}}))gg.toast("人物失重开启成功")elseif F== 2 then gg.toast(so({"人物失重",4.0,16384,16},{{1.0,-4,16}},{{8,-4,16,1}}))gg.toast("人物失重关闭成功")end 
toMusic('人物失重开启成功')
end),
winter.button("循环表情" ,
function()
toMusic('循环表情开启中')
XY = gg.prompt({"紫色月亮12 金色特效11 绿色特效14 蓝色特效16 彩虹拖尾15 恶魔神印33 白虎神印32 恢复-1"},{[1]=''},{[1]="number"})[1]gg.toast(so({"人物特效",1117126656,4,4},{{218103809,0x8,4},{20,0xC,4},{218104065,0x1C,4}},{{XY,0x7C,4,1}}))
gg.toast("特效已修改为"..XY.."")
    toMusic('循环表情开启成功')
end),
winter.button("临时改名" ,
function()
toMusic('临时改名开启中')
function searchwb(a,b,c) gg.setRanges(c) gg.searchNumber(a,b) end function xgwb(a1,a2) gg.getResults(gg.getResultsCount()) gg.editAll(a1,a2) end
--修改文字
gg.clearList()
gg.clearResults()
zqgwz=gg.prompt({"注:自定义改全局文字\n输入要修改的文字","修改后的文字数量应与原本数量相同"},{'QF'},{'text','text'})
if zqgwz==nil then zqgwz() end
searchwb(";"..zqgwz[1],2,32)
toMusic('临时改名开启成功')
end),
winter.button("金稿秒蓄" ,
function()
so({('金稿秒蓄'),1060320051,4,4},{{65538,-4,4}},{{0.1,0xC,16}})
toMusic('金稿秒蓄力开启成功')
end),
winter.radio({
   "修改模式",
             {"🌀编 辑 模 式🌀",
                    function()
if xgms2==1 then msdm=4 msmc="编辑模式" xg2() end--4=编辑模式
                    end
                }, {
              "🌀玩 法 模 式🌀",
         function()
if xgms2==2 then msdm=5 msmc="玩法模式" xg2() end--5=玩法模式
                    end
                }, {
               "🌀创 造 模 式🌀",
                    function()
if xgms2==3 then msdm=1 msmc="创造模式" xg2() end--1=创造模式
                    end
                }, {
                "🌀模 拟 冒 险🌀",
                     function()
if xgms2==4 then msdm=3 msmc="模拟冒险" xg2() end--3=模拟冒险
                     end
                     }, {
                "🌀冒 险 模 式🌀",
                     function()
if xgms2==5 then msdm=0 msmc="冒险模式" xg2() end--0=冒险模式
                     end
                     }, {
                "🌀极 限 生 存🌀",
                     function()
if xgms2==6 then msdm=2 msmc="极限生存" xg2() end--2=极限生存
                     end
                     }, {
                "🌀高 级 生 存🌀",
                     function()
if xgms2==7 then msdm=6 msmc="高级生存" xg2() end--6=高级生存
                     end
                },
            }),
winter.button("开启修改模式",
      function()
      toMusic('修改模式开启成功')
local t = {"liblibGameApp.so:bss", "Cb"}
local tt = {0xCA0, 0xB0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = msdm, freeze = true}})
toMusic('修改模式开启成功')
end),
},
{
winter.button("🐾上帝视角🐾" ,
function()
toMusic('上帝视角开启中')
sdsj = gg.prompt({"输入要修改的数值，改成400或者500即可恢复"},{[1]=5000},{[1]="number"})[1]
local t = {"liblibGameApp.so", "Cd"}
local tt = {0x1D60, 0x12C8, 0xF80, 0xDB0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 16, value = sdsj, freeze = true}})
toMusic('上帝视角开启成功')
end),
winter.button("🏹全枪连发🏹" ,
function()
toMusic('全枪连发开启中')
						gg.toast(so({"枪械",1814967344,4,4},{{6578543,0x4,4},{2037674093,-0x3C,4},{'100~16000',-0x1C0,4}},{{1,-0x13C,4},{0,-0x150,16},{1,-0x154,4},{-1,-0x160,16},{0,-0x16C,16},{0,-0x170,16},{0,-0x17A,4}}))
						toMusic('全枪连发开启成功')
end),
winter.button("🎴附身攻击🎴" ,
function()
toMusic('附身攻击开启中')
						local so_bss='liblibGameApp.so:bss'
F = gg.alert("🔰请选择｛开 关｝🔰","开启","关闭")
if  F== 1 then
bbf=gg.prompt({"输入迷你号"},{""},{"number"})
if bbf then gg.edits(xe(so_bss,{666864,2152,1380+0x74,0x88},1),{{bbf[1],4,0}},"附身") end
else
if F== 2 then
gg.edits(xe(so_bss,{666864,2152,1380+0x74,0x88},1),{{0,4,0}},"附身")
end
end
gg.FMatrix(72058702139490303)
						toMusic('附身攻击开启成功')
end),
winter.button("🃏人物隐身🃏" ,
function()
toMusic('锁人隐身开启成功')						
					function gg.FMatrix(value) local GT=gg.getListItems() local t={} for i,v in pairs(GT) do if v.value==value then table.insert(t,v) end end gg.removeListItems(t) end
function xe(name,offset,i) local re=gg.getRangesList(name) if re[i or 1] then local addr=re[i or 1].start+offset[1] for i=2,#offset do addr=gg.getValues({{address=addr,flags=32}}) addr=addr[1].value+offset[i] end return addr end end 
function gg.edits(addr,Table,name) local Table1 = {{}, {}} for k, v in ipairs(Table) do local value={address=addr+v[3],value=v[1],flags=v[2],freeze=v[4]}if v[4] then Table1[2][#Table1[2]+1]=value else Table1[1][#Table1[1]+1]=value end end gg.addListItems(Table1[2])gg.setValues(Table1[1]) if name then gg.toast((name or "") .. "开启成功") end end
function ntr(read) local bf={} for i,v in ipairs(read) do bf[i]={address=v[1],flags=v[2]} end bf=gg.getValues(bf)  for i=1,#bf do  bf[i]=bf[i].value  end return bf end
function hqmz(a) local b='' for i=1,50 do local c=gg.getValues({{address=a+(i-1)*1,flags=1}})[1].value if c==0 then break end b=b..string.char(c<0 and 256+c or c) end if b=="" then b="昵称获取失败" end  return b  end
function ntrp(add,se,flags) gg.setValues({{address=add,flags=flags or 16,value=se}}) end
function nty(addr,flags) add=gg.getValues({{address=addr,flags=flags or 32}})[1].value return add end

local so_bss='liblibGameApp.so:bss'

Main=function()
local GT=gg.choice({"人物隐身","攻击锁定"},nil,"🎃")
if GT then
if GT==1 then d1()end
if GT==2 then d2()end
end end

function getZZ(ssd)
s1,s3={},{} Rk=xe(so_bss,{473088,128,176,0}) for i=0,30 do
REY=gg.getValues({{address=gg.getValues({{address=Rk+i*8,flags=32}})[1].value+0x2C0,flags=4}})[1].address
if nty(REY,4)=="1120403456" then gg.addListItems({{address=REY,flags=4}}) end end
for i,v in ipairs(gg.getListItems()) do if v.value==1120403456 then
mnh=gg.getValues({{address=v.address+-0x2C0,flags=4}})[1].value
name=hqmz(gg.getValues({{address=v.address+-0x288,flags=1}})[1].address)
s1[mnh]=name.."["..mnh.."]" s3[#s3+1]=mnh end end if ssd then HIY=gg.choice(s1,2018,ssd) else 
HIY=gg.choice(s1,2018,"检测到附近有"..#s3.."个玩家") end  gg.FMatrix("1120403456")  
return HIY end

function d1()
    F = gg.alert("🔰选择隐身开关\n需要保持上方一直没有方块,否则失败！🔰","开启","关闭")
if F== 1 then
WXL=ntr({{xe(so_bss,{666864,2152,1380+0x3C,0xDC})+-0x48,4}})[1]
if WXL=="0" then else
io.open("/storage/emulated/0/.跳跃","w"):write(WXL):close()
end
GH=xe(so_bss,{666864,2152,1380+0x3C,0xDC},1)
gg.edits(xe(so_bss,{666864,2152,1380+0x3C,0xDC},1),{{28000,4,0x64},})
for i=9,650 do
gg.sleep(5)
gg.edits(GH,{{i.."00",4,0xC,true}}) 
end
gg.edits(xe(so_bss,{666864,2152,1380+0x3C,0xDC},1),{{WXL,4,-0x48,}})
gg.edits(xe(so_bss,{666864,2152,1380+0x3C,0xDC},1),{{2,4,0x5AC}},"隐身")
else if F==2 then 
gg.edits(xe(so_bss,{666864,2152,1380+0x3C,0xDC},1),{{2600000,4,0xAC+0x10,true},})
gg.clearList()
end end end

function d2()
for i,v in ipairs(gg.getListItems())do if v.value==65000 then Kua=1 break end end 
if Kua then
F = gg.alert("请选择","开启","关闭")
if F== 1 then
Aa4=getZZ("选择要攻击的人\n开启功能后一直挖方块就行了")
if Aa4 then
gg.edits(xe(so_bss,{666864,2152,1380},1),{{Aa4,4,0x314,true},{2,4,0x798,true},{256,4,0x26C,true}})
io.open("/storage/emulated/0/.攻击","w"):write(Aa4):close()
end 
else if F==2 then 
gg_uiw=io.open("/storage/emulated/0/.攻击","r"):read("*a") 
gg.FMatrix(gg_uiw)
gg.FMatrix("2")
gg.FMatrix("256")
end end
else
toMusic('锁人隐身开启成功')
gg.alert("请先使用人物隐身\n否则此功能无效果")
end end
Main()						
end),
winter.button("🏑杀戮坏绕🏑" ,
function()
toMusic('杀戮环绕开启中')
				so_bss='liblibGameApp.so:bss'
function readPointer(name,offset,i) local re=gg.getRangesList(name) local x64=gg.getTargetInfo().x64 local va={[true]=32,[false]=4} if re[i or 1] then local addr=re[i or 1].start+offset[1] for i=2,#offset do addr=gg.getValues({{address=addr,flags=va[x64]}}) if not x64 then addr[1].value=addr[1].value&0xFFFFFFFF end addr=addr[1].value+offset[i] end return addr end end function gg.edits(addr,Table,name) local Table1={{},{}} for k,v in ipairs(Table) do local value={address=addr+v[3],value=v[1],flags=v[2],freeze=v[4]} Table1[2][#Table1[2]+1]=value end gg.addListItems(Table1[2]) end

function Va(a) 
b=gg.getValues({{address=a,flags=4}})[1].value 
return b end

function hqmz(a) local b='' for i=1,999 do local c=gg.getValues({{address=a+(i-1)*1,flags=1}})[1].value if c==0 then break end b=b..string.char(c<0 and 256+c or c) end if b=='' then local b else return b end end
dw={[0]='无队伍',[1]='红队',[2]='蓝队',[3]='绿队',[4]='黄队',[5]='橙队',[6]='紫队',[999]='裁判'}
gg.setVisible(false)

d=readPointer(so_bss,{514880,1576,456})
P=Va(d)
if P==0 then P=-1 end
function GMzm()
a=-1
while true do
a=a+1
ttt=readPointer(so_bss,{473088,128,176,a*8,0x60})

mnh=Va(ttt-0x60)
if mnh<999 then return GMzm() end
Dw=Va(ttt-0x3C)
if P~=Dw then

c=readPointer(so_bss,{669024,1480,120})
gg.edits(c,{{mnh,4,0,true}})
gg.toast(mnh)
toMusic('杀戮环绕开启成功')
gg.toast("TP成功，上个傻逼已经逃逸，切换下个目标。\n当前环绕目标："..mnh.."\nPlayer 数据 1条")
end
end
end
GMzm()					
end),

winter.button("🎮狙击防抖🎮" ,
function()
toMusic('狙击防抖开启中')
					gg.toast(so({("子弹防抖"),15003,4,2,2},{{("15000~15009"),-136}},{{1,-4},{0,-66},{0,-56,16},{0,-40},{1,-28},{0,-52,16},{32000,-0x3e}}))gg.toast("子弹防抖开启成功")
						toMusic('狙击防抖开启成功')
end),
winter.button("🎷一秒换弹🎷" ,
function()
toMusic('一秒换弹开启中')
						so({'一秒换弹',15003,4,4},{{15004,-136,4}},{{0,-24,16}})
						toMusic('一秒换弹开启成功')
end),
winter.button("👿锁子弹👿" ,
function()
totoMusic('锁子弹抖开启中此功能时间久耐心等待')
sdzD = gg.prompt({"输入你现在的子弹数量"},{[1]=1},{[1]="number"})[1]
sdzd = gg.prompt({"输入锁定后子弹的数量"},{[1]=1},{[1]="number"})[1]
qmnb=
{
{['memory']=4},
{['name']='锁定子弹'},
{['value']=sdzD, ['type']=4},
{['lv']=-1082130432,['offset']=-4, ['type']=4},
}
qmxg=
{
{['value']=sdzd,['offset']=0,['type']=4,['freeze']=true},
}
xqmnb(qmnb,qmxg)
toMusic('锁子弹开启成功')
end),
winter.button("🧸修改子弹数量🧸" ,
function()
end),
},
{
	winter.switch("刷怪方块炸图",
				function()
				string.toMusic('刷怪方块炸图开启中')
xgsgfk= gg.choice({
"️远 古 黑 龙️",
"️️远 古 巨 人",
"️️虚 空 幻 影",
"️雨 林 蛇 神",
"️️沙 漠 沙 虫",
"️新 型 骷 罗",
"️远 古 叮 叮",
"️年 兽 山 臊",
"️大 海 盗 船",},2018,os.date("️️️修改刷怪方块"))
if xgsgfk==1 then xgdm=3504 fknxg() end
if xgsgfk==2 then xgdm=3514 fknxg() end
if xgsgfk==3 then xgdm=3516 fknxg() end
if xgsgfk==4 then xgdm=3878 fknxg() end
if xgsgfk==5 then xgdm=3825 fknxg() end
if xgsgfk==6 then xgdm=40001 fknxg() end
if xgsgfk==7 then xgdm=3511 fknxg() end
if xgsgfk==8 then xgdm=3519 fknxg() end
if xgsgfk==9 then xgdm=3227 fknxg() end
XGCK=-1 
end,
function()
gg.toast(so({"方块内生物","3400~4622",4,64},{{1084920320,20,4}},{{xgdm,0,64}}))gg.toast("修改生物开启成功")
string.toMusic('刷怪方块炸图开启成功')
				end,
				function()
				gg.alert("无法关闭")
				end	),
						winter.switch("物品复制",
						function()
						string.toMusic('开启中请耐心等待')
					F = gg.alert("物品复刻","开启","️关闭️️")
if F== 1 then 
xggs = gg.prompt({"开启复刻格数[1;8]"},{[1]=""},{[1]="number"})
gg.toast(so({"物品复刻","945804461~945804524",4,4},{{xggs[1]+999,-4,4}},{{945804388,0,4,1}}))
gg.toast("物品复刻开启成功")
elseif F == 2 then 
xggs = gg.prompt({"关闭复刻格数[1;8]"},{[1]=""},{[1]="number"})
gg.toast(so({"物品复刻","945804461~945804524",4,4},{{xggs[1]+999,-4,4}},{{945804388,0,4,2}}))
gg.toast("物品复刻关闭成功")
end


						string.toMusic('无限物品开启成功')
						end,
						function()

						end),
						winter.switch("所有物品无限",
				function()
				string.toMusic('所有物品无限开启中')
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("945804461", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("945804200", gg.TYPE_DWORD)
  gg.toast("全格无限物品开启成功")
  gg.clearResults()
string.toMusic('全格无限开启成功')
				end,
				function()
				gg.alert("无法关闭")
				end
	),
winter.switch("万炮齐发",
						function()
						string.toMusic("万炮齐发开启中")
gg.toast(so({"万炮齐发",12284,4},{{12285,0xB0,4},{12284,-4,4}},{{1065353216,0x138,4},{999,0xB4,4,1}}))gg.toast(so({"万炮齐发",-1593466806,4,2},{{759648338,-176,4}},{{-19417700690,2,2}}))gg.toast("万炮齐发开启成功")
string.toMusic('万炮齐发开启成功')
						end,
						function()

						end),			
	winter.switch("彩蛋枪强化",
						function()
							 string.toMusic('彩蛋枪开启中')
local b = gg.prompt({"『输入子弹代码』12299无畏导弹12300星星弹15007 罐装手雷15008 菠萝手雷15050 投射物-野人猎手15051 投射物-硫黄弓手15052 投射物-小恶魔15053 投射物-野生团子15054 投射物-黑龙火球15055 投射物-黑龙熔岩石柱15056 投射物-黑龙熔岩球15057 投射物-黑龙混乱球15058 投射物-小外星人A15059 投射物-小外星人B15060 投射物-小外星人C15061 投射物-萌眼叮叮15062 投射物-萌眼咚咚15063 投射物-萌眼当当15064 投射物-萌眼叮咚15065 投射物-萌眼叮当15066 投射物-萌眼咚当15067 投射物-萌眼咻咻15068 投射物-混乱弓手15069 投射物-远程守卫15070 投射物-远程守卫15071 投射物-远程守卫15072 投射物-年兽boss15501 冲锋枪子弹15502 牛仔左轮子弹15503 狙击枪子弹15504 重机枪子弹15505 虚空巨石15506 圆球爆弹15507 冰锥15508 熔岩球15509 萌眼星BOSS-击飞激光15510 萌眼星BOSS-冰冻激光15511 萌眼星BOSS-爆炸激光15512 萌眼星BOSS-岩石海啸15513 萌眼星BOSS-蓝色手臂技能15514 萌眼星BOSS-白色手臂技能15515 萌眼星BOSS精英怪-蓝色投掷15516 萌眼星BOSS精英怪-白色投掷15517 萌眼星BOSS精英怪-蓝色技能15518 萌眼星BOSS精英怪-白色技能15519 黑龙熔岩球15520 黑龙混乱球15521 摄像机15522 长方体15523 胶囊体（竖）15524 球体15525 中心长方体15526 胶囊体（横）15527 胶囊体（直）"},{[1]=12299},{[1]="number"})
if not b then return end
gg.toast(so({"彩弹枪强化",434259848432382,4,32},{{1,-0xC,4}},{{b[1],-0x8,4}}))
string.toMusic('彩蛋枪开启成功')
						end,
						function()

						end),
						winter.switch("伪房主",
				function()
				string.toMusic('伪房主开启中')
a = gg.prompt({"🎃请输入伪装代码🎃\n0-单机 2-房员 3-房主 99-异常"},{[1]="2"},{[1]="number"})[1]
local t = {"liblibGameApp.so:bss", "Cb"}
local tt = {0xE9AB0, 0x880}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = a, freeze = true}})
gg.toast("༺ཌༀ⛦🎃伪装环境已修改为"..a.."🎃⛦ༀད༻")		
string.toMusic('伪房主开启成功')
				end,
				function()
				gg.alert("无法关闭")
				end
				
	),
	winter.switch("手持代码查询",
				function()
				string.toMusic('手持代码查询开启中')
   gg.setRanges(4)
  local dataType = 4
  local tb1 = {{1117126656, 0},{256, -0x24},{65793, -0x6C},}
  local tb2 = {{ -0x74 }, }
  SearchWrite(tb1, tb2, dataType)
  sln=gg.getResultCount()
  if sln<1 then return end 
  local nmb=gg.getResults(1)
  sl=gg.getValues(nmb)
  nnb=sl[1].value
if nnb=="0" then  return end
gg.alert("🔰检测手持代码为:"..nnb,"🔰复制🔰")
gg.copyText(nnb)
string.toMusic('手持代码查询开启成功')
				end,
				function()
				gg.alert("无法关闭")
				end
	),
					winter.switch("黑龙蛋出手速度",
						function()
						string.toMusic('黑龙蛋出手速度开启中')
					qmnb=
{
{['memory']=4},
{['name']='火球出手速度'},
{['value']=15056, ['type']=4},
{['lv']=1077936128,['offset']=-924, ['type']=4},
}
qmxg=
{
{['value']=2000.0,['offset']=40,['type']=16},
}
xqmnb(qmnb,qmxg)
					string.toMusic('黑龙蛋出手速度开启成功')
						end,
						function()

						end),
						winter.switch("书台取物",
				function()
				string.toMusic('书台取物开启中')
UIY=gg.prompt({"输入你要的物品的代码"},{""},{"number"})
if UIY then 
gg.toast(so({("书台取物"),4628011567076605952,4,32},{{4667716031467225088,200,32}},{{UIY[1],120,64,1},{0,0x140,64,1}}))
string.toMusic("书台取物开启成功")
end
				end,
				function()
				gg.alert("无法关闭")
				end
	),
	winter.switch("添加物品",
				function()
				string.toMusic('添加物品开启中')
wp = gg.prompt({"物品代码","物品数量[1;200]","格数[1;8]"},
{[1]="",[2]="",[3]=""},{[1]="number",[2]="number",[3]="number"})
if wp then so({"物品",wp[1],4,4},{{"1~64",-0x1D4,4},{"200~500",-0x1D8,4}},{{nil,0,4,2}})
for i,v in ipairs(gg.getListItems())do if v.value==wp[1] then 
tt=v.address sj1=gg.getValues({{address=v.address+0x344,flags=4}}) 
end end if sj1 then
gg.toast(so({'添加物品',"945804460~945804499",4,4},{{wp[3]+999,-0x4,4}},{{945804460~wp[2],0x0,4},{2000,0X4,4},{tt,0x74,32},{sj1[1].value,0x78,4}}))
else gg.toast("物品添加失败")end end 
string.toMusic('添加物品开启成功')
				end,
				function()
				gg.alert("无法关闭")
				end
	),
	winter.switch("钨金铲改沙柳",
				function()
				gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("11025", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("14", gg.TYPE_DWORD)
				string.toMusic('开启成功')
				end,
				function()
				gg.alert("无法关闭")
				end	),
winter.switch("小彩蛋改求体",
				function()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("12240", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("15524", gg.TYPE_DWORD)
				string.toMusic('小彩蛋改求体开启成功')
				end,
				function()
				gg.alert("无法关闭")
				end	),
				winter.switch("爆炸物升级",
				function()
				string.toMusic('爆炸物升级开启中')
F = gg.alert("全部爆炸物升级","开启","关闭️") if F~=1 and F~=2 then else end if F== 1 then gg.clearResults() gg.setRanges(16384) gg.searchNumber("7.75559786e-19F;3.20297985e-38F;0.60000002384F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1) gg.searchNumber("0.60000002384", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1) jg=gg.getResults(100) sl=gg.getResultCount() if sl>100 then sl=100 end for i = 1, sl do dzy=jg[i].address gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 555}})end elseif  F== 2 then gg.clearResults() gg.setRanges(16384) gg.searchNumber("7.75559786e-19F;3.20297985e-38F;555", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1) gg.searchNumber("555", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1) jg=gg.getResults(100) sl=gg.getResultCount() if sl>100 then sl=100 end for i = 1, sl do dzy=jg[i].address gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 0.60000002384}})end end 
string.toMusic('爆炸物升级开启成功')
				end,
				function()
				gg.alert("无法关闭")
				end
					),
			winter.switch("火球发射数量",
				function()
				string.toMusic('火球发射数量开启中')
hqfssl = gg.prompt({
    "输入你要改的火球发射数量"
  }, {
    [1] = 20
  }, {
    [1] = "number"
  })[1]
  gg.setValues({
    {
      address = S_Pointer({
        "libAppPlayJNI.so:bss",
        "Cb"
      }, {
        377064,
        336,
        2896,
        2504
      }, true),
      flags = 4,
      value = hqfssl
    }
  })
                string.toMusic('火球发射开启成功')
				end,
				function()
				gg.alert("无法关闭")
				end
	),
	            winter.switch("模型大小",
				function()
local XY = gg.prompt({"请输入人物模型大小"}
,{[1]=9},{[1]="number"})[1]
if not XY then return end
local t = {"liblibGameApp.so:bss", "Cb"}
local tt = {0x7DC10,0x650}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 16, value = XY, freeze = true}})
				end,
				function()
				gg.alert("无法关闭")
				end
			),
			winter.switch("一键改虚空祭",
						function()
						string.toMusic('一键改虚空祭开启中')
					gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("11642", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("140", gg.TYPE_DWORD)
  gg.clearResults()
    gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("11643", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("141", gg.TYPE_DWORD)
  gg.clearResults()
    gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("11644", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("142", gg.TYPE_DWORD)
  gg.clearResults()
    gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("11645", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("587", gg.TYPE_DWORD)
  gg.clearResults()
    gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("11646", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("588", gg.TYPE_DWORD)
  gg.clearResults()
    gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("11647", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("589", gg.TYPE_DWORD)
					string.toMusic('一键改虚空祭开启成功')
						end,
						function()

						end),
			winter.switch("金稿秒蓄",
				function()
				so({('金稿秒蓄'),1060320051,4,4},{{65538,-4,4}},{{0.1,0xC,16}})
gg.toast("金稿秒蓄力开启成功")
				end,
				function()
				gg.alert("无法关闭")
				end
			),
			winter.switch("编辑器距离",
				function()
bjjl = gg.prompt({"输入你要改的放置距离"},{[1]=100},{[1]="number"})[1]
local t = {"liblibGameApp.so:bss", "Cb"}
local tt = {0xB75C0, 0x18, 0x34}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = bjjl, freeze = true}})
gg.toast("编辑器放置距离开启成功")
				end,
				function()
				gg.alert("无法关闭")
				end),
				winter.switch("修改物品",
function()
XGSG()
end),
},
{

				winter.button("自定义音乐",
    function()
     search = gg.prompt({
								"输入要搜索的歌曲\n可加上歌手名字",
								"设置显示数量(数字)",
							},g.sel,{
								"text",
							})
							if not search then return end
							gg.saveVariable(search,g.config)
							bei()
							go1=search[1]
							go3=search[2]
							jg=start(go1,go3)
							if jg.code == 200 then
								fh=jg.content
								fh=json(fh)
								--print(fh)
								Play(gqlb,idb)
								else
								function inspect()
									gg.alert("访问网络异常，错误代码：\n\n"..jg.code)
								end
								if not pcall(inspect) then print("网络异常，请先连接上网络") os.exit() end
							end
							XGCK=-1
    end),
    winter.button("退出辅助",
				function()
	      string.toMusic ( '欢迎老板下次使用辅助' )
					gg.sleep ( 2550 )
					tuichu () ---退出
    end),
    winter.button("音乐搜索",
function()
WTYY()
end),
 winter.button("停止播放",
				function()
	            gg.toast("正在停止播放...")
      for i=1,100 do
        gg.playMusic("stop")
        gg.playMusic("stop")
        gg.playMusic("stop")
        gg.playMusic("stop")
        gg.playMusic("stop")
        gg.playMusic("stop")
      end
      gg.toast("播放已停止")
      gg.toast("无正在播放的音乐")
    end),
    winter.switch("胖胖的恶魔",--功能名字 不可重复
    function()
gg.playMusic("http://chuxinya.top/view.php/b3db508002dd6ad99efcd18adaf944f4.mp3")
    end,
    function()
        gg.alert("关闭")
    end
        ),
        winter.switch("凄美地",--功能名字 不可重复
    function()
gg.playMusic("http://chuxinya.top/view.php/aff3ef9fb029c1b9227437b7513b386e.mp3")
    end,
    function()
        gg.alert("关闭")
    end
        ),
        winter.switch("约会",--功能名字 不可重复
    function()
gg.playMusic("http://chuxinya.top/view.php/d1850beaf5b9f54e73f691102a40d51b.mp3")
    end,
    function()
        gg.alert("关闭")
    end
        ),
        winter.switch("苦茶子",--功能名字 不可重复
    function()
gg.playMusic("http://chuxinya.top/view.php/eeef90dc1edc4f69c9986c486e41e0f0.mp3")
    end,
    function()
        gg.alert("关闭")
    end
        ),
			winter.switch("Letting Go",--功能名字 不可重复
    function()
gg.playMusic("http://music.163.com/song/media/outer/url?id=2015047009.mp3")
    end,
    function()
        gg.alert("关闭")
    end
        ),
winter.switch("最后一页",--功能名字 不可重复
    function()
gg.playMusic("http://music.163.com/song/media/outer/url?id=445154140.mp3")
    end,
    function()
        gg.alert("关闭")
    end
        ),
winter.switch("这次你不能走我不会放开手",--功能名字 不可重复
    function()
gg.playMusic("http://music.163.com/song/media/outer/url?id=1829058639.mp3")
    end,
    function()
        gg.alert("关闭")
    end
        ),
winter.switch("救世主",--功能名字 不可重复
    function()
gg.playMusic("http://music.163.com/song/media/outer/url?id=2006352556.mp3")
    end,
    function()
        gg.alert("关闭")
    end
        ),
winter.switch("难熬想你的夜",--功能名字 不可重复
   function()
gg.playMusic("http://music.163.com/song/media/outer/url?id=2012328830.mp3")
        gg.alert("开启")
    end,
    function()
        gg.alert("关闭")
    end
        ),
winter.switch("多远都要在一起",--功能名字 不可重复
    function()
gg.playMusic("http://music.163.com/song/media/outer/url?id=1951474864.mp3")
    end,
    function()
        gg.alert("关闭")
    end
        ),
winter.switch("哪里都是你",--功能名字 不可重复
    function()
gg.playMusic("http://music.163.com/song/media/outer/url?id=1876249163.mp3")
    end,
    function()
        gg.alert("关闭")
    end
        ),
winter.switch("歌词总诉离别",--功能名字 不可重复
    function()
gg.playMusic("http://music.163.com/song/media/outer/url?id=2039157171.mp3")
    end,
    function()
        gg.alert("关闭")
    end
        ),
winter.switch("风里都是自由",--功能名字 不可重复
    function()
gg.playMusic("http://music.163.com/song/media/outer/url?id=1989006499.mp3")
    end,
    function()
        gg.alert("关闭")
    end
        ),
winter.switch("无法停留的爱",--功能名字 不可重复
    function()
gg.playMusic("http://music.163.com/song/media/outer/url?id=1979618737.mp3")
    end,
    function()
        gg.alert("关闭")
    end
        ),
winter.switch("醒着醉",--功能名字 不可重复
    function()
gg.playMusic("http://music.163.com/song/media/outer/url?id=1810382853.mp3")
    end,
    function()
        gg.alert("关闭")
    end
        ),
winter.switch("你爱的那个Ta",--功能名字 不可重复
    function()
gg.playMusic("http://music.163.com/song/media/outer/url?id=1917884690.mp3")
    end,
    function()
        gg.alert("关闭")
    end
        ),
winter.switch("太空旋律",--功能名字 不可重复
    function()
gg.playMusic("http://music.163.com/song/media/outer/url?id=1895871919.mp3")
    end,
    function()
        gg.alert("关闭")
    end
        ),
winter.switch("旋律王专属",--功能名字 不可重复
    function()
gg.playMusic("http://music.163.com/song/media/outer/url?id=1937506314.mp3")
    end,
    function()
        gg.alert("关闭")
    end
        ),
winter.switch("当寂寞遇上孤独",--功能名字 不可重复
    function()
gg.playMusic("http://music.163.com/song/media/outer/url?id=2007996299.mp3")
    end,
    function()
        gg.alert("关闭")
    end
        ),
winter.switch("听完想跟阎王单挑的感觉",--功能名字 不可重复
    function()
gg.playMusic("http://music.163.com/song/media/outer/url?id=2011458409.mp3")
    end,
    function()
        gg.alert("关闭")
    end
        ),
winter.switch("加拿大的男人不回家",--功能名字 不可重复
    function()
gg.playMusic("http://music.163.com/song/media/outer/url?id=1813607580.mp3")
    end,
    function()
        gg.alert("关闭")      
    end
    
        ),
	
		}
	
	})


function proo()
Winter.controlRotation2(control1,3000)
end
luajava.newThread(function()--更新逻辑
	while true do
		gg.sleep(3000)
		if 显示==0 then
			proo()
		end
	end
end):start()
jm1 : setBackground(slcta )
gg.setVisible(false )
luajava.setFloatingWindowHide(true )
---bloc不要动 动了脚本功能会失效
bloc = luajava.getBlock()
bloc("join" )