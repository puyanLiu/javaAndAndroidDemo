.class public Lcom/taobao/gcanvas/GCanvasJNI;
.super Ljava/lang/Object;
.source "GCanvasJNI.java"


# static fields
.field public static GCanvaslibEnable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 60
    sput-boolean v2, Lcom/taobao/gcanvas/GCanvasJNI;->GCanvaslibEnable:Z

    .line 63
    const-string/jumbo v0, "CANVAS"

    const-string/jumbo v1, "System.loadLibrary BEFORE"

    invoke-static {v0, v1}, Lcom/taobao/gcanvas/GLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-static {v3}, Lcom/taobao/gcanvas/GUtil;->printMemoryInfo(Landroid/content/Context;)V

    .line 66
    sput-boolean v2, Lcom/taobao/gcanvas/GCanvasJNI;->GCanvaslibEnable:Z

    .line 68
    :try_start_0
    const-string/jumbo v0, "gcanvas"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 69
    const/4 v0, 0x1

    sput-boolean v0, Lcom/taobao/gcanvas/GCanvasJNI;->GCanvaslibEnable:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 78
    :goto_0
    :try_start_1
    const-string/jumbo v0, "gcPng"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 85
    :goto_1
    const-string/jumbo v0, "CANVAS"

    const-string/jumbo v1, "System.loadLibrary AFTER"

    invoke-static {v0, v1}, Lcom/taobao/gcanvas/GLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-static {v3}, Lcom/taobao/gcanvas/GUtil;->printMemoryInfo(Landroid/content/Context;)V

    .line 87
    return-void

    .line 71
    :catch_0
    move-exception v0

    const-string/jumbo v0, "CANVAS"

    const-string/jumbo v1, "gcanvas is not found."

    invoke-static {v0, v1}, Lcom/taobao/gcanvas/GLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :catch_1
    move-exception v0

    const-string/jumbo v0, "CANVAS"

    const-string/jumbo v1, "fail to load gcanvas."

    invoke-static {v0, v1}, Lcom/taobao/gcanvas/GLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :catch_2
    move-exception v0

    const-string/jumbo v0, "CANVAS"

    const-string/jumbo v1, "png optimization is not found."

    invoke-static {v0, v1}, Lcom/taobao/gcanvas/GLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 82
    :catch_3
    move-exception v0

    const-string/jumbo v0, "CANVAS"

    const-string/jumbo v1, "fail to load png optimization."

    invoke-static {v0, v1}, Lcom/taobao/gcanvas/GLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native addFontFamily([Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method public static native addPngTexture(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;ILcom/taobao/gcanvas/GCanvasTextureDimension;)Z
.end method

.method public static native addPngTextureByStream(Ljava/lang/String;[BILcom/taobao/gcanvas/GCanvasTextureDimension;)Z
.end method

.method public static native addTexture(Ljava/lang/String;IIII)V
.end method

.method public static native captureGLLayer(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;)V
.end method

.method public static native contextLost(Ljava/lang/String;)V
.end method

.method public static native freeCanvas(Ljava/lang/String;)V
.end method

.method public static native getAllParameter(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native getImageData(Ljava/lang/String;IIII)Ljava/lang/String;
.end method

.method public static native init()V
.end method

.method public static native isFboSupport(Ljava/lang/String;)Z
.end method

.method public static native isNeonSupport()Z
.end method

.method public static native newCanvas(Ljava/lang/String;I)V
.end method

.method public static native release()V
.end method

.method public static native removeTexture(Ljava/lang/String;I)V
.end method

.method public static native render(Lcom/taobao/gcanvas/GCanvasRenderer;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native setBackgroundColor(Ljava/lang/String;III)V
.end method

.method public static native setClearColor(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native setConfig(Ljava/lang/String;I)V
.end method

.method public static native setContextType(Ljava/lang/String;I)V
.end method

.method public static native setDevicePixelRatio(Ljava/lang/String;D)V
.end method

.method public static native setFallbackFont(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native setHiQuality(Ljava/lang/String;Z)V
.end method

.method public static native setLogLevel(Ljava/lang/String;)V
.end method

.method public static native setOrtho(Ljava/lang/String;II)V
.end method

.method public static native setPreCompilePath(Ljava/lang/String;)V
.end method

.method public static native setTyOffsetFlag(Ljava/lang/String;Z)V
.end method

.method public static native surfaceChanged(Ljava/lang/String;II)V
.end method

.method public static native uninit()V
.end method
