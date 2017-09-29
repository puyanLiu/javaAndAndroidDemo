.class final Lcom/uc/webview/export/utility/b;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public a:Ljava/lang/Throwable;

.field public b:Z

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lcom/uc/webview/export/utility/SetupTask;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/utility/SetupTask;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 1003
    iput-object p1, p0, Lcom/uc/webview/export/utility/b;->d:Lcom/uc/webview/export/utility/SetupTask;

    iput-object p2, p0, Lcom/uc/webview/export/utility/b;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1005
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/uc/webview/export/utility/b;->b:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1009
    iget-object v2, p0, Lcom/uc/webview/export/utility/b;->d:Lcom/uc/webview/export/utility/SetupTask;

    invoke-static {v2}, Lcom/uc/webview/export/utility/SetupTask;->a(Lcom/uc/webview/export/utility/SetupTask;)[Landroid/webkit/ValueCallback;

    move-result-object v2

    aget-object v2, v2, v7

    .line 1010
    iget-object v3, p0, Lcom/uc/webview/export/utility/b;->d:Lcom/uc/webview/export/utility/SetupTask;

    invoke-static {v3}, Lcom/uc/webview/export/utility/SetupTask;->a(Lcom/uc/webview/export/utility/SetupTask;)[Landroid/webkit/ValueCallback;

    move-result-object v3

    const/4 v4, 0x3

    aget-object v3, v3, v4

    .line 1013
    :try_start_0
    iget-boolean v4, p0, Lcom/uc/webview/export/utility/b;->b:Z

    if-nez v4, :cond_4

    .line 1014
    iget-object v4, p0, Lcom/uc/webview/export/utility/b;->c:Landroid/content/Context;

    invoke-static {v4}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 1018
    invoke-static {}, Lcom/uc/webview/export/internal/d;->j()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 1020
    invoke-static {}, Lcom/uc/webview/export/utility/SetupTask;->a()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/uc/webview/export/utility/Utils;->checkSupportSamplerExternalOES()Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v1

    .line 1024
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/uc/webview/export/utility/b;->c:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static {v4, v0, v5}, Lcom/uc/webview/export/internal/a/a;->a(Landroid/content/Context;ZZ)Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    move-result-object v0

    .line 1025
    new-instance v4, Lcom/uc/webview/export/utility/c;

    iget-object v5, p0, Lcom/uc/webview/export/utility/b;->d:Lcom/uc/webview/export/utility/SetupTask;

    iget-object v6, p0, Lcom/uc/webview/export/utility/b;->c:Landroid/content/Context;

    invoke-direct {v4, v5, v6}, Lcom/uc/webview/export/utility/c;-><init>(Lcom/uc/webview/export/utility/SetupTask;Landroid/content/Context;)V

    invoke-interface {v0, v4}, Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;->setLocationManagerUC(Lcom/uc/webview/export/extension/ILocationManager;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1028
    if-eqz v2, :cond_1

    :try_start_1
    iget-object v4, p0, Lcom/uc/webview/export/utility/b;->d:Lcom/uc/webview/export/utility/SetupTask;

    invoke-interface {v2, v4}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1030
    :cond_1
    :goto_1
    :try_start_2
    invoke-static {}, Lcom/uc/webview/export/internal/d;->c()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-boolean v2, Lcom/uc/webview/export/internal/d;->d:Z

    if-nez v2, :cond_3

    invoke-static {}, Lcom/uc/webview/export/internal/d;->f()I

    move-result v2

    if-ne v2, v7, :cond_3

    .line 1031
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Init success but disallow switch to UC from android."

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1045
    :catch_0
    move-exception v0

    .line 1046
    :try_start_3
    iput-object v0, p0, Lcom/uc/webview/export/utility/b;->a:Ljava/lang/Throwable;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1048
    iput-boolean v1, p0, Lcom/uc/webview/export/utility/b;->b:Z

    .line 1049
    :goto_2
    return-void

    .line 1022
    :cond_2
    :try_start_4
    invoke-static {}, Lcom/uc/webview/export/internal/d;->j()I

    move-result v4

    if-ne v4, v1, :cond_0

    move v0, v1

    goto :goto_0

    .line 1033
    :cond_3
    invoke-static {}, Lcom/uc/webview/export/internal/d;->c()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/uc/webview/export/internal/d;->f()I

    move-result v2

    if-ne v2, v7, :cond_5

    .line 1034
    const-wide/16 v4, 0x4

    invoke-static {v4, v5}, Lcom/uc/webview/export/internal/d;->a(J)V

    .line 1035
    sget-object v2, Lcom/uc/webview/export/internal/d;->l:Ljava/util/Map;

    const-string/jumbo v4, "sdk_eci"

    invoke-interface {v2, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1040
    :goto_3
    sput-object v0, Lcom/uc/webview/export/internal/d;->b:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    .line 1041
    invoke-static {}, Lcom/uc/webview/export/internal/a/a;->k()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/uc/webview/export/internal/d;->e(I)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1043
    if-eqz v3, :cond_4

    :try_start_5
    iget-object v0, p0, Lcom/uc/webview/export/utility/b;->d:Lcom/uc/webview/export/utility/SetupTask;

    invoke-interface {v3, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1048
    :cond_4
    :goto_4
    iput-boolean v1, p0, Lcom/uc/webview/export/utility/b;->b:Z

    goto :goto_2

    .line 1037
    :cond_5
    const-wide/16 v4, 0x4

    :try_start_6
    invoke-static {v4, v5}, Lcom/uc/webview/export/internal/d;->b(J)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 1048
    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lcom/uc/webview/export/utility/b;->b:Z

    throw v0

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v2

    goto :goto_1
.end method
