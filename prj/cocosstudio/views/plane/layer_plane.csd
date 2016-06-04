<GameFile>
  <PropertyGroup Name="layer_plane" Type="Layer" ID="8adb03d7-a08d-491c-89ba-32fb7f6c43ab" Version="3.10.0.0" />
  <Content ctype="GameProjectContent">
    <Content>
      <Animation Duration="15" Speed="1.0000" ActivedAnimationName="animation0">
        <Timeline ActionTag="-1608317653" Property="Position">
          <PointFrame FrameIndex="0" X="67.9018" Y="110.0716">
            <EasingData Type="0" />
          </PointFrame>
          <PointFrame FrameIndex="5" X="67.9018" Y="110.0716">
            <EasingData Type="0" />
          </PointFrame>
          <PointFrame FrameIndex="15" X="67.9018" Y="110.0716">
            <EasingData Type="0" />
          </PointFrame>
        </Timeline>
        <Timeline ActionTag="-1608317653" Property="Scale">
          <ScaleFrame FrameIndex="0" X="1.0000" Y="1.0000">
            <EasingData Type="0" />
          </ScaleFrame>
          <ScaleFrame FrameIndex="5" X="0.0010" Y="1.0000">
            <EasingData Type="0" />
          </ScaleFrame>
          <ScaleFrame FrameIndex="10" X="-1.0000" Y="1.0000">
            <EasingData Type="0" />
          </ScaleFrame>
          <ScaleFrame FrameIndex="15" X="0.0010" Y="1.0000">
            <EasingData Type="0" />
          </ScaleFrame>
        </Timeline>
        <Timeline ActionTag="-1608317653" Property="RotationSkew">
          <ScaleFrame FrameIndex="0" X="0.0000" Y="0.0000">
            <EasingData Type="0" />
          </ScaleFrame>
          <ScaleFrame FrameIndex="5" X="0.0000" Y="0.0000">
            <EasingData Type="0" />
          </ScaleFrame>
          <ScaleFrame FrameIndex="15" X="0.0000" Y="0.0000">
            <EasingData Type="0" />
          </ScaleFrame>
        </Timeline>
        <Timeline ActionTag="-1608317653" Property="AnchorPoint">
          <ScaleFrame FrameIndex="15" X="0.5000" Y="0.5000">
            <EasingData Type="0" />
          </ScaleFrame>
        </Timeline>
      </Animation>
      <AnimationList>
        <AnimationInfo Name="animation0" StartIndex="0" EndIndex="10">
          <RenderColor A="255" R="144" G="238" B="144" />
        </AnimationInfo>
      </AnimationList>
      <ObjectData Name="Layer" Tag="34" ctype="GameLayerObjectData">
        <Size X="640.0000" Y="960.0000" />
        <Children>
          <AbstractNodeData Name="Panel_1" ActionTag="188677743" Tag="36" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" LeftMargin="-55.0000" RightMargin="-55.0000" TopMargin="-136.0000" BottomMargin="-136.0000" ClipAble="False" ComboBoxIndex="1" ColorAngle="90.0000" Scale9Width="1" Scale9Height="1" ctype="PanelObjectData">
            <Size X="750.0000" Y="1232.0000" />
            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
            <Position X="320.0000" Y="480.0000" />
            <Scale ScaleX="1.0000" ScaleY="1.0000" />
            <CColor A="255" R="255" G="255" B="255" />
            <PrePosition X="0.5000" Y="0.5000" />
            <PreSize X="1.1719" Y="1.2833" />
            <SingleColor A="255" R="150" G="200" B="255" />
            <FirstColor A="255" R="150" G="200" B="255" />
            <EndColor A="255" R="255" G="255" B="255" />
            <ColorVector ScaleY="1.0000" />
          </AbstractNodeData>
          <AbstractNodeData Name="plane" ActionTag="-1579671020" Tag="35" IconVisible="False" LeftMargin="246.4248" RightMargin="259.5752" TopMargin="887.9338" BottomMargin="-46.9338" ctype="SpriteObjectData">
            <Size X="134.0000" Y="119.0000" />
            <Children>
              <AbstractNodeData Name="windhead_2" ActionTag="-1608317653" Tag="37" IconVisible="False" LeftMargin="44.4018" RightMargin="42.5982" TopMargin="4.9284" BottomMargin="106.0716" ctype="SpriteObjectData">
                <Size X="47.0000" Y="8.0000" />
                <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                <Position X="67.9018" Y="110.0716" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.5067" Y="0.9250" />
                <PreSize X="0.3507" Y="0.0672" />
                <FileData Type="Normal" Path="Resource/atlas/windhead.png" Plist="" />
                <BlendFunc Src="1" Dst="771" />
              </AbstractNodeData>
            </Children>
            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
            <Position X="313.4248" Y="12.5662" />
            <Scale ScaleX="1.0000" ScaleY="1.0000" />
            <CColor A="255" R="255" G="255" B="255" />
            <PrePosition X="0.4897" Y="0.0131" />
            <PreSize X="0.2094" Y="0.1240" />
            <FileData Type="Normal" Path="Resource/atlas/plane1.png" Plist="" />
            <BlendFunc Src="1" Dst="771" />
          </AbstractNodeData>
        </Children>
      </ObjectData>
    </Content>
  </Content>
</GameFile>