
这是一个基于 linphone 开源项目 bcg729 开发的 FreeSWITCH 的 G.729 模块，支持转码和录音。参考了一些 mod_bcg729 项目代码，并且针对新版本的 bcg729 API 接口代码变更进行了更新

### Install tutorial

	$ git clone https://github.com/typefo/mod_g729.git
    $ make
    $ make install

### freeswitch configuration

Edit /usr/local/freeswitch/conf/autoload_configs/modules.conf.xml

    <!-- Codec Interfaces -->
    <!-- <load module="mod_spandsp"/> -->
    <!-- <load module="mod_g723_1"/> -->
    <load module="mod_g729"/>
    <!-- <load module="mod_amr"/> -->
    ......

Remove the `<load module="mod_g729"/>` annotation
