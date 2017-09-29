.class public Lcom/alipay/mobile/socialsdk/chat/util/SmallImageLruCache;
.super Ljava/lang/Object;
.source "SmallImageLruCache.java"


# static fields
.field private static e:Lcom/alipay/mobile/socialsdk/chat/util/SmallImageLruCache;


# instance fields
.field private a:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

.field private b:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private c:Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;

.field private d:J


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    .line 37
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x20

    div-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/socialsdk/chat/util/SmallImageLruCache;-><init>(J)V

    .line 38
    return-void
.end method

.method private constructor <init>(J)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/SmallImageLruCache;->d:J

    .line 42
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/SmallImageLruCache;->a:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    iput-wide p1, p0, Lcom/alipay/mobile/socialsdk/chat/util/SmallImageLruCache;->d:J

    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    :try_start_0
    const-string/jumbo v1, "small/image"

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/chat/util/SmallImageLruCache;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/chat/util/SmallImageLruCache;->getAppVersion(Landroid/content/Context;)I

    move-result v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->a(Ljava/io/File;I)Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/SmallImageLruCache;->c:Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;

    new-instance v0, Lcom/alipay/mobile/socialsdk/chat/util/e;

    long-to-int v1, p1

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/socialsdk/chat/util/e;-><init>(Lcom/alipay/mobile/socialsdk/chat/util/SmallImageLruCache;I)V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/SmallImageLruCache;->b:Landroid/support/v4/util/LruCache;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_0
    return-void

    .line 42
    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/util/SmallImageLruCache;->a:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v3, p0, Lcom/alipay/mobile/socialsdk/chat/util/SmallImageLruCache;->c:Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;

    iput-object v3, p0, Lcom/alipay/mobile/socialsdk/chat/util/SmallImageLruCache;->b:Landroid/support/v4/util/LruCache;

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .prologue
    .line 267
    :try_start_0
    const-string/jumbo v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 268
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 270
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 275
    :goto_0
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 278
    :goto_1
    return-object v0

    .line 273
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 278
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getInstance()Lcom/alipay/mobile/socialsdk/chat/util/SmallImageLruCache;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/alipay/mobile/socialsdk/chat/util/SmallImageLruCache;->e:Lcom/alipay/mobile/socialsdk/chat/util/SmallImageLruCache;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/alipay/mobile/socialsdk/chat/util/SmallImageLruCache;

    invoke-direct {v0}, Lcom/alipay/mobile/socialsdk/chat/util/SmallImageLruCache;-><init>()V

    sput-object v0, Lcom/alipay/mobile/socialsdk/chat/util/SmallImageLruCache;->e:Lcom/alipay/mobile/socialsdk/chat/util/SmallImageLruCache;

    .line 33
    :cond_0
    sget-object v0, Lcom/alipay/mobile/socialsdk/chat/util/SmallImageLruCache;->e:Lcom/alipay/mobile/socialsdk/chat/util/SmallImageLruCache;

    return-object v0
.end method

.method public static release()V
    .locals 1

    .prologue
    .line 292
    sget-object v0, Lcom/alipay/mobile/socialsdk/chat/util/SmallImageLruCache;->e:Lcom/alipay/mobile/socialsdk/chat/util/SmallImageLruCache;

    if-eqz v0, :cond_0

    .line 293
    sget-object v0, Lcom/alipay/mobile/socialsdk/chat/util/SmallImageLruCache;->e:Lcom/alipay/mobile/socialsdk/chat/util/SmallImageLruCache;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/chat/util/SmallImageLruCache;->close()V

    .line 294
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/socialsdk/chat/util/SmallImageLruCache;->e:Lcom/alipay/mobile/socialsdk/chat/util/SmallImageLruCache;

    .line 296
    :cond_0
    return-void
.end method


