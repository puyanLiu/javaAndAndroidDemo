.class public final Lcom/uc/webview/export/internal/utility/UCMPackageInfo;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation build Lcom/uc/webview/export/annotations/Interface;
.end annotation


# static fields
.field public static final BROWSER_IF_TEST_CLASS:Ljava/lang/String; = "com.uc.webview.browser.internal.interfaces.IBrowserWebView"

.field public static final CORE_IMPL_TEST_CLASS:Ljava/lang/String; = "com.uc.webkit.sdk.CoreFactoryImpl"

.field public static final DYNAMIC_LOAD_RESULT_TEST_CLASS:Ljava/lang/String; = "com.uc.webkit.WebView"

.field public static final SDK_DISABLED_FILE_PATH:Ljava/lang/String; = "/coredata/e1df430e25e9dacb26ead508abb3413f"

.field public static final SDK_SHELL_TEST_CLASS:Ljava/lang/String; = "com.uc.webview.browser.shell.SdkAuthentication"

.field public static final SPECIFIED_PKG_NAME:Ljava/lang/String; = "specified"

.field public static final UCM_PKG_PREFIX:Ljava/lang/String; = "com.UCMobile"

.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/io/File;


# instance fields
.field public final browserIFModule:Landroid/util/Pair;

.field public final coreImplModule:Landroid/util/Pair;

.field public final dataDir:Ljava/lang/String;

.field public final disabledFilePath:Ljava/lang/String;

.field public final isSpecified:Z

.field public final pkgName:Ljava/lang/String;

.field public final sdkShellModule:Landroid/util/Pair;

.field public final soDirPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 120
    sput-object v0, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->a:Ljava/lang/String;

    .line 121
    sput-object v0, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->b:Ljava/lang/String;

    .line 122
    sput-object v0, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->c:Ljava/lang/String;

    .line 123
    sput-object v0, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->d:Ljava/lang/String;

    .line 125
    sput-object v0, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->e:Ljava/lang/String;

    .line 126
    sput-object v0, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->f:Ljava/lang/String;

    .line 128
    sput-object v0, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->g:Ljava/io/File;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    sget-object v0, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->a:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->pkgName:Ljava/lang/String;

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->e:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/coredata/e1df430e25e9dacb26ead508abb3413f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->disabledFilePath:Ljava/lang/String;

    .line 60
    sget-object v0, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->f:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->f:Ljava/lang/String;

    :goto_2
    iput-object v0, p0, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->soDirPath:Ljava/lang/String;

    .line 65
    sget-object v0, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->dataDir:Ljava/lang/String;

    .line 70
    iget-object v0, p0, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->pkgName:Ljava/lang/String;

    const-string/jumbo v1, "specified"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->isSpecified:Z

    .line 75
    new-instance v1, Landroid/util/Pair;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->e:Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->e:Ljava/lang/String;

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "/browser_if.jar"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->c:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->browserIFModule:Landroid/util/Pair;

    .line 82
    new-instance v1, Landroid/util/Pair;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->e:Ljava/lang/String;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->e:Ljava/lang/String;

    :goto_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "/sdk_shell.jar"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->c:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->sdkShellModule:Landroid/util/Pair;

    .line 89
    new-instance v1, Landroid/util/Pair;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->e:Ljava/lang/String;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->e:Ljava/lang/String;

    :goto_5
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "/core.jar"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->c:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->coreImplModule:Landroid/util/Pair;

    .line 276
    invoke-static {}, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->cleanOldOdexFilesBeforeLoaded()Ljava/lang/Boolean;

    .line 277
    return-void

    .line 50
    :cond_0
    const-string/jumbo v0, "com.UCMobile"

    goto/16 :goto_0

    .line 55
    :cond_1
    sget-object v0, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->b:Ljava/lang/String;

    goto/16 :goto_1

    .line 60
    :cond_2
    sget-object v0, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->d:Ljava/lang/String;

    goto/16 :goto_2

    .line 75
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "/com/browser_if/dex"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 82
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "/com/sdk_shell/dex"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 89
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "/com/core/dex"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method private static a(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .prologue
    .line 288
    sget-object v0, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->g:Ljava/io/File;

    if-nez v0, :cond_0

    .line 290
    :try_start_0
    const-string/jumbo v0, "odexs"

    invoke-static {p0, v0}, Lcom/uc/webview/export/utility/SetupTask;->getDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->g:Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    :cond_0
    :goto_0
    sget-object v0, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->g:Ljava/io/File;

    return-object v0

    .line 292
    :catch_0
    move-exception v0

    const-string/jumbo v0, "odexs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->g:Ljava/io/File;

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;I)Ljava/io/File;
    .locals 3

    .prologue
    .line 280
    invoke-static {p0}, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 281
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 282
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 283
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 284
    :cond_0
    return-object v1
.end method

