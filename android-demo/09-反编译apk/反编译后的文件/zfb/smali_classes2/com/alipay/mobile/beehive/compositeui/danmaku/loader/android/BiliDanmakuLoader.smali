.class public Lcom/alipay/mobile/beehive/compositeui/danmaku/loader/android/BiliDanmakuLoader;
.super Ljava/lang/Object;
.source "BiliDanmakuLoader.java"

# interfaces
.implements Lcom/alipay/mobile/beehive/compositeui/danmaku/loader/ILoader;


# static fields
.field private static _instance:Lcom/alipay/mobile/beehive/compositeui/danmaku/loader/android/BiliDanmakuLoader;


# instance fields
.field private dataSource:Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/AndroidFileSource;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static instance()Lcom/alipay/mobile/beehive/compositeui/danmaku/loader/android/BiliDanmakuLoader;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/loader/android/BiliDanmakuLoader;->_instance:Lcom/alipay/mobile/beehive/compositeui/danmaku/loader/android/BiliDanmakuLoader;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/loader/android/BiliDanmakuLoader;

    invoke-direct {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/loader/android/BiliDanmakuLoader;-><init>()V

    sput-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/loader/android/BiliDanmakuLoader;->_instance:Lcom/alipay/mobile/beehive/compositeui/danmaku/loader/android/BiliDanmakuLoader;

    .line 39
    :cond_0
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/loader/android/BiliDanmakuLoader;->_instance:Lcom/alipay/mobile/beehive/compositeui/danmaku/loader/android/BiliDanmakuLoader;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDataSource()Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/IDataSource;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/loader/android/BiliDanmakuLoader;->getDataSource()Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/AndroidFileSource;

    move-result-object v0

    return-object v0
.end method

.method public getDataSource()Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/AndroidFileSource;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/loader/android/BiliDanmakuLoader;->dataSource:Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/AndroidFileSource;

    return-object v0
.end method

.method public load(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/AndroidFileSource;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/AndroidFileSource;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/loader/android/BiliDanmakuLoader;->dataSource:Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/AndroidFileSource;

    .line 52
    return-void
.end method

.method public load(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 44
    :try_start_0
    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/AndroidFileSource;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/AndroidFileSource;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/loader/android/BiliDanmakuLoader;->dataSource:Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/AndroidFileSource;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 46
    new-instance v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/loader/IllegalDataException;

    invoke-direct {v1, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/loader/IllegalDataException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
