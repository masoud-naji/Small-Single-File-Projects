
این قسمت در مین main  ثبت شود  (در  علامت ساعت کنار چپ)

var_clrnum=1 var_color1={'ff0000','0000ff','00ff00','ff0000','00ffff','ff00ff','ffff00','ffffff'}

function setclr() if var_clrnum==7 then var_clrnum=1 else var_clrnum=var_clrnum+1 end end




var_kabiseh =math.modf(math.abs({dyy}/4))
var_kolrozha=math.abs((({dyy}-1)*365)+var_kabiseh)
var_kolrozhabaemsal=(var_kolrozha+{ddy})
var_kolrozshamsi=var_kolrozhabaemsal-226899

var_saleshamsi={dyy}
var_mahemiladi={dn}


if var_mahemiladi<3 then var_saleshamsi=var_saleshamsi-622 
else
var_saleshamsi=var_saleshamsi-621
end


var_kabisehshamsi=math.modf(var_kolrozshamsi/4)


var_perday=0
var_perday1={'اسفند','بهمن','دی','آذر','آبان','مهر','شهریور','مرداد','تیر','خرداد','اردیبهشت','فروردین'}
var_perdaynum=math.fmod (509477, 365) 


if var_perdaynum <31 then var_perday =1 end 
if var_perdaynum <62 and var_perdaynum >32 then var_perday =2 end 
if var_perdaynum <93 and var_perdaynum>63 then var_perday =3 end 
if var_perdaynum <124 and var_perdaynum>94 then var_perday =4 end 
if var_perdaynum <155 and var_perdaynum>125 then var_perday =5 end 
if var_perdaynum <186 and var_perdaynum>156 then var_perday =6 end 
if var_perdaynum <216 and var_perdaynum>187 then var_perday =7 end 
if var_perdaynum <246 and var_perdaynum>217 then var_perday =8 end 
if var_perdaynum <276 and var_perdaynum>247 then var_perday =9 end 
if var_perdaynum <306 and var_perdaynum>277 then var_perday =10 end 
if var_perdaynum <326 and var_perdaynum>307 then var_perday =11 end 
if var_perdaynum <365 and var_perdaynum>337 then var_perday =12 end

-------------------------------------------------------------
در تکست تاریخ این تابع صدا شده
var_saleshamsi

در تکست ماه این تابع صدا شده
var_perday

در تکست روز این دستور نوشته شده
({dn}==1 or {dn}==3 or {dn}==5 or {dn}==7 or {dn}==8 or {dn}==10 or {dn}==12) and 
({dd}< 21) and ({dd}+10)
or ({dd}-21)

or

({dn}==4 or {dn}==6 or {dn}==9 or {dn}==11) and 
({dd}< 21) and ({dd}+9)
or ({dd}-21)


or

({dn}==2) and 
({dd}< 21) and ({dd}+7)
or ({dd}-21)

-------------------------------------------------------------
در دکمه تعویض رنگ این فانکشن در اکشن کلیک صدا شده

setclr()
اما در خاصیت رنگ ابجکتهای تصویر این تابع صدا شده

var_color1[var_clrnum]


-------------------------------------------------------------
برای قدم شمار باید کد را بزنید بعد به ستینگ دستگاهزبروید و متد  ۲ را انتخاب کنید در گام شمار

-------------------------------------------------------------
جهت چرخش تکست عدد ساعت در دور واچ فیس این فانکشن ها را اضافه میکنیم. بعد در دقیقه  در x y  باید var_ix و var_iy  را صدا میکنیم و ...


var_or=0
var_ir=148
var_iir=72
var_iiir=30
var_ms_a=0
var_ms_o={}
var_ms_i={}
var_ms_ii={}
var_ms_iii={}

function on_millisecond(dt)
var_ms_utct={drh24}

  local var_ms_or
  var_ms_or=0
  var_ms_og=0
  var_ms_oz={drm}
  var_ms_o={x=math.sin(math.rad(var_ms_og)),y=-math.cos(math.rad(var_ms_og))}
  var_ms_a=var_ms_or*180/math.pi

  local var_ms_ir
  var_ms_ir=0
  var_ms_ig={drm}
  var_ms_iz={drss}
  var_ms_i={x=math.sin(math.rad(var_ms_ig)),y=-math.cos(math.rad(var_ms_ig))}
  var_ms_a=var_ms_ir*180/math.pi
  
  var_ms_ix=var_ir*var_ms_i.x
  var_ms_iy=var_ir*var_ms_i.y
  
  local var_ms_iir
  var_ms_iir=0
  var_ms_iig={drss}
  var_ms_iiz=60*{drss}
  var_ms_ii={x=math.sin(math.rad(var_ms_iig+var_ms_ig)),y=-math.cos(math.rad(var_ms_iig+var_ms_ig))}
  var_ms_a=var_ms_iir*180/math.pi

  var_ms_iix=var_ms_ix+var_iir*var_ms_ii.x
  var_ms_iiy=var_ms_iy+var_iir*var_ms_ii.y
  
--[[
  local var_ms_iiir
  var_ms_iiir=0
  var_ms_iiivt={drm}
  var_ms_iiiv={drss}
  var_ms_iii={x=math.sin(math.rad(var_ms_iiivt)),y=-math.cos(math.rad(var_ms_iiivt))}
  var_ms_a=var_ms_iiir*180/math.pi
  
  var_ms_iiix=var_iiix*var_ms_iii.x
  var_ms_iiiy=var_iiir*var_ms_iii.y
--]]
  
end