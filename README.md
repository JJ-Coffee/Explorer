# FILE MANAGER FOR OPENWRT

# Instalation needed :
```yaml
opkg update && opkg install php7 php7-cgi php7-mod-session php7-mod-ctype php7-mod-fileinfo php7-mod-mbstring iconv php7-mod-json git git-http
```

# Creat Menu:
```yaml
cat <<'EOF' >/usr/lib/lua/luci/controller/tinyfm.lua
module("luci.controller.tinyfm", package.seeall)
function index()
entry({"admin","system","tinyfm"}, template("tinyfm"), _("File Explorer"), 55).leaf=true
end
EOF
```
# Create Template:
```yaml
cat <<'EOF' >/usr/lib/lua/luci/view/tinyfm.htm
<%+header%>
<div class="cbi-map">
<br>
<iframe id="tinyfm" style="width: 100%; min-height: 650px; border: none; border-radius: 2px;"></iframe>
</div>
<script type="text/javascript">
document.getElementById("tinyfm").src = "http://" + window.location.hostname + "/tinyfm.php";
</script>
<%+footer%>
EOF
```

# Download File and Repalce:
```yaml
cd /www
git clone https://github.com/GooxCo/Explorer.git
cd Explorer
mv tinyfm.php /www && mv cdn /www
rm -rf Explorer
```
# CONFIGURATION
edit config php.ini:
```yaml
cd
nano /etc/php.ini
```


nano /etc/config/uhttpd
```yaml
list interpreter '.php=/usr/bin/php-cgi'
```

