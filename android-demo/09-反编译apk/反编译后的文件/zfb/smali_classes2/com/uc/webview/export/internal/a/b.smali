.class public final Lcom/uc/webview/export/internal/a/b;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/uc/webview/export/internal/interfaces/InvokeObject;


# instance fields
.field private a:Lcom/uc/webview/export/internal/interfaces/INetworkDelegate;


# direct methods
.method public constructor <init>(Lcom/uc/webview/export/internal/interfaces/INetworkDelegate;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/uc/webview/export/internal/a/b;->a:Lcom/uc/webview/export/internal/interfaces/INetworkDelegate;

    .line 18
    return-void
.end method


# virtual methods
.method public final invoke(I[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 22
    packed-switch p1, :pswitch_data_0

    .line 36
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 25
    :pswitch_0
    aget-object v0, p2, v0

    check-cast v0, Ljava/util/Map;

    .line 26
    iget-object v1, p0, Lcom/uc/webview/export/internal/a/b;->a:Lcom/uc/webview/export/internal/interfaces/INetworkDelegate;

    new-instance v2, Lcom/uc/webview/export/internal/a/b$b;

    invoke-direct {v2, v0}, Lcom/uc/webview/export/internal/a/b$b;-><init>(Ljava/util/Map;)V

    invoke-interface {v1, v2}, Lcom/uc/webview/export/internal/interfaces/INetworkDelegate;->onSendRequest(Lcom/uc/webview/export/internal/interfaces/IRequestData;)Lcom/uc/webview/export/internal/interfaces/IRequestData;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/a/b$b;

    .line 27
    invoke-static {v0}, Lcom/uc/webview/export/internal/a/b$b;->a(Lcom/uc/webview/export/internal/a/b$b;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 30
    :pswitch_1
    aget-object v0, p2, v0

    check-cast v0, Ljava/util/Map;

    .line 31
    iget-object v1, p0, Lcom/uc/webview/export/internal/a/b;->a:Lcom/uc/webview/export/internal/interfaces/INetworkDelegate;

    new-instance v2, Lcom/uc/webview/export/internal/a/b$a;

    invoke-direct {v2, v0}, Lcom/uc/webview/export/internal/a/b$a;-><init>(Ljava/util/Map;)V

    invoke-interface {v1, v2}, Lcom/uc/webview/export/internal/interfaces/INetworkDelegate;->onReceiveResponse(Lcom/uc/webview/export/internal/interfaces/IResponseData;)Lcom/uc/webview/export/internal/interfaces/IResponseData;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/a/b$a;

    .line 32
    invoke-static {v0}, Lcom/uc/webview/export/internal/a/b$a;->a(Lcom/uc/webview/export/internal/a/b$a;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 22
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
