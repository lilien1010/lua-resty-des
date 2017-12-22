this repo finished a DES ECB encrypt/decryption method. for now just DES/EBC  is tested.
more test and pull request is welcomed.


this Tencent qcloud HTTPDNS servier  DES ECB padding5 encryption API,where you can verify you result
http://119.29.29.29/en?v=www.google.com&k=weijianliao
key: weijianliao 
result: cd52888ecabcac455a14ddbac7f03d97 

you can just test with resty CLI
```
root@localhost:~# resty lua_func_test.lua 
cd52888ecabcac455a14ddbac7f03d97
decode:www.google.com
```


example in Java
```
try {
//init key 
SecretKeySpec keySpec = new SecretKeySpec(encKey.getBytes("utf-8"), "DES");
//choose DES £¨ECB mode£¨ PKCS5Padding
Cipher cipher = Cipher.getInstance("DES/ECB/PKCS5Padding");
//init
cipher.init(Cipher.ENCRYPT_MODE, keySpec);
//get encrypted string
encryptedString = bytesToHex(cipher.doFinal(hostName.getBytes("utf-8")));
} catch (Exception e) {
e.printStackTrace();
}
```

example code in PHP
```
/**
 * des-ecbΩ‚√‹
 * @param string  $data data need encrypted
 * @param string  $key encrypted key
 */
function des_ecb_decrypt ($data, $key){
    return openssl_decrypt ($data, 'des-ecb', $key);
}

$str = 'www.google.com';  
$key = 'weijianliao';   
$res = des_ecb_encrypt($str, $key);   
echo bin2hex(base64_decode($res))."\n";  
// result is=cd52888ecabcac455a14ddbac7f03d97
  
```