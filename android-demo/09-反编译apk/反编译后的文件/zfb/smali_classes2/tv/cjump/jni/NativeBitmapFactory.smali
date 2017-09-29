.class public Ltv/cjump/jni/NativeBitmapFactory;
.super Ljava/lang/Object;
.source "NativeBitmapFactory.java"


# static fields
.field public static final TAG:Ljava/lang/String;

.field static nativeIntField:Ljava/lang/reflect/Field;

.field static nativeLibLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Danmaku_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Ltv/cjump/jni/NativeBitmapFactory;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltv/cjump/jni/NativeBitmapFactory;->TAG:Ljava/lang/String;

    .line 17
    const/4 v0, 0x0

    sput-object v0, Ltv/cjump/jni/NativeBitmapFactory;->nativeIntField:Ljava/lang/reflect/Field;

    .line 19
    const/4 v0, 0x0

    sput-boolean v0, Ltv/cjump/jni/NativeBitmapFactory;->nativeLibLoaded:Z

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native createBitmap(IIIZ)Landroid/graphics/Bitmap;
.end method

.method public static createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 143
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p2, v0}, Landroid/graphics/Bitmap$Config;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {p0, p1, p2, v0}, Ltv/cjump/jni/NativeBitmapFactory;->createBitmap(IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createBitmap(IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 151
    sget-boolean v0, Ltv/cjump/jni/NativeBitmapFactory;->nativeLibLoaded:Z

    if-eqz v0, :cond_0

    sget-object v0, Ltv/cjump/jni/NativeBitmapFactory;->nativeIntField:Ljava/lang/reflect/Field;

    if-nez v0, :cond_1

    .line 153
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 155
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p1, p2, p3}, Ltv/cjump/jni/NativeBitmapFactory;->createNativeBitmap(IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private static native createBitmap19(IIIZ)Landroid/graphics/Bitmap;
.end method

.method private static createNativeBitmap(IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 159
    invoke-static {p2}, Ltv/cjump/jni/NativeBitmapFactory;->getNativeConfig(Landroid/graphics/Bitmap$Config;)I

    move-result v0

    .line 160
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ne v1, v2, :cond_0

    invoke-static {p0, p1, v0, p3}, Ltv/cjump/jni/NativeBitmapFactory;->createBitmap19(IIIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    .line 161
    :cond_0
    invoke-static {p0, p1, v0, p3}, Ltv/cjump/jni/NativeBitmapFactory;->createBitmap(IIIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static getNativeConfig(Landroid/graphics/Bitmap$Config;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 130
    :try_start_0
    sget-object v1, Ltv/cjump/jni/NativeBitmapFactory;->nativeIntField:Ljava/lang/reflect/Field;

    if-nez v1, :cond_0

    .line 139
    :goto_0
    return v0

    .line 133
    :cond_0
    sget-object v1, Ltv/cjump/jni/NativeBitmapFactory;->nativeIntField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    goto :goto_0

    .line 134
    :catch_0
    move-exception v1

    .line 135
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Ltv/cjump/jni/NativeBitmapFactory;->TAG:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 136
    :catch_1
    move-exception v1

    .line 137
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Ltv/cjump/jni/NativeBitmapFactory;->TAG:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static native init()Z
.end method

.method static initField()V
    .locals 3

    .prologue
    .line 80
    :try_start_0
    const-class v0, Landroid/graphics/Bitmap$Config;

    const-string/jumbo v1, "nativeInt"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 81
    sput-object v0, Ltv/cjump/jni/NativeBitmapFactory;->nativeIntField:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v0

    .line 83
    const/4 v1, 0x0

    sput-object v1, Ltv/cjump/jni/NativeBitmapFactory;->nativeIntField:Ljava/lang/reflect/Field;

    .line 84
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Ltv/cjump/jni/NativeBitmapFactory;->TAG:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static isInNativeAlloc()Z
    .locals 2

    .prologue
    .line 22
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    sget-boolean v0, Ltv/cjump/jni/NativeBitmapFactory;->nativeLibLoaded:Z

    if-eqz v0, :cond_0

    sget-object v0, Ltv/cjump/jni/NativeBitmapFactory;->nativeIntField:Ljava/lang/reflect/Field;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static loadLibs()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 26
    invoke-static {}, Ltv/cjump/jni/DeviceUtils;->isRealARMArch()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Ltv/cjump/jni/DeviceUtils;->isRealX86Arch()Z

    move-result v0

    if-nez v0, :cond_1

    .line 27
    sput-boolean v4, Ltv/cjump/jni/NativeBitmapFactory;->nativeLibLoaded:Z

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 30
    :cond_1
    sget-boolean v0, Ltv/cjump/jni/NativeBitmapFactory;->nativeLibLoaded:Z

    if-nez v0, :cond_0

    .line 34
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_2

    .line 35
    const-string/jumbo v0, "ndkbitmap"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 36
    const/4 v0, 0x1

    sput-boolean v0, Ltv/cjump/jni/NativeBitmapFactory;->nativeLibLoaded:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 47
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Ltv/cjump/jni/NativeBitmapFactory;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "libndkbitmap.so loaded: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Ltv/cjump/jni/NativeBitmapFactory;->nativeLibLoaded:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    sget-boolean v0, Ltv/cjump/jni/NativeBitmapFactory;->nativeLibLoaded:Z

    if-eqz v0, :cond_0

    .line 50
    invoke-static {}, Ltv/cjump/jni/NativeBitmapFactory;->init()Z

    move-result v0

    .line 51
    if-nez v0, :cond_3

    .line 52
    invoke-static {}, Ltv/cjump/jni/NativeBitmapFactory;->release()Z

    .line 53
    sput-boolean v4, Ltv/cjump/jni/NativeBitmapFactory;->nativeLibLoaded:Z

    goto :goto_0

    .line 38
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    sput-boolean v0, Ltv/cjump/jni/NativeBitmapFactory;->nativeLibLoaded:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 40
    :catch_0
    move-exception v0

    .line 41
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Ltv/cjump/jni/NativeBitmapFactory;->TAG:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    sput-boolean v4, Ltv/cjump/jni/NativeBitmapFactory;->nativeLibLoaded:Z

    goto :goto_1

    .line 43
    :catch_1
    move-exception v0

    .line 44
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Ltv/cjump/jni/NativeBitmapFactory;->TAG:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    sput-boolean v4, Ltv/cjump/jni/NativeBitmapFactory;->nativeLibLoaded:Z

    goto :goto_1

    .line 55
    :cond_3
    invoke-static {}, Ltv/cjump/jni/NativeBitmapFactory;->initField()V

    .line 56
    invoke-static {}, Ltv/cjump/jni/NativeBitmapFactory;->testLib()Z

    move-result v0

    .line 57
    if-nez v0, :cond_4

    .line 59
    invoke-static {}, Ltv/cjump/jni/NativeBitmapFactory;->release()Z

    .line 60
    sput-boolean v4, Ltv/cjump/jni/NativeBitmapFactory;->nativeLibLoaded:Z

    goto :goto_0

    .line 62
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Ltv/cjump/jni/NativeBitmapFactory;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "testLib passed."

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static recycle(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 147
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 148
    return-void
.end method

.method private static native release()Z
.end method

.method public static releaseLibs()V
    .locals 3

    .prologue
    .line 70
    sget-boolean v0, Ltv/cjump/jni/NativeBitmapFactory;->nativeLibLoaded:Z

    if-eqz v0, :cond_0

    .line 71
    invoke-static {}, Ltv/cjump/jni/NativeBitmapFactory;->release()Z

    .line 73
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Ltv/cjump/jni/NativeBitmapFactory;->nativeIntField:Ljava/lang/reflect/Field;

    .line 74
    const/4 v0, 0x0

    sput-boolean v0, Ltv/cjump/jni/NativeBitmapFactory;->nativeLibLoaded:Z

    .line 75
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Ltv/cjump/jni/NativeBitmapFactory;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "releaseLibs"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method private static testLib()Z
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/16 v9, 0x11

    const/4 v6, 0x1

    const/4 v5, 0x2

    const/4 v7, 0x0

    .line 90
    sget-object v0, Ltv/cjump/jni/NativeBitmapFactory;->nativeIntField:Ljava/lang/reflect/Field;

    if-nez v0, :cond_1

    move v0, v7

    .line 123
    :cond_0
    :goto_0
    return v0

    .line 93
    :cond_1
    const/4 v1, 0x0

    .line 94
    const/4 v0, 0x2

    const/4 v2, 0x2

    :try_start_0
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v4, 0x1

    invoke-static {v0, v2, v3, v4}, Ltv/cjump/jni/NativeBitmapFactory;->createNativeBitmap(IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 97
    if-eqz v8, :cond_3

    :try_start_1
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, v5, :cond_3

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ne v0, v5, :cond_3

    .line 98
    :goto_1
    if-eqz v6, :cond_7

    .line 99
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v9, :cond_2

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->isPremultiplied()Z

    move-result v0

    if-nez v0, :cond_2

    .line 100
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Landroid/graphics/Bitmap;->setPremultiplied(Z)V

    .line 102
    :cond_2
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 103
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 104
    const/high16 v1, -0x10000

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 105
    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 106
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 108
    const-string/jumbo v1, "TestLib"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 109
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v9, :cond_7

    .line 110
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->isPremultiplied()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    .line 121
    :goto_2
    if-eqz v8, :cond_0

    .line 122
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_3
    move v6, v7

    .line 97
    goto :goto_1

    .line 114
    :catch_0
    move-exception v0

    .line 115
    :goto_3
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Ltv/cjump/jni/NativeBitmapFactory;->TAG:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 121
    if-eqz v1, :cond_4

    .line 122
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    move v0, v7

    .line 123
    goto :goto_0

    .line 117
    :catch_1
    move-exception v0

    move-object v8, v1

    .line 118
    :goto_4
    :try_start_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Ltv/cjump/jni/NativeBitmapFactory;->TAG:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 121
    if-eqz v8, :cond_5

    .line 122
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    :cond_5
    move v0, v7

    .line 123
    goto/16 :goto_0

    .line 120
    :catchall_0
    move-exception v0

    move-object v8, v1

    .line 121
    :goto_5
    if-eqz v8, :cond_6

    .line 122
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 123
    :cond_6
    throw v0

    .line 120
    :catchall_1
    move-exception v0

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v8, v1

    goto :goto_5

    .line 117
    :catch_2
    move-exception v0

    goto :goto_4

    .line 114
    :catch_3
    move-exception v0

    move-object v1, v8

    goto :goto_3

    :cond_7
    move v0, v6

    goto :goto_2
.end method
