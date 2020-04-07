mgui = {}
local var_cgui = {}
local var_mgui = {}
local var_item = {{}}


mgui.bind_field = function(left,top,width,caption,mgui_id,menu_id) 

if var_cgui[mgui_id][1] == null then
var_cgui[mgui_id] = {"",false,0,0}
e_text = ""
e_code = 0
var_cgui[mgui_id][4] = e_code
var_cgui[mgui_id][1] = e_text
else
e_text = var_cgui[mgui_id][1]
e_code = var_cgui[mgui_id][4]
end

results = null
height = 18
n_left = left+var_mgui[menu_id][1]
n_top = top+var_mgui[menu_id][2]
n_width = 100

   if mgui.mouse_mov(n_left,n_top,28,width) and var_item[1][7] ~= true then
       mgui.color_aw("gui_controls3")     
   else
       mgui.color_aw("gui_groupbox_background")     
   end        
   
   drawing.block(n_left,n_top,28,width)
   mgui.color_aw("gui_text2") 
   draw.Text( n_left+7,n_top+7, caption )
   
   n_left = left+var_mgui[menu_id][1]+(width-110)
   mgui.color_aw("gui_controls1") 
   
   drawing.block_round(n_left+4,n_top+5,height,n_width)
   
   if mgui.mouse_mov(n_left+4,n_top+5,height,n_width) and var_cgui[mgui_id][2] == false and var_item[1][7] ~= true then
   mgui.color_aw("gui_controls2") 
       if input.IsButtonPressed(1) then
           if var_cgui[mgui_id][2] == false then
               var_cgui[mgui_id][2] = true
               var_cgui[mgui_id][3] = 0
           end
       end
   else
   mgui.color_aw("gui_controls3") 
   end    
   
   
   if mgui.mouse_mov(n_left+4,n_top+5,height,n_width) and var_item[1][7] ~= true and var_cgui[mgui_id][2] == false then
   else
       if e_code ~= 0  then
           if input.IsButtonPressed(e_code) then
               results = true
           end
       end
   end

   if input.IsButtonPressed(27) then
   var_cgui[mgui_id][2] = false
   var_cgui[mgui_id][1] = ""
   var_cgui[mgui_id][3] = 0
   var_cgui[mgui_id][4] = 0
   end

   if var_cgui[mgui_id][2] == true and var_cgui[mgui_id][3] == 1 then
   s_text = "< SELECT KEY >"
   mgui.color_aw("gui_controls2") 
   in_text,in_key = mgui.input_to_key()
       if in_text ~= ""  then
       e_text = in_text
       var_cgui[mgui_id][1] = e_text
       var_cgui[mgui_id][2] = false
       var_cgui[mgui_id][4] = in_key 
       end
   else
       var_cgui[mgui_id][3] = 1
       s_text = e_text
   end    
   
   drawing.encircle_round(n_left+4,n_top+5,height,n_width)


c_w, c_h = draw.GetTextSize(e_text)
n_button_left = n_left+12
n_button_top = n_top+5+height/2-c_h/2
mgui.color_aw("gui_text2") 
draw.Text( n_button_left,n_button_top, s_text )

   if result ~= null then
       return results
   end 
end

mgui.input_to_key = function()
t_key = {{112,"f1"},{113,"f2"},{114,"f3"},{115,"f4"},{116,"f5"},{117,"f6"},{118,"f7"},{119,"f8"},{120,"f9"},{121,"f10"},{122,"f11"},{123,"f12"},
{96,"num0"},{97,"num1"},{98,"num2"},{99,"num3"},{100,"num4"},{101,"num5"},{102,"num6"},{103,"num7"},{104,"num8"},{105,"num9"},
{192,"`"},{189,"-"},{187,"="},{219,"["},{221,"]"},{186,":"},{222,'"'},{220,"|"},{188,","},{190,"."},{191,"/"},
{1,"mouse1"},{2,"mouse2"},{4,"mouse3"},{5,"mouse4"},{6,"mouse5"},
{32,"******"},{40,"down"},{46,"delete"},{44,"printscreen"},{145,"scrolllock"}}
result = "",0
   for i = 1, 26 do 
       if input.IsButtonPressed(i + 64) then
           return string.lower(string.char(i + 64)),i + 64
       end
   end    
   for i = 1, 10 do 
       if input.IsButtonPressed(i + 47) then
           return string.char(i + 47),i + 47
       end
   end    
   for i = 1, #t_key do 
       if input.IsButtonPressed(t_key[i][1]) then
           return t_key[i][2],t_key[i][1]
       end
   end    
   return result
