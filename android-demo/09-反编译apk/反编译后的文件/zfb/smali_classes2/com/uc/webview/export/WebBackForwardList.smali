.class public Lcom/uc/webview/export/WebBackForwardList;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation build Lcom/uc/webview/export/annotations/Api;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized clone()Lcom/uc/webview/export/WebBackForwardList;
    .locals 1

    .prologue
    .line 54
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 5
    invoke-virtual {p0}, Lcom/uc/webview/export/WebBackForwardList;->clone()Lcom/uc/webview/export/WebBackForwardList;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getCurrentIndex()I
    .locals 1

    .prologue
    .line 25
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized getCurrentItem()Lcom/uc/webview/export/WebHistoryItem;
    .locals 1

    .prologue
    .line 15
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized getItemAtIndex(I)Lcom/uc/webview/export/WebHistoryItem;
    .locals 1

    .prologue
    .line 35
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized getSize()I
    .locals 1

    .prologue
    .line 44
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return v0
.end method
