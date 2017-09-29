.class final Lcom/uc/webview/export/utility/download/i;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/uc/webview/export/utility/download/DownloadTask;

.field final synthetic b:Lcom/uc/webview/export/utility/download/h;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/utility/download/h;Lcom/uc/webview/export/utility/download/DownloadTask;)V
    .locals 0

    .prologue
    .line 338
    iput-object p1, p0, Lcom/uc/webview/export/utility/download/i;->b:Lcom/uc/webview/export/utility/download/h;

    iput-object p2, p0, Lcom/uc/webview/export/utility/download/i;->a:Lcom/uc/webview/export/utility/download/DownloadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/i;->a:Lcom/uc/webview/export/utility/download/DownloadTask;

    invoke-virtual {v0}, Lcom/uc/webview/export/utility/download/DownloadTask;->start()Lcom/uc/webview/export/utility/download/DownloadTask;

    .line 342
    return-void
.end method