end

mgui.itembox = function(left,top,width,text,item_text,current_item,mgui_id,menu_id) 
if var_cgui[mgui_id][1] == null then
var_cgui[mgui_id] = {current_item,false}
else
current_item = var_cgui[mgui_id][1]
act_item = var_cgui[mgui_id][2]
end

height = 18
n_left = left+var_mgui[menu_id][1]
n_top = top+var_mgui[menu_id][2]

   if mgui.mouse_mov(n_left,n_top,45,width) and var_item[1][7] ~= true then
       mgui.color_aw("gui_controls3")     
   else
       mgui.color_aw("gui_groupbox_background")     
   end        
   
   drawing.block(n_left,n_top,45,width)
   mgui.color_aw("gui_text2") 
   draw.Text( n_left+7,n_top+3, text )
   
   n_top = n_top + 20
   n_left = n_left + 5
   n_width = width - 10
   mgui.color_aw("gui_controls1") 
   drawing.block_round(n_left,n_top,height,n_width)
   
   if mgui.mouse_mov(n_left,n_top,height,width) and var_item[1][7] ~= true  then
   mgui.color_aw("gui_controls2") 
       if input.IsButtonPressed(1) then
           if var_cgui[mgui_id][2] == false then
               var_cgui[mgui_id][2] = true
           end
       end
   else
   if var_cgui[mgui_id][2] == true then
   mgui.color_aw("gui_controls2") 
   else
   mgui.color_aw("gui_controls3") 
   end
   end    
   
drawing.encircle_round(n_left,n_top,height,n_width)

mgui.color_aw("gui_text2") 
draw.Text( n_left+8,n_top+2, item_text[current_item] )

   if var_cgui[mgui_id][2] == true then
       mgui.item(n_left,n_top,height,n_width,item_text,mgui_id)
   end 
   

return var_cgui[mgui_id][1],item_text[var_cgui[mgui_id][1]]
end

mgui.slider = function(left,top,width,to,text,text_end,current,mgui_id,menu_id) 

if var_cgui[mgui_id][1] == null then
n_width = width-10

   step = n_width/to
   current_pos = step*current

var_cgui[mgui_id] = {current,false,current_pos}
n_current = var_cgui[mgui_id][1]
w_current  = var_cgui[mgui_id][3]
else
n_current = var_cgui[mgui_id][1]
n_activ = var_cgui[mgui_id][2]
w_current  = var_cgui[mgui_id][3]
end


n_left = left+var_mgui[menu_id][1]
n_top = top+var_mgui[menu_id][2]
n_height = 45

   if mgui.mouse_mov(n_left,n_top,n_height,width) and var_item[1][7] ~= true then
       mgui.color_aw("gui_controls3")     
   else
       mgui.color_aw("gui_groupbox_background")     
   end        
   
drawing.block(n_left,n_top,n_height,width)

mgui.color_aw("gui_slider_bar1")     
drawing.block(n_left+5,n_top+20,4,width-10)
mgui.color_aw("gui_text2") 
draw.Text( n_left+5,n_top+3, text )



mgui.color_aw("gui_controls2") 
drawing.block(n_left+5,n_top+20,4,w_current)
   if mgui.mouse_mov(n_left,n_top,n_height,width-10) and var_item[1][7] ~= true then
       mgui.color_aw("gui_slider_bar2") 
   else
       mgui.color_aw("gui_slider_bar3") 
   end
