.class final Lcom/uc/webview/export/internal/android/i;
.super Lcom/uc/webview/export/WebBackForwardList;
.source "ProGuard"


# instance fields
.field private a:Landroid/webkit/WebBackForwardList;


# direct methods
.method constructor <init>(Landroid/webkit/WebBackForwardList;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/uc/webview/export/WebBackForwardList;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/uc/webview/export/internal/android/i;->a:Landroid/webkit/WebBackForwardList;

    .line 41
    return-void
.end method


# virtual methods
.method public final declared-synchronized getCurrentIndex()I
    .locals 1

    .prologue
    .line 55
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/i;->a:Landroid/webkit/WebBackForwardList;

    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getCurrentItem()Lcom/uc/webview/export/WebHistoryItem;
    .locals 2

    .prologue
    .line 45
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/i;->a:Landroid/webkit/WebBackForwardList;

    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 46
    if-nez v1, :cond_0

    .line 47
    const/4 v0, 0x0

    .line 49
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/uc/webview/export/internal/android/i$a;

    invoke-direct {v0, p0, v1}, Lcom/uc/webview/export/internal/android/i$a;-><init>(Lcom/uc/webview/export/internal/android/i;Landroid/webkit/WebHistoryItem;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getItemAtIndex(I)Lcom/uc/webview/export/WebHistoryItem;
    .locals 2

    .prologue
    .line 60
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/i;->a:Landroid/webkit/WebBackForwardList;

    invoke-virtual {v0, p1}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 61
    if-nez v1, :cond_0

    .line 62
    const/4 v0, 0x0

    .line 64
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/uc/webview/export/internal/android/i$a;

    invoke-direct {v0, p0, v1}, Lcom/uc/webview/export/internal/android/i$a;-><init>(Lcom/uc/webview/export/internal/android/i;Landroid/webkit/WebHistoryItem;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getSize()I
    .locals 1

    .prologue
    .line 70
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/i;->a:Landroid/webkit/WebBackForwardList;

    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getSize()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