# virtual methods
.method public Bitmap2Bytes(Landroid/graphics/Bitmap;)[B
    .locals 3

    .prologue
    .line 175
    if-nez p1, :cond_0

    .line 176
    const/4 v0, 0x0

    .line 180
    :goto_0
    return-object v0

    .line 178
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 179
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 180
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_0
.end method

.method public Bytes2Bimap([B)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 144
    if-nez p1, :cond_1

    .line 150
    :cond_0
    :goto_0
    return-object v0

    .line 147
    :cond_1
    array-length v1, p1

    if-eqz v1, :cond_0

    .line 148
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public Bytes2BimapFor([B[I)Landroid/graphics/Bitmap;
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 155
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 170
    :cond_0
    :goto_0
    return-object v0

    .line 158
    :cond_1
    array-length v2, p1

    if-eqz v2, :cond_0

    .line 159
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 160
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 161
    array-length v2, p1

    invoke-static {p1, v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 162
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 163
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 164
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 165
    aget v2, p2, v1

    int-to-float v2, v2

    int-to-float v7, v3

    div-float/2addr v2, v7

    .line 166
    aget v7, p2, v6

    int-to-float v7, v7

    int-to-float v8, v4

    div-float/2addr v7, v8

    .line 167
    invoke-virtual {v5, v2, v7}, Landroid/graphics/Matrix;->postScale(FF)Z

    move v2, v1

    .line 168
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/SmallImageLruCache;->b:Landroid/support/v4/util/LruCache;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/SmallImageLruCache;->b:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0}, Landroid/support/v4/util/LruCache;->evictAll()V

    .line 141
    :cond_0
    return-void
.end method

.method public close()V
    .locals 3

    .prologue
    .line 298
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/SmallImageLruCache;->c:Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;

    if-eqz v0, :cond_0

    .line 300
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/SmallImageLruCache;->c:Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 301
    :catch_0
    move-exception v0

    .line 302
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/util/SmallImageLruCache;->a:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public containsKey(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 222
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/util/SmallImageLruCache;->b:Landroid/support/v4/util/LruCache;

    if-nez v1, :cond_1

    .line 230
    :cond_0
    :goto_0
    return v0

    .line 225
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 229
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/util/SmallImageLruCache;->b:Landroid/support/v4/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public get(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 81
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/SmallImageLruCache;->b:Landroid/support/v4/util/LruCache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/SmallImageLruCache;->c:Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;

    if-nez v0, :cond_2

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/SmallImageLruCache;->a:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v3, "mLruCache == null || mDiskLruCache == null"

    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 113
    :cond_1
    :goto_0
    return-object v0

    .line 85
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 86
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/SmallImageLruCache;->a:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v3, "\u56fe\u7247path\u4e0d\u5e94\u4e3anull"

    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 87
    goto :goto_0

    .line 90
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/SmallImageLruCache;->b:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 92
    if-eqz v0, :cond_7

    .line 93
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/chat/util/SmallImageLruCache;->Bytes2Bimap([B)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 95
    :goto_1
    if-nez v0, :cond_6

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/SmallImageLruCache;->c:Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->a(Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Snapshot;

    move-result-object v2

    .line 99
    if-eqz v2, :cond_5

    .line 100
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v0

    .line 101
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 102
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 107
    :goto_2
    if-eqz v2, :cond_1

    .line 108
    invoke-virtual {v2}, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Snapshot;->close()V

    goto :goto_0

    .line 104
    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    .line 105
    :try_start_1
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/chat/util/SmallImageLruCache;->a:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v4, "SocialSdk_Sdk"

    invoke-interface {v3, v4, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    if-eqz v2, :cond_1

    .line 108
    invoke-virtual {v2}, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Snapshot;->close()V

    goto :goto_0

    .line 106
    :catchall_0
    move-exception v0

    .line 107
    if-eqz v2, :cond_4

    .line 108
    invoke-virtual {v2}, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Snapshot;->close()V

    .line 110
    :cond_4
    throw v0

    :cond_5
    move-object v0, v1

    goto :goto_2

    :cond_6
    move-object v0, v1

    goto :goto_0

    :cond_7
    move-object v1, v2

    goto :goto_1
.end method

.method public getAppVersion(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 283
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 284
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    :goto_0
    return v0

    .line 285
    :catch_0
    move-exception v0

    .line 286
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/util/SmallImageLruCache;->a:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 288
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getDiskCacheDir(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 234
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/SmallImageLruCache;->b:Landroid/support/v4/util/LruCache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/SmallImageLruCache;->c:Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;

    if-nez v0, :cond_1

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/SmallImageLruCache;->a:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "mLruCache == null || mDiskLruCache == null"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string/jumbo v0, ""

    .line 262
    :goto_0
    return-object v0

    .line 238
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 239
    const-string/jumbo v0, ""

    goto :goto_0

    .line 244
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/SmallImageLruCache;->c:Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->a(Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Snapshot;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 245
    if-eqz v1, :cond_3

    .line 246
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Snapshot;->getFile(I)Ljava/io/File;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 253
    :cond_3
    if-eqz v1, :cond_4

    .line 254
    invoke-virtual {v1}, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Snapshot;->close()V

    .line 258
    :cond_4
    :goto_1
    if-eqz v2, :cond_6

    .line 259
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 248
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 249
    :goto_2
    :try_start_2
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/chat/util/SmallImageLruCache;->a:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v4, "SocialSdk_Sdk"

    invoke-interface {v3, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 253
    if-eqz v1, :cond_4

    .line 254
    invoke-virtual {v1}, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Snapshot;->close()V

    goto :goto_1

    .line 250
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 251
    :goto_3
    :try_start_3
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/chat/util/SmallImageLruCache;->a:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v4, "SocialSdk_Sdk"

    invoke-interface {v3, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 253
    if-eqz v1, :cond_4

    .line 254
    invoke-virtual {v1}, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Snapshot;->close()V

    goto :goto_1

    .line 252
    :catchall_0
    move-exception v0

    move-object v1, v2

    .line 253
    :goto_4
    if-eqz v1, :cond_5

    .line 254
    invoke-virtual {v1}, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Snapshot;->close()V

    .line 256
    :cond_5
    throw v0

    .line 262
    :cond_6
    const-string/jumbo v0, ""

    goto :goto_0

    .line 252
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 250
    :catch_2
    move-exception v0

    goto :goto_3

    .line 248
    :catch_3
    move-exception v0

    goto :goto_2
.end method

.method public getMemoryMaxSize()J
    .locals 2

    .prologue
    .line 131
    iget-wide v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/SmallImageLruCache;->d:J

    return-wide v0
.end method

.method public put(Ljava/lang/String;[B)Z
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/SmallImageLruCache;->b:Landroid/support/v4/util/LruCache;

    if-nez v0, :cond_0

    .line 74
    const/4 v0, 0x0

    .line 77
    :goto_0
    return v0

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/SmallImageLruCache;->b:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public remove(Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 117
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/SmallImageLruCache;->b:Landroid/support/v4/util/LruCache;

    if-nez v0, :cond_1

    .line 118
    :cond_0
    const/4 v0, 0x0

    .line 120
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/SmallImageLruCache;->b:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_0
.end method

.method public save(Ljava/lang/String;[B)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 184
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/util/SmallImageLruCache;->b:Landroid/support/v4/util/LruCache;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/util/SmallImageLruCache;->c:Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;

    if-nez v2, :cond_1

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/SmallImageLruCache;->a:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    const-string/jumbo v3, "mLruCache == null || mDiskLruCache == null"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 214
    :goto_0
    return v0

    .line 188
    :cond_1
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    array-length v2, p2

    if-lez v2, :cond_2

    move v2, v0

    :goto_1
    if-eqz v2, :cond_4

    .line 189
    if-eqz p2, :cond_3

    .line 190
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/socialsdk/chat/util/SmallImageLruCache;->put(Ljava/lang/String;[B)Z

    .line 195
    :goto_2
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/util/SmallImageLruCache;->c:Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;

    if-eqz v2, :cond_4

    .line 196
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/util/SmallImageLruCache;->c:Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;

    invoke-virtual {v2, p1}, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->b(Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Editor;

    move-result-object v2

    .line 197
    if-eqz v2, :cond_4

    .line 198
    invoke-virtual {v2, v1}, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v3

    .line 200
    :try_start_0
    invoke-virtual {v3, p2}, Ljava/io/OutputStream;->write([B)V

    .line 201
    invoke-virtual {v2}, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache$Editor;->commit()V

    .line 202
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/util/SmallImageLruCache;->c:Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;

    invoke-virtual {v2}, Lcom/alipay/mobile/socialsdk/chat/util/DiskLruCache;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    goto :goto_0

    :cond_2
    move v2, v1

    .line 188
    goto :goto_1

    .line 192
    :cond_3
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/util/SmallImageLruCache;->a:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_Sdk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "\u4fdd\u5b58\u5230\u5185\u5b58\u7f13\u5b58\u5931\u8d25"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 204
    :catch_0
    move-exception v0

    .line 205
    :try_start_1
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/util/SmallImageLruCache;->a:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v4, "SocialSdk_Sdk"

    invoke-interface {v2, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 207
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 213
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/SmallImageLruCache;->a:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "\u4fdd\u5b58\u5230\u6587\u4ef6\u7f13\u5b58\u5931\u8d25"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 214
    goto :goto_0

    .line 206
    :catchall_0
    move-exception v0

    .line 207
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 208
    throw v0
.end method

.method public trimToSize(I)V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/SmallImageLruCache;->b:Landroid/support/v4/util/LruCache;

    if-nez v0, :cond_0

    .line 128
    :goto_0
    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/SmallImageLruCache;->b:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/LruCache;->trimToSize(I)V

    goto :goto_0
.end method
