.class public Lcom/alipay/mobile/beehive/compositeui/danmaku/loader/android/AcFunDanmakuLoader;
.super Ljava/lang/Object;
.source "AcFunDanmakuLoader.java"

# interfaces
.implements Lcom/alipay/mobile/beehive/compositeui/danmaku/loader/ILoader;


# static fields
.field private static volatile instance:Lcom/alipay/mobile/beehive/compositeui/danmaku/loader/android/AcFunDanmakuLoader;


# instance fields
.field private dataSource:Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/JSONSource;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static instance()Lcom/alipay/mobile/beehive/compositeui/danmaku/loader/ILoader;
    .locals 2

    .prologue
    .line 21
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/loader/android/AcFunDanmakuLoader;->instance:Lcom/alipay/mobile/beehive/compositeui/danmaku/loader/android/AcFunDanmakuLoader;

    if-nez v0, :cond_1

    .line 22
    const-class v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/loader/android/AcFunDanmakuLoader;

    monitor-enter v1

    .line 23
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/loader/android/AcFunDanmakuLoader;->instance:Lcom/alipay/mobile/beehive/compositeui/danmaku/loader/android/AcFunDanmakuLoader;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/loader/android/AcFunDanmakuLoader;

    invoke-direct {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/loader/android/AcFunDanmakuLoader;-><init>()V

    sput-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/loader/android/AcFunDanmakuLoader;->instance:Lcom/alipay/mobile/beehive/compositeui/danmaku/loader/android/AcFunDanmakuLoader;

    .line 22
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :cond_1
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/loader/android/AcFunDanmakuLoader;->instance:Lcom/alipay/mobile/beehive/compositeui/danmaku/loader/android/AcFunDanmakuLoader;

    return-object v0

    .line 22
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public bridge synthetic getDataSource()Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/IDataSource;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/loader/android/AcFunDanmakuLoader;->getDataSource()Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/JSONSource;

    move-result-object v0

    return-object v0
.end method

.method public getDataSource()Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/JSONSource;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/loader/android/AcFunDanmakuLoader;->dataSource:Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/JSONSource;

    return-object v0
.end method

.method public load(Ljava/io/InputStream;)V
    .locals 2

    .prologue
    .line 47
    :try_start_0
    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/JSONSource;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/JSONSource;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/loader/android/AcFunDanmakuLoader;->dataSource:Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/JSONSource;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 49
    new-instance v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/loader/IllegalDataException;

    invoke-direct {v1, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/loader/IllegalDataException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public load(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 38
    :try_start_0
    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/JSONSource;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/JSONSource;-><init>(Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/loader/android/AcFunDanmakuLoader;->dataSource:Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/JSONSource;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 39
    :catch_0
    move-exception v0

    .line 40
    new-instance v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/loader/IllegalDataException;

    invoke-direct {v1, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/loader/IllegalDataException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
