.class public Lcom/alipay/mobile/framework/service/common/impl/DiskCacheServiceImpl;
.super Lcom/alipay/mobile/framework/service/common/DiskCacheService;
.source "DiskCacheServiceImpl.java"


# instance fields
.field private a:Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/common/DiskCacheService;-><init>()V

    .line 20
    invoke-static {}, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->getInstance()Lcom/alipay/mobile/common/task/AsyncTaskExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/framework/service/common/impl/DiskCacheServiceImpl$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/framework/service/common/impl/DiskCacheServiceImpl$1;-><init>(Lcom/alipay/mobile/framework/service/common/impl/DiskCacheServiceImpl;)V

    const-string/jumbo v2, "deletedFile"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->execute(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 22
    invoke-static {}, Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;->getInstance()Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/DiskCacheServiceImpl;->a:Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;

    .line 23
    return-void
.end method

.method private static a(Ljava/io/File;)V
    .locals 3

    .prologue
    .line 152
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 159
    if-eqz v1, :cond_2

    array-length v0, v1

    if-nez v0, :cond_3

    .line 160
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 164
    :cond_3
    const/4 v0, 0x0

    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_4

    .line 165
    aget-object v2, v1, v0

    invoke-static {v2}, Lcom/alipay/mobile/framework/service/common/impl/DiskCacheServiceImpl;->a(Ljava/io/File;)V

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 167
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method static synthetic access$000(Ljava/io/File;)V
    .locals 0

    .prologue
    .line 16
    invoke-static {p0}, Lcom/alipay/mobile/framework/service/common/impl/DiskCacheServiceImpl;->a(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/DiskCacheServiceImpl;->a:Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;->close()V

    .line 68
    return-void
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/common/impl/DiskCacheServiceImpl;->open()V

    .line 43
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/DiskCacheServiceImpl;->a:Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;->get(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getDirectory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/DiskCacheServiceImpl;->a:Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;->getDirectory()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxsize()J
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/DiskCacheServiceImpl;->a:Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;->getMaxsize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/DiskCacheServiceImpl;->a:Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;->getSize()J

    move-result-wide v0

    return-wide v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/common/impl/DiskCacheServiceImpl;->close()V

    .line 83
    return-void
.end method

.method public open()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/DiskCacheServiceImpl;->a:Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;->open()V

    .line 73
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BJJLjava/lang/String;)V
    .locals 10

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/common/impl/DiskCacheServiceImpl;->open()V

    .line 62
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/DiskCacheServiceImpl;->a:Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    move-wide/from16 v7, p7

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BJJLjava/lang/String;)V

    .line 63
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/common/impl/DiskCacheServiceImpl;->open()V

    .line 55
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/DiskCacheServiceImpl;->a:Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;->remove(Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public removeByGroup(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/common/impl/DiskCacheServiceImpl;->open()V

    .line 49
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/DiskCacheServiceImpl;->a:Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;->removeByGroup(Ljava/lang/String;)V

    .line 50
    return-void
.end method
