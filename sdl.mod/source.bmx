SuperStrict

' common source
Import "SDL/src/atomic/SDL_atomic.c"
Import "SDL/src/atomic/SDL_spinlock.c"
Import "SDL/src/audio/disk/SDL_diskaudio.c"
Import "SDL/src/audio/dummy/SDL_dummyaudio.c"
Import "SDL/src/audio/SDL_audio.c"
Import "SDL/src/audio/SDL_audiocvt.c"
Import "SDL/src/audio/SDL_audiotypecvt.c"
Import "SDL/src/audio/SDL_mixer.c"
Import "SDL/src/audio/SDL_wave.c"
Import "SDL/src/cpuinfo/SDL_cpuinfo.c"
Import "SDL/src/dynapi/SDL_dynapi.c"
Import "SDL/src/events/SDL_clipboardevents.c"
Import "SDL/src/events/SDL_dropevents.c"
Import "SDL/src/events/SDL_events.c"
Import "SDL/src/events/SDL_gesture.c"
Import "SDL/src/events/SDL_keyboard.c"
Import "SDL/src/events/SDL_mouse.c"
Import "SDL/src/events/SDL_quit.c"
Import "SDL/src/events/SDL_touch.c"
Import "SDL/src/events/SDL_windowevents.c"
Import "SDL/src/file/SDL_rwops.c"
Import "SDL/src/haptic/SDL_haptic.c"
Import "SDL/src/joystick/SDL_gamecontroller.c"
Import "SDL/src/joystick/SDL_joystick.c"
Import "SDL/src/joystick/hidapi/SDL_hidapi_ps4.c"
Import "SDL/src/joystick/hidapi/SDL_hidapi_switch.c"
Import "SDL/src/joystick/hidapi/SDL_hidapi_xbox360.c"
Import "SDL/src/joystick/hidapi/SDL_hidapijoystick.c"
Import "SDL/src/power/SDL_power.c"
Import "SDL/src/render/SDL_render.c"
Import "SDL/src/render/SDL_yuv_sw.c"
Import "SDL/src/render/software/SDL_blendfillrect.c"
Import "SDL/src/render/software/SDL_blendline.c"
Import "SDL/src/render/software/SDL_blendpoint.c"
Import "SDL/src/render/software/SDL_drawline.c"
Import "SDL/src/render/software/SDL_drawpoint.c"
Import "SDL/src/render/software/SDL_render_sw.c"
Import "SDL/src/render/software/SDL_rotate.c"
Import "SDL/src/SDL_assert.c"
Import "SDL/src/SDL_dataqueue.c"
Import "SDL/src/SDL_error.c"
Import "SDL/src/SDL_hints.c"
Import "SDL/src/SDL_log.c"
Import "SDL/src/SDL.c"
Import "SDL/src/sensor/SDL_sensor.c"
Import "SDL/src/stdlib/SDL_getenv.c"
Import "SDL/src/stdlib/SDL_iconv.c"
Import "SDL/src/stdlib/SDL_malloc.c"
Import "SDL/src/stdlib/SDL_qsort.c"
Import "SDL/src/stdlib/SDL_stdlib.c"
Import "SDL/src/stdlib/SDL_string.c"
Import "SDL/src/thread/SDL_thread.c"
Import "SDL/src/timer/SDL_timer.c"
Import "SDL/src/video/dummy/SDL_nullevents.c"
Import "SDL/src/video/dummy/SDL_nullframebuffer.c"
Import "SDL/src/video/dummy/SDL_nullvideo.c"
Import "SDL/src/video/SDL_blit_0.c"
Import "SDL/src/video/SDL_blit_1.c"
Import "SDL/src/video/SDL_blit_A.c"
Import "SDL/src/video/SDL_blit_auto.c"
Import "SDL/src/video/SDL_blit_copy.c"
Import "SDL/src/video/SDL_blit_N.c"
Import "SDL/src/video/SDL_blit_slow.c"
Import "SDL/src/video/SDL_blit.c"
Import "SDL/src/video/SDL_bmp.c"
Import "SDL/src/video/SDL_clipboard.c"
Import "SDL/src/video/SDL_fillrect.c"
Import "SDL/src/video/SDL_pixels.c"
Import "SDL/src/video/SDL_rect.c"
Import "SDL/src/video/SDL_RLEaccel.c"
Import "SDL/src/video/SDL_shape.c"
Import "SDL/src/video/SDL_stretch.c"
Import "SDL/src/video/SDL_surface.c"
Import "SDL/src/video/SDL_video.c"
Import "SDL/src/video/SDL_yuv.c"
Import "SDL/src/video/yuv2rgb/yuv_rgb.c"


