//========================================================================
// GLFW 3.1 - www.glfw.org
//------------------------------------------------------------------------
// Copyright (c) 2010 Camilla Berglund <elmindreda@elmindreda.org>
//
// This software is provided 'as-is', without any express or implied
// warranty. In no event will the authors be held liable for any damages
// arising from the use of this software.
//
// Permission is granted to anyone to use this software for any purpose,
// including commercial applications, and to alter it and redistribute it
// freely, subject to the following restrictions:
//
// 1. The origin of this software must not be misrepresented; you must not
//    claim that you wrote the original software. If you use this software
//    in a product, an acknowledgment in the product documentation would
//    be appreciated but is not required.
//
// 2. Altered source versions must be plainly marked as such, and must not
//    be misrepresented as being the original software.
//
// 3. This notice may not be removed or altered from any source
//    distribution.
//
//========================================================================
// As glfw_config.h.in, this file is used by CMake to produce the
// glfw_config.h configuration header file.  If you are adding a feature
// requiring conditional compilation, this is where to add the macro.
//========================================================================
// As glfw_config.h, this file defines compile-time option macros for a
// specific platform and development environment.  If you are using the
// GLFW CMake files, modify glfw_config.h.in instead of this file.  If you
// are using your own build system, make this file define the appropriate
// macros in whatever way is suitable.
//========================================================================

/*
// Define this to 1 if building GLFW for X11
#cmakedefine _GLFW_X11
// Define this to 1 if building GLFW for Win32
#cmakedefine _GLFW_WIN32
// Define this to 1 if building GLFW for Cocoa
#cmakedefine _GLFW_COCOA
// Define this to 1 if building GLFW for Wayland
#cmakedefine _GLFW_WAYLAND

// Define this to 1 if building GLFW for EGL
#cmakedefine _GLFW_EGL
// Define this to 1 if building GLFW for GLX
#cmakedefine _GLFW_GLX
// Define this to 1 if building GLFW for WGL
#cmakedefine _GLFW_WGL
// Define this to 1 if building GLFW for NSGL
#cmakedefine _GLFW_NSGL

// Define this to 1 if building as a shared library / dynamic library / DLL
#cmakedefine _GLFW_BUILD_DLL

// Define this to 1 if glfwSwapInterval should ignore DWM compositing status
#cmakedefine _GLFW_USE_DWM_SWAP_INTERVAL
// Define this to 1 to force use of high-performance GPU on Optimus systems
#cmakedefine _GLFW_USE_OPTIMUS_HPG

// Define this to 1 if glXGetProcAddress is available
#cmakedefine _GLFW_HAS_GLXGETPROCADDRESS
// Define this to 1 if glXGetProcAddressARB is available
#cmakedefine _GLFW_HAS_GLXGETPROCADDRESSARB
// Define this to 1 if glXGetProcAddressEXT is available
#cmakedefine _GLFW_HAS_GLXGETPROCADDRESSEXT
// Define this to 1 if dlopen is available
#cmakedefine _GLFW_HAS_DLOPEN

// Define this to 1 if glfwInit should change the current directory
#cmakedefine _GLFW_USE_CHDIR
// Define this to 1 if glfwCreateWindow should populate the menu bar
#cmakedefine _GLFW_USE_MENUBAR
// Define this to 1 if windows should use full resolution on Retina displays
#cmakedefine _GLFW_USE_RETINA

// Define this to 1 if using OpenGL as the client library
#cmakedefine _GLFW_USE_OPENGL
// Define this to 1 if using OpenGL ES 1.1 as the client library
#cmakedefine _GLFW_USE_GLESV1
// Define this to 1 if using OpenGL ES 2.0 as the client library
#cmakedefine _GLFW_USE_GLESV2
*/

#if _WIN32

#define _GLFW_WIN32 1
#define _GLFW_WGL 1

#elif __APPLE__

#define _GLFW_COCOA 1
#define _GLFW_NSGL 1

#else

#define _GLFW_X11 1
#define _GLFW_GLX 1
#define _GLFW_HAS_GLXGETPROCADDRESS 1

#endif

#define _GLFW_USE_CHDIR 1
#define _GLFW_USE_MENUBAR 1

#define _GLFW_USE_OPENGL 1
