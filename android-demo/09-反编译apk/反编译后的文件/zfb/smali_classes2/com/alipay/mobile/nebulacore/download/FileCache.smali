.class public Lcom/alipay/mobile/nebulacore/download/FileCache;
.super Ljava/lang/Object;
.source "FileCache.java"


# static fields
.field public static final EXPIRE_TIME:J = 0x240c8400L

.field public static final TAG:Ljava/lang/String; = "FileCache"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulacore/download/FileCache;->clearExpired(Landroid/content/Context;)V

    .line 20
    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 79
    invoke-static {p0}, Lcom/alipay/mobile/nebulacore/util/FileUtil;->exists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 110
    :cond_0
    return-void

    .line 83
    :cond_1
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    .line 84
    invoke-virtual {v1, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 87
    :cond_2
    :goto_0
    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 90
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    .line 92
    sub-long v5, v2, v5

    const-wide/32 v7, 0x240c8400

    cmp-long v0, v5, v7

    if-lez v0, :cond_3

    .line 93
    invoke-static {v4}, Lcom/alipay/mobile/nebulacore/util/FileUtil;->delete(Ljava/io/File;)Z

    goto :goto_0

    .line 97
    :cond_3
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 98
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 102
    if-eqz v4, :cond_2

    array-length v0, v4

    if-eqz v0, :cond_2

    .line 103
    array-length v5, v4

    const/4 v0, 0x0

    .line 106
    :goto_1
    if-ge v0, v5, :cond_2

    .line 103
    aget-object v6, v4, v0

    .line 107
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public clearExpired(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 56
    const-string/jumbo v0, "/h5/download/temp"

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebulacore/download/DiskUtil;->getSubDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/util/FileUtil;->exists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 58
    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/util/FileUtil;->mkdirs(Ljava/lang/String;)Z

    .line 63
    :goto_0
    const-string/jumbo v0, "/h5/download/cache"

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebulacore/download/DiskUtil;->getSubDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/util/FileUtil;->exists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 65
    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/util/FileUtil;->mkdirs(Ljava/lang/String;)Z

    .line 70
    :goto_1
    const-string/jumbo v0, "/h5/download/debug"

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebulacore/download/DiskUtil;->getSubDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/util/FileUtil;->exists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 72
    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/util/FileUtil;->mkdirs(Ljava/lang/String;)Z

    .line 76
    :goto_2
    return-void

    .line 60
    :cond_0
    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/download/FileCache;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :cond_1
    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/download/FileCache;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 74
    :cond_2
    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/download/FileCache;->a(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public getCachePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 23
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    .line 27
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/alipay/mobile/nebulacore/util/SecurityUtil;->getSHA1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 28
    invoke-static {p2}, Lcom/alipay/mobile/nebulacore/util/FileUtil;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "/h5/download/cache/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 30
    invoke-static {p1, v0}, Lcom/alipay/mobile/nebulacore/download/DiskUtil;->getSubDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDebugPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 45
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    const/4 v0, 0x0

    .line 51
    :goto_0
    return-object v0

    .line 48
    :cond_0
    invoke-static {p2}, Lcom/alipay/mobile/nebulacore/util/SecurityUtil;->getSHA1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "/h5/download/debug/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-static {p1, v0}, Lcom/alipay/mobile/nebulacore/download/DiskUtil;->getSubDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTempPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 35
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    const/4 v0, 0x0

    .line 41
    :goto_0
    return-object v0

    .line 38
    :cond_0
    invoke-static {p2}, Lcom/alipay/mobile/nebulacore/util/SecurityUtil;->getSHA1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "/h5/download/temp/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-static {p1, v0}, Lcom/alipay/mobile/nebulacore/download/DiskUtil;->getSubDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