' target specific
?android
Import "SDL/src/audio/android/SDL_androidaudio.c"
Import "SDL/src/core/android/SDL_android.c"
Import "SDL/src/filesystem/android/SDL_sysfilesystem.c"
Import "SDL/src/hidapi/android/hid.cpp"
Import "SDL/src/joystick/android/SDL_sysjoystick.c"
Import "SDL/src/loadso/dlopen/SDL_sysloadso.c"
Import "SDL/src/main/android/SDL_android_main.c"
Import "SDL/src/power/android/SDL_syspower.c"
Import "SDL/src/render/opengles/SDL_render_gles.c"
Import "SDL/src/render/opengles2/SDL_render_gles2.c"
Import "SDL/src/render/opengles2/SDL_shaders_gles2.c"
Import "SDL/src/sensor/android/SDL_androidsensor.c"
Import "SDL/src/thread/pthread/SDL_syscond.c"
Import "SDL/src/thread/pthread/SDL_sysmutex.c"
Import "SDL/src/thread/pthread/SDL_syssem.c"
Import "SDL/src/thread/pthread/SDL_systhread.c"
Import "SDL/src/thread/pthread/SDL_systls.c"
Import "SDL/src/timer/unix/SDL_systimer.c"
Import "SDL/src/video/android/SDL_androidclipboard.c"
Import "SDL/src/video/android/SDL_androidevents.c"
Import "SDL/src/video/android/SDL_androidgl.c"
Import "SDL/src/video/android/SDL_androidkeyboard.c"
Import "SDL/src/video/android/SDL_androidmessagebox.c"
Import "SDL/src/video/android/SDL_androidmouse.c"
Import "SDL/src/video/android/SDL_androidtouch.c"
Import "SDL/src/video/android/SDL_androidvideo.c"
Import "SDL/src/video/android/SDL_androidwindow.c"


Extern
	Function Java_org_libsdl_app_SDLActivity_nativeInit:Int(env:Byte Ptr, class:Byte Ptr, array:Byte Ptr)
End Extern

Private
Function _dummy()
	Java_org_libsdl_app_SDLActivity_nativeInit(Null, Null, Null)
End Function
?

?emscripten