.method public static cleanOldOdexFilesAfterLoaded(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 321
    invoke-static {}, Lcom/uc/webview/export/internal/d;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/uc/webview/export/internal/d;->f()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 322
    invoke-static {}, Lcom/uc/webview/export/utility/SetupTask;->getLoadedUCMPackageInfo()Lcom/uc/webview/export/internal/utility/UCMPackageInfo;

    move-result-object v0

    .line 323
    if-eqz v0, :cond_0

    .line 324
    invoke-static {p0}, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 325
    new-instance v2, Ljava/io/File;

    iget-object v0, v0, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->coreImplModule:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 326
    const/4 v0, 0x1

    invoke-static {v1, v0, v2}, Lcom/uc/webview/export/utility/Utils;->recursiveDelete(Ljava/io/File;ZLjava/io/File;)V

    .line 329
    :cond_0
    return-void
.end method

.method public static cleanOldOdexFilesBeforeLoaded()Ljava/lang/Boolean;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 301
    sget-object v0, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->e:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "/sdk_shell.jar"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 303
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ".dex"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 304
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 305
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v0

    .line 307
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/browser_if.jar"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 308
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x4

    invoke-virtual {v2, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ".dex"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 309
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 310
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v0

    .line 312
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/core.jar"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 313
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x4

    invoke-virtual {v2, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".dex"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 314
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 315
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v0

    .line 317
    :cond_1
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_2
    move v0, v1

    goto/16 :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public static declared-synchronized create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/internal/utility/UCMPackageInfo;
    .locals 2

    .prologue
    .line 137
    const-class v1, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "specified"

    sput-object v0, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->a:Ljava/lang/String;

    .line 138
    sput-object p2, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->f:Ljava/lang/String;

    .line 139
    sput-object p1, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->b:Ljava/lang/String;

    sput-object p1, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->e:Ljava/lang/String;

    .line 140
    sget-object v0, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {p0, v0}, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->a(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->c:Ljava/lang/String;

    .line 142
    new-instance v0, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;

    invoke-direct {v0}, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getInstalledUCMPackageInfos(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 6

    .prologue
    .line 153
    const-class v1, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->e:Ljava/lang/String;

    .line 154
    const/4 v0, 0x0

    sput-object v0, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->f:Ljava/lang/String;

    .line 156
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v2, 0x40

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 158
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 159
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 160
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v4, v4, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v4, :cond_0

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v4, v4

    if-lez v4, :cond_0

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "308202153082017ea00302010202044d92c9ac300d06092a864886f70d0101050500304e310b300906035504061302636e310b3009060355040813026764310b300906035504071302677a310b3009060355040a13027563310b3009060355040b13027563310b30090603550403130275633020170d3131303333303036313135365a180f32303635313233313036313135365a304e310b300906035504061302636e310b3009060355040813026764310b300906035504071302677a310b3009060355040a13027563310b3009060355040b13027563310b300906035504031302756330819f300d06092a864886f70d010101050003818d0030818902818100aac959f5439f1595907c7fa43a6d628fa6c6e0006470d122ee5edac296e51d24450acf16e3a4aa8b75735e23a8a7cd4925825a9e3311d6c6d4024b4e837d613bb037a25e898380625b042c1cb7eb017f86772b4ae10256f840d75a9b4f646f2fd7a178e58035182358c1eb2b940307107af050384f3b2763b186679e371ea5c90203010001300d06092a864886f70d010105050003818100a635800a51087088b481823651d212253fcc0fa4b97dc872f9f1c47b723e1a31e4c53ddaf8d7f9e0b754f579c01c887fd6f1de1368594f8262a77e95582ad818bcffd02b9e36a1afe462b220acc6ca00bb98a2d07a484257ab43759231c7134e89168048f05bb3ed20438b045b3e5259488a80fe64888cc89202d33c57824fc1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 162
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    sput-object v4, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->a:Ljava/lang/String;

    .line 163
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    sput-object v0, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->b:Ljava/lang/String;

    .line 164
    sget-object v0, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {p0, v0}, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->a(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->c:Ljava/lang/String;

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->b:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "/com/core/lib"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->d:Ljava/lang/String;

    .line 166
    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/libWebCore_UC.so"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->b:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "/lib"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->d:Ljava/lang/String;

    .line 169
    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/libWebCore_UC.so"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->b:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "/native"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->d:Ljava/lang/String;

    .line 172
    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/libWebCore_UC.so"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 174
    const/4 v0, 0x0

    sput-object v0, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->d:Ljava/lang/String;

    .line 179
    :cond_1
    new-instance v0, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;

    invoke-direct {v0}, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;-><init>()V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 182
    :cond_2
    monitor-exit v1

    return-object v2
.end method

.method public static getUCMInstallFlag(Landroid/content/Context;)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 255
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v2, 0x40

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 257
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 258
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v4, "com.UCMobile"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v3, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v3, :cond_1

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v3, v3

    if-lez v3, :cond_1

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "308202153082017ea00302010202044d92c9ac300d06092a864886f70d0101050500304e310b300906035504061302636e310b3009060355040813026764310b300906035504071302677a310b3009060355040a13027563310b3009060355040b13027563310b30090603550403130275633020170d3131303333303036313135365a180f32303635313233313036313135365a304e310b300906035504061302636e310b3009060355040813026764310b300906035504071302677a310b3009060355040a13027563310b3009060355040b13027563310b300906035504031302756330819f300d06092a864886f70d010101050003818d0030818902818100aac959f5439f1595907c7fa43a6d628fa6c6e0006470d122ee5edac296e51d24450acf16e3a4aa8b75735e23a8a7cd4925825a9e3311d6c6d4024b4e837d613bb037a25e898380625b042c1cb7eb017f86772b4ae10256f840d75a9b4f646f2fd7a178e58035182358c1eb2b940307107af050384f3b2763b186679e371ea5c90203010001300d06092a864886f70d010105050003818100a635800a51087088b481823651d212253fcc0fa4b97dc872f9f1c47b723e1a31e4c53ddaf8d7f9e0b754f579c01c887fd6f1de1368594f8262a77e95582ad818bcffd02b9e36a1afe462b220acc6ca00bb98a2d07a484257ab43759231c7134e89168048f05bb3ed20438b045b3e5259488a80fe64888cc89202d33c57824fc1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 262
    const/4 v0, 0x1

    .line 271
    :goto_0
    return v0

    .line 264
    :cond_1
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v4, "com.UCMobile.intl"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v3, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v3, :cond_0

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v3, v3

    if-lez v3, :cond_0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "308202153082017ea00302010202044d92c9ac300d06092a864886f70d0101050500304e310b300906035504061302636e310b3009060355040813026764310b300906035504071302677a310b3009060355040a13027563310b3009060355040b13027563310b30090603550403130275633020170d3131303333303036313135365a180f32303635313233313036313135365a304e310b300906035504061302636e310b3009060355040813026764310b300906035504071302677a310b3009060355040a13027563310b3009060355040b13027563310b300906035504031302756330819f300d06092a864886f70d010101050003818d0030818902818100aac959f5439f1595907c7fa43a6d628fa6c6e0006470d122ee5edac296e51d24450acf16e3a4aa8b75735e23a8a7cd4925825a9e3311d6c6d4024b4e837d613bb037a25e898380625b042c1cb7eb017f86772b4ae10256f840d75a9b4f646f2fd7a178e58035182358c1eb2b940307107af050384f3b2763b186679e371ea5c90203010001300d06092a864886f70d010105050003818100a635800a51087088b481823651d212253fcc0fa4b97dc872f9f1c47b723e1a31e4c53ddaf8d7f9e0b754f579c01c887fd6f1de1368594f8262a77e95582ad818bcffd02b9e36a1afe462b220acc6ca00bb98a2d07a484257ab43759231c7134e89168048f05bb3ed20438b045b3e5259488a80fe64888cc89202d33c57824fc1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 271
    goto :goto_0
.end method

.method public static declared-synchronized getUninstalledUCMPackageInfos(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/List;
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 194
    const-class v5, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;

    monitor-enter v5

    if-eqz p3, :cond_3

    move-object v4, p3

    .line 196
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 198
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "/sdk_shell.jar"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "/browser_if.jar"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "/core.jar"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    move v2, v3

    .line 202
    :goto_1
    if-eqz v2, :cond_1

    .line 206
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_9

    .line 207
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string/jumbo v6, "/lib"

    invoke-direct {v1, p1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 208
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 209
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 215
    :goto_2
    if-eqz v2, :cond_1

    .line 216
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v1}, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/internal/utility/UCMPackageInfo;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 222
    if-eqz v1, :cond_6

    .line 223
    array-length v2, v1

    :goto_3
    if-ge v0, v2, :cond_6

    aget-object v6, v1, v0

    .line 224
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 225
    invoke-static {p0, v6, p2, v4}, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->getUninstalledUCMPackageInfos(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/List;

    .line 223
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 194
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v1

    goto/16 :goto_0

    :cond_4
    move v2, v0

    .line 198
    goto :goto_1

    :cond_5
    move-object v1, p2

    move v2, v0

    .line 211
    goto :goto_2

    .line 232
    :cond_6
    if-nez p3, :cond_8

    .line 233
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v3, :cond_7

    .line 234
    new-instance v0, Lcom/uc/webview/export/internal/utility/c;

    invoke-direct {v0}, Lcom/uc/webview/export/internal/utility/c;-><init>()V

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 243
    :cond_7
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/uc/webview/export/internal/utility/d;

    invoke-direct {v1, p0}, Lcom/uc/webview/export/internal/utility/d;-><init>(Landroid/content/Context;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    :cond_8
    monitor-exit v5

    return-object v4

    .line 194
    :catchall_0
    move-exception v0

    monitor-exit v5

    throw v0

    :cond_9
    move-object v1, p2

    goto :goto_2
.end method