drawing.block(n_left+3+w_current,n_top+18,8,4)

   if mgui.mouse_mov(n_left,n_top,n_height,width-10) and var_item[1][7] ~= true then
       if input.IsButtonDown(1) then
       m_x, m_y = input.GetMousePos();
       n_width = width-10
           --if n_width > to then
               step = n_width/to            
               pos = m_x-n_left
               pos_line = math.floor(pos/step)
               
               
               n_current = pos_line    
               w_current = pos    
               current_pos = step*pos_line    
           --else
               
           --end
       var_cgui[mgui_id][1] = n_current
       var_cgui[mgui_id][3] = current_pos
       end
   end    

mgui.color_aw("gui_text2") 
c_w, c_h = draw.GetTextSize(n_current..text_end)
draw.Text( n_left+width/2-c_w/2,n_top+28, n_current..text_end)

return n_current

end



mgui.edit = function(left,top,width,caption,text,mgui_id,menu_id) 

if var_cgui[mgui_id][1] == null then
var_cgui[mgui_id] = {"",false}
e_text = text
var_cgui[mgui_id][1] = text
else
e_text = var_cgui[mgui_id][1]
end

height = 18
n_left = left+var_mgui[menu_id][1]
n_top = top+var_mgui[menu_id][2]

   if mgui.mouse_mov(n_left,n_top,40,width) and var_item[1][7] ~= true then
       mgui.color_aw("gui_controls3")     
   else
       mgui.color_aw("gui_groupbox_background")     
   end        
   
drawing.block(n_left,n_top,n_height,width)


   mgui.color_aw("gui_controls1") 
   drawing.block_round(n_left+5,n_top+20,height,width-10)
   if mgui.mouse_mov(n_left+5,n_top+20,height,width-10) and var_item[1][7] ~= true then
   mgui.color_aw("gui_controls2") 
       if input.IsButtonDown(1) then
       mgui.color_aw("gui_controls2") 
           if var_cgui[mgui_id][2] == false then
               var_cgui[mgui_id][2] = true
           end
       end
   else
   if input.IsButtonDown(1) then
       if var_cgui[mgui_id][2] == true then
           var_cgui[mgui_id][2] = false
       end
   end
   mgui.color_aw("gui_controls3") 
   end    

   if var_cgui[mgui_id][2] == true then
       mgui.color_aw("gui_controls1") 
       s_text = e_text.."_"
   else
       s_text = e_text
   end    
   if var_cgui[mgui_id][2] == true then    
       if input.IsButtonPressed(8) then
           e_text = string.sub(e_text, 1, string.len(e_text)-1);
           var_cgui[mgui_id][1] = e_text
       end
   in_text = mgui.input_to_text()
   c_w, c_h = draw.GetTextSize(e_text)
       if in_text ~= "" and c_w < width-20 then
       e_text = e_text..in_text
       var_cgui[mgui_id][1] = e_text
       end
   end    
   
   if var_cgui[mgui_id][2] == true then
       mgui.color_aw("gui_controls2") 
   end

drawing.encircle_round(n_left+5,n_top+20,height,width-10)

c_w, c_h = draw.GetTextSize(e_text)
n_button_left = n_left+8
n_button_top = n_top+height/2-c_h/2
mgui.color_aw("gui_text2") 
draw.Text( n_button_left,n_button_top+20, s_text )
draw.Text( n_left+6,n_top+3, caption )
return e_text
end

mgui.input_to_text = function()
result = ""
   for i = 1, 26 do 
       if input.IsButtonPressed(i + 64) then
           if input.IsButtonDown(16) then
           result = string.char(i + 64)
           else
           result = string.lower(string.char(i + 64))
           end
       end
   end    
   for i = 1, 10 do 
       if input.IsButtonPressed(i + 47) then
           result = string.char(i + 47)
       end
   end    
   if input.IsButtonPressed(32) then
       result = " "
   end
   return result
end

mgui.checkbox = function(left,top,width,caption,checked,mgui_id,menu_id) 

if var_cgui[mgui_id][1] == null then
var_cgui[mgui_id] = {checked}
else
n_checked = var_cgui[mgui_id][1]
end



