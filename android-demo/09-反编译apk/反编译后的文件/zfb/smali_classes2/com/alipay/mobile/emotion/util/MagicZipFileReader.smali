.class public Lcom/alipay/mobile/emotion/util/MagicZipFileReader;
.super Ljava/lang/Object;
.source "MagicZipFileReader.java"


# static fields
.field private static final FOLDER_EMOTION:Ljava/lang/String; = "emotion"

.field private static final FOLDER_MAGIC:Ljava/lang/String; = "magic"

.field private static final TAG:Ljava/lang/String;

.field private static sEmoiRootCachePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/alipay/mobile/emotion/util/MagicZipFileReader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/emotion/util/MagicZipFileReader;->TAG:Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/emotion/util/MagicZipFileReader;->sEmoiRootCachePath:Ljava/lang/String;

    .line 29
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static createBitmapByByte([B)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 210
    .line 212
    if-nez p0, :cond_0

    .line 231
    :goto_0
    return-object v0

    .line 215
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 216
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 217
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 218
    :catch_0
    move-exception v1

    .line 220
    :try_start_1
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 221
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 222
    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 223
    const/4 v4, 0x4

    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 224
    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 225
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 229
    :goto_1
    sget-object v2, Lcom/alipay/mobile/emotion/util/MagicZipFileReader;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 226
    :catch_1
    move-exception v2

    .line 227
    sget-object v3, Lcom/alipay/mobile/emotion/util/MagicZipFileReader;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getBitmapFromGif(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;Lpl/droidsonroids/gif/GifDrawable;)Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 84
    invoke-virtual {p1}, Lpl/droidsonroids/gif/GifDrawable;->getNumberOfFrames()I

    move-result v0

    .line 86
    const-string/jumbo v1, "AAAA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget v1, p0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->gifPreviewIndex:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->gifPreviewIndex:I

    if-gt v1, v0, :cond_0

    .line 88
    iget v0, p0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->gifPreviewIndex:I

    invoke-virtual {p1, v0}, Lpl/droidsonroids/gif/GifDrawable;->seekToFrameAndGet(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 92
    :goto_0
    return-object v0

    .line 90
    :cond_0
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Lpl/droidsonroids/gif/GifDrawable;->seekToFrameAndGet(I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static getCacheDir(Landroid/content/Context;)Ljava/io/File;
    .locals 4

    .prologue
    .line 96
    invoke-static {}, Lcom/alipay/mobile/emotion/util/MagicZipFileReader;->isCanUseSDCard()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "/Android/data/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/files/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 99
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 105
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 106
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 108
    :cond_0
    return-object v0

    .line 103
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method public static final getEmoiCacheFullPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 143
    sget-object v0, Lcom/alipay/mobile/emotion/util/MagicZipFileReader;->sEmoiRootCachePath:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 144
    invoke-static {}, Lcom/alipay/mobile/emotion/util/MagicZipFileReader;->getEmoiCacheRootFile()Ljava/io/File;

    move-result-object v0

    .line 145
    if-nez v0, :cond_0

    .line 146
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    .line 146
    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 150
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 151
    sput-object v0, Lcom/alipay/mobile/emotion/util/MagicZipFileReader;->sEmoiRootCachePath:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alipay/mobile/emotion/util/MagicZipFileReader;->sEmoiRootCachePath:Ljava/lang/String;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 152
    sget-object v0, Lcom/alipay/mobile/emotion/util/MagicZipFileReader;->sEmoiRootCachePath:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/emotion/util/MagicZipFileReader;->sEmoiRootCachePath:Ljava/lang/String;

    .line 155
    :cond_1
    sget-object v0, Lcom/alipay/mobile/emotion/util/MagicZipFileReader;->sEmoiRootCachePath:Ljava/lang/String;

    return-object v0
.end method

.method public static final getEmoiCacheRootFile()Ljava/io/File;
    .locals 4

    .prologue
    .line 124
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    .line 124
    invoke-static {v0}, Lcom/alipay/mobile/emotion/util/MagicZipFileReader;->getCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 128
    new-instance v2, Ljava/io/File;

    const-string/jumbo v0, "emotion"

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 129
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 130
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string/jumbo v3, "magic"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 131
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 135
    :cond_1
    :goto_0
    return-object v0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public static final getEmoiCacheRootFileWithoutCreate()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    .line 45
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    .line 46
    if-nez v1, :cond_1

    .line 59
    :cond_0
    :goto_0
    return-object v0

    .line 50
    :cond_1
    invoke-static {v1}, Lcom/alipay/mobile/emotion/util/MagicZipFileReader;->getCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 51
    if-eqz v1, :cond_0

    .line 52
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 53
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 56
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "emotion"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "magic"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getEmoiResourceFolderPath(Ljava/lang/String;Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionFolder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 345
    invoke-static {}, Lcom/alipay/mobile/emotion/util/MagicZipFileReader;->getEmoiCacheFullPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/alipay/mobile/emotion/model/EmotionFileStruct;->getEmotionFolderPath(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionFolder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getEmoiZipFile(Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 287
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/emotion/util/MagicZipFileReader;->getEmoiCacheFullPath()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 288
    sget-object v3, Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionSuffix;->zip:Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionSuffix;

    .line 287
    invoke-static {v0, p0, v2, v3}, Lcom/alipay/mobile/emotion/model/EmotionFileStruct;->getEmotionFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionSuffix;)Ljava/lang/String;

    move-result-object v2

    .line 289
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 290
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 297
    :goto_0
    return-object v0

    .line 293
    :catch_0
    move-exception v0

    .line 294
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-class v3, Lcom/alipay/mobile/emotion/util/MagicZipFileReader;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    move-object v0, v1

    .line 297
    goto :goto_0
.end method

.method public static getEmotionPreviewFolderPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 64
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    sget-object v1, Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionFolder;->unzip:Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionFolder;

    invoke-static {p0, v1}, Lcom/alipay/mobile/emotion/util/MagicZipFileReader;->getEmoiResourceFolderPath(Ljava/lang/String;Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionFolder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    const-string/jumbo v1, "t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 69
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 71
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 76
    :goto_0
    return-object v0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/emotion/util/MagicZipFileReader;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getEmotionRootFolderFile(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .prologue
    .line 182
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    invoke-static {}, Lcom/alipay/mobile/emotion/util/MagicZipFileReader;->getEmoiCacheFullPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :goto_0
    return-object v0

    .line 187
    :catch_0
    move-exception v0

    .line 188
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/emotion/util/MagicZipFileReader;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 191
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getEmotionRootFolderPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 165
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    invoke-static {}, Lcom/alipay/mobile/emotion/util/MagicZipFileReader;->getEmoiCacheFullPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 170
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 172
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 177
    :goto_0
    return-object v0

    .line 173
    :catch_0
    move-exception v0

    .line 174
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/emotion/util/MagicZipFileReader;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 177
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getImgFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .prologue
    .line 236
    invoke-static {}, Lcom/alipay/mobile/emotion/util/MagicZipFileReader;->getEmoiCacheFullPath()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionSuffix;->img:Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionSuffix;

    invoke-static {v0, p0, p1, v1}, Lcom/alipay/mobile/emotion/model/EmotionFileStruct;->getEmotionFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionSuffix;)Ljava/lang/String;

    move-result-object v1

    .line 237
    invoke-static {v1}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    const/4 v0, 0x0

    .line 240
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getTempPath(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->packageId:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/emotion/util/MagicZipFileReader;->getEmotionPreviewFolderPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->emotionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getZipFile(Ljava/lang/String;)Ljava/util/zip/ZipFile;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 307
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/emotion/util/MagicZipFileReader;->getEmoiCacheFullPath()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 308
    sget-object v3, Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionSuffix;->zip:Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionSuffix;

    .line 307
    invoke-static {v0, p0, v2, v3}, Lcom/alipay/mobile/emotion/model/EmotionFileStruct;->getEmotionFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionSuffix;)Ljava/lang/String;

    move-result-object v0

    .line 309
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 310
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    new-instance v0, Ljava/util/zip/ZipFile;

    invoke-direct {v0, v2}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    :goto_0
    return-object v0

    .line 314
    :catch_0
    move-exception v0

    .line 315
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-class v3, Lcom/alipay/mobile/emotion/util/MagicZipFileReader;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    move-object v0, v1

    .line 318
    goto :goto_0
.end method

.method public static getZipIconFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 333
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/emotion/util/MagicZipFileReader;->getEmoiCacheFullPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionSuffix;->icon:Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionSuffix;

    invoke-static {v1, p0, v2, v3}, Lcom/alipay/mobile/emotion/model/EmotionFileStruct;->getEmotionFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionSuffix;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 338
    :goto_0
    return-object v0

    .line 334
    :catch_0
    move-exception v1

    .line 335
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-class v3, Lcom/alipay/mobile/emotion/util/MagicZipFileReader;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getZipJsonFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 323
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/emotion/util/MagicZipFileReader;->getEmoiCacheFullPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionSuffix;->info:Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionSuffix;

    invoke-static {v1, p0, v2, v3}, Lcom/alipay/mobile/emotion/model/EmotionFileStruct;->getEmotionFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionSuffix;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 328
    :goto_0
    return-object v0

    .line 324
    :catch_0
    move-exception v1

    .line 325
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-class v3, Lcom/alipay/mobile/emotion/util/MagicZipFileReader;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static hasZipDownloadInFile(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 197
    invoke-static {}, Lcom/alipay/mobile/emotion/util/MagicZipFileReader;->getEmoiCacheFullPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/alipay/mobile/emotion/model/EmotionFileStruct;->emotionZipFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 198
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCanUseSDCard()Z
    .locals 2

    .prologue
    .line 116
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static readFaceContentFromFile(Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionSuffix;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 248
    .line 249
    invoke-static {}, Lcom/alipay/mobile/emotion/util/MagicZipFileReader;->getEmoiCacheFullPath()Ljava/lang/String;

    move-result-object v1

    .line 250
    invoke-static {v1, p1, p2, p0}, Lcom/alipay/mobile/emotion/model/EmotionFileStruct;->getEmotionFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionSuffix;)Ljava/lang/String;

    move-result-object v2

    .line 251
    invoke-static {v2}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 277
    :cond_0
    :goto_0
    return-object v0

    .line 254
    :cond_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 256
    if-eqz v1, :cond_0

    .line 258
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 260
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 261
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 263
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int v3, v3

    new-array v3, v3, [B

    .line 265
    :goto_1
    invoke-virtual {v1, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 268
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 269
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 270
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 271
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 272
    :catch_0
    move-exception v1

    .line 273
    sget-object v2, Lcom/alipay/mobile/emotion/util/MagicZipFileReader;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "readEntryContent error--->>"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 266
    :cond_2
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v2, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static readZipBImg(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 206
    sget-object v0, Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionSuffix;->img:Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionSuffix;

    invoke-static {v0, p0, p1}, Lcom/alipay/mobile/emotion/util/MagicZipFileReader;->readFaceContentFromFile(Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionSuffix;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/emotion/util/MagicZipFileReader;->createBitmapByByte([B)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
