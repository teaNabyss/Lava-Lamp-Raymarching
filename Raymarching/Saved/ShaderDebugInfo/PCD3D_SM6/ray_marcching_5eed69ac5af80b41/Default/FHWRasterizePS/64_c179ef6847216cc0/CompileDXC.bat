@ECHO OFF
SET DXC="C:\UE_5.5\Engine\Binaries\ThirdParty\ShaderConductor\Win64\dxc.exe"
IF NOT EXIST %DXC% (
	ECHO Couldn't find dxc.exe under "C:\UE_5.5\Engine\Binaries\ThirdParty\ShaderConductor\Win64"
	GOTO :END
)
%DXC% -HV 2021 -Zpr -O3 -auto-binding-space 0 -Wno-parentheses-equality -disable-lifetime-markers -T ps_6_6 -E HWRasterizePS -Fc NaniteRasterizer.d3dasm -Fo NaniteRasterizer.dxil NaniteRasterizer.usf
:END
PAUSE