result = 0
n_left = left+var_mgui[menu_id][1]
n_top = top+var_mgui[menu_id][2]

   if mgui.mouse_mov(n_left,n_top,16,width) and var_item[1][7] ~= true then
       mgui.color_aw("gui_controls3")     
   else
       mgui.color_aw("gui_groupbox_background")     
   end        
   
   drawing.block(n_left,n_top,21,width)
   

   if mgui.mouse_mov(n_left,n_top,16,width) and var_item[1][7] ~= true then
       if n_checked then
           mgui.color_aw("gui_checkbox_on_hover") 
       else
           mgui.color_aw("gui_checkbox_off_hover") 
       end
       if input.IsButtonPressed(1) then
       mgui.color_aw("gui_checkbox_on_hover") 
           if var_cgui[mgui_id][1] == false then
               var_cgui[mgui_id][1] = true
               result = true
           else
               var_cgui[mgui_id][1] = false
               result = false
           end
       end
   else
       if n_checked then
           mgui.color_aw("gui_checkbox_on") 
       else
           mgui.color_aw("gui_checkbox_off") 
       end
   end            
drawing.block_round(n_left+4,n_top+5,12,12)
if n_checked then
   mgui.color_aw("gui_controls2") 
else
   mgui.color_aw("gui_controls3") 
end
if mgui.mouse_mov(n_left,n_top,16,width) and var_item[1][7] ~= true then
   mgui.color_aw("gui_controls2") 
end
drawing.encircle_round(n_left+4,n_top+5,12,12)

n_button_left = n_left + 17
n_button_top = n_top - 1
mgui.color_aw("gui_text2") 
draw.Text( n_button_left+4,n_button_top+5, caption )

if result ~= 0 then
return result
end

end

mgui.button = function(left,top,height,width,caption,mgui_id,menu_id) 

   if var_cgui[mgui_id][1] then
   else
   var_cgui[mgui_id] = {false}
   end
if menu_id == 0 then
n_left = left
n_top = top
else     
n_left = left+var_mgui[menu_id][1]
n_top = top+var_mgui[menu_id][2]
end
result = false
   if mgui.mouse_mov(n_left,n_top,height,width) and var_item[1][7] ~= true then
   mgui.color_aw("gui_button_hover") 
       if input.IsButtonDown(1) then
           mgui.color_aw("gui_button_clicked") 
       end
       if input.IsButtonPressed(1) then
           result = true
       end
   else
   mgui.color_aw("gui_button_idle") 
   end        
drawing.block_round(n_left,n_top,height,width)

c_w, c_h = draw.GetTextSize(caption)
n_button_left = n_left+width/2-c_w/2
n_button_top = n_top+height/2-c_h/2
mgui.color_aw("gui_text1") 
draw.Text( n_button_left,n_button_top, caption )

return result

end

mgui.panel = function(left,top,height,width,caption,mgui_id,menu_id) 
mgui.color_aw("gui_groupbox_background") 
n_left = left+var_mgui[menu_id][1]
n_top = top+var_mgui[menu_id][2]
drawing.block(n_left,n_top,height,width)
mgui.color_aw("gui_groupbox_outline") 
--drawing.encircle(n_left,n_top,height,width)
drawing.shadow(n_left,n_top,height,width)

   if caption then 
   c_w, c_h = draw.GetTextSize(caption)
   mgui.color_aw("gui_groupbox_background") 
   drawing.block(n_left+10,n_top-4,c_h+2,c_w+8)
   mgui.color_aw("gui_text2") 
   draw.Text( n_left+14,n_top-5, caption )
   end
end

mgui.label = function(left,top,caption,mgui_id,menu_id) 
mgui.color_aw("gui_text2") 
n_left = left+var_mgui[menu_id][1]
n_top = top+var_mgui[menu_id][2]
draw.Text(n_left,n_top, caption )
end

