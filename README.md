# FILE MANAGER FOR OPENWRT

# Manual Instalation needed :
```yaml
opkg update && opkg install php8 php8-cgi php8-mod-ctype php8-mod-fileinfo php8-mod-gettext php8-mod-gmp php8-mod-iconv php8-mod-mbstring php8-mod-pcntl php8-mod-session php8-mod-zip
```

# Creat Menu:
```yaml
cat <<'EOF' >/usr/lib/lua/luci/controller/tinyfm.lua
module("luci.controller.tinyfm", package.seeall)
function index()
entry({"admin","system","tinyfm"}, template("tinyfm"), _("File Manager"), 55).leaf=true
end
EOF
```
# Create Template Tinyfm:
```yaml
cat <<'EOF' >/usr/lib/lua/luci/view/tinyfm.htm
<%+header%>
<div class="cbi-map">
<br>
<iframe id="tinyfm" style="width: 100%; min-height: 650px; border: none; border-radius: 2px;"></iframe>
</div>
<script type="text/javascript">
document.getElementById("tinyfm").src = "http://" + window.location.hostname + "/tinyfm/tinyfm.php";
</script>
<%+footer%>
EOF
```
# Creat Menu editor for openclash:
```yaml
nano /usr/lib/lua/luci/controller/openclash.lua
```
```yaml
entry({"admin", "services", "openclash", "oceditor"},template("openclash/oceditor"),_("Config Editor"), 80).leaf = true
```

# Create Template opeclash editor:
```yaml
cat <<'EOF' >/usr/lib/lua/luci/view/openclash/editor.htm
<%+header%>
<div class="cbi-map">
<iframe id="oceditor" style="width: 100%; min-height: 650px; border: none; border-radius: 2px;"></iframe>
</div>
<script type="text/javascript">
document.getElementById("oceditor").src = "http://" + window.location.hostname + "/tinyfm/oceditor.php";
</script>
<%+footer%>
EOF
```


# Download File and Repalce:
```yaml
cd /www
git clone https://github.com/GooxCo/Explorer.git
cd Explorer
mv tinyfm /www
cd /www
rm -rf Explorer

```
# CONFIGURATION
edit config php.ini:
```yaml
cd
nano /etc/php.ini
```
post_max_size = 1024M
upload_max_filesize = 1024M
save

edit config uhttpd:
```yaml
nano /etc/config/uhttpd
```
add this text on config uhttpd 'main'
```yaml
list interpreter '.php=/usr/bin/php8-cgi'
```
save


# Make directory Link


```yaml
[ ! -d /www/tinyfm/rootfs ] && ln -s / /www/tinyfm/rootfs
```
```yaml
[ ! -d /www/tinyfm/openclash ] && ln -s /etc/openclash /www/tinyfm/openclash
```
Reboot device!!!

