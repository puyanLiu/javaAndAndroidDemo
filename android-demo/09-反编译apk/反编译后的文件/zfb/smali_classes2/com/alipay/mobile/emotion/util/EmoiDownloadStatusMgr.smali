.class public Lcom/alipay/mobile/emotion/util/EmoiDownloadStatusMgr;
.super Ljava/lang/Object;
.source "EmoiDownloadStatusMgr.java"


# static fields
.field private static sInstance:Lcom/alipay/mobile/emotion/util/EmoiDownloadStatusMgr;


# instance fields
.field private final loaders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/emotion/util/EmoiDownloadStatusMgr;->sInstance:Lcom/alipay/mobile/emotion/util/EmoiDownloadStatusMgr;

    .line 6
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/emotion/util/EmoiDownloadStatusMgr;->loaders:Ljava/util/HashMap;

    .line 15
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/emotion/util/EmoiDownloadStatusMgr;
    .locals 2

    .prologue
    .line 18
    const-class v1, Lcom/alipay/mobile/emotion/util/EmoiDownloadStatusMgr;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/emotion/util/EmoiDownloadStatusMgr;->sInstance:Lcom/alipay/mobile/emotion/util/EmoiDownloadStatusMgr;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lcom/alipay/mobile/emotion/util/EmoiDownloadStatusMgr;

    invoke-direct {v0}, Lcom/alipay/mobile/emotion/util/EmoiDownloadStatusMgr;-><init>()V

    sput-object v0, Lcom/alipay/mobile/emotion/util/EmoiDownloadStatusMgr;->sInstance:Lcom/alipay/mobile/emotion/util/EmoiDownloadStatusMgr;

    .line 21
    :cond_0
    sget-object v0, Lcom/alipay/mobile/emotion/util/EmoiDownloadStatusMgr;->sInstance:Lcom/alipay/mobile/emotion/util/EmoiDownloadStatusMgr;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 18
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addEmoiDownloader(Ljava/lang/String;I)Z
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alipay/mobile/emotion/util/EmoiDownloadStatusMgr;->loaders:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const/4 v0, 0x1

    return v0
.end method

.method public getEmoiDownloader(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alipay/mobile/emotion/util/EmoiDownloadStatusMgr;->loaders:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 39
    if-nez v0, :cond_0

    .line 40
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 42
    :cond_0
    return-object v0
.end method

.method public isContainEmoiDownload(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/emotion/util/EmoiDownloadStatusMgr;->loaders:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeEmoiDownloader(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alipay/mobile/emotion/util/EmoiDownloadStatusMgr;->loaders:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    return-void
.end method
