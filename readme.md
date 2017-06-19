This is a freeswitch G729 audio Encoding and Decoding module based on the bcg729 Library, refer to some of the code in the Matteo Brancaleoni mod_bcg729 project

这是一个基于 linphone 开源项目 bcg729 开发的 FreeSWITCH 的 G.729 模块，并且参考了一些 Matteo Brancaleoni 的 mod_bcg729 项目代码

### Install tutorial

    make
    make install

### freeswitch configuration

Edit /usr/local/freeswitch/conf/autoload_configs/modules.conf.xml

    <!-- Codec Interfaces -->
    <!-- <load module="mod_spandsp"/> -->
    <!-- <load module="mod_g723_1"/> -->
    <load module="mod_g729"/>
    <!-- <load module="mod_amr"/> -->
    ......

Remove the mod_g729 annotation
