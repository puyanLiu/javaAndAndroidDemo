.class final Lcom/uc/webview/export/utility/download/j;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/webkit/ValueCallback;


# instance fields
.field final synthetic a:Landroid/webkit/ValueCallback;

.field final synthetic b:Lcom/uc/webview/export/utility/download/UpdateTask;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/utility/download/UpdateTask;Landroid/webkit/ValueCallback;)V
    .locals 0

    .prologue
    .line 299
    iput-object p1, p0, Lcom/uc/webview/export/utility/download/j;->b:Lcom/uc/webview/export/utility/download/UpdateTask;

    iput-object p2, p0, Lcom/uc/webview/export/utility/download/j;->a:Landroid/webkit/ValueCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 14

    .prologue
    const-wide/16 v12, 0x64

    const/4 v0, -0x1

    const-wide/16 v10, 0xa

    const-wide/16 v3, 0x0

    .line 299
    check-cast p1, Lcom/uc/webview/export/utility/download/DownloadTask;

    :try_start_0
    iget-object v1, p0, Lcom/uc/webview/export/utility/download/j;->a:Landroid/webkit/ValueCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/uc/webview/export/utility/download/j;->a:Landroid/webkit/ValueCallback;

    iget-object v2, p0, Lcom/uc/webview/export/utility/download/j;->b:Lcom/uc/webview/export/utility/download/UpdateTask;

    invoke-interface {v1, v2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Lcom/uc/webview/export/utility/download/DownloadTask;->getTotalSize()J

    move-result-wide v1

    cmp-long v5, v1, v3

    if-nez v5, :cond_5

    move-wide v1, v3

    :goto_1
    cmp-long v5, v1, v12

    if-gtz v5, :cond_1

    cmp-long v5, v1, v3

    if-gez v5, :cond_6

    :cond_1
    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/uc/webview/export/utility/download/j;->b:Lcom/uc/webview/export/utility/download/UpdateTask;

    invoke-static {v2}, Lcom/uc/webview/export/utility/download/UpdateTask;->e(Lcom/uc/webview/export/utility/download/UpdateTask;)I

    move-result v2

    if-gt v1, v2, :cond_2

    const/16 v2, 0x64

    if-ne v1, v2, :cond_4

    :cond_2
    iget-object v2, p0, Lcom/uc/webview/export/utility/download/j;->b:Lcom/uc/webview/export/utility/download/UpdateTask;

    invoke-static {v2}, Lcom/uc/webview/export/utility/download/UpdateTask;->f(Lcom/uc/webview/export/utility/download/UpdateTask;)I

    const-string/jumbo v2, "sdk_ucm_p"

    invoke-static {v2, v1}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;I)V

    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Lcom/uc/webview/export/utility/download/DownloadTask;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v5

    invoke-virtual {v1}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v1

    const-wide/32 v7, 0x100000

    div-long v7, v1, v7

    const-string/jumbo v9, "sdk_ucm_dm"

    long-to-int v7, v7

    invoke-static {v9, v7}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;I)V

    cmp-long v7, v5, v3

    if-nez v7, :cond_7

    move-wide v1, v3

    :goto_3
    cmp-long v5, v1, v12

    if-gtz v5, :cond_3

    cmp-long v3, v1, v3

    if-gez v3, :cond_8

    :cond_3
    :goto_4
    const-string/jumbo v1, "sdk_ucm_dp"

    invoke-static {v1, v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;I)V

    :cond_4
    :goto_5
    return-void

    :cond_5
    invoke-virtual {p1}, Lcom/uc/webview/export/utility/download/DownloadTask;->getCurrentSize()J

    move-result-wide v5

    mul-long/2addr v5, v10

    div-long v1, v5, v1

    mul-long/2addr v1, v10

    goto :goto_1

    :cond_6
    long-to-int v1, v1

    goto :goto_2

    :cond_7
    mul-long/2addr v1, v10

    div-long/2addr v1, v5
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    mul-long/2addr v1, v10

    goto :goto_3

    :cond_8
    long-to-int v0, v1

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_0
.end method
