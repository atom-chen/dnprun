<GameFile>
  <PropertyGroup Name="node_top" Type="Node" ID="d41c97d2-9e46-40ad-96e8-3daf86c74dcf" Version="3.10.0.0" />
  <Content ctype="GameProjectContent">
    <Content>
      <Animation Duration="30" Speed="1.0000">
        <Timeline ActionTag="-279434152" Property="Position">
          <PointFrame FrameIndex="0" X="325.3503" Y="450.0000">
            <EasingData Type="12" />
          </PointFrame>
          <PointFrame FrameIndex="30" X="325.3503" Y="231.1871">
            <EasingData Type="0" />
          </PointFrame>
        </Timeline>
        <Timeline ActionTag="-279434152" Property="Scale">
          <ScaleFrame FrameIndex="0" X="1.0000" Y="1.0000">
            <EasingData Type="12" />
          </ScaleFrame>
          <ScaleFrame FrameIndex="30" X="1.0000" Y="1.0000">
            <EasingData Type="0" />
          </ScaleFrame>
        </Timeline>
        <Timeline ActionTag="-279434152" Property="RotationSkew">
          <ScaleFrame FrameIndex="0" X="0.0000" Y="0.0000">
            <EasingData Type="12" />
          </ScaleFrame>
          <ScaleFrame FrameIndex="30" X="0.0000" Y="0.0000">
            <EasingData Type="0" />
          </ScaleFrame>
        </Timeline>
      </Animation>
      <AnimationList>
        <AnimationInfo Name="enter" StartIndex="0" EndIndex="60">
          <RenderColor A="255" R="176" G="196" B="222" />
        </AnimationInfo>
      </AnimationList>
      <ObjectData Name="Node" Tag="34" ctype="GameNodeObjectData">
        <Size X="0.0000" Y="0.0000" />
        <Children>
          <AbstractNodeData Name="Panel_1" ActionTag="-1064505821" Tag="35" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" LeftMargin="-324.5000" RightMargin="-324.5000" BottomMargin="-352.0000" ClipAble="False" BackColorAlpha="0" ComboBoxIndex="1" ColorAngle="90.0000" Scale9Width="1" Scale9Height="1" ctype="PanelObjectData">
            <Size X="649.0000" Y="352.0000" />
            <Children>
              <AbstractNodeData Name="top_1" ActionTag="-279434152" Tag="36" IconVisible="False" LeftMargin="-34.6497" RightMargin="-36.3503" TopMargin="-274.0000" BottomMargin="274.0000" ctype="SpriteObjectData">
                <Size X="720.0000" Y="352.0000" />
                <Children>
                  <AbstractNodeData Name="Button_1" ActionTag="-102241966" CallBackType="Click" CallBackName="onHeadClick" Tag="56" IconVisible="False" LeftMargin="58.5395" RightMargin="500.4605" TopMargin="82.2823" BottomMargin="109.7177" TouchEnable="True" FontSize="14" Scale9Enable="True" LeftEage="15" RightEage="15" TopEage="11" BottomEage="11" Scale9OriginX="15" Scale9OriginY="11" Scale9Width="131" Scale9Height="138" ShadowOffsetX="2.0000" ShadowOffsetY="-2.0000" ctype="ButtonObjectData">
                    <Size X="161.0000" Y="160.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="139.0395" Y="189.7177" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.1931" Y="0.5390" />
                    <PreSize X="0.2236" Y="0.4545" />
                    <TextColor A="255" R="65" G="65" B="70" />
                    <DisabledFileData Type="PlistSubImage" Path="l-lock.png" Plist="Resource/atlas/common.plist" />
                    <PressedFileData Type="PlistSubImage" Path="l-p-6.png" Plist="Resource/atlas/common.plist" />
                    <NormalFileData Type="PlistSubImage" Path="l-q.png" Plist="Resource/atlas/common.plist" />
                    <OutlineColor A="255" R="255" G="0" B="0" />
                    <ShadowColor A="255" R="110" G="110" B="110" />
                  </AbstractNodeData>
                </Children>
                <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                <Position X="325.3503" Y="450.0000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.5013" Y="1.2784" />
                <PreSize X="1.1094" Y="1.0000" />
                <FileData Type="Normal" Path="Resource/atlas/top.png" Plist="" />
                <BlendFunc Src="1" Dst="771" />
              </AbstractNodeData>
            </Children>
            <AnchorPoint ScaleX="0.5000" ScaleY="1.0000" />
            <Position />
            <Scale ScaleX="1.0000" ScaleY="1.0000" />
            <CColor A="255" R="255" G="255" B="255" />
            <PrePosition />
            <PreSize X="0.0000" Y="0.0000" />
            <SingleColor A="255" R="255" G="255" B="255" />
            <FirstColor A="255" R="150" G="200" B="255" />
            <EndColor A="255" R="255" G="255" B="255" />
            <ColorVector ScaleY="1.0000" />
          </AbstractNodeData>
        </Children>
      </ObjectData>
    </Content>
  </Content>
</GameFile>