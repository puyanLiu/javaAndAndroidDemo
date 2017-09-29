.class public Lcom/alipay/euler/andfix/patch/PatchManager;
.super Ljava/lang/Object;
.source "PatchManager.java"


# static fields
.field public static final MODE_MULTI_PROCESS:I = 0x4

.field private static a:Lcom/alipay/euler/andfix/patch/PatchManager;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/alipay/euler/andfix/a;

.field private final d:Ljava/io/File;

.field private final e:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet",
            "<",
            "Lcom/alipay/euler/andfix/patch/a;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->b:Landroid/content/Context;

    .line 84
    new-instance v0, Lcom/alipay/euler/andfix/a;

    iget-object v1, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/euler/andfix/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->c:Lcom/alipay/euler/andfix/a;

    .line 85
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "apatch"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->d:Ljava/io/File;

    .line 86
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListSet;-><init>()V

    iput-object v0, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->e:Ljava/util/SortedSet;

    .line 87
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->f:Ljava/util/Map;

    .line 88
    return-void
.end method

.method private a(Ljava/io/File;)Lcom/alipay/euler/andfix/patch/a;
    .locals 6

    .prologue
    .line 150
    const/4 v0, 0x0

    .line 151
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ".apatch"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "cloudfix_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 153
    :cond_0
    :try_start_0
    new-instance v1, Lcom/alipay/euler/andfix/patch/a;

    invoke-direct {v1, p1}, Lcom/alipay/euler/andfix/patch/a;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :try_start_1
    iget-object v0, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->e:Ljava/util/SortedSet;

    invoke-interface {v0, v1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 159
    :cond_1
    :goto_0
    return-object v0

    .line 155
    :catch_0
    move-exception v1

    .line 156
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "PatchManager"

    const-string/jumbo v4, "addPatch"

    invoke-interface {v2, v3, v4, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 155
    :catch_1
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_1
.end method

.method private a()V
    .locals 4

    .prologue
    .line 137
    iget-object v0, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 138
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 139
    invoke-direct {p0, v3}, Lcom/alipay/euler/andfix/patch/PatchManager;->a(Ljava/io/File;)Lcom/alipay/euler/andfix/patch/a;

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 141
    :cond_0
    return-void
.end method

.method private a(Lcom/alipay/euler/andfix/patch/a;)V
    .locals 5

    .prologue
    .line 253
    invoke-virtual {p1}, Lcom/alipay/euler/andfix/patch/a;->b()Ljava/util/Set;

    move-result-object v0

    .line 256
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 257
    iget-object v1, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->f:Ljava/util/Map;

    const-string/jumbo v3, "*"

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 258
    iget-object v1, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 262
    :goto_1
    if-eqz v1, :cond_0

    .line 263
    invoke-virtual {p1, v0}, Lcom/alipay/euler/andfix/patch/a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 264
    iget-object v3, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->c:Lcom/alipay/euler/andfix/a;

    invoke-virtual {p1}, Lcom/alipay/euler/andfix/patch/a;->a()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4, v1, v0}, Lcom/alipay/euler/andfix/a;->a(Ljava/io/File;Ljava/lang/ClassLoader;Ljava/util/List;)V

    goto :goto_0

    .line 260
    :cond_1
    iget-object v1, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->f:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ClassLoader;

    goto :goto_1

    .line 267
    :cond_2
    return-void
.end method

.method private b()V
    .locals 7

    .prologue
    .line 163
    iget-object v0, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 164
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 165
    iget-object v4, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->c:Lcom/alipay/euler/andfix/a;

    invoke-virtual {v4, v3}, Lcom/alipay/euler/andfix/a;->a(Ljava/io/File;)V

    .line 166
    invoke-static {v3}, Lcom/alipay/euler/andfix/b/a;->a(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 167
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    const-string/jumbo v5, "PatchManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, " delete error."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 170
    :cond_1
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alipay/euler/andfix/patch/PatchManager;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/alipay/euler/andfix/patch/PatchManager;->a:Lcom/alipay/euler/andfix/patch/PatchManager;

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Lcom/alipay/euler/andfix/patch/PatchManager;

    invoke-direct {v0, p0}, Lcom/alipay/euler/andfix/patch/PatchManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/euler/andfix/patch/PatchManager;->a:Lcom/alipay/euler/andfix/patch/PatchManager;

    .line 96
    :cond_0
    sget-object v0, Lcom/alipay/euler/andfix/patch/PatchManager;->a:Lcom/alipay/euler/andfix/patch/PatchManager;

    return-object v0
.end method


# virtual methods
.method public addPatch(Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 180
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 181
    new-instance v6, Ljava/io/File;

    iget-object v1, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 182
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 183
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_0
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 186
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "PatchManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "patch ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] has be loaded."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :cond_1
    :goto_0
    return-void

    .line 189
    :cond_2
    :try_start_0
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    :cond_3
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    const-wide/16 v1, 0x0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    :cond_4
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V

    .line 190
    :cond_5
    invoke-direct {p0, v6}, Lcom/alipay/euler/andfix/patch/PatchManager;->a(Ljava/io/File;)Lcom/alipay/euler/andfix/patch/a;

    move-result-object v0

    .line 191
    if-eqz v0, :cond_1

    .line 192
    invoke-direct {p0, v0}, Lcom/alipay/euler/andfix/patch/PatchManager;->a(Lcom/alipay/euler/andfix/patch/a;)V

    goto :goto_0

    .line 189
    :catchall_0
    move-exception v0

    move-object v1, v5

    :goto_1
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    :cond_6
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V

    :cond_7
    throw v0

    :catchall_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_1
.end method

.method public init(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 106
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "PatchManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "init:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_1

    .line 108
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "PatchManager"

    const-string/jumbo v2, "patch dir create error."

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_2

    .line 111
    iget-object v0, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 114
    :cond_2
    iget-object v0, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->b:Landroid/content/Context;

    const-string/jumbo v1, "_andfix_"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 115
    const-string/jumbo v1, "version"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 116
    if-eqz v1, :cond_3

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 117
    :cond_3
    invoke-direct {p0}, Lcom/alipay/euler/andfix/patch/PatchManager;->b()V

    .line 118
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "version"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 124
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 125
    if-eqz v0, :cond_0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 127
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "CloudFixAlipay.apatch"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 128
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    invoke-direct {p0, v0}, Lcom/alipay/euler/andfix/patch/PatchManager;->a(Ljava/io/File;)Lcom/alipay/euler/andfix/patch/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    goto :goto_0

    .line 120
    :cond_4
    invoke-direct {p0}, Lcom/alipay/euler/andfix/patch/PatchManager;->a()V

    goto :goto_1
.end method

.method public loadPatch()V
    .locals 7

    .prologue
    .line 233
    iget-object v0, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->f:Ljava/util/Map;

    const-string/jumbo v1, "*"

    iget-object v2, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    iget-object v0, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->e:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/euler/andfix/patch/a;

    .line 237
    invoke-virtual {v0}, Lcom/alipay/euler/andfix/patch/a;->b()Ljava/util/Set;

    move-result-object v1

    .line 238
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 239
    invoke-virtual {v0, v1}, Lcom/alipay/euler/andfix/patch/a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 240
    iget-object v4, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->c:Lcom/alipay/euler/andfix/a;

    invoke-virtual {v0}, Lcom/alipay/euler/andfix/patch/a;->a()Ljava/io/File;

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->b:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v1}, Lcom/alipay/euler/andfix/a;->a(Ljava/io/File;Ljava/lang/ClassLoader;Ljava/util/List;)V

    goto :goto_0

    .line 244
    :cond_1
    return-void
.end method

.method public loadPatch(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 4

    .prologue
    .line 216
    iget-object v0, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->f:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    iget-object v0, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->e:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/euler/andfix/patch/a;

    .line 220
    invoke-virtual {v0}, Lcom/alipay/euler/andfix/patch/a;->b()Ljava/util/Set;

    move-result-object v2

    .line 221
    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 222
    invoke-virtual {v0, p1}, Lcom/alipay/euler/andfix/patch/a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 223
    iget-object v3, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->c:Lcom/alipay/euler/andfix/a;

    invoke-virtual {v0}, Lcom/alipay/euler/andfix/patch/a;->a()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v3, v0, p2, v2}, Lcom/alipay/euler/andfix/a;->a(Ljava/io/File;Ljava/lang/ClassLoader;Ljava/util/List;)V

    goto :goto_0

    .line 226
    :cond_1
    return-void
.end method

.method public removeAllPatch()V
    .locals 3

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/alipay/euler/andfix/patch/PatchManager;->b()V

    .line 201
    iget-object v0, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->b:Landroid/content/Context;

    const-string/jumbo v1, "_andfix_"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 202
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 203
    return-void
.end method
