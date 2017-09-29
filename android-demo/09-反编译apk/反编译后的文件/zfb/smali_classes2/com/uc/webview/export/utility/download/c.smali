.class final Lcom/uc/webview/export/utility/download/c;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/uc/webview/export/utility/download/DownloadTask;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/utility/download/DownloadTask;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/uc/webview/export/utility/download/c;->a:Lcom/uc/webview/export/utility/download/DownloadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 236
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/uc/webview/export/utility/download/c;->a:Lcom/uc/webview/export/utility/download/DownloadTask;

    invoke-static {v1}, Lcom/uc/webview/export/utility/download/DownloadTask;->a(Lcom/uc/webview/export/utility/download/DownloadTask;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 237
    iget-object v1, p0, Lcom/uc/webview/export/utility/download/c;->a:Lcom/uc/webview/export/utility/download/DownloadTask;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_1
    invoke-static {v0, v2, v3}, Lcom/uc/webview/export/utility/Utils;->recursiveDelete(Ljava/io/File;ZLjava/io/File;)V

    .line 239
    monitor-exit v1

    .line 241
    :goto_0
    return-void

    .line 239
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 241
    :catch_0
    move-exception v0

    goto :goto_0
.end method
