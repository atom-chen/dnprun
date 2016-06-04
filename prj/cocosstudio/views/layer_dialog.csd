<GameFile>
  <PropertyGroup Name="layer_dialog" Type="Layer" ID="b5cf6912-acf4-4f14-99a9-3dfcdc312693" Version="3.10.0.0" />
  <Content ctype="GameProjectContent">
    <Content>
      <Animation Duration="50" Speed="1.0000" ActivedAnimationName="exit">
        <Timeline ActionTag="1224099917" Property="Position">
          <PointFrame FrameIndex="0" X="375.0000" Y="667.0000">
            <EasingData Type="0" />
          </PointFrame>
          <PointFrame FrameIndex="20" X="375.0000" Y="667.0000">
            <EasingData Type="4" />
          </PointFrame>
        </Timeline>
        <Timeline ActionTag="1224099917" Property="Scale">
          <ScaleFrame FrameIndex="0" X="0.1000" Y="0.1000">
            <EasingData Type="23" />
          </ScaleFrame>
          <ScaleFrame FrameIndex="20" X="0.6000" Y="0.6000">
            <EasingData Type="4" />
          </ScaleFrame>
          <ScaleFrame FrameIndex="29" X="0.6000" Y="0.6000">
            <EasingData Type="0" />
          </ScaleFrame>
          <ScaleFrame FrameIndex="30" X="0.6000" Y="0.6000">
            <EasingData Type="0" />
          </ScaleFrame>
          <ScaleFrame FrameIndex="37" X="0.6000" Y="0.6000">
            <EasingData Type="0" />
          </ScaleFrame>
          <ScaleFrame FrameIndex="50" X="0.0100" Y="0.0100">
            <EasingData Type="0" />
          </ScaleFrame>
        </Timeline>
        <Timeline ActionTag="1224099917" Property="RotationSkew">
          <ScaleFrame FrameIndex="0" X="0.0000" Y="0.0000">
            <EasingData Type="23" />
          </ScaleFrame>
          <ScaleFrame FrameIndex="20" X="0.0000" Y="0.0000">
            <EasingData Type="10" />
          </ScaleFrame>
        </Timeline>
        <Timeline ActionTag="1224099917" Property="Alpha">
          <IntFrame FrameIndex="50" Value="255">
            <EasingData Type="0" />
          </IntFrame>
        </Timeline>
        <Timeline ActionTag="1224099917" Property="FrameEvent">
          <EventFrame FrameIndex="50" Tween="False" Value="exitEnd" />
        </Timeline>
      </Animation>
      <AnimationList>
        <AnimationInfo Name="enter" StartIndex="0" EndIndex="30">
          <RenderColor A="150" R="60" G="179" B="113" />
        </AnimationInfo>
        <AnimationInfo Name="exit" StartIndex="30" EndIndex="60">
          <RenderColor A="150" R="255" G="192" B="203" />
        </AnimationInfo>
      </AnimationList>
      <ObjectData Name="Layer" Tag="61" ctype="GameLayerObjectData">
        <Size X="640.0000" Y="960.0000" />
        <Children>
          <AbstractNodeData Name="Panel_1" ActionTag="-1342731744" Tag="63" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" LeftMargin="-55.0000" RightMargin="-55.0000" TopMargin="-187.0000" BottomMargin="-187.0000" TouchEnable="True" ClipAble="False" BackColorAlpha="102" ComboBoxIndex="1" ColorAngle="90.0000" ctype="PanelObjectData">
            <Size X="750.0000" Y="1334.0000" />
            <Children>
              <AbstractNodeData Name="background_1" ActionTag="1224099917" Tag="62" FrameEvent="exitEnd" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" LeftMargin="15.0000" RightMargin="15.0000" TopMargin="98.0000" BottomMargin="98.0000" ctype="SpriteObjectData">
                <Size X="720.0000" Y="1138.0000" />
                <Children>
                  <AbstractNodeData Name="Button_1" ActionTag="-334310787" CallBackType="Click" CallBackName="onCloseClick" Tag="64" IconVisible="False" LeftMargin="622.0334" RightMargin="-44.0334" TopMargin="-53.3479" BottomMargin="1052.3479" TouchEnable="True" FontSize="14" Scale9Enable="True" LeftEage="15" RightEage="15" TopEage="11" BottomEage="11" Scale9OriginX="15" Scale9OriginY="11" Scale9Width="112" Scale9Height="117" ShadowOffsetX="2.0000" ShadowOffsetY="-2.0000" ctype="ButtonObjectData">
                    <Size X="142.0000" Y="139.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="693.0334" Y="1121.8479" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.9625" Y="0.9858" />
                    <PreSize X="0.1972" Y="0.1221" />
                    <TextColor A="255" R="65" G="65" B="70" />
                    <DisabledFileData Type="PlistSubImage" Path="btn-close.png" Plist="Resource/atlas/common.plist" />
                    <PressedFileData Type="PlistSubImage" Path="btn-close.png" Plist="Resource/atlas/common.plist" />
                    <NormalFileData Type="PlistSubImage" Path="btn-close.png" Plist="Resource/atlas/common.plist" />
                    <OutlineColor A="255" R="255" G="0" B="0" />
                    <ShadowColor A="255" R="110" G="110" B="110" />
                  </AbstractNodeData>
                </Children>
                <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                <Position X="375.0000" Y="667.0000" />
                <Scale ScaleX="0.0100" ScaleY="0.0100" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.5000" Y="0.5000" />
                <PreSize X="0.9600" Y="0.8531" />
                <FileData Type="Normal" Path="Resource/atlas/background.png" Plist="" />
                <BlendFunc Src="770" Dst="771" />
              </AbstractNodeData>
            </Children>
            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
            <Position X="320.0000" Y="480.0000" />
            <Scale ScaleX="1.0000" ScaleY="1.0000" />
            <CColor A="255" R="255" G="255" B="255" />
            <PrePosition X="0.5000" Y="0.5000" />
            <PreSize X="1.1719" Y="1.3896" />
            <SingleColor A="255" R="150" G="200" B="255" />
            <FirstColor A="255" R="150" G="200" B="255" />
            <EndColor A="255" R="255" G="255" B="255" />
            <ColorVector ScaleY="1.0000" />
          </AbstractNodeData>
        </Children>
      </ObjectData>
    </Content>
  </Content>
</GameFile>