Import "SDL/src/SDL.c"
Import "SDL/src/SDL_assert.c"
Import "SDL/src/SDL_error.c"
Import "SDL/src/SDL_hints.c"
Import "SDL/src/SDL_log.c"
Import "SDL/src/atomic/SDL_atomic.c"
Import "SDL/src/atomic/SDL_spinlock.c"
Import "SDL/src/audio/SDL_audio.c"
Import "SDL/src/audio/SDL_audiocvt.c"
Import "SDL/src/audio/SDL_audiodev.c"
Import "SDL/src/audio/SDL_audiotypecvt.c"
Import "SDL/src/audio/SDL_mixer.c"
Import "SDL/src/audio/SDL_wave.c"
Import "SDL/src/cpuinfo/SDL_cpuinfo.c"
Import "SDL/src/dynapi/SDL_dynapi.c"
Import "SDL/src/events/SDL_clipboardevents.c"
Import "SDL/src/events/SDL_dropevents.c"
Import "SDL/src/events/SDL_events.c"
Import "SDL/src/events/SDL_gesture.c"
Import "SDL/src/events/SDL_keyboard.c"
Import "SDL/src/events/SDL_mouse.c"
Import "SDL/src/events/SDL_quit.c"
Import "SDL/src/events/SDL_touch.c"
Import "SDL/src/events/SDL_windowevents.c"
Import "SDL/src/file/SDL_rwops.c"
Import "SDL/src/haptic/SDL_haptic.c"
Import "SDL/src/joystick/SDL_gamecontroller.c"
Import "SDL/src/joystick/SDL_joystick.c"
Import "SDL/src/libm/e_atan2.c"
Import "SDL/src/libm/e_log.c"
Import "SDL/src/libm/e_pow.c"
Import "SDL/src/libm/e_rem_pio2.c"
Import "SDL/src/libm/e_sqrt.c"
Import "SDL/src/libm/k_cos.c"
Import "SDL/src/libm/k_rem_pio2.c"
Import "SDL/src/libm/k_sin.c"
Import "SDL/src/libm/k_tan.c"
Import "SDL/src/libm/s_atan.c"
Import "SDL/src/libm/s_copysign.c"
Import "SDL/src/libm/s_cos.c"
Import "SDL/src/libm/s_fabs.c"
Import "SDL/src/libm/s_floor.c"
Import "SDL/src/libm/s_scalbn.c"
Import "SDL/src/libm/s_sin.c"
Import "SDL/src/libm/s_tan.c"
Import "SDL/src/power/SDL_power.c"
Import "SDL/src/render/SDL_d3dmath.c"
Import "SDL/src/render/SDL_render.c"
Import "SDL/src/render/SDL_yuv_mmx.c"
Import "SDL/src/render/SDL_yuv_sw.c"
Import "SDL/src/render/direct3d/SDL_render_d3d.c"
Import "SDL/src/render/direct3d11/SDL_render_d3d11.c"
Import "SDL/src/render/opengl/SDL_render_gl.c"
Import "SDL/src/render/opengl/SDL_shaders_gl.c"
Import "SDL/src/render/opengles/SDL_render_gles.c"
Import "SDL/src/render/opengles2/SDL_render_gles2.c"
Import "SDL/src/render/opengles2/SDL_shaders_gles2.c"
Import "SDL/src/render/psp/SDL_render_psp.c"
Import "SDL/src/render/software/SDL_blendfillrect.c"
Import "SDL/src/render/software/SDL_blendline.c"
Import "SDL/src/render/software/SDL_blendpoint.c"
Import "SDL/src/render/software/SDL_drawline.c"
Import "SDL/src/render/software/SDL_drawpoint.c"
Import "SDL/src/render/software/SDL_render_sw.c"
Import "SDL/src/render/software/SDL_rotate.c"
Import "SDL/src/stdlib/SDL_getenv.c"
Import "SDL/src/stdlib/SDL_iconv.c"
Import "SDL/src/stdlib/SDL_malloc.c"
Import "SDL/src/stdlib/SDL_qsort.c"
Import "SDL/src/stdlib/SDL_stdlib.c"
Import "SDL/src/stdlib/SDL_string.c"
Import "SDL/src/thread/SDL_thread.c"
Import "SDL/src/timer/SDL_timer.c"
Import "SDL/src/video/SDL_RLEaccel.c"
Import "SDL/src/video/SDL_blit.c"
Import "SDL/src/video/SDL_blit_0.c"
Import "SDL/src/video/SDL_blit_1.c"
Import "SDL/src/video/SDL_blit_A.c"
Import "SDL/src/video/SDL_blit_N.c"
Import "SDL/src/video/SDL_blit_auto.c"
Import "SDL/src/video/SDL_blit_copy.c"
Import "SDL/src/video/SDL_blit_slow.c"
Import "SDL/src/video/SDL_bmp.c"
Import "SDL/src/video/SDL_clipboard.c"
Import "SDL/src/video/SDL_egl.c"
Import "SDL/src/video/SDL_fillrect.c"
Import "SDL/src/video/SDL_pixels.c"
Import "SDL/src/video/SDL_rect.c"
Import "SDL/src/video/SDL_shape.c"
Import "SDL/src/video/SDL_stretch.c"
Import "SDL/src/video/SDL_surface.c"
Import "SDL/src/video/SDL_video.c"
Import "SDL/src/video/emscripten/SDL_emscriptenevents.c"
Import "SDL/src/video/emscripten/SDL_emscriptenframebuffer.c"
Import "SDL/src/video/emscripten/SDL_emscriptenmouse.c"
Import "SDL/src/video/emscripten/SDL_emscriptenopengles.c"
Import "SDL/src/video/emscripten/SDL_emscriptenvideo.c"
Import "SDL/src/audio/emscripten/SDL_emscriptenaudio.c"
Import "SDL/src/video/dummy/SDL_nullevents.c"
Import "SDL/src/video/dummy/SDL_nullframebuffer.c"
Import "SDL/src/video/dummy/SDL_nullvideo.c"
Import "SDL/src/audio/disk/SDL_diskaudio.c"
Import "SDL/src/audio/dummy/SDL_dummyaudio.c"
Import "SDL/src/loadso/dlopen/SDL_sysloadso.c"
Import "SDL/src/power/emscripten/SDL_syspower.c"
Import "SDL/src/joystick/emscripten/SDL_sysjoystick.c"
Import "SDL/src/filesystem/emscripten/SDL_sysfilesystem.c"
Import "SDL/src/timer/unix/SDL_systimer.c"
Import "SDL/src/haptic/dummy/SDL_syshaptic.c"
Import "SDL/src/thread/generic/SDL_syscond.c"
Import "SDL/src/thread/generic/SDL_sysmutex.c"
Import "SDL/src/thread/generic/SDL_syssem.c"
Import "SDL/src/thread/generic/SDL_systhread.c"
Import "SDL/src/thread/generic/SDL_systls.c"

