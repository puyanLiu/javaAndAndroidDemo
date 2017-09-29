.class public Lcom/alipay/mobile/quinox/utils/LogUtil;
.super Ljava/lang/Object;
.source "LogUtil.java"


# static fields
.field private static BOOTSTRAP_LOG_ENABLE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/quinox/utils/LogUtil;->BOOTSTRAP_LOG_ENABLE:Z

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 36
    sget-boolean v0, Lcom/alipay/mobile/quinox/utils/LogUtil;->BOOTSTRAP_LOG_ENABLE:Z

    .line 37
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 42
    sget-boolean v0, Lcom/alipay/mobile/quinox/utils/LogUtil;->BOOTSTRAP_LOG_ENABLE:Z

    .line 43
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 78
    sget-boolean v0, Lcom/alipay/mobile/quinox/utils/LogUtil;->BOOTSTRAP_LOG_ENABLE:Z

    .line 79
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 84
    sget-boolean v0, Lcom/alipay/mobile/quinox/utils/LogUtil;->BOOTSTRAP_LOG_ENABLE:Z

    .line 85
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 48
    sget-boolean v0, Lcom/alipay/mobile/quinox/utils/LogUtil;->BOOTSTRAP_LOG_ENABLE:Z

    .line 49
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 54
    sget-boolean v0, Lcom/alipay/mobile/quinox/utils/LogUtil;->BOOTSTRAP_LOG_ENABLE:Z

    .line 55
    return-void
.end method

.method public static isDebug()Z
    .locals 1

    .prologue
    .line 16
    sget-boolean v0, Lcom/alipay/mobile/quinox/utils/LogUtil;->BOOTSTRAP_LOG_ENABLE:Z

    return v0
.end method

.method public static setDebug(Z)V
    .locals 0

    .prologue
    .line 20
    sput-boolean p0, Lcom/alipay/mobile/quinox/utils/LogUtil;->BOOTSTRAP_LOG_ENABLE:Z

    .line 21
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 24
    sget-boolean v0, Lcom/alipay/mobile/quinox/utils/LogUtil;->BOOTSTRAP_LOG_ENABLE:Z

    .line 25
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 30
    sget-boolean v0, Lcom/alipay/mobile/quinox/utils/LogUtil;->BOOTSTRAP_LOG_ENABLE:Z

    .line 31
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 60
    sget-boolean v0, Lcom/alipay/mobile/quinox/utils/LogUtil;->BOOTSTRAP_LOG_ENABLE:Z

    .line 61
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 72
    sget-boolean v0, Lcom/alipay/mobile/quinox/utils/LogUtil;->BOOTSTRAP_LOG_ENABLE:Z

    .line 73
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 66
    sget-boolean v0, Lcom/alipay/mobile/quinox/utils/LogUtil;->BOOTSTRAP_LOG_ENABLE:Z

    .line 67
    return-void
.end method
