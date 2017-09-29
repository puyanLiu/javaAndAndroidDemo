.class Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "AndroidWebViewClient.java"


# static fields
.field private static final synthetic e:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final synthetic f:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final synthetic g:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field private a:Lcom/alipay/mobile/nebula/webview/APWebView;

.field private b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

.field private c:J

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string/jumbo v1, "AndroidWebViewClient.java"

    const-class v2, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "onPageStarted"

    const-string/jumbo v3, "com.alipay.mobile.nebulacore.android.AndroidWebViewClient"

    const-string/jumbo v4, "android.webkit.WebView:java.lang.String:android.graphics.Bitmap"

    const-string/jumbo v5, "view:url:favicon"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x2c

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->e:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "onPageFinished"

    const-string/jumbo v3, "com.alipay.mobile.nebulacore.android.AndroidWebViewClient"

    const-string/jumbo v4, "android.webkit.WebView:java.lang.String"

    const-string/jumbo v5, "view:url"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x3d

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->f:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "onLoadResource"

    const-string/jumbo v3, "com.alipay.mobile.nebulacore.android.AndroidWebViewClient"

    const-string/jumbo v4, "android.webkit.WebView:java.lang.String"

    const-string/jumbo v5, "view:url"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x45

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->g:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method constructor <init>(Lcom/alipay/mobile/nebula/webview/APWebView;Lcom/alipay/mobile/nebula/webview/APWebViewClient;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 33
    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    .line 34
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    .line 35
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getUid(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->d:I

    .line 36
    return-void
.end method

.method private a()J
    .locals 3

    .prologue
    .line 52
    const-wide/16 v0, 0x0

    .line 54
    :try_start_0
    iget v2, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->d:I

    invoke-static {v2}, Landroid/net/TrafficStats;->getUidRxBytes(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 57
    :goto_0
    return-wide v0

    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, v1, p2, p3}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->doUpdateVisitedHistory(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Z)V

    .line 117
    :cond_0
    return-void
.end method

.method public onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, v1, p2, p3}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onFormResubmission(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/os/Message;Landroid/os/Message;)V

    .line 109
    :cond_0
    return-void
.end method

.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    sget-object v0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->g:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1, p2}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 70
    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/aspect/Monitor;->ajc$before$com_alipay_mobile_aspect_Monitor$15$c358d000(Lorg/aspectj/lang/JoinPoint;)V

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, v1, p2}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onLoadResource(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;)V

    .line 73
    :cond_0
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    .prologue
    sget-object v0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->f:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1, p2}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 62
    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/aspect/Monitor;->ajc$before$com_alipay_mobile_aspect_Monitor$14$9793a1cd(Lorg/aspectj/lang/JoinPoint;)V

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    if-eqz v0, :cond_0

    .line 63
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->c:J

    sub-long/2addr v0, v2

    .line 64
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v2, v3, p2, v0, v1}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onPageFinished(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;J)V

    .line 66
    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    sget-object v0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->e:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {v0, p0, p0, v1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 45
    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/aspect/Monitor;->ajc$before$com_alipay_mobile_aspect_Monitor$13$523d7528(Lorg/aspectj/lang/JoinPoint;)V

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    if-eqz v0, :cond_0

    .line 46
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->c:J

    .line 47
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, v1, p2, p3}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onPageStarted(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 49
    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onReceivedError(Lcom/alipay/mobile/nebula/webview/APWebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_0
    return-void
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 129
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    new-instance v2, Lcom/alipay/mobile/nebulacore/android/AndroidHttpAuthHandler;

    invoke-direct {v2, p2}, Lcom/alipay/mobile/nebulacore/android/AndroidHttpAuthHandler;-><init>(Landroid/webkit/HttpAuthHandler;)V

    invoke-interface {v0, v1, v2, p3, p4}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onReceivedHttpAuthRequest(Lcom/alipay/mobile/nebula/webview/APWebView;Lcom/alipay/mobile/nebula/webview/APHttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_0
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 4

    .prologue
    .line 121
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    new-instance v2, Lcom/alipay/mobile/nebulacore/android/AndroidSslErrorHandler;

    invoke-direct {v2, p2}, Lcom/alipay/mobile/nebulacore/android/AndroidSslErrorHandler;-><init>(Landroid/webkit/SslErrorHandler;)V

    .line 123
    new-instance v3, Lcom/alipay/mobile/nebulacore/android/AndroidSslError;

    invoke-direct {v3, p3}, Lcom/alipay/mobile/nebulacore/android/AndroidSslError;-><init>(Landroid/net/http/SslError;)V

    .line 122
    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onReceivedSslError(Lcom/alipay/mobile/nebula/webview/APWebView;Lcom/alipay/mobile/nebula/webview/APSslErrorHandler;Landroid/net/http/SslError;)V

    .line 125
    :cond_0
    return-void
.end method

.method public onScaleChanged(Landroid/webkit/WebView;FF)V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, v1, p2, p3}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onScaleChanged(Lcom/alipay/mobile/nebula/webview/APWebView;FF)V

    .line 151
    :cond_0
    return-void
.end method

.method public onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, v1, p2}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onUnhandledKeyEvent(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/view/KeyEvent;)V

    .line 144
    :cond_0
    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 87
    const/4 v0, 0x0

    .line 88
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    if-eqz v1, :cond_0

    .line 89
    new-instance v0, Lcom/alipay/mobile/nebulacore/android/AndroidWebResourceRequest;

    invoke-direct {v0, p2}, Lcom/alipay/mobile/nebulacore/android/AndroidWebResourceRequest;-><init>(Landroid/webkit/WebResourceRequest;)V

    .line 90
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->shouldInterceptRequest(Lcom/alipay/mobile/nebula/webview/APWebView;Lcom/alipay/mobile/nebula/webview/APWebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    .line 92
    :cond_0
    return-object v0
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 2

    .prologue
    .line 77
    const/4 v0, 0x0

    .line 78
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    if-eqz v1, :cond_0

    .line 79
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, v1, p2}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->shouldInterceptRequest(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    .line 81
    :cond_0
    return-object v0
.end method

.method public shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, v1, p2}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->shouldOverrideKeyEvent(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, v1, p2}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->shouldOverrideUrlLoading(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