?ios

Import "SDL/src/audio/coreaudio/SDL_coreaudio.c"
Import "SDL/src/file/cocoa/SDL_rwopsbundlesupport.m"
Import "SDL/src/filesystem/cocoa/SDL_sysfilesystem.m"
Import "SDL/src/hidapi/ios/hid.m"
Import "SDL/src/joystick/iphoneos/SDL_sysjoystick.m"
Import "SDL/src/loadso/dummy/SDL_sysloadso.c"
Import "SDL/src/power/uikit/SDL_syspower.m"
Import "SDL/src/render/opengles/SDL_render_gles.c"
Import "SDL/src/render/opengles2/SDL_render_gles2.c"
Import "SDL/src/render/opengles2/SDL_shaders_gles2.c"
Import "SDL/src/sensor/coremotion/SDL_coremotionsensor.m"
Import "SDL/src/thread/pthread/SDL_syscond.c"
Import "SDL/src/thread/pthread/SDL_sysmutex.c"
Import "SDL/src/thread/pthread/SDL_syssem.c"
Import "SDL/src/thread/pthread/SDL_systhread.c"
Import "SDL/src/thread/pthread/SDL_systls.c"
Import "SDL/src/timer/unix/SDL_systimer.c"

Import "SDL/src/video/uikit/SDL_uikitappdelegate.m"
Import "SDL/src/video/uikit/SDL_uikitevents.m"
Import "SDL/src/video/uikit/SDL_uikitmessagebox.m"
Import "SDL/src/video/uikit/SDL_uikitmodes.m"
Import "SDL/src/video/uikit/SDL_uikitopengles.m"
Import "SDL/src/video/uikit/SDL_uikitopenglview.m"
Import "SDL/src/video/uikit/SDL_uikitvideo.m"
Import "SDL/src/video/uikit/SDL_uikitview.m"
Import "SDL/src/video/uikit/SDL_uikitviewcontroller.m"
Import "SDL/src/video/uikit/SDL_uikitwindow.m"

?osx

Import "SDL/src/hidapi/hidapi/*.h"
Import "SDL/src/audio/coreaudio/SDL_coreaudio.m"
Import "SDL/src/file/cocoa/SDL_rwopsbundlesupport.m"
Import "SDL/src/filesystem/cocoa/SDL_sysfilesystem.m"
Import "SDL/src/haptic/darwin/SDL_syshaptic.c"
Import "SDL/src/hidapi/mac/hid.c"
Import "SDL/src/joystick/darwin/SDL_sysjoystick.c"
Import "SDL/src/loadso/dlopen/SDL_sysloadso.c"
Import "SDL/src/power/macosx/SDL_syspower.c"
Import "SDL/src/render/metal/SDL_render_metal.m"
Import "SDL/src/render/opengl/SDL_render_gl.c"
Import "SDL/src/render/opengl/SDL_shaders_gl.c"
Import "SDL/src/sensor/dummy/SDL_dummysensor.c"
Import "SDL/src/thread/pthread/SDL_syscond.c"
Import "SDL/src/thread/pthread/SDL_sysmutex.c"
Import "SDL/src/thread/pthread/SDL_syssem.c"
Import "SDL/src/thread/pthread/SDL_systhread.c"
Import "SDL/src/thread/pthread/SDL_systls.c"
Import "SDL/src/timer/unix/SDL_systimer.c"
Import "SDL/src/video/cocoa/SDL_cocoaclipboard.m"
Import "SDL/src/video/cocoa/SDL_cocoaevents.m"
Import "SDL/src/video/cocoa/SDL_cocoakeyboard.m"
Import "SDL/src/video/cocoa/SDL_cocoamessagebox.m"
Import "SDL/src/video/cocoa/SDL_cocoametalview.m"
Import "SDL/src/video/cocoa/SDL_cocoamodes.m"
Import "SDL/src/video/cocoa/SDL_cocoamouse.m"
Import "SDL/src/video/cocoa/SDL_cocoamousetap.m"
Import "SDL/src/video/cocoa/SDL_cocoaopengl.m"
Import "SDL/src/video/cocoa/SDL_cocoaopengles.m"
Import "SDL/src/video/cocoa/SDL_cocoashape.m"
Import "SDL/src/video/cocoa/SDL_cocoavideo.m"
Import "SDL/src/video/cocoa/SDL_cocoawindow.m"

