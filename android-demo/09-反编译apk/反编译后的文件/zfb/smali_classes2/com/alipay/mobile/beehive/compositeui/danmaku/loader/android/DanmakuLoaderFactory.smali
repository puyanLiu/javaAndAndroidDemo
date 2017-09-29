.class public Lcom/alipay/mobile/beehive/compositeui/danmaku/loader/android/DanmakuLoaderFactory;
.super Ljava/lang/Object;
.source "DanmakuLoaderFactory.java"


# static fields
.field public static TAG_ACFUN:Ljava/lang/String;

.field public static TAG_BILI:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string/jumbo v0, "bili"

    sput-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/loader/android/DanmakuLoaderFactory;->TAG_BILI:Ljava/lang/String;

    .line 24
    const-string/jumbo v0, "acfun"

    sput-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/loader/android/DanmakuLoaderFactory;->TAG_ACFUN:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/alipay/mobile/beehive/compositeui/danmaku/loader/ILoader;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/loader/android/DanmakuLoaderFactory;->TAG_BILI:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    invoke-static {}, Lcom/alipay/mobile/beehive/compositeui/danmaku/loader/android/BiliDanmakuLoader;->instance()Lcom/alipay/mobile/beehive/compositeui/danmaku/loader/android/BiliDanmakuLoader;

    move-result-object v0

    .line 31
    :goto_0
    return-object v0

    .line 29
    :cond_0
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/loader/android/DanmakuLoaderFactory;->TAG_ACFUN:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    invoke-static {}, Lcom/alipay/mobile/beehive/compositeui/danmaku/loader/android/AcFunDanmakuLoader;->instance()Lcom/alipay/mobile/beehive/compositeui/danmaku/loader/ILoader;

    move-result-object v0

    goto :goto_0

    .line 31
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
