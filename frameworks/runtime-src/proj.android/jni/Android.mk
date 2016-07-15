LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := cocos2dlua_shared

LOCAL_MODULE_FILENAME := libcocos2dlua

LOCAL_SRC_FILES := \
../../Classes/quick-src/extra/luabinding/cocos2dx_extra_luabinding.cpp \
../../Classes/quick-src/extra/luabinding/HelperFunc_luabinding.cpp \
../../Classes/quick-src/extra/apptools/HelperFunc.cpp \
../../Classes/quick-src/extra/crypto/CCCrypto.cpp \
../../Classes/quick-src/extra/crypto/base64/libbase64.c \
../../Classes/quick-src/extra/network/CCNetwork.cpp \
../../Classes/quick-src/extra/platform/android/CCHTTPRequestAndroid.cpp \
../../Classes/quick-src/extra/platform/android/CCCryptoAndroid.cpp \
../../Classes/quick-src/extra/platform/android/CCNativeAndroid.cpp \
../../Classes/quick-src/extra/platform/android/CCNetworkAndroid.cpp \
../../Classes/quick-src/extra/luabinding/lua_cocos2dx_extension_filter_auto.cpp \
../../Classes/quick-src/extra/filters/filters/CCFilter.cpp \
../../Classes/quick-src/extra/filters/filters/CCBlurFilter.cpp \
../../Classes/quick-src/extra/filters/filters/CCBrightnessFilter.cpp \
../../Classes/quick-src/extra/filters/filters/CCContrastFilter.cpp \
../../Classes/quick-src/extra/filters/filters/CCDropShadowFilter.cpp \
../../Classes/quick-src/extra/filters/filters/CCExposureFilter.cpp \
../../Classes/quick-src/extra/filters/filters/CCGammaFilter.cpp \
../../Classes/quick-src/extra/filters/filters/CCGrayFilter.cpp \
../../Classes/quick-src/extra/filters/filters/CCHazeFilter.cpp \
../../Classes/quick-src/extra/filters/filters/CCHueFilter.cpp \
../../Classes/quick-src/extra/filters/filters/CCMaskFilter.cpp \
../../Classes/quick-src/extra/filters/filters/CCRGBFilter.cpp \
../../Classes/quick-src/extra/filters/filters/CCSaturationFilter.cpp \
../../Classes/quick-src/extra/filters/filters/CCSepiaFilter.cpp \
../../Classes/quick-src/extra/filters/filters/CCSharpenFilter.cpp \
../../Classes/quick-src/extra/filters/filters/CCTestFilter.cpp \
../../Classes/quick-src/extra/filters/filters/CCCustomFilter.cpp \
../../Classes/quick-src/extra/filters/nodes/CCFilteredSprite.cpp \
../../Classes/quick-src/extra/filters/shaders/ccFilterShaders.cpp \
../../Classes/quick-src/lua_extensions/lua_extensions_more.c \
../../Classes/quick-src/lua_extensions/zlib/lua_zlib.c \
../../Classes/quick-src/lua_extensions/filesystem/lfs.c \
../../Classes/quick-src/lua_extensions/lpack/lpack.c \
../../Classes/quick-src/cjson/fpconv.c \
../../Classes/quick-src/cjson/lua_cjson.c \
../../Classes/quick-src/cjson/strbuf.c \
../../Classes/quick-src/lsqlite3/sqlite3.c \
../../Classes/quick-src/lsqlite3/lsqlite3.c \
../../Classes/dnp/DNPParticleSystemFrameQuad.cpp \
../../Classes/dnp/DNPDeviceUtils.cpp \
../../Classes/dnp/flurry/DNPAnalyticX.cpp \
../../Classes/dnp/flurry/AnalyticXStringUtilAndroid.cpp \
../../Classes/dnp/lua_cocos2dx_dnp_auto.cpp \
../../Classes/dnp/shader/ensMath.cpp \
../../Classes/dnp/shader/ensSimpleClasses.cpp \
../../Classes/dnp/shader/ensIndexVBO.cpp \
../../Classes/dnp/shader/ensMesh.cpp \
../../Classes/dnp/shader/ensGLProgramWithUnifos.cpp \
../../Classes/dnp/shader/GhostSprite.cpp \
../../Classes/dnp/shader/ShatterSprite.cpp \
../../Classes/dnp/shader/LightningSprite.cpp \
../../Classes/dnp/shader/RippleSprite.cpp \
../../Classes/dnp/shader/LaserSprite.cpp \
../../Classes/dnp/shader/TailSprite.cpp \
../../Classes/dnp/shader/ColorAdjustSprite.cpp \
../../Classes/dnp/shader/lua_cocos2dx_dnp_shader_auto.cpp \
../../Classes/AppDelegate.cpp \
../../Classes/ide-support/SimpleConfigParser.cpp \
../../Classes/ide-support/RuntimeLuaImpl.cpp \
../../Classes/ide-support/lua_debugger.c \
hellolua/main.cpp

LOCAL_C_INCLUDES := \
$(LOCAL_PATH)/../../../cocos2d-x/extensions \
$(LOCAL_PATH)/../../Classes/quick-src/lua_extensions \
$(LOCAL_PATH)/../../Classes/quick-src/extra/crypto \
$(LOCAL_PATH)/../../Classes/quick-src/extra/filters \
$(LOCAL_PATH)/../../Classes/quick-src/extra/luabingding \
$(LOCAL_PATH)/../../Classes/quick-src/extra/platform/android/ \
$(LOCAL_PATH)/../../Classes/quick-src/extra \
$(LOCAL_PATH)/../../Classes/quick-src \
$(LOCAL_PATH)/../../Classes 

LOCAL_CFLAGS := -Wno-psabi -DUSE_FILE32API -DCC_LUA_ENGINE_ENABLED=1 $(ANDROID_COCOS2D_BUILD_FLAGS)
LOCAL_EXPORT_CFLAGS := -Wno-psabi -DUSE_FILE32API -DCC_LUA_ENGINE_ENABLED=1

# _COCOS_HEADER_ANDROID_BEGIN
# _COCOS_HEADER_ANDROID_END

LOCAL_STATIC_LIBRARIES := cocos2d_lua_static
LOCAL_STATIC_LIBRARIES += cocos2d_simulator_static

# _COCOS_LIB_ANDROID_BEGIN
# _COCOS_LIB_ANDROID_END

include $(BUILD_SHARED_LIBRARY)

$(call import-module,scripting/lua-bindings/proj.android)
$(call import-module,tools/simulator/libsimulator/proj.android)

# _COCOS_LIB_IMPORT_ANDROID_BEGIN
# _COCOS_LIB_IMPORT_ANDROID_END
