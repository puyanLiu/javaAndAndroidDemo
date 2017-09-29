.class public Lcom/alipay/mobile/nebulauc/impl/UcServiceImpl;
.super Lcom/alipay/mobile/h5container/service/UcService;
.source "UcServiceImpl.java"


# static fields
.field static final TAG:Ljava/lang/String; = "UcServiceImpl"

.field private static final UC_VERSION:Ljava/lang/String; = "1.4.4"

.field private static sInitUC:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceImpl;->sInitUC:Z

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/service/UcService;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/nebulauc/impl/UcServiceImpl;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/impl/UcServiceImpl;->initUCEnvironment()V

    return-void
.end method

.method private delete(Ljava/io/File;)V
    .locals 4

    .prologue
    .line 152
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_1

    .line 157
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 158
    return-void

    .line 153
    :cond_1
    aget-object v3, v1, v0

    .line 154
    invoke-direct {p0, v3}, Lcom/alipay/mobile/nebulauc/impl/UcServiceImpl;->delete(Ljava/io/File;)V

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private initCoreEnv(Landroid/content/Context;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "/data/data/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 63
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/h5container/uc/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "1.4.4"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/dex"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 64
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "/app_plugins_lib"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 65
    const-string/jumbo v4, "CONTEXT"

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/uc/webview/export/extension/UCCore;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/utility/SetupTask;

    move-result-object v4

    .line 66
    const-string/jumbo v5, "SYSTEM_WEBVIEW"

    const-string/jumbo v6, "false"

    invoke-virtual {v4, v5, v6}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/utility/SetupTask;

    move-result-object v4

    .line 67
    const-string/jumbo v5, "loadPolicy"

    const-string/jumbo v6, "SPECIFIED_ONLY"

    invoke-virtual {v4, v5, v6}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/utility/SetupTask;

    move-result-object v4

    .line 68
    const-string/jumbo v5, "soFilePath"

    invoke-virtual {v4, v5, v2}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/utility/SetupTask;

    move-result-object v2

    .line 69
    const-string/jumbo v4, "dexFilePath"

    invoke-virtual {v2, v4, v3}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/utility/SetupTask;

    move-result-object v2

    .line 70
    const-string/jumbo v3, "AC"

    const-string/jumbo v4, "true"

    invoke-virtual {v2, v3, v4}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/utility/SetupTask;

    move-result-object v2

    .line 71
    const-string/jumbo v3, "VERIFY_POLICY"

    const/4 v4, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/utility/SetupTask;

    move-result-object v2

    .line 72
    const-string/jumbo v3, "WEBVIEW_POLICY"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/utility/SetupTask;

    move-result-object v2

    .line 73
    const-string/jumbo v3, "exception"

    .line 74
    new-instance v4, Lcom/alipay/mobile/nebulauc/impl/UcServiceImpl$1;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/nebulauc/impl/UcServiceImpl$1;-><init>(Lcom/alipay/mobile/nebulauc/impl/UcServiceImpl;)V

    .line 73
    invoke-virtual {v2, v3, v4}, Lcom/uc/webview/export/utility/SetupTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/utility/SetupTask;

    move-result-object v2

    .line 80
    invoke-virtual {v2}, Lcom/uc/webview/export/utility/SetupTask;->start()V

    .line 89
    invoke-static {v8}, Lcom/uc/webview/export/extension/UCSettings;->setEnableCustomErrorPage(Z)V

    .line 90
    invoke-static {v8}, Lcom/uc/webview/export/extension/UCSettings;->setEnableAllResourceCallBack(Z)V

    .line 91
    invoke-static {v7}, Lcom/uc/webview/export/extension/UCSettings;->setEnableAdblock(Z)V

    .line 92
    invoke-static {v7}, Lcom/uc/webview/export/extension/UCSettings;->setGlobalEnableUCProxy(Z)V

    .line 93
    invoke-static {v7}, Lcom/uc/webview/export/extension/UCSettings;->setEnableDispatcher(Z)V

    .line 94
    invoke-static {v7}, Lcom/uc/webview/export/extension/UCSettings;->setEnableMultiThreadParser(Z)V

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    .line 96
    const-string/jumbo v2, "UcServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "initCoreEnv time delta "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebulauc/util/UCH5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method private declared-synchronized initUCEnvironment()V
    .locals 5

    .prologue
    .line 40
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceImpl;->sInitUC:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 58
    :goto_0
    monitor-exit p0

    return-void

    .line 43
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    sput-boolean v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceImpl;->sInitUC:Z

    .line 44
    const-string/jumbo v0, "UcServiceImpl"

    const-string/jumbo v1, "initUCEnvironment"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulauc/util/UCH5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 47
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v2

    .line 49
    invoke-direct {p0, v2}, Lcom/alipay/mobile/nebulauc/impl/UcServiceImpl;->prepareSo(Landroid/content/Context;)V

    .line 50
    invoke-direct {p0, v2}, Lcom/alipay/mobile/nebulauc/impl/UcServiceImpl;->prepareDex(Landroid/content/Context;)V

    .line 52
    invoke-direct {p0, v2}, Lcom/alipay/mobile/nebulauc/impl/UcServiceImpl;->initCoreEnv(Landroid/content/Context;)V

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    .line 54
    const-string/jumbo v2, "UcServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "init uc environment elapse "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebulauc/util/UCH5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    :try_start_3
    const-string/jumbo v1, "UcServiceImpl"

    const-string/jumbo v2, "init uc environment exception."

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebulauc/util/UCH5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private prepareDex(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "/h5container/uc"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 121
    const-string/jumbo v1, "UcServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "prepareDex ucDir "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebulauc/util/UCH5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "1.4.4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/dex"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 124
    const-string/jumbo v2, "UcServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "prepareDex dexFolder "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebulauc/util/UCH5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 128
    const-string/jumbo v0, "UcServiceImpl"

    const-string/jumbo v1, "dexFolder exists"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulauc/util/UCH5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :goto_0
    return-void

    .line 132
    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 134
    const-string/jumbo v0, "UcServiceImpl"

    const-string/jumbo v4, "create ucDir"

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebulauc/util/UCH5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 143
    :goto_1
    const-string/jumbo v0, "UcServiceImpl"

    const-string/jumbo v3, "create dexFolder"

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebulauc/util/UCH5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 146
    sget v0, Lcom/alipay/mobile/nebulauc/R$raw;->browser_if:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "/browser_if.jar"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/alipay/mobile/nebulauc/impl/UcServiceImpl;->writeFile(ILjava/lang/String;)V

    .line 147
    sget v0, Lcom/alipay/mobile/nebulauc/R$raw;->core:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "/core.jar"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/alipay/mobile/nebulauc/impl/UcServiceImpl;->writeFile(ILjava/lang/String;)V

    .line 148
    sget v0, Lcom/alipay/mobile/nebulauc/R$raw;->sdk_shell:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "/sdk_shell.jar"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/nebulauc/impl/UcServiceImpl;->writeFile(ILjava/lang/String;)V

    goto :goto_0

    .line 137
    :cond_1
    const-string/jumbo v0, "UcServiceImpl"

    const-string/jumbo v4, "clear ucDir"

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebulauc/util/UCH5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-direct {p0, v3}, Lcom/alipay/mobile/nebulauc/impl/UcServiceImpl;->delete(Ljava/io/File;)V

    .line 139
    const-string/jumbo v0, "UcServiceImpl"

    const-string/jumbo v4, "recreate ucDir"

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebulauc/util/UCH5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    goto :goto_1
.end method

.method private prepareSo(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 101
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 103
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "/app_plugins_lib/libWebViewCore7z_UC.so"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 104
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 116
    :goto_0
    return-void

    .line 109
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "/app_plugins_lib"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 110
    const/4 v4, 0x1

    invoke-static {p1, v3, v2, v4}, Lcom/uc/webview/export/extension/UCCore;->extractWebCoreLibraryIfNeeded(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    .line 112
    const-string/jumbo v2, "UcServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "prepare so elapse "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebulauc/util/UCH5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    const-string/jumbo v1, "UcServiceImpl"

    const-string/jumbo v2, "prepare so exception."

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebulauc/util/UCH5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private writeFile(ILjava/lang/String;)V
    .locals 5

    .prologue
    .line 161
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    :goto_0
    return-void

    .line 165
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    .line 166
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getBundleContext()Lcom/alipay/mobile/framework/BundleContext;

    move-result-object v0

    .line 168
    const-string/jumbo v1, "android-phone-wallet-nebulauc"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/BundleContext;->getResourcesByBundle(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    .line 169
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 170
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 172
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 174
    :cond_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 175
    const/16 v1, 0x1000

    new-array v1, v1, [B

    .line 177
    :goto_1
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-gtz v3, :cond_2

    .line 180
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 181
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 182
    :catch_0
    move-exception v0

    .line 183
    const-string/jumbo v1, "UcServiceImpl"

    const-string/jumbo v2, "writeFile exception."

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebulauc/util/UCH5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 178
    :cond_2
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v2, v1, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public createWebView(Landroid/content/Context;)Lcom/alipay/mobile/nebula/webview/APWebView;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 205
    const-string/jumbo v0, "UcServiceImpl"

    const-string/jumbo v2, "createWebView"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebulauc/util/UCH5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 209
    :try_start_0
    new-instance v0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :goto_0
    return-object v0

    .line 210
    :catch_0
    move-exception v0

    .line 211
    const-string/jumbo v2, "UcServiceImpl"

    const-string/jumbo v3, "create uc webview exception."

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/nebulauc/util/UCH5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 212
    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public getResponse(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 4

    .prologue
    .line 220
    invoke-static {p1}, Lcom/uc/webview/export/extension/UCCore;->getResponseByUrl(Ljava/lang/String;)Lcom/uc/webview/export/WebResourceResponse;

    move-result-object v1

    .line 221
    if-nez v1, :cond_0

    .line 222
    const/4 v0, 0x0

    .line 225
    :goto_0
    return-object v0

    .line 224
    :cond_0
    new-instance v0, Landroid/webkit/WebResourceResponse;

    invoke-virtual {v1}, Lcom/uc/webview/export/WebResourceResponse;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/uc/webview/export/WebResourceResponse;->getEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/uc/webview/export/WebResourceResponse;->getData()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 189
    const-string/jumbo v0, "UcServiceImpl"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulauc/util/UCH5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    new-instance v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceImpl$2;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulauc/impl/UcServiceImpl$2;-><init>(Lcom/alipay/mobile/nebulauc/impl/UcServiceImpl;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 196
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 200
    const-string/jumbo v0, "UcServiceImpl"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulauc/util/UCH5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    return-void
.end method
