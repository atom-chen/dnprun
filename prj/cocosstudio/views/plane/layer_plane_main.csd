<GameFile>
  <PropertyGroup Name="layer_plane_main" Type="Layer" ID="c694570b-fe39-4ec3-8b53-a156d3cdd967" Version="3.10.0.0" />
  <Content ctype="GameProjectContent">
    <Content>
      <Animation Duration="90" Speed="1.0000">
        <Timeline ActionTag="1812088235" Property="Position">
          <PointFrame FrameIndex="0" X="-92.4811" Y="544.6230">
            <EasingData Type="8" />
          </PointFrame>
          <PointFrame FrameIndex="30" X="-92.4000" Y="544.6230">
            <EasingData Type="0" />
          </PointFrame>
          <PointFrame FrameIndex="90" X="780.0000" Y="544.6230">
            <EasingData Type="0" />
          </PointFrame>
        </Timeline>
        <Timeline ActionTag="1812088235" Property="Scale">
          <ScaleFrame FrameIndex="0" X="1.0000" Y="1.0000">
            <EasingData Type="8" />
          </ScaleFrame>
          <ScaleFrame FrameIndex="30" X="1.0000" Y="1.0000">
            <EasingData Type="0" />
          </ScaleFrame>
          <ScaleFrame FrameIndex="90" X="1.0000" Y="1.0000">
            <EasingData Type="0" />
          </ScaleFrame>
        </Timeline>
        <Timeline ActionTag="1812088235" Property="RotationSkew">
          <ScaleFrame FrameIndex="0" X="0.0000" Y="0.0000">
            <EasingData Type="8" />
          </ScaleFrame>
          <ScaleFrame FrameIndex="30" X="0.0000" Y="0.0000">
            <EasingData Type="0" />
          </ScaleFrame>
          <ScaleFrame FrameIndex="90" X="0.0000" Y="0.0000">
            <EasingData Type="0" />
          </ScaleFrame>
        </Timeline>
      </Animation>
      <AnimationList>
        <AnimationInfo Name="play" StartIndex="0" EndIndex="90">
          <RenderColor A="150" R="238" G="130" B="238" />
        </AnimationInfo>
      </AnimationList>
      <ObjectData Name="Layer" Tag="5" ctype="GameLayerObjectData">
        <Size X="640.0000" Y="960.0000" />
        <Children>
          <AbstractNodeData Name="Panel_1" ActionTag="601923354" Tag="7" IconVisible="False" LeftMargin="-5.0419" RightMargin="5.0419" TopMargin="-0.9916" BottomMargin="0.9916" ClipAble="False" ComboBoxIndex="1" ColorAngle="90.0000" ctype="PanelObjectData">
            <Size X="640.0000" Y="960.0000" />
            <Children>
              <AbstractNodeData Name="Button_1" ActionTag="707913335" CallBackType="Click" CallBackName="onStartClick" Tag="9" IconVisible="False" LeftMargin="170.5417" RightMargin="160.4583" TopMargin="561.1485" BottomMargin="296.8515" TouchEnable="True" FontSize="14" Scale9Enable="True" LeftEage="15" RightEage="15" TopEage="11" BottomEage="11" Scale9OriginX="15" Scale9OriginY="11" Scale9Width="279" Scale9Height="80" ShadowOffsetX="2.0000" ShadowOffsetY="-2.0000" ctype="ButtonObjectData">
                <Size X="309.0000" Y="102.0000" />
                <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                <Position X="325.0417" Y="347.8515" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.5079" Y="0.3623" />
                <PreSize X="0.4828" Y="0.1063" />
                <TextColor A="255" R="65" G="65" B="70" />
                <DisabledFileData Type="Default" Path="Default/Button_Disable.png" Plist="" />
                <PressedFileData Type="Normal" Path="Resource/atlas/btn-start-2.png" Plist="" />
                <NormalFileData Type="Normal" Path="Resource/atlas/btn-start.png" Plist="" />
                <OutlineColor A="255" R="255" G="0" B="0" />
                <ShadowColor A="255" R="110" G="110" B="110" />
              </AbstractNodeData>
            </Children>
            <AnchorPoint />
            <Position X="-5.0419" Y="0.9916" />
            <Scale ScaleX="1.0000" ScaleY="1.0000" />
            <CColor A="255" R="255" G="255" B="255" />
            <PrePosition X="-0.0079" Y="0.0010" />
            <PreSize X="1.0000" Y="1.0000" />
            <SingleColor A="255" R="150" G="200" B="255" />
            <FirstColor A="255" R="150" G="200" B="255" />
            <EndColor A="255" R="255" G="255" B="255" />
            <ColorVector ScaleY="1.0000" />
          </AbstractNodeData>
          <AbstractNodeData Name="title_1" ActionTag="1940497352" Tag="6" IconVisible="False" LeftMargin="40.8009" RightMargin="33.1991" TopMargin="193.7244" BottomMargin="547.2756" ctype="SpriteObjectData">
            <Size X="566.0000" Y="219.0000" />
            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
            <Position X="323.8009" Y="656.7756" />
            <Scale ScaleX="1.0000" ScaleY="1.0000" />
            <CColor A="255" R="255" G="255" B="255" />
            <PrePosition X="0.5059" Y="0.6841" />
            <PreSize X="0.8844" Y="0.2281" />
            <FileData Type="Normal" Path="Resource/atlas/title.png" Plist="" />
            <BlendFunc Src="1" Dst="771" />
          </AbstractNodeData>
          <AbstractNodeData Name="Sprite_2" ActionTag="1812088235" Tag="8" IconVisible="False" LeftMargin="-175.9811" RightMargin="648.9811" TopMargin="373.3770" BottomMargin="502.6230" ctype="SpriteObjectData">
            <Size X="167.0000" Y="84.0000" />
            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
            <Position X="-92.4811" Y="544.6230" />
            <Scale ScaleX="1.0000" ScaleY="1.0000" />
            <CColor A="255" R="255" G="255" B="255" />
            <PrePosition X="-0.1445" Y="0.5673" />
            <PreSize X="0.2609" Y="0.0875" />
            <FileData Type="Normal" Path="Resource/atlas/plane-2.png" Plist="" />
            <BlendFunc Src="1" Dst="771" />
          </AbstractNodeData>
        </Children>
      </ObjectData>
    </Content>
  </Content>
</GameFile>