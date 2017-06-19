This is a freeswitch G729 audio Encoding and Decoding module based on the bcg729 Library, refer to some of the code in the mod_bcg729 project

#### Install tutorial

    make
    make install

#### freeswitch configuration

Edit /usr/local/freeswitch/conf/autoload_configs/modules.conf.xml

    <!-- Codec Interfaces -->
    <!-- <load module="mod_spandsp"/> -->
    <!-- <load module="mod_g723_1"/> -->
    <load module="mod_g729"/>
    <!-- <load module="mod_amr"/> -->
    ......

Remove the mod_g729 annotation
