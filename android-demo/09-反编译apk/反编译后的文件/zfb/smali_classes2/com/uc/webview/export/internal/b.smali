.class public final Lcom/uc/webview/export/internal/b;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static a:Z

.field private static b:Z

.field private static c:Lcom/uc/webview/export/internal/interfaces/IBreakpad;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    sput-boolean v0, Lcom/uc/webview/export/internal/b;->a:Z

    .line 32
    sput-boolean v0, Lcom/uc/webview/export/internal/b;->b:Z

    return-void
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 91
    invoke-static {}, Lcom/uc/webview/export/internal/b;->c()Lcom/uc/webview/export/internal/interfaces/IBreakpad;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    invoke-static {}, Lcom/uc/webview/export/internal/b;->c()Lcom/uc/webview/export/internal/interfaces/IBreakpad;

    move-result-object v0

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/IBreakpad;->uploadCrashLogs()V

    .line 94
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/uc/webview/export/extension/BreakpadConfig;)V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 53
    sget-boolean v0, Lcom/uc/webview/export/internal/b;->a:Z

    if-eqz v0, :cond_1

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    sput-boolean v2, Lcom/uc/webview/export/internal/b;->a:Z

    .line 57
    new-array v0, v6, [Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v2

    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v4

    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v5

    .line 58
    new-array v1, v6, [Ljava/lang/Object;

    aput-object p0, v1, v3

    aput-object p1, v1, v2

    iget-object v2, p2, Lcom/uc/webview/export/extension/BreakpadConfig;->mCrashDir:Ljava/lang/String;

    aput-object v2, v1, v4

    iget-object v2, p2, Lcom/uc/webview/export/extension/BreakpadConfig;->mUploadUrl:Ljava/lang/String;

    aput-object v2, v1, v5

    .line 60
    :try_start_0
    const-string/jumbo v2, "com.uc.webview.browser.internal.breakpad.BreakpadImpl"

    const/4 v3, 0x1

    sget-object v4, Lcom/uc/webview/export/internal/d;->a:Ljava/lang/ClassLoader;

    invoke-static {v2, v3, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 61
    const-string/jumbo v3, "loadBreakpadLibrary"

    invoke-static {v2, v3, v0, v1}, Lcom/uc/webview/export/internal/utility/ReflectionUtil;->invoke(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const/4 v0, 0x1

    sput-boolean v0, Lcom/uc/webview/export/internal/b;->b:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 64
    :goto_1
    invoke-static {}, Lcom/uc/webview/export/internal/b;->c()Lcom/uc/webview/export/internal/interfaces/IBreakpad;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    invoke-static {}, Lcom/uc/webview/export/internal/b;->c()Lcom/uc/webview/export/internal/interfaces/IBreakpad;

    move-result-object v0

    iget-object v1, p2, Lcom/uc/webview/export/extension/BreakpadConfig;->mCrashLogFileName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/uc/webview/export/internal/interfaces/IBreakpad;->setCrashLogFileName(Ljava/lang/String;)V

    .line 70
    const/4 v0, 0x1

    :try_start_1
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    .line 71
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-boolean v3, p2, Lcom/uc/webview/export/extension/BreakpadConfig;->mEnableEncryptLog:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 73
    invoke-static {}, Lcom/uc/webview/export/internal/b;->c()Lcom/uc/webview/export/internal/interfaces/IBreakpad;

    move-result-object v2

    const-string/jumbo v3, "enableEncryptLog"

    invoke-static {v2, v3, v0, v1}, Lcom/uc/webview/export/internal/utility/ReflectionUtil;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-boolean v0, p2, Lcom/uc/webview/export/extension/BreakpadConfig;->mEnableJavaLog:Z

    if-nez v0, :cond_0

    .line 76
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    .line 77
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 79
    invoke-static {}, Lcom/uc/webview/export/internal/b;->c()Lcom/uc/webview/export/internal/interfaces/IBreakpad;

    move-result-object v2

    const-string/jumbo v3, "disableLog"

    invoke-static {v2, v3, v0, v1}, Lcom/uc/webview/export/internal/utility/ReflectionUtil;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static b()V
    .locals 3

    .prologue
    .line 97
    invoke-static {}, Lcom/uc/webview/export/internal/b;->c()Lcom/uc/webview/export/internal/interfaces/IBreakpad;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 99
    :try_start_0
    invoke-static {}, Lcom/uc/webview/export/internal/d;->e()Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    invoke-static {}, Lcom/uc/webview/export/internal/b;->c()Lcom/uc/webview/export/internal/interfaces/IBreakpad;

    move-result-object v0

    const-string/jumbo v1, "core version"

    invoke-static {}, Lcom/uc/webview/export/internal/d;->e()Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    move-result-object v2

    invoke-interface {v2}, Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;->getCoreVersion()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/uc/webview/export/internal/interfaces/IBreakpad;->addHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-static {}, Lcom/uc/webview/export/internal/b;->c()Lcom/uc/webview/export/internal/interfaces/IBreakpad;

    move-result-object v0

    const-string/jumbo v1, "core buildseq"

    invoke-static {}, Lcom/uc/webview/export/internal/d;->e()Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    move-result-object v2

    invoke-interface {v2}, Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;->getCoreBuildSeq()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/uc/webview/export/internal/interfaces/IBreakpad;->addHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static c()Lcom/uc/webview/export/internal/interfaces/IBreakpad;
    .locals 1

    .prologue
    .line 40
    sget-boolean v0, Lcom/uc/webview/export/internal/b;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/uc/webview/export/internal/b;->c:Lcom/uc/webview/export/internal/interfaces/IBreakpad;

    if-nez v0, :cond_0

    .line 41
    const-string/jumbo v0, "com.uc.webview.browser.internal.breakpad.BreakpadImpl"

    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/ReflectionUtil;->newInstanceNoThrow(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/interfaces/IBreakpad;

    sput-object v0, Lcom/uc/webview/export/internal/b;->c:Lcom/uc/webview/export/internal/interfaces/IBreakpad;

    .line 43
    :cond_0
    sget-object v0, Lcom/uc/webview/export/internal/b;->c:Lcom/uc/webview/export/internal/interfaces/IBreakpad;

    return-object v0
.end method
