local des 	=	 require 'resty.des'
local resty_string	=		require  'resty.string'

  

local key ='weijianliao'
local url ='www.google.com'
local salt =nil

desMod,err =	des:new(key,salt)

if not desMod then 
	ngx.print(err)
	return 
end

local str = 	desMod:encrypt(url)
local hexstr 	=	resty_string.to_hex(str)
ngx.print(hexstr,"\n")
 
ngx.print('decode:',desMod:decrypt(str),"\n")
 