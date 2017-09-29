.class public Lcom/taobao/wswitch/util/LogUtil;
.super Ljava/lang/Object;
.source "LogUtil.java"


# static fields
.field private static isRelease:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x1

    sput-boolean v0, Lcom/taobao/wswitch/util/LogUtil;->isRelease:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Logd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 41
    sget-boolean v0, Lcom/taobao/wswitch/util/LogUtil;->isRelease:Z

    if-nez v0, :cond_0

    .line 42
    invoke-static {p0, p1}, Lcom/taobao/wswitch/util/LogUtil;->isParamLegal(Ljava/lang/String;Ljava/lang/String;)Z

    .line 43
    :cond_0
    return-void
.end method

.method public static Loge(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    invoke-static {p0, p1}, Lcom/taobao/wswitch/util/LogUtil;->isParamLegal(Ljava/lang/String;Ljava/lang/String;)Z

    .line 56
    return-void
.end method

.method public static Logi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 33
    sget-boolean v0, Lcom/taobao/wswitch/util/LogUtil;->isRelease:Z

    if-nez v0, :cond_0

    .line 34
    invoke-static {p0, p1}, Lcom/taobao/wswitch/util/LogUtil;->isParamLegal(Ljava/lang/String;Ljava/lang/String;)Z

    .line 35
    :cond_0
    return-void
.end method

.method public static Logw(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    invoke-static {p0, p1}, Lcom/taobao/wswitch/util/LogUtil;->isParamLegal(Ljava/lang/String;Ljava/lang/String;)Z

    .line 50
    return-void
.end method

.method private static isParamLegal(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 26
    invoke-static {p0}, Lcom/taobao/wswitch/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/taobao/wswitch/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 27
    const/4 v0, 0x1

    .line 29
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setIsRelease(Z)V
    .locals 0

    .prologue
    .line 22
    sput-boolean p0, Lcom/taobao/wswitch/util/LogUtil;->isRelease:Z

    .line 23
    return-void
.end method
