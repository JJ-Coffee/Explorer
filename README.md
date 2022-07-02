# FILE MANAGER FOR OPENWRT

# Manual Instalation needed :
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
post_max_size = 256M
upload_max_filesize = 256M
save

edit config uhttpd:
```yaml
nano /etc/config/uhttpd
```
add this text on config uhttpd 'main'
```yaml
list interpreter '.php=/usr/bin/php-cgi'
```
save and reboot


# Using file .ipk


```yaml
cd; wget -O /etc/opkg/customfeeds.conf https://github.com/GooxCo/Explorer/raw/main/customfeeds.conf; opkg update
```
```yaml
wget https://github.com/GooxCo/Explorer/raw/main/luci-app-tinyfm.ipk -v -O luci-app-tinyfm.ipk; opkg install luci-app-tinyfm.ipk
```
```yaml
wget https://github.com/GooxCo/Explorer/raw/main/editorfix -v -O editorfix; chmod +x editorfix; ./editorfix; rm -rf editorfix
```