?Not android
 ' linux desktop + raspberrypi
Import "linux_source.bmx"
?win32

Import "SDL/src/audio/directsound/SDL_directsound.c"
Import "SDL/src/audio/wasapi/SDL_wasapi.c"
Import "SDL/src/audio/wasapi/SDL_wasapi_win32.c"
Import "SDL/src/audio/winmm/SDL_winmm.c"
Import "SDL/src/core/windows/SDL_windows.c"
Import "SDL/src/core/windows/SDL_xinput.c"
Import "SDL/src/filesystem/windows/SDL_sysfilesystem.c"
Import "SDL/src/haptic/windows/SDL_dinputhaptic.c"
Import "SDL/src/haptic/windows/SDL_windowshaptic.c"
Import "SDL/src/haptic/windows/SDL_xinputhaptic.c"
Import "SDL/src/hidapi/windows/hid.c"
Import "SDL/src/joystick/windows/SDL_dinputjoystick.c"
Import "SDL/src/joystick/windows/SDL_mmjoystick.c"
Import "SDL/src/joystick/windows/SDL_windowsjoystick.c"
Import "SDL/src/joystick/windows/SDL_xinputjoystick.c"
Import "SDL/src/loadso/windows/SDL_sysloadso.c"
Import "SDL/src/power/windows/SDL_syspower.c"
Import "SDL/src/render/SDL_d3dmath.c"
Import "SDL/src/render/direct3d/SDL_render_d3d.c"
Import "SDL/src/render/direct3d/SDL_shaders_d3d.c"
Import "SDL/src/render/opengl/SDL_render_gl.c"
Import "SDL/src/render/opengl/SDL_shaders_gl.c"
Import "SDL/src/sensor/dummy/SDL_dummysensor.c"
Import "SDL/src/thread/generic/SDL_syscond.c"
Import "SDL/src/thread/windows/SDL_sysmutex.c"
Import "SDL/src/thread/windows/SDL_syssem.c"
Import "SDL/src/thread/windows/SDL_systhread.c"
Import "SDL/src/thread/windows/SDL_systls.c"
Import "SDL/src/timer/windows/SDL_systimer.c"
Import "SDL/src/video/windows/SDL_windowsclipboard.c"
Import "SDL/src/video/windows/SDL_windowsmodes.c"
Import "SDL/src/video/windows/SDL_windowsvideo.c"
Import "SDL/src/video/windows/SDL_windowsevents.c"
Import "SDL/src/video/windows/SDL_windowsmouse.c"
Import "SDL/src/video/windows/SDL_windowsvulkan.c"
Import "SDL/src/video/windows/SDL_windowsframebuffer.c"
Import "SDL/src/video/windows/SDL_windowsopengl.c"
Import "SDL/src/video/windows/SDL_windowswindow.c"
Import "SDL/src/video/windows/SDL_windowskeyboard.c"
Import "SDL/src/video/windows/SDL_windowsmessagebox.c"
Import "SDL/src/video/windows/SDL_windowsshape.c"
Import "SDL/src/video/SDL_vulkan_utils.c"
?
Import "SDL/src/libm/e_atan2.c"
Import "SDL/src/libm/e_pow.c"
Import "SDL/src/libm/k_cos.c"
Import "SDL/src/libm/k_tan.c"
Import "SDL/src/libm/s_cos.c"
Import "SDL/src/libm/s_scalbn.c"
Import "SDL/src/libm/e_fmod.c"
Import "SDL/src/libm/e_rem_pio2.c"
Import "SDL/src/libm/k_rem_pio2.c"
Import "SDL/src/libm/s_atan.c"
Import "SDL/src/libm/s_fabs.c"
Import "SDL/src/libm/s_sin.c"
Import "SDL/src/libm/e_log.c"
Import "SDL/src/libm/e_sqrt.c"
Import "SDL/src/libm/k_sin.c"
Import "SDL/src/libm/s_copysign.c"
Import "SDL/src/libm/s_floor.c"
Import "SDL/src/libm/s_tan.c"
Import "SDL/src/libm/e_exp.c"
Import "SDL/src/libm/e_log10.c"





