<project xmlns="com.autoesl.autopilot.project" top="passPointerArray" name="HLS">
    <includePaths/>
    <libraryPaths/>
    <Simulation>
        <SimFlow name="csim" optimizeCompile="true" clean="true" csimMode="0" lastCsimMode="0"/>
    </Simulation>
    <files xmlns="">
        <file name="../interface_test.c" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="HLS/interface.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="HLS/interface.c" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
    </files>
    <solutions xmlns="">
        <solution name="HLS_PicoDMA" status="active"/>
    </solutions>
</project>

