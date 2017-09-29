.class public Lcom/alipay/android/phone/falcon/voice/JniFalconVoice;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native Init(III)Z
.end method

.method public static native Release()V
.end method

.method public static native RemoveNoise([SIZ)[S
.end method

.method public static initJni()V
    .locals 1

    const-string/jumbo v0, "FalconVoice"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method
