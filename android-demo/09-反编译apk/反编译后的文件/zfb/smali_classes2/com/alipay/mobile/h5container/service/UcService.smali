.class public abstract Lcom/alipay/mobile/h5container/service/UcService;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;
.source "UcService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract createWebView(Landroid/content/Context;)Lcom/alipay/mobile/nebula/webview/APWebView;
.end method

.method public abstract getResponse(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
.end method
