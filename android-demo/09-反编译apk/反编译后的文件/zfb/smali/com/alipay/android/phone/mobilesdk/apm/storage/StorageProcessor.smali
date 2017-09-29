.class public Lcom/alipay/android/phone/mobilesdk/apm/storage/StorageProcessor;
.super Ljava/lang/Object;
.source "StorageProcessor.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/alipay/android/phone/mobilesdk/apm/storage/StorageProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/mobilesdk/apm/storage/StorageProcessor;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 99
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 101
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/android/phone/mobilesdk/apm/storage/UserEnvironment;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 105
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-static {v0}, Lcom/alipay/android/phone/mobilesdk/apm/storage/StorageProcessor;->b(Ljava/lang/String;)J

    move-result-wide v0

    .line 109
    :goto_1
    return-wide v0

    .line 103
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 109
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/StringBuilder;)J
    .locals 4

    .prologue
    .line 201
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 203
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/android/phone/mobilesdk/apm/storage/UserEnvironment;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 207
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 208
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 209
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    const/4 v0, 0x1

    invoke-static {v2, v3, v0}, Lcom/alipay/android/phone/mobilesdk/apm/storage/StorageProcessor;->a(Ljava/lang/String;Ljava/lang/StringBuilder;I)J

    move-result-wide v0

    .line 211
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    const-string/jumbo v2, " dir size:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 217
    const-string/jumbo v2, "\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 221
    :goto_1
    return-wide v0

    .line 205
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 221
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/StringBuilder;I)J
    .locals 13

    .prologue
    const/4 v3, 0x1

    .line 226
    const-wide/16 v1, 0x0

    .line 228
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 230
    const/4 v0, 0x0

    move v4, v0

    move-wide v10, v1

    move-wide v0, v10

    :goto_0
    :try_start_1
    array-length v2, v5

    if-ge v4, v2, :cond_3

    .line 231
    aget-object v2, v5, v4

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 232
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    aget-object v2, v5, v4

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v7, p2, 0x1

    invoke-static {v2, v6, v7}, Lcom/alipay/android/phone/mobilesdk/apm/storage/StorageProcessor;->a(Ljava/lang/String;Ljava/lang/StringBuilder;I)J

    move-result-wide v7

    move v2, v3

    .line 234
    :goto_1
    if-gt v2, p2, :cond_0

    .line 235
    const-string/jumbo v9, "  "

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 237
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "/"

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v9, v5, v4

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    const-string/jumbo v2, " dir size:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    invoke-virtual {p1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 240
    const-string/jumbo v2, "\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 242
    add-long/2addr v0, v7

    .line 230
    :goto_2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_0

    .line 244
    :cond_1
    aget-object v2, v5, v4

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    move v2, v3

    .line 245
    :goto_3
    if-gt v2, p2, :cond_2

    .line 246
    const-string/jumbo v8, "  "

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 248
    :cond_2
    aget-object v2, v5, v4

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    const-string/jumbo v2, " file size:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 251
    const-string/jumbo v2, "\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 252
    add-long/2addr v0, v6

    goto :goto_2

    .line 255
    :catch_0
    move-exception v0

    move-object v10, v0

    move-wide v11, v1

    move-wide v0, v11

    move-object v2, v10

    .line 256
    :goto_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    sget-object v4, Lcom/alipay/android/phone/mobilesdk/apm/storage/StorageProcessor;->a:Ljava/lang/String;

    const-string/jumbo v5, "getFolderPathAndSize error"

    invoke-interface {v3, v4, v5, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 258
    :cond_3
    return-wide v0

    .line 255
    :catch_1
    move-exception v2

    goto :goto_4
.end method

.method private static a([Ljava/io/File;)J
    .locals 6

    .prologue
    .line 91
    const-wide/16 v1, 0x0

    .line 92
    array-length v3, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, p0, v0

    .line 93
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/android/phone/mobilesdk/apm/storage/StorageProcessor;->a(Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v1, v4

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    :cond_0
    return-wide v1
.end method

.method private static a([Ljava/io/File;Ljava/lang/StringBuilder;)J
    .locals 6

    .prologue
    .line 193
    const-wide/16 v1, 0x0

    .line 194
    array-length v3, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, p0, v0

    .line 195
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/alipay/android/phone/mobilesdk/apm/storage/StorageProcessor;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)J

    move-result-wide v4

    add-long/2addr v1, v4

    .line 194
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 197
    :cond_0
    return-wide v1
.end method

.method public static a(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x0

    .line 22
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_0

    .line 86
    :goto_0
    return-object v0

    .line 26
    :cond_0
    :try_start_0
    const-string/jumbo v3, ""

    .line 27
    const-string/jumbo v2, ""

    .line 28
    const-string/jumbo v6, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 30
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v7, 0x0

    invoke-virtual {v1, v3, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 36
    :goto_1
    :try_start_2
    new-instance v6, Lcom/alipay/android/phone/mobilesdk/apm/storage/PackageStats;

    invoke-direct {v6, v3}, Lcom/alipay/android/phone/mobilesdk/apm/storage/PackageStats;-><init>(Ljava/lang/String;)V

    .line 39
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v2

    iput-wide v2, v6, Lcom/alipay/android/phone/mobilesdk/apm/storage/PackageStats;->b:J

    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "cache"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/phone/mobilesdk/apm/storage/StorageProcessor;->a(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v6, Lcom/alipay/android/phone/mobilesdk/apm/storage/PackageStats;->d:J

    .line 41
    invoke-static {v1}, Lcom/alipay/android/phone/mobilesdk/apm/storage/StorageProcessor;->a(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v6, Lcom/alipay/android/phone/mobilesdk/apm/storage/PackageStats;->c:J

    .line 43
    iget-wide v1, v6, Lcom/alipay/android/phone/mobilesdk/apm/storage/PackageStats;->c:J

    iget-wide v7, v6, Lcom/alipay/android/phone/mobilesdk/apm/storage/PackageStats;->d:J

    sub-long/2addr v1, v7

    iput-wide v1, v6, Lcom/alipay/android/phone/mobilesdk/apm/storage/PackageStats;->c:J

    .line 47
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v4

    .line 55
    :goto_2
    if-eqz v1, :cond_1

    .line 56
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_5

    .line 57
    new-instance v1, Lcom/alipay/android/phone/mobilesdk/apm/storage/UserEnvironment;

    invoke-direct {v1}, Lcom/alipay/android/phone/mobilesdk/apm/storage/UserEnvironment;-><init>()V

    .line 59
    iget-object v2, v6, Lcom/alipay/android/phone/mobilesdk/apm/storage/PackageStats;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/android/phone/mobilesdk/apm/storage/UserEnvironment;->d(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/phone/mobilesdk/apm/storage/StorageProcessor;->a([Ljava/io/File;)J

    move-result-wide v2

    iput-wide v2, v6, Lcom/alipay/android/phone/mobilesdk/apm/storage/PackageStats;->f:J

    .line 61
    iget-object v2, v6, Lcom/alipay/android/phone/mobilesdk/apm/storage/PackageStats;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/android/phone/mobilesdk/apm/storage/UserEnvironment;->a(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/phone/mobilesdk/apm/storage/StorageProcessor;->a([Ljava/io/File;)J

    move-result-wide v2

    iput-wide v2, v6, Lcom/alipay/android/phone/mobilesdk/apm/storage/PackageStats;->e:J

    .line 64
    iget-wide v2, v6, Lcom/alipay/android/phone/mobilesdk/apm/storage/PackageStats;->e:J

    iget-wide v4, v6, Lcom/alipay/android/phone/mobilesdk/apm/storage/PackageStats;->f:J

    sub-long/2addr v2, v4

    iput-wide v2, v6, Lcom/alipay/android/phone/mobilesdk/apm/storage/PackageStats;->e:J

    .line 66
    iget-object v2, v6, Lcom/alipay/android/phone/mobilesdk/apm/storage/PackageStats;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/android/phone/mobilesdk/apm/storage/UserEnvironment;->b(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/phone/mobilesdk/apm/storage/StorageProcessor;->a([Ljava/io/File;)J

    move-result-wide v2

    iput-wide v2, v6, Lcom/alipay/android/phone/mobilesdk/apm/storage/PackageStats;->g:J

    .line 68
    iget-object v2, v6, Lcom/alipay/android/phone/mobilesdk/apm/storage/PackageStats;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/android/phone/mobilesdk/apm/storage/UserEnvironment;->c(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/phone/mobilesdk/apm/storage/StorageProcessor;->a([Ljava/io/File;)J

    move-result-wide v1

    iput-wide v1, v6, Lcom/alipay/android/phone/mobilesdk/apm/storage/PackageStats;->h:J

    .line 84
    :cond_1
    :goto_3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "storageUsage"

    iget-wide v3, v6, Lcom/alipay/android/phone/mobilesdk/apm/storage/PackageStats;->c:J

    iget-wide v7, v6, Lcom/alipay/android/phone/mobilesdk/apm/storage/PackageStats;->d:J

    add-long/2addr v3, v7

    iget-wide v7, v6, Lcom/alipay/android/phone/mobilesdk/apm/storage/PackageStats;->e:J

    add-long/2addr v3, v7

    iget-wide v7, v6, Lcom/alipay/android/phone/mobilesdk/apm/storage/PackageStats;->f:J

    add-long/2addr v3, v7

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "SUData"

    iget-wide v3, v6, Lcom/alipay/android/phone/mobilesdk/apm/storage/PackageStats;->c:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "SUExtData"

    iget-wide v3, v6, Lcom/alipay/android/phone/mobilesdk/apm/storage/PackageStats;->e:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "SUCache"

    iget-wide v3, v6, Lcom/alipay/android/phone/mobilesdk/apm/storage/PackageStats;->d:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "SUExtCache"

    iget-wide v3, v6, Lcom/alipay/android/phone/mobilesdk/apm/storage/PackageStats;->f:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "SUAvailable"

    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/storage/PackageStats;->a()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "SUExtAvailable"

    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/storage/PackageStats;->b()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_0

    .line 33
    :catch_0
    move-exception v1

    .line 34
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v7

    sget-object v8, Lcom/alipay/android/phone/mobilesdk/apm/storage/StorageProcessor;->a:Ljava/lang/String;

    const-string/jumbo v9, "getCurrentStorageUsage init dir error"

    invoke-interface {v7, v8, v9, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v6

    goto/16 :goto_1

    .line 50
    :cond_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 51
    const-string/jumbo v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "mounted_ro"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    move v1, v4

    goto/16 :goto_2

    :cond_4
    move v1, v5

    goto/16 :goto_2

    .line 70
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    .line 71
    if-eqz v1, :cond_6

    .line 72
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/phone/mobilesdk/apm/storage/StorageProcessor;->a(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v6, Lcom/alipay/android/phone/mobilesdk/apm/storage/PackageStats;->f:J

    .line 75
    :cond_6
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 76
    if-eqz v1, :cond_7

    .line 77
    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/phone/mobilesdk/apm/storage/StorageProcessor;->a(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v6, Lcom/alipay/android/phone/mobilesdk/apm/storage/PackageStats;->e:J

    .line 81
    :cond_7
    iget-wide v1, v6, Lcom/alipay/android/phone/mobilesdk/apm/storage/PackageStats;->e:J

    iget-wide v3, v6, Lcom/alipay/android/phone/mobilesdk/apm/storage/PackageStats;->f:J

    sub-long/2addr v1, v3

    iput-wide v1, v6, Lcom/alipay/android/phone/mobilesdk/apm/storage/PackageStats;->e:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_3

    .line 86
    :catch_1
    move-exception v1

    goto/16 :goto_0
.end method

.method private static b(Ljava/lang/String;)J
    .locals 9

    .prologue
    .line 114
    const-wide/16 v1, 0x0

    .line 116
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 118
    const/4 v0, 0x0

    move v6, v0

    move-wide v7, v1

    move-wide v0, v7

    move v2, v6

    :goto_0
    :try_start_1
    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 119
    aget-object v4, v3, v2

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 120
    aget-object v4, v3, v2

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/android/phone/mobilesdk/apm/storage/StorageProcessor;->b(Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v0, v4

    .line 118
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 122
    :cond_0
    aget-object v4, v3, v2

    invoke-virtual {v4}, Ljava/io/File;->length()J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v4

    add-long/2addr v0, v4

    goto :goto_1

    .line 125
    :catch_0
    move-exception v0

    move-object v6, v0

    move-wide v7, v1

    move-wide v0, v7

    move-object v2, v6

    .line 126
    :goto_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    sget-object v4, Lcom/alipay/android/phone/mobilesdk/apm/storage/StorageProcessor;->a:Ljava/lang/String;

    const-string/jumbo v5, "getFolderSize error"

    invoke-interface {v3, v4, v5, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 128
    :cond_1
    return-wide v0

    .line 125
    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 137
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "storage not support for sdk level "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " that under 11."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 188
    :goto_0
    return-object v0

    .line 141
    :cond_0
    :try_start_0
    const-string/jumbo v1, ""

    .line 142
    const-string/jumbo v3, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 144
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 145
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 150
    :goto_1
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    const-string/jumbo v4, "inner storage data\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-static {v0, v3}, Lcom/alipay/android/phone/mobilesdk/apm/storage/StorageProcessor;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)J

    .line 157
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    .line 165
    :goto_2
    if-eqz v0, :cond_1

    .line 166
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v0, v2, :cond_5

    .line 167
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/apm/storage/UserEnvironment;

    invoke-direct {v0}, Lcom/alipay/android/phone/mobilesdk/apm/storage/UserEnvironment;-><init>()V

    .line 168
    const-string/jumbo v2, "external storage data\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/mobilesdk/apm/storage/UserEnvironment;->a(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/alipay/android/phone/mobilesdk/apm/storage/StorageProcessor;->a([Ljava/io/File;Ljava/lang/StringBuilder;)J

    .line 170
    const-string/jumbo v2, "external storage media\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/mobilesdk/apm/storage/UserEnvironment;->b(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/alipay/android/phone/mobilesdk/apm/storage/StorageProcessor;->a([Ljava/io/File;Ljava/lang/StringBuilder;)J

    .line 172
    const-string/jumbo v2, "external storage obb\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/mobilesdk/apm/storage/UserEnvironment;->c(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/alipay/android/phone/mobilesdk/apm/storage/StorageProcessor;->a([Ljava/io/File;Ljava/lang/StringBuilder;)J

    .line 182
    :cond_1
    :goto_3
    const-string/jumbo v0, "inner available size\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/storage/PackageStats;->a()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 184
    const-string/jumbo v0, "external available size\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/storage/PackageStats;->b()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 146
    :catch_0
    move-exception v0

    .line 147
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    sget-object v5, Lcom/alipay/android/phone/mobilesdk/apm/storage/StorageProcessor;->a:Ljava/lang/String;

    const-string/jumbo v6, "getFolderTree init dir error"

    invoke-interface {v4, v5, v6, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v3

    goto :goto_1

    .line 160
    :cond_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 161
    const-string/jumbo v4, "mounted"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "mounted_ro"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    .line 175
    :cond_5
    const-string/jumbo v0, "external storage data\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 177
    if-eqz v0, :cond_1

    .line 178
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/alipay/android/phone/mobilesdk/apm/storage/StorageProcessor;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 188
    :catch_1
    move-exception v0

    const-string/jumbo v0, "get storage tree failed"

    goto/16 :goto_0
.end method