mgui.menu = function(left,top,height,width,caption,mgui_id) 
if var_mgui[mgui_id][1] then
m_left = var_mgui[mgui_id][1]
m_top = var_mgui[mgui_id][2]
else
m_left = left
m_top = top
var_mgui[mgui_id] = {left,top,false,width}
end
mgui.color_aw("gui_window_background") 
drawing.block(m_left,m_top,height,width)
mgui.color_aw("gui_window_header") 
drawing.block(m_left,m_top-25,25,width)
mgui.color_aw("gui_window_header_tab2") 
drawing.block(m_left,m_top,4,width)
mgui.color_aw("gui_window_footer") 
drawing.block(m_left,m_top+height,20,width)
mgui.color_aw("gui_text1") 
draw.TextShadow( m_left+8, m_top-18, caption )
mgui.color_aw("gui_window_footer_text") 
draw.TextShadow( m_left+8, m_top+height+4, "GUI Menu Creator by QBER" )
drawing.shadow(m_left,m_top-25,height+45,width)

end

mgui.item = function(left,top,height,width,item_text,mgui_id) 
var_item[1] = {left,top,height,width,item_text,mgui_id,true}
end

mgui.item_show = function() 

   if var_item[1][7] then
   n_left = var_item[1][1]
   n_top = var_item[1][2]
   height = var_item[1][3]
   width = var_item[1][4]
   item_text = var_item[1][5]
   mgui_id = var_item[1][6]
   
   s_top = n_top+20
   s_height = #item_text*15
   mgui.color_aw("gui_combobox_drop1") 
   drawing.block(n_left,s_top,s_height,width)
   drawing.shadow(n_left,s_top,s_height,width)
   
       for i = 1, #item_text do
           if  mgui.mouse_mov(n_left,s_top+15*i-14,14,width) then
               if input.IsButtonDown(1) then
               var_cgui[mgui_id][1] = i
               var_cgui[mgui_id][2] = false
               var_item[1][7] = false
               end
           mgui.color_aw("gui_combobox_drop3") 
           drawing.block(n_left,s_top+15*i-15,15,width)
           end
           
           mgui.color_aw("gui_text2") 
           draw.Text( n_left+8,s_top+15*i+1-15, item_text[i])    
       end
       
       if mgui.mouse_mov(n_left,n_top,height,width) then
       else
           if input.IsButtonDown(1) then
               if var_cgui[mgui_id][2] == true then
               var_cgui[mgui_id][2] = false
               var_item[1][7] = false
               end
           end
       end
   end 

end

local var_msg = {{}}

mgui.msg = function(caption,text) 
var_msg[1] = {caption,text,true}
end

