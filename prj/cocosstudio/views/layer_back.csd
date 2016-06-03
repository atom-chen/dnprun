<GameFile>
  <PropertyGroup Name="layer_back" Type="Layer" ID="f7ef5e07-6db4-4c59-8e34-3e493224be4e" Version="3.10.0.0" />
  <Content ctype="GameProjectContent">
    <Content>
      <Animation Duration="20" Speed="1.0000" ActivedAnimationName="animation1">
        <Timeline ActionTag="-113589004" Property="Position">
          <PointFrame FrameIndex="0" X="320.0000" Y="480.0000">
            <EasingData Type="0" />
          </PointFrame>
        </Timeline>
        <Timeline ActionTag="-113589004" Property="Scale">
          <ScaleFrame FrameIndex="0" X="1.0000" Y="1.0000">
            <EasingData Type="-1">
              <Points>
                <PointF />
                <PointF />
                <PointF X="1.0000" Y="1.0000" />
                <PointF X="1.0000" Y="1.0000" />
              </Points>
            </EasingData>
          </ScaleFrame>
          <ScaleFrame FrameIndex="10" X="1.0000" Y="1.0000">
            <EasingData Type="0" />
          </ScaleFrame>
          <ScaleFrame FrameIndex="20" X="1.0000" Y="1.0000">
            <EasingData Type="0" />
          </ScaleFrame>
        </Timeline>
        <Timeline ActionTag="-113589004" Property="RotationSkew">
          <ScaleFrame FrameIndex="0" X="0.0000" Y="0.0000">
            <EasingData Type="0" />
          </ScaleFrame>
        </Timeline>
        <Timeline ActionTag="-113589004" Property="Alpha">
          <IntFrame FrameIndex="0" Value="255">
            <EasingData Type="0" />
          </IntFrame>
          <IntFrame FrameIndex="10" Value="173">
            <EasingData Type="0" />
          </IntFrame>
          <IntFrame FrameIndex="20" Value="61">
            <EasingData Type="0" />
          </IntFrame>
        </Timeline>
      </Animation>
      <AnimationList>
        <AnimationInfo Name="animation0" StartIndex="0" EndIndex="40">
          <RenderColor A="255" R="192" G="192" B="192" />
        </AnimationInfo>
        <AnimationInfo Name="animation1" StartIndex="40" EndIndex="80">
          <RenderColor A="255" R="173" G="255" B="47" />
        </AnimationInfo>
      </AnimationList>
      <ObjectData Name="Layer" Tag="32" ctype="GameLayerObjectData">
        <Size X="640.0000" Y="960.0000" />
        <Children>
          <AbstractNodeData Name="background_1" ActionTag="-113589004" Tag="33" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" LeftMargin="-40.0000" RightMargin="-40.0000" TopMargin="-89.0000" BottomMargin="-89.0000" ctype="SpriteObjectData">
            <Size X="720.0000" Y="1138.0000" />
            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
            <Position X="320.0000" Y="480.0000" />
            <Scale ScaleX="1.0000" ScaleY="1.0000" />
            <CColor A="255" R="255" G="255" B="255" />
            <PrePosition X="0.5000" Y="0.5000" />
            <PreSize X="1.1250" Y="1.1854" />
            <FileData Type="Normal" Path="Resource/atlas/background.png" Plist="" />
            <BlendFunc Src="770" Dst="771" />
          </AbstractNodeData>
        </Children>
      </ObjectData>
    </Content>
  </Content>
</GameFile>