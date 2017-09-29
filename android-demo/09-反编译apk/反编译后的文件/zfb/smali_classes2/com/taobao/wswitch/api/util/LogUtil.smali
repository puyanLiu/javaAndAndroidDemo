.class public Lcom/taobao/wswitch/api/util/LogUtil;
.super Ljava/lang/Object;
.source "LogUtil.java"


# static fields
.field private static isRelease:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x1

    sput-boolean v0, Lcom/taobao/wswitch/api/util/LogUtil;->isRelease:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Logd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 42
    sget-boolean v0, Lcom/taobao/wswitch/api/util/LogUtil;->isRelease:Z

    if-nez v0, :cond_0

    .line 43
    invoke-static {p0, p1}, Lcom/taobao/wswitch/api/util/LogUtil;->isParamLegal(Ljava/lang/String;Ljava/lang/String;)Z

    .line 44
    :cond_0
    return-void
.end method

.method public static Loge(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    invoke-static {p0, p1}, Lcom/taobao/wswitch/api/util/LogUtil;->isParamLegal(Ljava/lang/String;Ljava/lang/String;)Z

    .line 57
    return-void
.end method

.method public static Logi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 34
    sget-boolean v0, Lcom/taobao/wswitch/api/util/LogUtil;->isRelease:Z

    if-nez v0, :cond_0

    .line 35
    invoke-static {p0, p1}, Lcom/taobao/wswitch/api/util/LogUtil;->isParamLegal(Ljava/lang/String;Ljava/lang/String;)Z

    .line 36
    :cond_0
    return-void
.end method

.method public static Logw(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    invoke-static {p0, p1}, Lcom/taobao/wswitch/api/util/LogUtil;->isParamLegal(Ljava/lang/String;Ljava/lang/String;)Z

    .line 51
    return-void
.end method

.method private static isParamLegal(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 27
    invoke-static {p0}, Lcom/taobao/wswitch/api/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/taobao/wswitch/api/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 28
    const/4 v0, 0x1

    .line 30
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setIsRelease(Z)V
    .locals 0

    .prologue
    .line 23
    sput-boolean p0, Lcom/taobao/wswitch/api/util/LogUtil;->isRelease:Z

    .line 24
    return-void
.end method
