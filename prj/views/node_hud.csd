<GameFile>
  <PropertyGroup Name="node_hud" Type="Node" ID="8a17a4c6-13d9-4095-9d54-3f84c52e4046" Version="3.10.0.0" />
  <Content ctype="GameProjectContent">
    <Content>
      <Animation Duration="0" Speed="1.0000" />
      <ObjectData Name="Node" ctype="GameNodeObjectData">
        <Size X="0.0000" Y="0.0000" />
        <Children>
          <AbstractNodeData Name="Panel_1" ActionTag="-1585226523" Tag="2" IconVisible="False" RightMargin="-750.0000" TopMargin="-200.0000" ClipAble="False" BackColorAlpha="0" ComboBoxIndex="1" ColorAngle="90.0000" LeftEage="66" RightEage="66" TopEage="29" BottomEage="29" Scale9OriginX="-66" Scale9OriginY="-29" Scale9Width="132" Scale9Height="58" ctype="PanelObjectData">
            <Size X="750.0000" Y="200.0000" />
            <Children>
              <AbstractNodeData Name="Sprite_3" ActionTag="-1398567399" Tag="5" IconVisible="False" LeftMargin="-0.5000" RightMargin="589.5000" TopMargin="14.0000" BottomMargin="26.0000" ctype="SpriteObjectData">
                <Size X="161.0000" Y="160.0000" />
                <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                <Position X="80.0000" Y="106.0000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.1067" Y="0.5300" />
                <PreSize X="0.2147" Y="0.8000" />
                <FileData Type="PlistSubImage" Path="l-q.png" Plist="Resource/atlas/common.plist" />
                <BlendFunc Src="1" Dst="771" />
              </AbstractNodeData>
              <AbstractNodeData Name="Slider_1" ActionTag="-819372792" VisibleForFrame="False" Tag="8" IconVisible="False" LeftMargin="259.5000" RightMargin="13.5000" TopMargin="152.5000" BottomMargin="22.5000" PercentInfo="99" ctype="SliderObjectData">
                <Size X="477.0000" Y="25.0000" />
                <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                <Position X="498.0000" Y="35.0000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.6640" Y="0.1750" />
                <PreSize X="0.6360" Y="0.1250" />
                <BackGroundData Type="PlistSubImage" Path="loading-bar-1.png" Plist="Resource/atlas/common.plist" />
                <ProgressBarData Type="PlistSubImage" Path="loading-bar-2.png" Plist="Resource/atlas/common.plist" />
                <BallNormalData Type="Default" Path="Default/SliderNode_Normal.png" Plist="" />
                <BallPressedData Type="Default" Path="Default/SliderNode_Press.png" Plist="" />
                <BallDisabledData Type="Default" Path="Default/SliderNode_Disable.png" Plist="" />
              </AbstractNodeData>
              <AbstractNodeData Name="BitmapFontLabel_1" ActionTag="-537871308" Tag="10" IconVisible="False" LeftMargin="228.0005" RightMargin="487.9995" TopMargin="51.5002" BottomMargin="133.4998" LabelText="kitty毛" ctype="TextBMFontObjectData">
                <Size X="34.0000" Y="15.0000" />
                <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                <Position X="245.0005" Y="140.9998" />
                <Scale ScaleX="3.3677" ScaleY="2.7333" />
                <CColor A="255" R="255" G="0" B="0" />
                <PrePosition X="0.3267" Y="0.7050" />
                <PreSize X="0.0453" Y="0.0750" />
              </AbstractNodeData>
              <AbstractNodeData Name="Text_1" ActionTag="-2085664393" Tag="11" IconVisible="False" LeftMargin="442.5000" RightMargin="160.5000" TopMargin="39.5000" BottomMargin="137.5000" FontSize="20" LabelText="你好是white是吗" TouchScaleChangeAble="True" ShadowOffsetX="2.0000" ShadowOffsetY="-2.0000" ctype="TextObjectData">
                <Size X="147.0000" Y="23.0000" />
                <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                <Position X="516.0000" Y="149.0000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.6880" Y="0.7450" />
                <PreSize X="0.1960" Y="0.1150" />
                <OutlineColor A="255" R="255" G="0" B="0" />
                <ShadowColor A="255" R="110" G="110" B="110" />
              </AbstractNodeData>
              <AbstractNodeData Name="TextField_1" ActionTag="-574995838" Tag="28" IconVisible="False" LeftMargin="348.0000" RightMargin="316.0000" TopMargin="81.5000" BottomMargin="95.5000" TouchEnable="True" FontSize="20" IsCustomSize="True" LabelText="" PlaceHolderText="心情很好哈" MaxLengthText="10" ctype="TextFieldObjectData">
                <Size X="86.0000" Y="23.0000" />
                <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                <Position X="391.0000" Y="107.0000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="144" G="238" B="144" />
                <PrePosition X="0.5213" Y="0.5350" />
                <PreSize X="0.1147" Y="0.1150" />
                <FontResource Type="Normal" Path="Resource/font/FZY4K.ttf" Plist="" />
              </AbstractNodeData>
              <AbstractNodeData Name="TextField_2" ActionTag="784933050" CallBackType="Click" Tag="29" IconVisible="False" LeftMargin="197.0000" RightMargin="467.0000" TopMargin="103.5000" BottomMargin="73.5000" FontSize="20" IsCustomSize="True" LabelText="" PlaceHolderText="Text Field" MaxLengthEnable="True" MaxLengthText="10" PasswordEnable="True" ctype="TextFieldObjectData">
                <Size X="86.0000" Y="23.0000" />
                <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                <Position X="240.0000" Y="85.0000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.3200" Y="0.4250" />
                <PreSize X="0.1147" Y="0.1150" />
              </AbstractNodeData>
              <AbstractNodeData Name="TextField_5" ActionTag="539094394" Tag="46" IconVisible="False" LeftMargin="457.0000" RightMargin="207.0000" TopMargin="89.9420" BottomMargin="87.0580" TouchEnable="True" FontSize="20" IsCustomSize="True" LabelText="" PlaceHolderText="Text Field" MaxLengthText="10" ctype="TextFieldObjectData">
                <Size X="86.0000" Y="23.0000" />
                <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                <Position X="500.0000" Y="98.5580" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.6667" Y="0.4928" />
                <PreSize X="0.1147" Y="0.1150" />
              </AbstractNodeData>
              <AbstractNodeData Name="Button_3" ActionTag="-1392502365" Tag="57" IconVisible="False" LeftMargin="573.5000" RightMargin="11.5000" TopMargin="30.0000" BottomMargin="84.0000" TouchEnable="True" FontSize="14" ButtonText="Button" Scale9Enable="True" LeftEage="15" RightEage="15" TopEage="11" BottomEage="11" Scale9OriginX="15" Scale9OriginY="11" Scale9Width="135" Scale9Height="64" ShadowOffsetX="2.0000" ShadowOffsetY="-2.0000" ctype="ButtonObjectData">
                <Size X="165.0000" Y="86.0000" />
                <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                <Position X="656.0000" Y="127.0000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.8747" Y="0.6350" />
                <PreSize X="0.2200" Y="0.4300" />
                <TextColor A="255" R="65" G="65" B="70" />
                <DisabledFileData Type="PlistSubImage" Path="btn-165-86-3.png" Plist="Resource/atlas/common.plist" />
                <PressedFileData Type="PlistSubImage" Path="btn-165-86-2.png" Plist="Resource/atlas/common.plist" />
                <NormalFileData Type="PlistSubImage" Path="btn-165-86-1.png" Plist="Resource/atlas/common.plist" />
                <OutlineColor A="255" R="255" G="0" B="0" />
                <ShadowColor A="255" R="110" G="110" B="110" />
              </AbstractNodeData>
            </Children>
            <AnchorPoint />
            <Position />
            <Scale ScaleX="1.0000" ScaleY="1.0000" />
            <CColor A="255" R="255" G="255" B="255" />
            <PrePosition />
            <PreSize X="0.0000" Y="0.0000" />
            <SingleColor A="255" R="255" G="255" B="0" />
            <FirstColor A="255" R="150" G="200" B="255" />
            <EndColor A="255" R="255" G="255" B="255" />
            <ColorVector ScaleY="1.0000" />
          </AbstractNodeData>
        </Children>
      </ObjectData>
    </Content>
  </Content>
</GameFile>