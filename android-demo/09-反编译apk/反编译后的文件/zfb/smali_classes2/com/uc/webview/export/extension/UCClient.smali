.class public Lcom/uc/webview/export/extension/UCClient;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation build Lcom/uc/webview/export/annotations/Api;
.end annotation


# static fields
.field public static final WEBVIEW_EVENT_TYPE_EMPTY_SCREEN:I = 0x9

.field public static final WIFI_POLICY_CONTINUE:I = 0x0

.field public static final WIFI_POLICY_INTERRUP:I = 0x1

.field public static final WIFI_POLICY_USE_FOXY_SERVER:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFirstLayoutFinished(ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    return-void
.end method

.method public onFirstVisuallyNonEmptyDraw()V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method public onMoveCursorToTextInput(Lcom/uc/webview/export/extension/UCClient$MoveCursorToTextInputResult;)V
    .locals 0

    .prologue
    .line 95
    return-void
.end method

.method public onReceivedDispatchResponse(Ljava/util/HashMap;)V
    .locals 0

    .prologue
    .line 107
    return-void
.end method

.method public onResourceDidFinishLoading(Ljava/lang/String;J)V
    .locals 0

    .prologue
    .line 148
    return-void
.end method

.method public onWebViewEvent(Lcom/uc/webview/export/WebView;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 160
    return-void
.end method

.method public onWifiSafePolicy(Lcom/uc/webview/export/WebView;Lcom/uc/webview/export/extension/IGenenalSyncResult;)V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lcom/uc/webview/export/extension/IGenenalSyncResult;->setResult(I)V

    .line 54
    invoke-interface {p2}, Lcom/uc/webview/export/extension/IGenenalSyncResult;->wakeUp()V

    .line 55
    return-void
.end method

.method public onWillInterceptResponse(Ljava/util/HashMap;)Z
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public onWillSendRequest(Lcom/uc/webview/export/WebResourceRequest;)Lcom/uc/webview/export/WebResourceRequest;
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    return-object v0
.end method

.method public shouldOverrideUrlLoading(Lcom/uc/webview/export/WebView;Ljava/lang/String;I)Z
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    return v0
.end method
