.class public Lcom/uc/webview/export/utility/SetupTask;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Lcom/uc/webview/export/annotations/Api;
.end annotation


# static fields
.field private static a:Ljava/util/HashMap;

.field private static b:Ljava/lang/Object;

.field private static c:Ljava/lang/Runnable;

.field private static d:Z

.field private static e:Z

.field private static final f:Ljava/util/LinkedList;

.field private static g:Landroid/os/HandlerThread;

.field private static final h:Z


# instance fields
.field private i:Ljava/util/HashMap;

.field private j:[Landroid/webkit/ValueCallback;

.field private final k:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 171
    sput-object v2, Lcom/uc/webview/export/utility/SetupTask;->a:Ljava/util/HashMap;

    .line 174
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/uc/webview/export/utility/SetupTask;->b:Ljava/lang/Object;

    .line 177
    sput-object v2, Lcom/uc/webview/export/utility/SetupTask;->c:Ljava/lang/Runnable;

    .line 180
    sput-boolean v0, Lcom/uc/webview/export/utility/SetupTask;->d:Z

    .line 183
    sput-boolean v0, Lcom/uc/webview/export/utility/SetupTask;->e:Z

    .line 186
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    sput-object v1, Lcom/uc/webview/export/utility/SetupTask;->f:Ljava/util/LinkedList;

    .line 189
    sput-object v2, Lcom/uc/webview/export/utility/SetupTask;->g:Landroid/os/HandlerThread;

    .line 192
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    sput-boolean v0, Lcom/uc/webview/export/utility/SetupTask;->h:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/uc/webview/export/utility/SetupTask;->i:Ljava/util/HashMap;

    .line 199
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/webkit/ValueCallback;

    iput-object v0, p0, Lcom/uc/webview/export/utility/SetupTask;->j:[Landroid/webkit/ValueCallback;

    .line 202
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/uc/webview/export/utility/SetupTask;->k:[Ljava/lang/Object;

    .line 245
    return-void
.end method

.method public constructor <init>(Lcom/uc/webview/export/utility/SetupTask;)V
    .locals 2

    .prologue
    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/uc/webview/export/utility/SetupTask;->i:Ljava/util/HashMap;

    .line 199
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/webkit/ValueCallback;

    iput-object v0, p0, Lcom/uc/webview/export/utility/SetupTask;->j:[Landroid/webkit/ValueCallback;

    .line 202
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/uc/webview/export/utility/SetupTask;->k:[Ljava/lang/Object;

    .line 251
    iget-object v0, p0, Lcom/uc/webview/export/utility/SetupTask;->i:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/uc/webview/export/utility/SetupTask;->i:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 252
    iget-object v0, p1, Lcom/uc/webview/export/utility/SetupTask;->j:[Landroid/webkit/ValueCallback;

    invoke-virtual {v0}, [Landroid/webkit/ValueCallback;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/webkit/ValueCallback;

    iput-object v0, p0, Lcom/uc/webview/export/utility/SetupTask;->j:[Landroid/webkit/ValueCallback;

    .line 253
    return-void
.end method

.method private static a(Landroid/content/Context;)Ljava/io/File;
    .locals 6

    .prologue
    .line 275
    const/16 v0, 0x1af

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 277
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "sdk_shell_patch.jar"

    invoke-direct {v3, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 279
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 280
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 282
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->length()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    const-wide/16 v4, 0x1af

    cmp-long v1, v1, v4

    if-eqz v1, :cond_1

    .line 283
    const/4 v2, 0x0

    .line 285
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 286
    :try_start_2
    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 288
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 295
    :cond_1
    :goto_0
    return-object v3

    .line 288
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :cond_2
    :goto_2
    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    .line 292
    :catch_0
    move-exception v0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 289
    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_2

    .line 288
    :catchall_1
    move-exception v0

    goto :goto_1

    .line 275
    :array_0
    .array-data 1
        0x50t
        0x4bt
        0x3t
        0x4t
        0x14t
        0x0t
        0x0t
        0x0t
        0x8t
        0x0t
        -0x2at
        0x78t
        0x36t
        0x47t
        0xct
        0x51t
        -0x46t
        0x5ct
        0x3t
        0x1t
        0x0t
        0x0t
        -0x34t
        0x1t
        0x0t
        0x0t
        0xbt
        0x0t
        0x1ct
        0x0t
        0x63t
        0x6ct
        0x61t
        0x73t
        0x73t
        0x65t
        0x73t
        0x2et
        0x64t
        0x65t
        0x78t
        0x55t
        0x54t
        0x9t
        0x0t
        0x3t
        0x4t
        -0x2t
        0x0t
        0x56t
        0x4t
        -0x2t
        0x0t
        0x56t
        0x75t
        0x78t
        0xbt
        0x0t
        0x1t
        0x4t
        -0x17t
        0x3t
        0x0t
        0x0t
        0x4t
        -0x17t
        0x3t
        0x0t
        0x0t
        0x4bt
        0x49t
        -0x53t
        -0x20t
        0x32t
        0x30t
        0x36t
        0x65t
        -0x20t
        0x34t
        -0x37t
        -0x22t
        -0x14t
        0x6ft
        -0x5t
        -0x18t
        0x5dt
        0x46t
        -0x59t
        -0xbt
        0x5ct
        0x51t
        -0x1bt
        -0xet
        -0x10t
        -0x9t
        -0x69t
        0x77t
        -0x33t
        0x2at
        0x10t
        -0x17t
        0x10t
        0x3bt
        -0x3dt
        -0x38t
        -0x40t
        0x50t
        -0x40t
        -0x40t
        -0x40t
        0x50t
        0x11t
        0x66t
        0x22t
        -0x3ct
        0x0t
        0x5t
        0x2et
        0x40t
        0x31t
        0x36t
        0x6t
        -0x78t
        0x38t
        0x33t
        0x10t
        0x77t
        0x0t
        0x31t
        0x50t
        -0x78t
        0x61t
        0xat
        0x3t
        0x2t
        0x30t
        0x1t
        -0xft
        0x2t
        -0x58t
        -0x8t
        0x6t
        0x20t
        -0x2t
        0x3t
        -0x3ct
        0x17t
        -0x80t
        -0x8t
        0x5t
        0x10t
        0x7ft
        0x0t
        0x62t
        0x4et
        -0x60t
        -0x7ct
        0x2ct
        0x10t
        0x2bt
        0x0t
        -0x4ft
        0x1et
        0x23t
        0x44t
        0x1dt
        0x13t
        -0x2ct
        0x3ct
        0x66t
        0x28t
        0x1bt
        0x19t
        0x30t
        -0x5et
        -0x4ft
        0x61t
        0x7ct
        0x16t
        0x28t
        0x6dt
        -0x37t
        0x8t
        -0x6dt
        0x63t
        0x4t
        -0x35t
        -0x67t
        0x30t
        0x42t
        -0x1ct
        0xat
        0x4t
        0x40t
        0x3ct
        0x3et
        0x6t
        0x36t
        -0x65t
        -0x34t
        -0x44t
        -0x34t
        0x12t
        0x3bt
        0x6t
        0x71t
        -0x61t
        -0x1ct
        -0x4t
        0x5ct
        -0x3t
        -0x2et
        0x64t
        -0x3t
        -0xet
        -0x2ct
        -0x5ct
        -0x14t
        -0x34t
        0x12t
        -0x3t
        -0x10t
        -0x2ct
        -0x5ct
        -0x50t
        -0x34t
        -0x2ct
        0x72t
        0x6bt
        0x6t
        0x21t
        -0x61t
        -0x54t
        -0x3ct
        -0x4et
        0x44t
        -0x3t
        -0x64t
        -0x3ct
        -0x44t
        0x74t
        0x7dt
        -0x1t
        -0x5ct
        -0x54t
        -0x2ct
        -0x1ct
        0x12t
        0x6bt
        0x6t
        -0x3at
        0x30t
        0x6t
        0x1et
        -0x58t
        0x2t
        0x3dt
        -0x70t
        0x2ct
        0x3t
        0x4bt
        0x49t
        0x46t
        0x66t
        0x31t
        -0x30t
        -0x11t
        -0x14t
        0x7ct
        0x10t
        0x27t
        0x34t
        0x36t
        -0x50t
        0x5ct
        0x60t
        0x64t
        -0x20t
        0x46t
        0x73t
        0x23t
        -0x78t
        -0x7at
        -0x7bt
        0xft
        -0x34t
        0x4ft
        0x1dt
        0x50t
        0x1at
        0x16t
        0x4et
        -0x54t
        0x48t
        0x61t
        -0x3ct
        -0x7at
        0x14t
        0x4et
        -0x74t
        0xat
        0x10t
        0x36t
        0x28t
        -0x54t
        -0x68t
        0x14t
        0x20t
        0x72t
        -0x60t
        0x30t
        0x63t
        -0x7at
        -0x76t
        -0x7dt
        -0x4t
        -0x3bt
        0x0t
        0x65t
        -0x7dt
        -0x3t
        0x2ct
        0x0t
        0x61t
        -0x7dt
        -0x1et
        0x4t
        0x0t
        0x50t
        0x4bt
        0x1t
        0x2t
        0x1et
        0x3t
        0x14t
        0x0t
        0x0t
        0x0t
        0x8t
        0x0t
        -0x2at
        0x78t
        0x36t
        0x47t
        0xct
        0x51t
        -0x46t
        0x5ct
        0x3t
        0x1t
        0x0t
        0x0t
        -0x34t
        0x1t
        0x0t
        0x0t
        0xbt
        0x0t
        0x18t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x4ct
        -0x7ft
        0x0t
        0x0t
        0x0t
        0x0t
        0x63t
        0x6ct
        0x61t
        0x73t
        0x73t
        0x65t
        0x73t
        0x2et
        0x64t
        0x65t
        0x78t
        0x55t
        0x54t
        0x5t
        0x0t
        0x3t
        0x4t
        -0x2t
        0x0t
        0x56t
        0x75t
        0x78t
        0xbt
        0x0t
        0x1t
        0x4t
        -0x17t
        0x3t
        0x0t
        0x0t
        0x4t
        -0x17t
        0x3t
        0x0t
        0x0t
        0x50t
        0x4bt
        0x5t
        0x6t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x51t
        0x0t
        0x0t
        0x0t
        0x48t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private static final a(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 348
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 350
    if-eqz v0, :cond_4

    .line 352
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 353
    check-cast v0, Ljava/lang/Boolean;

    .line 366
    :cond_0
    :goto_0
    return-object v0

    .line 354
    :cond_1
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 355
    const-string/jumbo v2, "true"

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 356
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_5

    .line 357
    const-string/jumbo v1, "false"

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 358
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 359
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "String \"true\" or \"false\" or boolean value expected with key:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 357
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 362
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "String \"true\" or \"false\" or boolean value expected with key:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 366
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 933
    const/4 v0, 0x2

    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 934
    const-string/jumbo v2, "sdk_1"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 935
    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-eqz v2, :cond_2

    .line 939
    :try_start_1
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 940
    :try_start_2
    new-instance v2, Ljava/io/BufferedReader;

    const/16 v0, 0x1f4

    invoke-direct {v2, v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 941
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 943
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 944
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result v4

    if-eqz v4, :cond_0

    .line 952
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 955
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    .line 963
    :goto_0
    return-object v0

    .line 947
    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 955
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    move-object v0, v1

    goto :goto_0

    .line 952
    :cond_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 955
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    :cond_2
    :goto_1
    move-object v0, v1

    .line 963
    goto :goto_0

    .line 950
    :catch_0
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    :goto_2
    if-eqz v0, :cond_3

    .line 953
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 955
    :cond_3
    if-eqz v2, :cond_2

    .line 956
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 960
    :catch_1
    move-exception v0

    .line 961
    const-string/jumbo v2, "SetupTask"

    const-string/jumbo v3, "getSoPathFromFile"

    invoke-static {v2, v3, v0}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 952
    :catchall_0
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    :goto_3
    if-eqz v2, :cond_4

    .line 953
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 955
    :cond_4
    if-eqz v3, :cond_5

    .line 956
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    :cond_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 952
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_3

    .line 950
    :catch_2
    move-exception v0

    move-object v0, v1

    move-object v2, v3

    goto :goto_2

    :catch_3
    move-exception v0

    move-object v0, v2

    move-object v2, v3

    goto :goto_2
.end method

.method private a(Ljava/util/HashMap;Z)V
    .locals 23

    .prologue
    .line 403
    if-eqz p2, :cond_0

    .line 716
    :goto_0
    return-void

    .line 406
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/uc/webview/export/utility/SetupTask;->j:[Landroid/webkit/ValueCallback;

    const/4 v4, 0x0

    aget-object v12, v3, v4

    .line 407
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/uc/webview/export/utility/SetupTask;->j:[Landroid/webkit/ValueCallback;

    const/4 v4, 0x4

    aget-object v13, v3, v4

    .line 410
    const/4 v7, 0x0

    .line 411
    const-class v14, Lcom/uc/webview/export/utility/SetupTask;

    monitor-enter v14

    .line 412
    const/4 v6, 0x0

    .line 415
    :try_start_0
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 416
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/uc/webview/export/utility/SetupTask;->i:Ljava/util/HashMap;

    invoke-virtual {v15, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 419
    invoke-virtual {v15}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 420
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 421
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 422
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 423
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 424
    const-string/jumbo v8, "SetupTask"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "setup: option ("

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v9, ","

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 694
    :catch_0
    move-exception v3

    move-object v4, v7

    .line 695
    :goto_2
    :try_start_1
    const-string/jumbo v5, "sdk_stp_le"

    invoke-static {v5, v6}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;I)V

    .line 696
    sget-object v5, Lcom/uc/webview/export/internal/d;->l:Ljava/util/Map;

    const-string/jumbo v7, "sdk_eci"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/uc/webview/export/utility/SetupTask;->k:[Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 699
    if-eqz v13, :cond_1

    :try_start_2
    move-object/from16 v0, p0

    invoke-interface {v13, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    move-object v9, v4

    .line 701
    :cond_2
    :goto_3
    :try_start_3
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 702
    const/4 v4, 0x0

    .line 703
    if-eqz v9, :cond_22

    .line 704
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;

    .line 705
    const-string/jumbo v6, "specified"

    iget-object v3, v3, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 706
    const/4 v3, 0x1

    .line 711
    :goto_4
    if-eqz v3, :cond_21

    .line 712
    const-wide/16 v3, 0x2

    invoke-static {v3, v4}, Lcom/uc/webview/export/internal/d;->a(J)V

    goto/16 :goto_0

    .line 431
    :cond_4
    :try_start_4
    const-string/jumbo v3, "CONTEXT"

    invoke-virtual {v15, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    .line 432
    const-string/jumbo v4, "CONTEXT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    const-string/jumbo v4, "SetupTask"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "setup: CONTEXT="

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    const-string/jumbo v4, "loadPolicy"

    invoke-virtual {v15, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 442
    if-nez v4, :cond_27

    .line 443
    const-string/jumbo v4, "UCMOBILE_OR_SPECIFIED"

    move-object v8, v4

    .line 444
    :goto_5
    const-string/jumbo v4, "loadPolicy"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    const-string/jumbo v4, "dexFilePath"

    invoke-virtual {v15, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 449
    const-string/jumbo v5, "soFilePath"

    invoke-virtual {v15, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 450
    invoke-static {v4}, Lcom/uc/webview/export/utility/SetupTask;->a(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    invoke-static {v5}, Lcom/uc/webview/export/utility/SetupTask;->a(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 452
    :cond_5
    const/4 v6, 0x1

    .line 453
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "dexFilePath or soFilePath can\'t be in sdcard "

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 701
    :catchall_0
    move-exception v3

    :try_start_5
    monitor-exit v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v3

    .line 456
    :cond_6
    :try_start_6
    const-string/jumbo v9, "UCMOBILE_ONLY"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_26

    if-eqz v4, :cond_26

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_26

    .line 457
    const-string/jumbo v9, "SetupTask"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "setup: Searching specified dir="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-static {v3, v9, v5, v4}, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->getUninstalledUCMPackageInfos(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/List;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v7

    move-object v4, v7

    .line 463
    :goto_6
    :try_start_7
    const-string/jumbo v5, "SPECIFIED_ONLY"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 464
    const-string/jumbo v5, "SetupTask"

    const-string/jumbo v7, "setup: Searching UCMobile"

    invoke-static {v5, v7}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    const-string/jumbo v5, "com.UCMobile"

    invoke-static {v3, v5}, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->getInstalledUCMPackageInfos(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_9
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v9

    .line 468
    if-nez v4, :cond_7

    .line 479
    :goto_7
    :try_start_8
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;

    .line 480
    const-string/jumbo v8, "SetupTask"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "setup: UCMPackageInfo item: {"

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v4, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v10, ","

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v5, v4, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->coreImplModule:Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v10, ","

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v5, v4, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->coreImplModule:Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v10, ","

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, v4, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->soDirPath:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_8

    .line 694
    :catch_1
    move-exception v3

    move-object v4, v9

    goto/16 :goto_2

    .line 471
    :cond_7
    :try_start_9
    const-string/jumbo v5, "SPECIFIED_OR_UCMOBILE"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 472
    invoke-interface {v4, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object v9, v4

    goto :goto_7

    .line 474
    :cond_8
    const/4 v5, 0x0

    invoke-interface {v4, v5, v9}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_9
    move-object v9, v4

    goto :goto_7

    .line 492
    :cond_a
    :try_start_a
    const-string/jumbo v4, "VERIFY_POLICY"

    invoke-virtual {v15, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 493
    if-nez v4, :cond_25

    .line 494
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v11, v4

    .line 495
    :goto_9
    const-string/jumbo v4, "VERIFY_POLICY"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    if-nez v9, :cond_c

    .line 501
    const/4 v8, 0x2

    move v6, v8

    .line 657
    :goto_a
    const-string/jumbo v3, "ClassLoader"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 659
    if-eqz v9, :cond_b

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1e

    :cond_b
    const/4 v3, 0x1

    .line 661
    :goto_b
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 662
    const/4 v5, 0x0

    iput v5, v4, Landroid/os/Message;->what:I

    .line 663
    iput v3, v4, Landroid/os/Message;->arg1:I

    .line 664
    invoke-static {}, Lcom/uc/webview/export/internal/d;->a()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 665
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": Available UCMobile core not found for setup."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 502
    :cond_c
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_d

    .line 504
    const/4 v8, 0x3

    move v6, v8

    goto :goto_a

    .line 506
    :cond_d
    const-string/jumbo v4, "SetupTask"

    const-string/jumbo v5, "setup: selecting ucmobile from list."

    invoke-static {v4, v5}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    const-string/jumbo v4, "core_ver_excludes"

    invoke-virtual {v15, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 508
    const-class v5, Lcom/uc/webview/export/utility/SetupTask;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v16

    .line 509
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result-object v17

    move v8, v6

    :goto_c
    :try_start_b
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_24

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_a
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 511
    :try_start_c
    const-string/jumbo v7, "SetupTask"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "setup: check package: {"

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v5, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v10, ","

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v6, v5, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->coreImplModule:Landroid/util/Pair;

    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v10, ","

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v6, v5, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->coreImplModule:Landroid/util/Pair;

    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v10, ","

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v10, v5, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->soDirPath:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v10, "}"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    new-instance v7, Ljava/io/File;

    iget-object v6, v5, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->sdkShellModule:Landroid/util/Pair;

    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    .line 520
    const-string/jumbo v7, "specified"

    iget-object v10, v5, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    const-string/jumbo v7, "core.jar"

    invoke-static {v6, v7}, Lcom/uc/webview/export/utility/download/UpdateTask;->isFinished(Ljava/io/File;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_e

    .line 521
    const-string/jumbo v5, "SetupTask"

    const-string/jumbo v6, "setup: check finish download and extract = false."

    invoke-static {v5, v6}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    const/4 v6, 0x4

    move v8, v6

    .line 524
    goto/16 :goto_c

    .line 528
    :cond_e
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v6

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_f

    iget-object v6, v5, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->sdkShellModule:Landroid/util/Pair;

    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    const-string/jumbo v7, "com.UCMobile"

    const/4 v10, 0x0

    invoke-static {v6, v3, v3, v7, v10}, Lcom/uc/webview/export/internal/utility/b;->a(Ljava/lang/String;Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;Landroid/webkit/ValueCallback;)Z

    move-result v6

    if-nez v6, :cond_f

    .line 529
    const-string/jumbo v5, "SetupTask"

    const-string/jumbo v6, "setup: check sdk_shell signature = false."

    invoke-static {v5, v6}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    const/4 v6, 0x5

    move v8, v6

    .line 532
    goto/16 :goto_c

    .line 535
    :cond_f
    invoke-static {v3}, Lcom/uc/webview/export/utility/SetupTask;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v7

    .line 536
    new-instance v10, Lcom/uc/webview/export/utility/SetupTask$a;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v5, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->sdkShellModule:Landroid/util/Pair;

    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_10

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v19, ":"

    move-object/from16 v0, v19

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_d
    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v6, v5, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->sdkShellModule:Landroid/util/Pair;

    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v0, v5, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->soDirPath:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-direct {v10, v7, v6, v0, v1}, Lcom/uc/webview/export/utility/SetupTask$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 544
    :try_start_d
    const-string/jumbo v6, "com.uc.webview.browser.shell.Build$Version"

    const/4 v7, 0x0

    invoke-static {v6, v7, v10}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v6

    const-string/jumbo v7, "NAME"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v18, "SUPPORT_SDK_MIN"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    sput-object v7, Lcom/uc/webview/export/Build;->UCM_VERSION:Ljava/lang/String;

    sput-object v18, Lcom/uc/webview/export/Build;->UCM_SUPPORT_SDK_MIN:Ljava/lang/String;

    const-string/jumbo v7, "API_LEVEL"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v6

    sput v6, Lcom/uc/webview/export/Build$Version;->API_LEVEL:I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 545
    :goto_e
    :try_start_e
    const-string/jumbo v6, "com.uc.webview.browser.shell.Build"

    const/4 v7, 0x0

    invoke-static {v6, v7, v10}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v6

    const-string/jumbo v7, "CORE_VERSION"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/uc/webview/export/Build;->CORE_VERSION:Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_c
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 548
    :goto_f
    const/4 v6, 0x0

    :try_start_f
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 549
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 550
    const-string/jumbo v18, "com.ucsdk.cts"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 551
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 566
    :goto_10
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_14

    .line 567
    const-string/jumbo v6, "com.uc.webview.browser.shell.Build"

    const/4 v7, 0x0

    invoke-static {v6, v7, v10}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v6

    const-string/jumbo v7, "TYPE"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 568
    iget-boolean v7, v5, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->isSpecified:Z

    if-nez v7, :cond_14

    const-string/jumbo v7, "ucrelease"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_14

    const-string/jumbo v7, "ucpatch"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_14

    .line 569
    const-string/jumbo v5, "SetupTask"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "setup: check build type buildType = "

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    const/4 v6, 0x7

    move v8, v6

    .line 572
    goto/16 :goto_c

    .line 536
    :cond_10
    const-string/jumbo v6, ""

    goto/16 :goto_d

    .line 544
    :catch_2
    move-exception v6

    const/4 v6, 0x1

    sput v6, Lcom/uc/webview/export/Build$Version;->API_LEVEL:I
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_e

    .line 648
    :catch_3
    move-exception v5

    move v6, v8

    .line 650
    :goto_11
    :try_start_10
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v6

    .line 651
    const-string/jumbo v7, "SetupTask"

    const-string/jumbo v8, "setup"

    invoke-static {v7, v8, v5}, Lcom/uc/webview/export/internal/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    move v8, v6

    .line 652
    goto/16 :goto_c

    .line 553
    :cond_11
    :try_start_11
    const-string/jumbo v6, "grant_all_builds"

    invoke-virtual {v15, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 555
    if-eqz v6, :cond_23

    .line 556
    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_12

    .line 557
    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto/16 :goto_10

    .line 558
    :cond_12
    instance-of v7, v6, Ljava/lang/Boolean;

    if-eqz v7, :cond_13

    .line 559
    check-cast v6, Ljava/lang/Boolean;
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_3
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto/16 :goto_10

    .line 562
    :cond_13
    const/4 v7, 0x6

    .line 563
    :try_start_12
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "The value: "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " of key: grant_all_builds is error"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_4
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 648
    :catch_4
    move-exception v5

    move v6, v7

    goto :goto_11

    .line 577
    :cond_14
    :try_start_13
    invoke-static {v4, v10}, Lcom/uc/webview/export/utility/SetupTask;->a(Ljava/lang/String;Ljava/lang/ClassLoader;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 578
    const-string/jumbo v5, "SetupTask"

    const-string/jumbo v6, "setup: check excluded version = false."

    invoke-static {v5, v6}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    const/16 v6, 0x8

    move v8, v6

    .line 581
    goto/16 :goto_c

    .line 585
    :cond_15
    const-string/jumbo v6, "com.uc.webview.browser.shell.SdkAuthentication"

    invoke-virtual {v10, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_3
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    move-result-object v18

    .line 587
    const/4 v10, 0x0

    .line 588
    const/4 v7, 0x0

    .line 590
    const/4 v6, 0x3

    :try_start_14
    new-array v6, v6, [Ljava/lang/Class;

    const/16 v19, 0x0

    const-class v20, Landroid/content/Context;

    aput-object v20, v6, v19

    const/16 v19, 0x1

    const-class v20, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;

    aput-object v20, v6, v19

    const/16 v19, 0x2

    const-class v20, Ljava/util/HashMap;

    aput-object v20, v6, v19

    .line 591
    const-string/jumbo v19, "tryLoadUCCore"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_3
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    move-result-object v6

    .line 593
    const/16 v19, 0x0

    const/16 v20, 0x3

    :try_start_15
    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v3, v20, v21

    const/16 v21, 0x1

    aput-object v5, v20, v21

    const/16 v21, 0x2

    aput-object v15, v20, v21

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-static {v0, v1, v6, v2}, Lcom/uc/webview/export/internal/utility/ReflectionUtil;->invoke(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_3
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    move-result-object v6

    move v10, v7

    move-object v7, v6

    .line 603
    :goto_12
    if-eqz v7, :cond_16

    :try_start_16
    move-object v0, v7

    check-cast v0, Ljava/lang/Boolean;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_18

    .line 604
    :cond_16
    const-string/jumbo v6, "SetupTask"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "setup: tryLoadUCCore("

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v5, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->pkgName:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v18, ")="

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_3
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 606
    const/16 v5, 0x2328

    if-le v10, v5, :cond_17

    move v8, v10

    .line 607
    goto/16 :goto_c

    .line 594
    :catch_5
    move-exception v6

    .line 595
    :try_start_17
    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x4

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_b
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_3
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    move-result v7

    .line 596
    :goto_13
    :try_start_18
    const-string/jumbo v19, "SetupTask"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string/jumbo v21, "setup: tryLoadUCCore("

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v5, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->pkgName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ")="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-static {v0, v6}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_3
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    move/from16 v22, v7

    move-object v7, v10

    move/from16 v10, v22

    .line 602
    goto :goto_12

    .line 599
    :catch_6
    move-exception v6

    move v6, v7

    :try_start_19
    const-string/jumbo v7, "tryLoadUCCore"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Class;

    const/16 v19, 0x0

    const-class v20, Landroid/content/Context;

    aput-object v20, v10, v19

    const/16 v19, 0x1

    const-class v20, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;

    aput-object v20, v10, v19

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v3, v19, v20

    const/16 v20, 0x1

    aput-object v5, v19, v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v7, v10, v1}, Lcom/uc/webview/export/internal/utility/ReflectionUtil;->invoke(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move v10, v6

    goto/16 :goto_12

    .line 609
    :cond_17
    const/16 v6, 0x9

    move v8, v6

    .line 610
    goto/16 :goto_c

    .line 614
    :cond_18
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v6

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_19

    iget-object v6, v5, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->browserIFModule:Landroid/util/Pair;

    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    const-string/jumbo v7, "com.UCMobile"

    const/4 v10, 0x0

    invoke-static {v6, v3, v3, v7, v10}, Lcom/uc/webview/export/internal/utility/b;->a(Ljava/lang/String;Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;Landroid/webkit/ValueCallback;)Z

    move-result v6

    if-eqz v6, :cond_1a

    :cond_19
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v6

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_1b

    iget-object v6, v5, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->coreImplModule:Landroid/util/Pair;

    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    const-string/jumbo v7, "com.UCMobile"

    const/4 v10, 0x0

    invoke-static {v6, v3, v3, v7, v10}, Lcom/uc/webview/export/internal/utility/b;->a(Ljava/lang/String;Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;Landroid/webkit/ValueCallback;)Z

    move-result v6

    if-nez v6, :cond_1b

    .line 616
    :cond_1a
    const-string/jumbo v5, "SetupTask"

    const-string/jumbo v6, "setup: check core signature = false."

    invoke-static {v5, v6}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    const/16 v6, 0xa

    move v8, v6

    .line 619
    goto/16 :goto_c

    .line 623
    :cond_1b
    new-instance v7, Lcom/uc/webview/export/utility/SetupTask$a;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v5, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->browserIFModule:Landroid/util/Pair;

    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v10, ":"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v6, v5, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->coreImplModule:Landroid/util/Pair;

    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v6, v5, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->browserIFModule:Landroid/util/Pair;

    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v0, v5, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->soDirPath:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-direct {v7, v10, v6, v0, v1}, Lcom/uc/webview/export/utility/SetupTask$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 631
    const-string/jumbo v6, "com.uc.webkit.WebView"

    const/4 v10, 0x0

    invoke-static {v6, v10, v7}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v6

    .line 632
    if-nez v6, :cond_1c

    .line 633
    const-string/jumbo v5, "SetupTask"

    const-string/jumbo v6, "setup: check dynamic load result = false"

    invoke-static {v5, v6}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    const/16 v6, 0xb

    move v8, v6

    .line 636
    goto/16 :goto_c

    .line 640
    :cond_1c
    iget-object v6, v5, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->soDirPath:Ljava/lang/String;

    if-eqz v6, :cond_1d

    iget-object v6, v5, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->soDirPath:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1d

    .line 641
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v5, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->soDirPath:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v10, "/libWebViewCore7z_UC.so"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v10, v5, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->soDirPath:Ljava/lang/String;

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-static {v3, v6, v10, v0}, Lcom/uc/webview/export/utility/SetupTask;->decompress7zSo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 644
    :cond_1d
    const-string/jumbo v6, "ClassLoader"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    const-string/jumbo v6, "UCMPackage"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_3
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    move v6, v8

    .line 646
    goto/16 :goto_a

    .line 659
    :cond_1e
    const/4 v3, 0x2

    goto/16 :goto_b

    .line 667
    :cond_1f
    const/4 v3, 0x0

    :try_start_1a
    invoke-static {v3}, Lcom/uc/webview/export/internal/d;->a(Lcom/uc/webview/export/extension/NotAvailableUCListener;)V

    .line 673
    const-string/jumbo v3, "BREAKPAD_CONFIG"

    invoke-virtual {v15, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uc/webview/export/extension/BreakpadConfig;

    .line 674
    const-string/jumbo v4, "BREAKPAD_CONFIG"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    const-string/jumbo v4, "SetupTask"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "setup: BREAKPAD_CONFIG="

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    const-string/jumbo v3, "AC"

    invoke-static {v15, v3}, Lcom/uc/webview/export/utility/SetupTask;->a(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    .line 681
    const-string/jumbo v4, "AC"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    const-string/jumbo v4, "SetupTask"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "setup: AC="

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    sget-object v4, Lcom/uc/webview/export/utility/SetupTask;->b:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_1
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    .line 687
    :try_start_1b
    sget-object v3, Lcom/uc/webview/export/utility/SetupTask;->a:Ljava/util/HashMap;

    if-nez v3, :cond_20

    .line 688
    sput-object p1, Lcom/uc/webview/export/utility/SetupTask;->a:Ljava/util/HashMap;

    .line 690
    :cond_20
    monitor-exit v4
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    .line 692
    if-eqz v12, :cond_2

    :try_start_1c
    move-object/from16 v0, p0

    invoke-interface {v12, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_7
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    goto/16 :goto_3

    :catch_7
    move-exception v3

    goto/16 :goto_3

    .line 690
    :catchall_1
    move-exception v3

    :try_start_1d
    monitor-exit v4
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1

    :try_start_1e
    throw v3
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_1
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    :catch_8
    move-exception v3

    move-object v9, v4

    goto/16 :goto_3

    .line 714
    :cond_21
    const-wide/16 v3, 0x2

    invoke-static {v3, v4}, Lcom/uc/webview/export/internal/d;->b(J)V

    goto/16 :goto_0

    .line 694
    :catch_9
    move-exception v3

    goto/16 :goto_2

    :catch_a
    move-exception v3

    move v6, v8

    move-object v4, v9

    goto/16 :goto_2

    :catch_b
    move-exception v19

    goto/16 :goto_13

    :catch_c
    move-exception v6

    goto/16 :goto_f

    :cond_22
    move v3, v4

    goto/16 :goto_4

    :cond_23
    move-object v6, v7

    goto/16 :goto_10

    :cond_24
    move v6, v8

    goto/16 :goto_a

    :cond_25
    move-object v11, v4

    goto/16 :goto_9

    :cond_26
    move-object v4, v7

    goto/16 :goto_6

    :cond_27
    move-object v8, v4

    goto/16 :goto_5
.end method

.method static synthetic a()Z
    .locals 1

    .prologue
    .line 138
    sget-boolean v0, Lcom/uc/webview/export/utility/SetupTask;->h:Z

    return v0
.end method

.method private static a(Lcom/uc/webview/export/extension/BreakpadConfig;Ljava/lang/String;Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 770
    if-eqz p0, :cond_0

    .line 771
    invoke-static {p2, p1, p0}, Lcom/uc/webview/export/internal/b;->a(Landroid/content/Context;Ljava/lang/String;Lcom/uc/webview/export/extension/BreakpadConfig;)V

    .line 774
    :cond_0
    const/4 v0, 0x0

    .line 777
    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 778
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 779
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 780
    invoke-static {p2, p1}, Lcom/uc/webview/export/internal/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move v0, v1

    .line 789
    :cond_1
    :goto_0
    if-nez v0, :cond_5

    .line 795
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/app_plugins_lib/libWebCore_UC.so"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 797
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 799
    const/4 v2, 0x0

    .line 800
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 801
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "/lib/libWebCore_UC.so"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 803
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 805
    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 806
    :cond_3
    if-nez v2, :cond_7

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-static {p2, v2}, Lcom/uc/webview/export/internal/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move v0, v1

    .line 812
    :cond_4
    const-string/jumbo v2, "WebCore_UC"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v1

    .line 816
    :cond_5
    :goto_2
    if-nez v0, :cond_8

    .line 825
    const-string/jumbo v0, "WebCore_UC"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 829
    :goto_3
    return v1

    .line 782
    :cond_6
    :try_start_2
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 783
    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/uc/webview/export/internal/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move v0, v1

    .line 785
    goto :goto_0

    .line 806
    :cond_7
    :try_start_3
    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v2

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_2

    :catch_1
    move-exception v2

    goto :goto_0

    :cond_8
    move v1, v0

    goto :goto_3
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 860
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "/sdcard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 861
    const/4 v0, 0x1

    .line 863
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static final a(Ljava/lang/String;Ljava/lang/ClassLoader;)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 1219
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1220
    const-string/jumbo v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1221
    array-length v1, v2

    if-lez v1, :cond_0

    .line 1222
    const-string/jumbo v1, "com.uc.webview.browser.shell.Build"

    const/4 v3, 0x0

    invoke-static {v1, v3, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 1223
    const-string/jumbo v3, "CORE_VERSION"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1224
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1226
    const-string/jumbo v1, "SetupTask"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "isExcludedVersion: excludeRules="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", coreVersion="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1228
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1229
    array-length v4, v2

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v2, v1

    .line 1230
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 1231
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_1

    .line 1232
    const/4 v0, 0x1

    .line 1239
    :cond_0
    :goto_1
    return v0

    .line 1229
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method static synthetic a(Lcom/uc/webview/export/utility/SetupTask;)[Landroid/webkit/ValueCallback;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/uc/webview/export/utility/SetupTask;->j:[Landroid/webkit/ValueCallback;

    return-object v0
.end method

.method private b(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/uc/webview/export/utility/SetupTask;->j:[Landroid/webkit/ValueCallback;

    const/4 v1, 0x4

    aget-object v1, v0, v1

    .line 1055
    sget-object v2, Lcom/uc/webview/export/utility/SetupTask;->b:Ljava/lang/Object;

    monitor-enter v2

    .line 1057
    :try_start_0
    sget-boolean v0, Lcom/uc/webview/export/utility/SetupTask;->e:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/uc/webview/export/utility/SetupTask;->d:Z

    if-nez v0, :cond_2

    .line 1058
    :cond_0
    invoke-static {}, Lcom/uc/webview/export/internal/d;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1059
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/uc/webview/export/internal/d;->e(I)V

    .line 1061
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1097
    :goto_0
    return-void

    .line 1065
    :cond_2
    :try_start_1
    invoke-static {p1}, Lcom/uc/webview/export/internal/a/a;->b(Landroid/content/Context;)V

    .line 1067
    new-instance v0, Lcom/uc/webview/export/utility/b;

    invoke-direct {v0, p0, p1}, Lcom/uc/webview/export/utility/b;-><init>(Lcom/uc/webview/export/utility/SetupTask;Landroid/content/Context;)V

    .line 1068
    sput-object v0, Lcom/uc/webview/export/utility/SetupTask;->c:Ljava/lang/Runnable;

    .line 1070
    invoke-static {v0}, Lcom/uc/webview/export/internal/d;->a(Ljava/lang/Runnable;)V

    .line 1072
    :goto_1
    iget-boolean v3, v0, Lcom/uc/webview/export/utility/b;->b:Z

    if-nez v3, :cond_5

    .line 1073
    const-wide/16 v3, 0x64

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1081
    :catch_0
    move-exception v0

    .line 1082
    :try_start_2
    const-string/jumbo v3, "SetupTask"

    const-string/jumbo v4, "init"

    invoke-static {v3, v4, v0}, Lcom/uc/webview/export/internal/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1084
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    .line 1085
    const-string/jumbo v4, "sdk_stp_le"

    invoke-static {v4, v3}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;I)V

    .line 1087
    const/4 v3, 0x2

    invoke-static {v3}, Lcom/uc/webview/export/internal/d;->e(I)V

    .line 1089
    iget-object v3, p0, Lcom/uc/webview/export/utility/SetupTask;->k:[Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1090
    if-eqz v1, :cond_3

    :try_start_3
    invoke-interface {v1, p0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1093
    :cond_3
    :goto_2
    const/4 v0, 0x1

    :try_start_4
    sput-boolean v0, Lcom/uc/webview/export/utility/SetupTask;->e:Z

    .line 1094
    sget-object v0, Lcom/uc/webview/export/utility/SetupTask;->a:Ljava/util/HashMap;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/uc/webview/export/utility/SetupTask;->a:Ljava/util/HashMap;

    const-string/jumbo v1, "BREAKPAD_CONFIG"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1095
    invoke-static {}, Lcom/uc/webview/export/internal/b;->b()V

    .line 1097
    :cond_4
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 1075
    :cond_5
    :try_start_5
    iget-object v3, v0, Lcom/uc/webview/export/utility/b;->a:Ljava/lang/Throwable;

    if-eqz v3, :cond_6

    .line 1076
    iget-object v0, v0, Lcom/uc/webview/export/utility/b;->a:Ljava/lang/Throwable;

    throw v0

    .line 1079
    :cond_6
    invoke-static {}, Lcom/uc/webview/export/internal/d;->k()V

    .line 1080
    invoke-static {p1}, Lcom/uc/webview/export/internal/d;->b(Landroid/content/Context;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method private static b()Z
    .locals 1

    .prologue
    .line 839
    :try_start_0
    const-string/jumbo v0, "com.uc.webkit.sdk.CoreFactoryImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 840
    const/4 v0, 0x1

    .line 842
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static decompress7zSo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 727
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 728
    new-instance v0, Ljava/io/File;

    const-string/jumbo v3, "libWebCore_UC.so"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/io/File;

    const-string/jumbo v3, "0ec41bd4a70f6449cf48c0bdb8f02b9a"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    const-string/jumbo v3, "e3218dcadfd5601476f8c642ca5fe0c1"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/io/File;

    const-string/jumbo v3, "4e806c4c57a605e6977d9d6ac045f133"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/File;

    const-string/jumbo v3, "5b5b38fc6526f5ea41ab996c22506dad"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    move v0, v1

    :goto_0
    if-nez v0, :cond_2

    .line 729
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 730
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 731
    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "4e806c4c57a605e6977d9d6ac045f133"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 732
    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "0ec41bd4a70f6449cf48c0bdb8f02b9a"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 733
    invoke-static {v1, p0, p1, p2}, Lcom/uc/webview/export/utility/Utils;->decompress(ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    new-instance v1, Ljava/io/File;

    const-string/jumbo v3, "4e806c4c57a605e6977d9d6ac045f133"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 735
    if-eqz p3, :cond_2

    .line 736
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 741
    :cond_2
    return-void

    .line 728
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 738
    :cond_4
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "7Z file:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " not exists."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .prologue
    .line 235
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "ucmsdk"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 236
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 237
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 239
    :cond_0
    return-object v0
.end method

.method public static getInitInUiThreadRun()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 851
    sget-object v0, Lcom/uc/webview/export/utility/SetupTask;->c:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static getLoadedUCMPackageInfo()Lcom/uc/webview/export/internal/utility/UCMPackageInfo;
    .locals 2

    .prologue
    .line 344
    sget-object v0, Lcom/uc/webview/export/utility/SetupTask;->a:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/uc/webview/export/utility/SetupTask;->a:Ljava/util/HashMap;

    const-string/jumbo v1, "UCMPackage"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSetupThread()Z
    .locals 2

    .prologue
    .line 1249
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/uc/webview/export/utility/SetupTask;->g:Landroid/os/HandlerThread;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getException()Ljava/lang/Throwable;
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/uc/webview/export/utility/SetupTask;->k:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Throwable;

    return-object v0
.end method

.method public onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/utility/SetupTask;
    .locals 3

    .prologue
    .line 319
    const-string/jumbo v0, "setup"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/uc/webview/export/utility/SetupTask;->j:[Landroid/webkit/ValueCallback;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 332
    :goto_0
    return-object p0

    .line 321
    :cond_0
    const-string/jumbo v0, "load"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 322
    iget-object v0, p0, Lcom/uc/webview/export/utility/SetupTask;->j:[Landroid/webkit/ValueCallback;

    const/4 v1, 0x1

    aput-object p2, v0, v1

    goto :goto_0

    .line 323
    :cond_1
    const-string/jumbo v0, "init"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 324
    iget-object v0, p0, Lcom/uc/webview/export/utility/SetupTask;->j:[Landroid/webkit/ValueCallback;

    const/4 v1, 0x2

    aput-object p2, v0, v1

    goto :goto_0

    .line 325
    :cond_2
    const-string/jumbo v0, "switch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 326
    iget-object v0, p0, Lcom/uc/webview/export/utility/SetupTask;->j:[Landroid/webkit/ValueCallback;

    const/4 v1, 0x3

    aput-object p2, v0, v1

    goto :goto_0

    .line 327
    :cond_3
    const-string/jumbo v0, "exception"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 328
    iget-object v0, p0, Lcom/uc/webview/export/utility/SetupTask;->j:[Landroid/webkit/ValueCallback;

    const/4 v1, 0x4

    aput-object p2, v0, v1

    goto :goto_0

    .line 330
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "The given event:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is unknown."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1142
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 1143
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Download should not run in UI thread."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1146
    :cond_0
    iget-object v0, p0, Lcom/uc/webview/export/utility/SetupTask;->i:Ljava/util/HashMap;

    const-string/jumbo v1, "CONTEXT"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 1147
    if-nez v0, :cond_1

    .line 1148
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "OPTION_CONTEXT is required for setup."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1150
    :cond_1
    invoke-static {}, Lcom/uc/webview/export/utility/SetupTask;->b()Z

    move-result v1

    .line 1153
    :try_start_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1156
    invoke-static {}, Lcom/uc/webview/export/internal/d;->c()Z

    move-result v4

    if-nez v4, :cond_8

    move v4, v2

    .line 1157
    :goto_0
    if-eqz v4, :cond_2

    .line 1158
    const-string/jumbo v6, "sdk_stp"

    invoke-static {v6}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 1161
    :cond_2
    invoke-direct {p0, v5, v1}, Lcom/uc/webview/export/utility/SetupTask;->a(Ljava/util/HashMap;Z)V

    .line 1163
    if-eqz v4, :cond_3

    sget-object v6, Lcom/uc/webview/export/utility/SetupTask;->a:Ljava/util/HashMap;

    if-eqz v6, :cond_3

    .line 1164
    const-string/jumbo v6, "sdk_stp_s"

    invoke-static {v6}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 1167
    :cond_3
    sget-boolean v6, Lcom/uc/webview/export/utility/SetupTask;->d:Z

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/uc/webview/export/utility/SetupTask;->j:[Landroid/webkit/ValueCallback;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    iget-object v7, p0, Lcom/uc/webview/export/utility/SetupTask;->j:[Landroid/webkit/ValueCallback;

    const/4 v8, 0x4

    aget-object v7, v7, v8

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    sput-boolean v1, Lcom/uc/webview/export/utility/SetupTask;->d:Z

    const/4 v1, 0x1

    sput v1, Lcom/uc/webview/export/internal/d;->e:I

    .line 1169
    :cond_4
    :goto_1
    if-eqz v4, :cond_5

    sget-boolean v1, Lcom/uc/webview/export/utility/SetupTask;->d:Z

    if-eqz v1, :cond_5

    .line 1170
    const-string/jumbo v1, "sdk_stp_l"

    invoke-static {v1}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 1173
    :cond_5
    invoke-direct {p0, v0}, Lcom/uc/webview/export/utility/SetupTask;->b(Landroid/content/Context;)V

    .line 1175
    if-eqz v4, :cond_6

    invoke-static {}, Lcom/uc/webview/export/internal/d;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/uc/webview/export/internal/d;->f()I

    move-result v0

    if-eq v0, v12, :cond_6

    .line 1176
    const-string/jumbo v0, "sdk_stp_i"

    invoke-static {v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1180
    :cond_6
    :goto_2
    sget-object v1, Lcom/uc/webview/export/utility/SetupTask;->f:Ljava/util/LinkedList;

    monitor-enter v1

    .line 1184
    :try_start_1
    sget-object v0, Lcom/uc/webview/export/utility/SetupTask;->f:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-gtz v0, :cond_10

    .line 1185
    sget-object v0, Lcom/uc/webview/export/utility/SetupTask;->g:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 1186
    const/4 v0, 0x0

    sput-object v0, Lcom/uc/webview/export/utility/SetupTask;->g:Landroid/os/HandlerThread;

    .line 1191
    :cond_7
    :goto_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :cond_8
    move v4, v3

    .line 1156
    goto :goto_0

    .line 1167
    :cond_9
    :try_start_2
    sget-object v1, Lcom/uc/webview/export/utility/SetupTask;->a:Ljava/util/HashMap;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/uc/webview/export/utility/SetupTask;->a:Ljava/util/HashMap;

    if-ne v1, v5, :cond_4

    sget-object v8, Lcom/uc/webview/export/utility/SetupTask;->b:Ljava/lang/Object;

    monitor-enter v8
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    sget-object v1, Lcom/uc/webview/export/utility/SetupTask;->a:Ljava/util/HashMap;

    const-string/jumbo v9, "ClassLoader"

    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ClassLoader;

    sput-object v1, Lcom/uc/webview/export/internal/d;->a:Ljava/lang/ClassLoader;

    const-string/jumbo v1, "SetupTask"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "load,SDKFactory.sClassLoader["

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v10, Lcom/uc/webview/export/internal/d;->a:Ljava/lang/ClassLoader;

    invoke-virtual {v10}, Ljava/lang/Object;->hashCode()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/uc/webview/export/utility/SetupTask;->a:Ljava/util/HashMap;

    const-string/jumbo v9, "AC"

    invoke-static {v1, v9}, Lcom/uc/webview/export/utility/SetupTask;->a(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_d

    move v1, v2

    :goto_4
    invoke-static {v1}, Lcom/uc/webview/export/internal/d;->f(I)V

    sget-object v1, Lcom/uc/webview/export/utility/SetupTask;->a:Ljava/util/HashMap;

    const-string/jumbo v2, "UCMPackage"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;

    iget-object v3, v1, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->soDirPath:Ljava/lang/String;

    const-string/jumbo v2, "specified"

    iget-object v9, v1, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, v1, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->pkgName:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/uc/webview/export/utility/SetupTask;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v9, "SetupTask"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "getSoPathFromFile="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_a

    move-object v3, v2

    :cond_a
    sget-object v2, Lcom/uc/webview/export/utility/SetupTask;->a:Ljava/util/HashMap;

    const-string/jumbo v9, "BREAKPAD_CONFIG"

    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uc/webview/export/extension/BreakpadConfig;

    invoke-static {v2, v3, v0}, Lcom/uc/webview/export/utility/SetupTask;->a(Lcom/uc/webview/export/extension/BreakpadConfig;Ljava/lang/String;Landroid/content/Context;)Z

    const-string/jumbo v2, "loadPolicy"

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Type:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->pkgName:Ljava/lang/String;

    if-eqz v2, :cond_b

    const-string/jumbo v2, "\nPackage Name:"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v1, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    const-string/jumbo v2, "\nSo files path:"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v1, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->soDirPath:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, "\nDex files:\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v2, v1, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->sdkShellModule:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, "\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v2, v1, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->browserIFModule:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, "\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v2, v1, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->coreImplModule:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/uc/webview/export/internal/d;->c(Ljava/lang/String;)V

    const-string/jumbo v2, "specified"

    iget-object v1, v1, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x2

    sput v1, Lcom/uc/webview/export/internal/d;->e:I

    :goto_5
    const/4 v1, 0x1

    sput-boolean v1, Lcom/uc/webview/export/utility/SetupTask;->d:Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v6, :cond_c

    :try_start_4
    invoke-interface {v6, p0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_c
    :goto_6
    :try_start_5
    monitor-exit v8

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v0

    goto/16 :goto_2

    :cond_d
    move v1, v3

    goto/16 :goto_4

    :cond_e
    const/4 v1, 0x3

    :try_start_7
    sput v1, Lcom/uc/webview/export/internal/d;->e:I
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_5

    :catch_1
    move-exception v1

    :try_start_8
    const-string/jumbo v2, "SetupTask"

    const-string/jumbo v3, "load"

    invoke-static {v2, v3, v1}, Lcom/uc/webview/export/internal/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v2, 0x0

    sput-object v2, Lcom/uc/webview/export/utility/SetupTask;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    const-string/jumbo v3, "sdk_stp_le"

    invoke-static {v3, v2}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/uc/webview/export/utility/SetupTask;->k:[Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v7, :cond_f

    :try_start_9
    invoke-interface {v7, p0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_f
    :goto_7
    :try_start_a
    monitor-exit v8
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_1

    .line 1188
    :cond_10
    :try_start_b
    sget-object v0, Lcom/uc/webview/export/utility/SetupTask;->g:Landroid/os/HandlerThread;

    if-eqz v0, :cond_7

    .line 1189
    new-instance v2, Landroid/os/Handler;

    sget-object v0, Lcom/uc/webview/export/utility/SetupTask;->g:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sget-object v0, Lcom/uc/webview/export/utility/SetupTask;->f:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_3

    .line 1191
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    throw v0

    :catch_2
    move-exception v1

    goto :goto_6

    :catch_3
    move-exception v1

    goto :goto_7
.end method

.method public setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/utility/SetupTask;
    .locals 1

    .prologue
    .line 305
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 309
    :cond_0
    :goto_0
    return-object p0

    .line 308
    :cond_1
    iget-object v0, p0, Lcom/uc/webview/export/utility/SetupTask;->i:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public start()V
    .locals 3

    .prologue
    .line 373
    const-string/jumbo v0, "swv"

    invoke-static {v0}, Lcom/uc/webview/export/internal/d;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    const-string/jumbo v0, "swv"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/d;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 375
    iget-object v1, p0, Lcom/uc/webview/export/utility/SetupTask;->i:Ljava/util/HashMap;

    const-string/jumbo v2, "SYSTEM_WEBVIEW"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/uc/webview/export/internal/d;->f:Z

    .line 379
    iget-object v0, p0, Lcom/uc/webview/export/utility/SetupTask;->i:Ljava/util/HashMap;

    const-string/jumbo v1, "CONTEXT"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 380
    invoke-static {v0}, Lcom/uc/webview/export/internal/d;->a(Landroid/content/Context;)V

    .line 381
    iget-object v0, p0, Lcom/uc/webview/export/utility/SetupTask;->i:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/uc/webview/export/internal/d;->a(Ljava/util/Map;)V

    .line 383
    iget-object v0, p0, Lcom/uc/webview/export/utility/SetupTask;->i:Ljava/util/HashMap;

    const-string/jumbo v1, "SYSTEM_WEBVIEW"

    invoke-static {v0, v1}, Lcom/uc/webview/export/utility/SetupTask;->a(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 384
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 385
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/d;->a(J)V

    .line 386
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/uc/webview/export/internal/d;->e(I)V

    .line 398
    :goto_0
    return-void

    .line 388
    :cond_1
    iget-object v0, p0, Lcom/uc/webview/export/utility/SetupTask;->i:Ljava/util/HashMap;

    const-string/jumbo v1, "WEBVIEW_POLICY"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 389
    if-eqz v0, :cond_2

    .line 390
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/uc/webview/export/internal/d;->c:I

    .line 393
    :cond_2
    iget-object v0, p0, Lcom/uc/webview/export/utility/SetupTask;->i:Ljava/util/HashMap;

    const-string/jumbo v1, "MULTI_CORE_TYPE"

    invoke-static {v0, v1}, Lcom/uc/webview/export/utility/SetupTask;->a(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 394
    if-eqz v0, :cond_3

    .line 395
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/uc/webview/export/internal/d;->d:Z

    .line 398
    :cond_3
    sget-object v1, Lcom/uc/webview/export/utility/SetupTask;->f:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/uc/webview/export/utility/SetupTask;->g:Landroid/os/HandlerThread;

    if-nez v0, :cond_4

    new-instance v0, Lcom/uc/webview/export/utility/a;

    const-string/jumbo v2, "ucsdk_setup"

    invoke-direct {v0, v2, p0}, Lcom/uc/webview/export/utility/a;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    sput-object v0, Lcom/uc/webview/export/utility/SetupTask;->g:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    :try_start_1
    sget-object v0, Lcom/uc/webview/export/utility/SetupTask;->f:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
