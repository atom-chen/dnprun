<GameFile>
  <PropertyGroup Name="node_bottom" Type="Node" ID="0fd2418c-8e49-4ab3-a802-b30c51afff3d" Version="3.10.0.0" />
  <Content ctype="GameProjectContent">
    <Content>
      <Animation Duration="30" Speed="1.0000">
        <Timeline ActionTag="1569246646" Property="Position">
          <PointFrame FrameIndex="0" X="325.0321" Y="-100.0000">
            <EasingData Type="5" />
          </PointFrame>
          <PointFrame FrameIndex="30" X="325.0321" Y="60.0000">
            <EasingData Type="6" />
          </PointFrame>
        </Timeline>
        <Timeline ActionTag="1569246646" Property="Scale">
          <ScaleFrame FrameIndex="0" X="0.8000" Y="0.8000">
            <EasingData Type="4" />
          </ScaleFrame>
          <ScaleFrame FrameIndex="5" X="0.8333" Y="0.8333">
            <EasingData Type="0" />
          </ScaleFrame>
          <ScaleFrame FrameIndex="30" X="1.0000" Y="1.0000">
            <EasingData Type="7" />
          </ScaleFrame>
        </Timeline>
        <Timeline ActionTag="1569246646" Property="RotationSkew">
          <ScaleFrame FrameIndex="0" X="0.0000" Y="0.0000">
            <EasingData Type="0" />
          </ScaleFrame>
          <ScaleFrame FrameIndex="30" X="0.0000" Y="0.0000">
            <EasingData Type="0" />
          </ScaleFrame>
        </Timeline>
        <Timeline ActionTag="1569246646" Property="Alpha">
          <IntFrame FrameIndex="0" Value="86">
            <EasingData Type="0" />
          </IntFrame>
          <IntFrame FrameIndex="30" Value="255">
            <EasingData Type="0" />
          </IntFrame>
        </Timeline>
        <Timeline ActionTag="1569246646" Property="VisibleForFrame">
          <BoolFrame FrameIndex="0" Tween="False" Value="False" />
          <BoolFrame FrameIndex="5" Tween="False" Value="True" />
        </Timeline>
        <Timeline ActionTag="1569246646" Property="FrameEvent">
          <EventFrame FrameIndex="5" Tween="False" Value="start1" />
          <EventFrame FrameIndex="29" Tween="False" Value="" />
          <EventFrame FrameIndex="30" Tween="False" Value="startend" />
        </Timeline>
      </Animation>
      <AnimationList>
        <AnimationInfo Name="enter" StartIndex="0" EndIndex="30">
          <RenderColor A="255" R="255" G="222" B="173" />
        </AnimationInfo>
      </AnimationList>
      <ObjectData Name="Node" Tag="37" ctype="GameNodeObjectData">
        <Size X="0.0000" Y="0.0000" />
        <Children>
          <AbstractNodeData Name="Panel_1" ActionTag="1510809578" Tag="38" IconVisible="False" LeftMargin="-320.0000" RightMargin="-320.0000" TopMargin="-200.0000" ClipAble="False" BackColorAlpha="0" ComboBoxIndex="1" ColorAngle="90.0000" Scale9Width="1" Scale9Height="1" ctype="PanelObjectData">
            <Size X="640.0000" Y="200.0000" />
            <Children>
              <AbstractNodeData Name="bottom_1" ActionTag="1569246646" VisibleForFrame="False" Alpha="86" Tag="39" IconVisible="False" LeftMargin="-34.9679" RightMargin="-45.0321" TopMargin="191.5000" BottomMargin="-208.5000" ctype="SpriteObjectData">
                <Size X="720.0000" Y="217.0000" />
                <Children>
                  <AbstractNodeData Name="Button_1" ActionTag="423364542" CallBackType="Click" CallBackName="onStarClick" Tag="25" IconVisible="False" LeftMargin="274.3252" RightMargin="280.6748" TopMargin="-106.8831" BottomMargin="237.8831" TouchEnable="True" FontSize="24" ButtonText="点我开始" Scale9Enable="True" LeftEage="15" RightEage="15" TopEage="11" BottomEage="11" Scale9OriginX="15" Scale9OriginY="11" Scale9Width="135" Scale9Height="64" ShadowOffsetX="2.0000" ShadowOffsetY="-2.0000" ctype="ButtonObjectData">
                    <Size X="165.0000" Y="86.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="356.8252" Y="280.8831" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.4956" Y="1.2944" />
                    <PreSize X="0.2292" Y="0.3963" />
                    <FontResource Type="Normal" Path="Resource/font/FZY4K.ttf" Plist="" />
                    <TextColor A="255" R="0" G="128" B="0" />
                    <DisabledFileData Type="PlistSubImage" Path="btn-165-86-1.png" Plist="Resource/atlas/common.plist" />
                    <PressedFileData Type="PlistSubImage" Path="btn-165-86-2.png" Plist="Resource/atlas/common.plist" />
                    <NormalFileData Type="PlistSubImage" Path="btn-165-86-3.png" Plist="Resource/atlas/common.plist" />
                    <OutlineColor A="255" R="255" G="0" B="0" />
                    <ShadowColor A="255" R="110" G="110" B="110" />
                  </AbstractNodeData>
                </Children>
                <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                <Position X="325.0321" Y="-100.0000" />
                <Scale ScaleX="0.8000" ScaleY="0.8000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.5079" Y="-0.5000" />
                <PreSize X="1.1250" Y="1.0850" />
                <FileData Type="Normal" Path="Resource/atlas/bottom.png" Plist="" />
                <BlendFunc Src="1" Dst="771" />
              </AbstractNodeData>
            </Children>
            <AnchorPoint ScaleX="0.5000" />
            <Position />
            <Scale ScaleX="1.0000" ScaleY="1.0000" />
            <CColor A="255" R="255" G="255" B="255" />
            <PrePosition />
            <PreSize X="0.0000" Y="0.0000" />
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