mgui.msg_show = function() 
   if var_msg[1][3] == true then
       s_w,s_h = draw.GetScreenSize() 

       msg_height = 90
       msg_width = 350
       m_left = s_w/2-msg_width/2
       m_top = s_h/2-msg_height/2
       
       caption = var_msg[1][1]
       text = var_msg[1][2]

       draw.Color( 237, 237, 237, 255 )
       drawing.block(m_left,m_top,msg_height,msg_width)
       draw.Color( 194, 33, 33, 150 )
       drawing.block(m_left,m_top-25,25,msg_width)
       draw.Color( 255, 71, 71, 255 )
       drawing.block(m_left,m_top,4,msg_width)
       draw.Color( 38, 38, 38, 180 )
       drawing.block(m_left,m_top+msg_height,5,msg_width)

       draw.Color( 247, 247, 247, 255 ) 
       draw.TextShadow( m_left+8, m_top-18, caption )
       draw.Color( 41, 41, 41, 255 )
       draw.Text( m_left+10,m_top+20, text )
       draw.Color( 186, 186, 186, 255 )
       drawing.shadow(m_left,m_top-25,msg_height+30,msg_width)



       if mgui.button(m_left+45,m_top+50,28,250,"OK",#var_cgui,0) then
       var_msg[1] = {"","",false}
       end
   end    
end


mgui.menu_mouse = function(mgui_id) 
m_left = var_mgui[mgui_id][1]
m_top = var_mgui[mgui_id][2]

   if input.IsButtonDown(1) then
   m_x, m_y = input.GetMousePos();
       
       if var_mgui[mgui_id][3] then
           var_mgui[mgui_id][1] = m_x-c_m_x;
           var_mgui[mgui_id][2] = m_y-c_m_y+25;
       end
       
       if ( m_x >= m_left) and ( m_x <= m_left+var_mgui[mgui_id][4]) and ( m_y >= m_top-25) and ( m_y <= m_top) and var_mgui[mgui_id][3] == false then
       var_mgui[mgui_id][3] = true
       c_m_x = m_x-m_left;
       c_m_y = m_y-m_top+25;
       end
   else
       var_mgui[mgui_id][3] = false
   end
end

mgui.mouse_mov = function(left,top,height,width) 
m_x, m_y = input.GetMousePos();
   if ( m_x >= left) and ( m_x <= left+width) and ( m_y >= top) and ( m_y <= top+height) then
       return true
   end
end

mgui.color_aw = function(items) 
--r,g,b,a = gui.GetValue("clr_"..items)
draw.Color( r, g, b, a )
end

mgui.max_component = function(max_menu,max_component) 
   if var_cgui[1] == null then
       for i = 1, max_component do 
           table.insert(var_cgui, {})
       end
       for i = 1, max_menu do 
           table.insert(var_mgui, {})
       end
   end    
end

drawing = {}

drawing.block = function(left,top,height,width)
draw.FilledRect( left, top, left+width, top+height )
end

drawing.block_round = function(left,top,height,width)
draw.RoundedRectFill( left, top, left+width, top+height )
end

drawing.encircle = function(left,top,height,width)
draw.OutlinedRect( left, top, left+width, top+height )
end

drawing.encircle_round = function(left,top,height,width)
draw.RoundedRect( left, top, left+width, top+height )
end

drawing.triangle = function(peak_left,peak_top,height,position)
height_t = height
left_l = peak_left
left_r = peak_left
top_l = peak_top
top_r = peak_top

   if position == 1 then
       draw.Line( peak_left, peak_top, peak_left, peak_top-height )
   end
   if position == 2 then
       draw.Line( peak_left, peak_top, peak_left, peak_top+height )
   end
   if position == 3 then
       draw.Line( peak_left, peak_top, peak_left+height, peak_top )
   end
   if position == 4 then
       draw.Line( peak_left, peak_top, peak_left-height, peak_top )
   end
   
   for i = 1, 1000 do 
   height_t = height_t - 1
   left_l = left_l - 1
   left_r = left_r + 1
   top_l = top_l - 1
   top_r = top_r + 1
       if height_t < 0 then
           break
       end
       if position == 1 then
           draw.Line( left_l, peak_top-height_t, left_l, peak_top )
           draw.Line( left_r, peak_top-height_t, left_r, peak_top )
       end        
       if position == 2 then
           draw.Line( left_l, peak_top, left_l, peak_top+height_t )
           draw.Line( left_r, peak_top, left_r, peak_top+height_t )
       end            
       if position == 3 then
           draw.Line( peak_left, top_l, peak_left+height_t, top_l )
           draw.Line( peak_left, top_r, peak_left+height_t, top_r )
       end    
       if position == 4 then
           draw.Line( peak_left-height_t, top_l, peak_left, top_l )
           draw.Line( peak_left-height_t, top_r, peak_left, top_r )
       end    
   end

end

drawing.shadow = function(left,top,height,width)
alpha = 100
left_s = left
top_s = top
height_s = height
width_s = width
   for i = 1, 1 do 
       alpha = alpha - 20
       left_s = left_s - 1
       top_s = top_s - 1
       height_s = height_s + 2
       width_s = width_s + 2
       draw.Color(10,10,10,alpha)
       drawing.encircle(left_s,top_s,height_s,width_s)
   end
   alpha = 20
   for i = 1, 10 do 
       alpha = alpha - 2
           if alpha < 0 then
               break
           end
       left_s = left_s - 1
       top_s = top_s - 1
       height_s = height_s + 2
       width_s = width_s + 2
       draw.Color(10,10,10,alpha)
       drawing.encircle(left_s,top_s,height_s,width_s)
   end
end
