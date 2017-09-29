.class public Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;
.super Ljava/lang/Object;
.source "H5WebViewClient.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/webview/APWebViewClient;


# static fields
.field public static final TAG:Ljava/lang/String; = "H5WebViewClient"


# instance fields
.field private a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

.field private b:Lcom/alipay/mobile/h5container/api/H5PageData;

.field private c:Lcom/alipay/mobile/h5container/api/H5AvailablePageData;

.field private d:Ljava/lang/String;

.field private e:Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;

.field private f:I

.field private g:I

.field private h:Z

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$ResourceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private j:Z


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->j:Z

    .line 97
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 98
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 99
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getAvailablePageData()Lcom/alipay/mobile/h5container/api/H5AvailablePageData;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->c:Lcom/alipay/mobile/h5container/api/H5AvailablePageData;

    .line 100
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h:Z

    .line 101
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->f:I

    .line 102
    iput v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->g:I

    .line 103
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "url"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/h5container/api/H5PageData;->pageUrl:Ljava/lang/String;

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->i:Ljava/util/Map;

    .line 105
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 107
    new-instance v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$1;-><init>(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 132
    return-void
.end method

.method private a(Landroid/net/Uri;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 7

    .prologue
    const/4 v1, 0x0

    const-wide/16 v5, 0x0

    .line 520
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->i:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move-object v0, v1

    .line 570
    :cond_1
    :goto_0
    return-object v0

    .line 524
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 525
    const-string/jumbo v0, "H5WebViewClient"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "shouldInterceptRequest "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " method "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->c:Lcom/alipay/mobile/h5container/api/H5AvailablePageData;

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->reportReqStart()V

    .line 529
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 530
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget-wide v3, v3, Lcom/alipay/mobile/h5container/api/H5PageData;->complete:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    .line 531
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget v4, v3, Lcom/alipay/mobile/h5container/api/H5PageData;->requestLoadNum:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/alipay/mobile/h5container/api/H5PageData;->requestLoadNum:I

    .line 533
    :cond_3
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget v4, v3, Lcom/alipay/mobile/h5container/api/H5PageData;->requestNum:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/alipay/mobile/h5container/api/H5PageData;->requestNum:I

    .line 534
    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->isCss(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 535
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget-wide v3, v0, Lcom/alipay/mobile/h5container/api/H5PageData;->complete:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_4

    .line 536
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget v3, v0, Lcom/alipay/mobile/h5container/api/H5PageData;->cssLoadNum:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/alipay/mobile/h5container/api/H5PageData;->cssLoadNum:I

    .line 538
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget v3, v0, Lcom/alipay/mobile/h5container/api/H5PageData;->cssReqNum:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/alipay/mobile/h5container/api/H5PageData;->cssReqNum:I

    .line 556
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->e:Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;

    if-eqz v0, :cond_5

    .line 557
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->e:Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->getContent(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    .line 558
    if-nez v0, :cond_1

    .line 564
    :cond_5
    new-instance v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$ResourceInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v0, p0, v3, v4, p2}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$ResourceInfo;-><init>(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;JLjava/lang/String;)V

    .line 565
    if-eqz v2, :cond_6

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget-object v3, v3, Lcom/alipay/mobile/h5container/api/H5PageData;->pageUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 566
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$ResourceInfo;->html:Z

    .line 568
    :cond_6
    iput-object v2, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$ResourceInfo;->url:Ljava/lang/String;

    .line 569
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->i:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 570
    goto/16 :goto_0

    .line 539
    :cond_7
    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->isJavascript(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 540
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget-wide v3, v0, Lcom/alipay/mobile/h5container/api/H5PageData;->complete:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_8

    .line 541
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget v3, v0, Lcom/alipay/mobile/h5container/api/H5PageData;->jsLoadNum:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/alipay/mobile/h5container/api/H5PageData;->jsLoadNum:I

    .line 543
    :cond_8
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget v3, v0, Lcom/alipay/mobile/h5container/api/H5PageData;->jsReqNum:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/alipay/mobile/h5container/api/H5PageData;->jsReqNum:I

    goto :goto_1

    .line 544
    :cond_9
    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->isImage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 545
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget-wide v3, v0, Lcom/alipay/mobile/h5container/api/H5PageData;->complete:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_a

    .line 546
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget v3, v0, Lcom/alipay/mobile/h5container/api/H5PageData;->imgLoadNum:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/alipay/mobile/h5container/api/H5PageData;->imgLoadNum:I

    .line 548
    :cond_a
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget v3, v0, Lcom/alipay/mobile/h5container/api/H5PageData;->imgReqNum:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/alipay/mobile/h5container/api/H5PageData;->imgReqNum:I

    goto :goto_1

    .line 550
    :cond_b
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget-wide v3, v0, Lcom/alipay/mobile/h5container/api/H5PageData;->complete:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_c

    .line 551
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget v3, v0, Lcom/alipay/mobile/h5container/api/H5PageData;->otherLoadNum:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/alipay/mobile/h5container/api/H5PageData;->otherLoadNum:I

    .line 553
    :cond_c
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget v3, v0, Lcom/alipay/mobile/h5container/api/H5PageData;->otherReqNum:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/alipay/mobile/h5container/api/H5PageData;->otherReqNum:I

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)Lcom/alipay/mobile/nebulacore/core/H5PageImpl;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    return-object v0
.end method

.method private a(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;I)V
    .locals 6

    .prologue
    .line 421
    const-string/jumbo v0, "H5WebViewClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "loadErrorPage "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " statusCode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-nez v0, :cond_1

    .line 443
    :cond_0
    :goto_0
    return-void

    .line 425
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getScriptLoader()Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->resetBridge()V

    .line 427
    const/16 v0, 0x194

    if-ne p3, v0, :cond_2

    .line 429
    const-string/jumbo v0, "NOTFOUND-ERR"

    .line 436
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 437
    const-string/jumbo v1, "H5WebViewClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "load error page for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    sget v1, Lcom/alipay/mobile/nebulacore/R$raw;->h5_page_error:I

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/global/H5ResourceManager;->getRaw(I)Ljava/lang/String;

    move-result-object v1

    .line 440
    const-string/jumbo v2, "####"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 441
    const-string/jumbo v3, "text/html"

    const-string/jumbo v4, "utf-8"

    move-object v0, p1

    move-object v1, p2

    move-object v5, p2

    invoke-interface/range {v0 .. v5}, Lcom/alipay/mobile/nebula/webview/APWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 430
    :cond_2
    if-gez p3, :cond_3

    .line 431
    const-string/jumbo v0, "LOADING-ERR"

    goto :goto_1

    .line 433
    :cond_3
    const-string/jumbo v0, "BUSY-ERR"

    goto :goto_1
.end method

.method private a(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$ResourceInfo;)V
    .locals 5

    .prologue
    .line 378
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-nez v0, :cond_0

    .line 390
    :goto_0
    return-void

    .line 381
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 382
    const-string/jumbo v1, "targetUrl"

    iget-object v2, p1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$ResourceInfo;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    const-string/jumbo v1, "method"

    iget-object v2, p1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$ResourceInfo;->method:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    const-string/jumbo v1, "type"

    iget-object v2, p1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$ResourceInfo;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    const-string/jumbo v1, "status"

    iget v2, p1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$ResourceInfo;->statusCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    const-string/jumbo v1, "start"

    iget-wide v2, p1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$ResourceInfo;->start:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$ResourceInfo;->start:J

    sub-long/2addr v1, v3

    .line 388
    const-string/jumbo v3, "duration"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    sget-object v2, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_AL_NETWORK_PERFORMANCE_ERROR:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;I)V
    .locals 0

    .prologue
    .line 67
    iput p1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->g:I

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 420
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->a(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;I)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 393
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-nez v0, :cond_0

    .line 406
    :goto_0
    return-void

    .line 397
    :cond_0
    const-string/jumbo v0, "H5WebViewClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "reportErrorPage errorCode "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget v2, v2, Lcom/alipay/mobile/h5container/api/H5PageData;->errorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 399
    const-string/jumbo v1, "errorCode"

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget v2, v2, Lcom/alipay/mobile/h5container/api/H5PageData;->errorCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 403
    const-string/jumbo v2, "networkType"

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    const-string/jumbo v1, "deviceInfo"

    sget-object v2, Lcom/alipay/mobile/nebulacore/util/H5Log;->CURRENT_DEVICE_SPEC:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string/jumbo v2, "h5PageError"

    invoke-virtual {v1, v2, v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_0
.end method

.method private a(Z)V
    .locals 3

    .prologue
    .line 409
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-nez v0, :cond_0

    .line 418
    :goto_0
    return-void

    .line 412
    :cond_0
    const/4 v0, 0x0

    .line 413
    if-eqz p1, :cond_1

    .line 414
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 415
    const-string/jumbo v1, "errorType"

    const-string/jumbo v2, "longRender"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string/jumbo v2, "h5PageAbnormal"

    invoke-virtual {v1, v2, v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->g:I

    return v0
.end method

.method static synthetic c(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)Lcom/alipay/mobile/h5container/api/H5PageData;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->j:Z

    return v0
.end method

.method static synthetic e(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->j:Z

    return-void
.end method


# virtual methods
.method public doUpdateVisitedHistory(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 637
    const-string/jumbo v0, "H5WebViewClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "doUpdateVisitedHistory "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " isReload "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h:Z

    .line 639
    return-void
.end method

.method public getJSBridge()Ljava/lang/String;
    .locals 1

    .prologue
    .line 502
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget-object v0, v0, Lcom/alipay/mobile/h5container/api/H5PageData;->pageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public onFirstVisuallyRender(Lcom/alipay/mobile/nebula/webview/APWebView;)V
    .locals 4

    .prologue
    .line 456
    const-string/jumbo v0, "H5WebViewClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onFirstVisuallyRender "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    return-void
.end method

.method public onFormResubmission(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 463
    return-void
.end method

.method public onLoadResource(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 580
    const-string/jumbo v0, "H5WebViewClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onLoadResource "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-eqz v0, :cond_0

    .line 582
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 583
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string/jumbo v2, "h5PageLoadResource"

    invoke-virtual {v1, v2, v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 586
    :cond_0
    return-void
.end method

.method public onPageFinished(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;J)V
    .locals 8

    .prologue
    .line 660
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 729
    :cond_0
    :goto_0
    return-void

    .line 664
    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget-object v0, v0, Lcom/alipay/mobile/h5container/api/H5PageData;->pageUrl:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 665
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->c:Lcom/alipay/mobile/h5container/api/H5AvailablePageData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->reportDidFinishedLoadDate(J)V

    .line 668
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget-wide v0, v0, Lcom/alipay/mobile/h5container/api/H5PageData;->appear:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 669
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget-wide v3, v3, Lcom/alipay/mobile/h5container/api/H5PageData;->start:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lcom/alipay/mobile/h5container/api/H5PageData;->appear:J

    .line 670
    const-string/jumbo v0, "H5WebViewClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "page appear "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget-wide v2, v2, Lcom/alipay/mobile/h5container/api/H5PageData;->appear:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget-wide v0, v0, Lcom/alipay/mobile/h5container/api/H5PageData;->appearFromNative:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    .line 674
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->j:Z

    if-eqz v0, :cond_a

    .line 675
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/alipay/mobile/h5container/api/H5PageData;->walletServiceStart:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lcom/alipay/mobile/h5container/api/H5PageData;->appearFromNative:J

    .line 676
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->j:Z

    .line 680
    :goto_1
    const-string/jumbo v0, "H5WebViewClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "page appear native "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget-wide v2, v2, Lcom/alipay/mobile/h5container/api/H5PageData;->appearFromNative:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    :cond_4
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 684
    const-string/jumbo v0, "url"

    invoke-virtual {v2, v0, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    invoke-interface {p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_5

    if-eqz v0, :cond_5

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string/jumbo v1, ".html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string/jumbo v1, ".htm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_5

    const/4 v0, 0x0

    .line 686
    :cond_5
    const-string/jumbo v1, "title"

    invoke-virtual {v2, v1, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    invoke-interface {p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->copyBackForwardList()Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;

    move-result-object v1

    .line 688
    invoke-interface {p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v3

    .line 689
    const/4 v0, 0x0

    .line 690
    if-eqz v1, :cond_8

    .line 691
    invoke-interface {v1}, Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;->getSize()I

    move-result v4

    .line 693
    invoke-interface {v1}, Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;->getCurrentIndex()I

    move-result v0

    .line 695
    invoke-static {v3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 698
    if-ltz v0, :cond_6

    iget v5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->f:I

    if-eq v5, v0, :cond_6

    .line 699
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h:Z

    .line 702
    :cond_6
    const-string/jumbo v5, "H5WebViewClient"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "pageIndex "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " lastPageIndex "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->f:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 703
    const-string/jumbo v7, " urlAsOriginal "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, " pageUpdated "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v6, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h:Z

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 702
    invoke-static {v5, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h:Z

    if-eqz v1, :cond_7

    .line 705
    iput v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->f:I

    .line 707
    :cond_7
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iput v0, v1, Lcom/alipay/mobile/h5container/api/H5PageData;->pageIndex:I

    .line 708
    const-string/jumbo v1, "pageIndex"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v1, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    const-string/jumbo v1, "historySize"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    :cond_8
    const-string/jumbo v1, "pageUpdated"

    iget-boolean v4, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string/jumbo v4, "h5PageFinished"

    invoke-virtual {v1, v4, v2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 714
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget-wide v6, v2, Lcom/alipay/mobile/h5container/api/H5PageData;->start:J

    sub-long/2addr v4, v6

    iput-wide v4, v1, Lcom/alipay/mobile/h5container/api/H5PageData;->complete:J

    .line 716
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget-wide v1, v1, Lcom/alipay/mobile/h5container/api/H5PageData;->pageSize:J

    const-wide/16 v4, 0x0

    cmp-long v1, v1, v4

    if-nez v1, :cond_9

    .line 717
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iput-wide p3, v1, Lcom/alipay/mobile/h5container/api/H5PageData;->pageSize:J

    .line 719
    :cond_9
    const-string/jumbo v1, "H5WebViewClient"

    const-string/jumbo v2, "start=%d^appear=%d^complete=%d^pageSize=%d"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 720
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget-wide v6, v6, Lcom/alipay/mobile/h5container/api/H5PageData;->start:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget-wide v6, v6, Lcom/alipay/mobile/h5container/api/H5PageData;->appear:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget-wide v6, v6, Lcom/alipay/mobile/h5container/api/H5PageData;->complete:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget-wide v6, v6, Lcom/alipay/mobile/h5container/api/H5PageData;->pageSize:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    .line 719
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    const-string/jumbo v1, "H5WebViewClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onPageFinished "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " originalUrl "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 722
    const-string/jumbo v3, " pageSize "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " pageIndex "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 721
    invoke-static {v1, v0}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    const-string/jumbo v0, "H5WebViewClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "pagecomplete="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget-wide v2, v2, Lcom/alipay/mobile/h5container/api/H5PageData;->complete:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "^firstByte="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget-wide v2, v2, Lcom/alipay/mobile/h5container/api/H5PageData;->firstByte:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 724
    const-string/jumbo v2, "^jsSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget-wide v2, v2, Lcom/alipay/mobile/h5container/api/H5PageData;->jsSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "^cssSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget-wide v2, v2, Lcom/alipay/mobile/h5container/api/H5PageData;->cssSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "^imgSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 725
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget-wide v2, v2, Lcom/alipay/mobile/h5container/api/H5PageData;->imgSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "^htmlSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget-wide v2, v2, Lcom/alipay/mobile/h5container/api/H5PageData;->htmlSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "^otherSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 726
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget-wide v2, v2, Lcom/alipay/mobile/h5container/api/H5PageData;->otherSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "^requestNum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget v2, v2, Lcom/alipay/mobile/h5container/api/H5PageData;->requestNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "^num404="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 727
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget v2, v2, Lcom/alipay/mobile/h5container/api/H5PageData;->num404:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "^num400="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget v2, v2, Lcom/alipay/mobile/h5container/api/H5PageData;->num400:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "^num500="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget v2, v2, Lcom/alipay/mobile/h5container/api/H5PageData;->num500:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 728
    const-string/jumbo v2, "^num1000="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget v2, v2, Lcom/alipay/mobile/h5container/api/H5PageData;->num1000:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "^sizeLimit50="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget v2, v2, Lcom/alipay/mobile/h5container/api/H5PageData;->sizeLimit50:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 723
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 678
    :cond_a
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget-wide v3, v3, Lcom/alipay/mobile/h5container/api/H5PageData;->start:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lcom/alipay/mobile/h5container/api/H5PageData;->appearFromNative:J

    goto/16 :goto_1

    .line 685
    :cond_b
    const/4 v1, 0x1

    goto/16 :goto_2
.end method

.method public onPageStarted(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 590
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-nez v0, :cond_1

    .line 633
    :cond_0
    :goto_0
    return-void

    .line 593
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->c:Lcom/alipay/mobile/h5container/api/H5AvailablePageData;

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->clear()V

    .line 594
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->c:Lcom/alipay/mobile/h5container/api/H5AvailablePageData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->setPageStartTime(J)V

    .line 595
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 596
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->h:Z

    .line 597
    const-string/jumbo v0, "H5WebViewClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onPageStarted "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " originalUrl "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    const-string/jumbo v0, "H5WebViewClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "h5_page_start url={"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget-object v0, v0, Lcom/alipay/mobile/h5container/api/H5PageData;->navUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 601
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget-object v0, v0, Lcom/alipay/mobile/h5container/api/H5PageData;->navUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget-object v2, v2, Lcom/alipay/mobile/h5container/api/H5PageData;->pageUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 602
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/alipay/mobile/h5container/api/H5PageData;->navUrl:Ljava/lang/String;

    .line 606
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 607
    const-string/jumbo v2, "url"

    invoke-virtual {v0, v2, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string/jumbo v3, "h5PageStarted"

    invoke-virtual {v2, v3, v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 611
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget-wide v2, v0, Lcom/alipay/mobile/h5container/api/H5PageData;->start:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    .line 612
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget-object v3, v3, Lcom/alipay/mobile/h5container/api/H5PageData;->pageUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget-wide v3, v3, Lcom/alipay/mobile/h5container/api/H5PageData;->pageNetLoad:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 613
    const-string/jumbo v3, "}->("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget v3, v3, Lcom/alipay/mobile/h5container/api/H5PageData;->statusCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 612
    iput-object v2, v0, Lcom/alipay/mobile/h5container/api/H5PageData;->referer:Ljava/lang/String;

    .line 615
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5PageData;->clear()V

    .line 619
    instance-of v0, p1, Lcom/alipay/mobile/nebulacore/web/H5WebView;

    if-eqz v0, :cond_4

    .line 620
    check-cast p1, Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getWebViewIndex()I

    move-result v0

    .line 622
    :goto_1
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iput v0, v2, Lcom/alipay/mobile/h5container/api/H5PageData;->webViewIndex:I

    .line 623
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/h5container/api/H5PageData;->onPageStarted(Ljava/lang/String;)V

    .line 626
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 627
    invoke-virtual {v0, v6}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 628
    const-string/jumbo v2, ".h5.m.taobao.com"

    invoke-virtual {v0, v2}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 629
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 630
    invoke-static {v2, v6, v0}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->duplicateCookieForMmstat(Landroid/content/Context;ZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 631
    sput-boolean v1, Lcom/alipay/mobile/nebulacore/util/H5Utils;->needToDuplicateCookie:Z

    goto/16 :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public onReceivedError(Lcom/alipay/mobile/nebula/webview/APWebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iput p2, v0, Lcom/alipay/mobile/h5container/api/H5PageData;->errorCode:I

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onReceivedError errorCode "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " description "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 183
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " failingUrl "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 182
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 184
    const-string/jumbo v1, "H5WebViewClient"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget v0, v0, Lcom/alipay/mobile/h5container/api/H5PageData;->errorCode:I

    if-gez v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget v1, v0, Lcom/alipay/mobile/h5container/api/H5PageData;->num1000:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/alipay/mobile/h5container/api/H5PageData;->num1000:I

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget v0, v0, Lcom/alipay/mobile/h5container/api/H5PageData;->errorCode:I

    const/16 v1, -0x61

    if-ne v0, v1, :cond_1

    .line 204
    :goto_0
    return-void

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->i:Ljava/util/Map;

    invoke-interface {v0, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$ResourceInfo;

    .line 196
    if-eqz v0, :cond_3

    iget-boolean v0, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$ResourceInfo;->html:Z

    if-eqz v0, :cond_3

    .line 197
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget v0, v0, Lcom/alipay/mobile/h5container/api/H5PageData;->statusCode:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_2

    .line 198
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iput p2, v0, Lcom/alipay/mobile/h5container/api/H5PageData;->statusCode:I

    .line 200
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->a(Z)V

    .line 202
    :cond_3
    const-string/jumbo v0, "genericError"

    invoke-direct {p0, p4, v0}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget v0, v0, Lcom/alipay/mobile/h5container/api/H5PageData;->errorCode:I

    invoke-direct {p0, p1, p4, v0}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->a(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onReceivedHttpAuthRequest(Lcom/alipay/mobile/nebula/webview/APWebView;Lcom/alipay/mobile/nebula/webview/APHttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 469
    return-void
.end method

.method public onReceivedLoginRequest(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 492
    return-void
.end method

.method public onReceivedSslError(Lcom/alipay/mobile/nebula/webview/APWebView;Lcom/alipay/mobile/nebula/webview/APSslErrorHandler;Landroid/net/http/SslError;)V
    .locals 5

    .prologue
    .line 208
    invoke-virtual {p3}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result v1

    .line 209
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget v0, v0, Lcom/alipay/mobile/h5container/api/H5PageData;->statusCode:I

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_0

    .line 210
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iput v1, v0, Lcom/alipay/mobile/h5container/api/H5PageData;->statusCode:I

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iput v1, v0, Lcom/alipay/mobile/h5container/api/H5PageData;->errorCode:I

    .line 213
    const/4 v0, 0x0

    .line 214
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_1

    .line 215
    invoke-virtual {p3}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 218
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 219
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget-object v0, v0, Lcom/alipay/mobile/h5container/api/H5PageData;->pageUrl:Ljava/lang/String;

    .line 222
    :cond_2
    const-string/jumbo v2, "H5WebViewClient"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onReceivedSslError "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", url is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 223
    const-string/jumbo v4, ", certificate is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Landroid/net/http/SslError;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/http/SslCertificate;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 222
    invoke-static {v2, v3}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    sget-boolean v2, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v2, :cond_4

    .line 225
    invoke-interface {p2}, Lcom/alipay/mobile/nebula/webview/APSslErrorHandler;->proceed()V

    .line 226
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 227
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u5f00\u53d1\u5305\u63d0\u793a\uff01"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 228
    const-string/jumbo v2, "\u5904\u7684SSL\u8bc1\u4e66\u9a8c\u8bc1\u51fa\u9519\uff01errorCode "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 227
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 229
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 230
    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/alipay/mobile/nebulacore/view/H5Toast;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 242
    :cond_3
    :goto_0
    return-void

    .line 235
    :cond_4
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-eqz v2, :cond_5

    .line 236
    const-string/jumbo v2, "sslError"

    invoke-direct {p0, v0, v2}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    :cond_5
    invoke-interface {p2}, Lcom/alipay/mobile/nebula/webview/APSslErrorHandler;->cancel()V

    .line 241
    invoke-interface {p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, v1}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->a(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onRelease()V
    .locals 1

    .prologue
    .line 732
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 733
    return-void
.end method

.method public onResourceFinishLoad(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;J)V
    .locals 6

    .prologue
    .line 299
    const-string/jumbo v0, "H5WebViewClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onResourceFinishLoad "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->i:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$ResourceInfo;

    .line 301
    if-nez v0, :cond_1

    .line 357
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    iget-boolean v1, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$ResourceInfo;->html:Z

    if-eqz v1, :cond_2

    .line 306
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget-wide v2, v1, Lcom/alipay/mobile/h5container/api/H5PageData;->htmlLoadSize:J

    add-long/2addr v2, p3

    iput-wide v2, v1, Lcom/alipay/mobile/h5container/api/H5PageData;->htmlLoadSize:J

    .line 307
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget-wide v2, v1, Lcom/alipay/mobile/h5container/api/H5PageData;->htmlSize:J

    add-long/2addr v2, p3

    iput-wide v2, v1, Lcom/alipay/mobile/h5container/api/H5PageData;->htmlSize:J

    .line 308
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget-wide v4, v4, Lcom/alipay/mobile/h5container/api/H5PageData;->start:J

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcom/alipay/mobile/h5container/api/H5PageData;->pageNetLoad:J

    .line 309
    const-string/jumbo v1, "H5WebViewClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "url "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " pageNetLoad "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget-wide v3, v3, Lcom/alipay/mobile/h5container/api/H5PageData;->pageNetLoad:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    :cond_2
    invoke-static {p2}, Lcom/alipay/mobile/nebulacore/util/H5UrlHelper;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 313
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget-wide v3, v2, Lcom/alipay/mobile/h5container/api/H5PageData;->pageLoadSize:J

    add-long/2addr v3, p3

    iput-wide v3, v2, Lcom/alipay/mobile/h5container/api/H5PageData;->pageLoadSize:J

    .line 314
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget-wide v3, v2, Lcom/alipay/mobile/h5container/api/H5PageData;->pageSize:J

    add-long/2addr v3, p3

    iput-wide v3, v2, Lcom/alipay/mobile/h5container/api/H5PageData;->pageSize:J

    .line 315
    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->isCss(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 316
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget-wide v1, v1, Lcom/alipay/mobile/h5container/api/H5PageData;->complete:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    .line 317
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget-wide v2, v1, Lcom/alipay/mobile/h5container/api/H5PageData;->cssLoadSize:J

    add-long/2addr v2, p3

    iput-wide v2, v1, Lcom/alipay/mobile/h5container/api/H5PageData;->cssLoadSize:J

    .line 319
    :cond_3
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget-wide v2, v1, Lcom/alipay/mobile/h5container/api/H5PageData;->cssSize:J

    add-long/2addr v2, p3

    iput-wide v2, v1, Lcom/alipay/mobile/h5container/api/H5PageData;->cssSize:J

    .line 347
    :cond_4
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$ResourceInfo;->start:J

    sub-long/2addr v1, v3

    .line 348
    const-wide/32 v3, 0xea60

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 352
    iget-boolean v1, v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$ResourceInfo;->html:Z

    if-eqz v1, :cond_e

    .line 353
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->a(Z)V

    goto/16 :goto_0

    .line 320
    :cond_5
    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->isJavascript(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 321
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget-wide v1, v1, Lcom/alipay/mobile/h5container/api/H5PageData;->complete:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_6

    .line 322
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget-wide v2, v1, Lcom/alipay/mobile/h5container/api/H5PageData;->jsLoadSize:J

    add-long/2addr v2, p3

    iput-wide v2, v1, Lcom/alipay/mobile/h5container/api/H5PageData;->jsLoadSize:J

    .line 324
    :cond_6
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget-wide v2, v1, Lcom/alipay/mobile/h5container/api/H5PageData;->jsSize:J

    add-long/2addr v2, p3

    iput-wide v2, v1, Lcom/alipay/mobile/h5container/api/H5PageData;->jsSize:J

    goto :goto_1

    .line 325
    :cond_7
    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->isImage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 326
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget-wide v1, v1, Lcom/alipay/mobile/h5container/api/H5PageData;->complete:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_9

    .line 327
    const-wide/32 v1, 0x32000

    cmp-long v1, p3, v1

    if-ltz v1, :cond_a

    .line 328
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget v2, v1, Lcom/alipay/mobile/h5container/api/H5PageData;->sizeLoadLimit200:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/alipay/mobile/h5container/api/H5PageData;->sizeLoadLimit200:I

    .line 332
    :cond_8
    :goto_2
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget-wide v2, v1, Lcom/alipay/mobile/h5container/api/H5PageData;->imgLoadSize:J

    add-long/2addr v2, p3

    iput-wide v2, v1, Lcom/alipay/mobile/h5container/api/H5PageData;->imgLoadSize:J

    .line 334
    :cond_9
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget-wide v2, v1, Lcom/alipay/mobile/h5container/api/H5PageData;->imgSize:J

    add-long/2addr v2, p3

    iput-wide v2, v1, Lcom/alipay/mobile/h5container/api/H5PageData;->imgSize:J

    .line 335
    const-wide/32 v1, 0x32000

    cmp-long v1, p3, v1

    if-ltz v1, :cond_b

    .line 336
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget v2, v1, Lcom/alipay/mobile/h5container/api/H5PageData;->sizeLimit200:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/alipay/mobile/h5container/api/H5PageData;->sizeLimit200:I

    goto :goto_1

    .line 329
    :cond_a
    const-wide/32 v1, 0xc800

    cmp-long v1, p3, v1

    if-ltz v1, :cond_8

    .line 330
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget v2, v1, Lcom/alipay/mobile/h5container/api/H5PageData;->sizeLoadLimit50:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/alipay/mobile/h5container/api/H5PageData;->sizeLoadLimit50:I

    goto :goto_2

    .line 337
    :cond_b
    const-wide/32 v1, 0xc800

    cmp-long v1, p3, v1

    if-ltz v1, :cond_4

    .line 338
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget v2, v1, Lcom/alipay/mobile/h5container/api/H5PageData;->sizeLimit50:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/alipay/mobile/h5container/api/H5PageData;->sizeLimit50:I

    goto/16 :goto_1

    .line 341
    :cond_c
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget-wide v1, v1, Lcom/alipay/mobile/h5container/api/H5PageData;->complete:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_d

    .line 342
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget-wide v2, v1, Lcom/alipay/mobile/h5container/api/H5PageData;->otherLoadSize:J

    add-long/2addr v2, p3

    iput-wide v2, v1, Lcom/alipay/mobile/h5container/api/H5PageData;->otherLoadSize:J

    .line 344
    :cond_d
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget-wide v2, v1, Lcom/alipay/mobile/h5container/api/H5PageData;->otherSize:J

    add-long/2addr v2, p3

    iput-wide v2, v1, Lcom/alipay/mobile/h5container/api/H5PageData;->otherSize:J

    goto/16 :goto_1

    .line 355
    :cond_e
    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->a(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$ResourceInfo;)V

    goto/16 :goto_0
.end method

.method public onResourceResponse(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/util/HashMap;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/nebula/webview/APWebView;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/16 v9, 0x1f4

    const/16 v8, 0x130

    const/16 v7, 0x190

    .line 246
    const-string/jumbo v0, "httpcode"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 247
    const-string/jumbo v0, "url"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 248
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->i:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$ResourceInfo;

    .line 249
    const-string/jumbo v3, "H5WebViewClient"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onResourceResponse statusCode "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " url "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->c:Lcom/alipay/mobile/h5container/api/H5AvailablePageData;

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->reportReqEnd()V

    .line 254
    const-string/jumbo v0, "mimetype"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 255
    iput-object v0, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$ResourceInfo;->mimeType:Ljava/lang/String;

    .line 256
    iput v2, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$ResourceInfo;->statusCode:I

    .line 257
    iget-boolean v0, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$ResourceInfo;->html:Z

    if-eqz v0, :cond_3

    .line 258
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iput v2, v0, Lcom/alipay/mobile/h5container/api/H5PageData;->errorCode:I

    .line 259
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget v0, v0, Lcom/alipay/mobile/h5container/api/H5PageData;->statusCode:I

    const/16 v3, 0xc8

    if-ne v0, v3, :cond_2

    .line 260
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iput v2, v0, Lcom/alipay/mobile/h5container/api/H5PageData;->statusCode:I

    .line 262
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget-wide v5, v5, Lcom/alipay/mobile/h5container/api/H5PageData;->start:J

    sub-long/2addr v3, v5

    iput-wide v3, v0, Lcom/alipay/mobile/h5container/api/H5PageData;->firstByte:J

    .line 264
    :cond_3
    const/16 v0, 0x12e

    if-ne v2, v0, :cond_a

    .line 265
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget v3, v0, Lcom/alipay/mobile/h5container/api/H5PageData;->num302:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/alipay/mobile/h5container/api/H5PageData;->num302:I

    .line 270
    :cond_4
    :goto_1
    const/16 v0, 0x12c

    if-lt v2, v0, :cond_5

    if-ge v2, v7, :cond_5

    if-eq v2, v8, :cond_5

    .line 271
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget v3, v0, Lcom/alipay/mobile/h5container/api/H5PageData;->num300:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/alipay/mobile/h5container/api/H5PageData;->num300:I

    .line 274
    :cond_5
    const/16 v0, 0x194

    if-ne v2, v0, :cond_6

    .line 275
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget v3, v0, Lcom/alipay/mobile/h5container/api/H5PageData;->num404:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/alipay/mobile/h5container/api/H5PageData;->num404:I

    .line 278
    :cond_6
    if-lt v2, v7, :cond_7

    if-ge v2, v9, :cond_7

    .line 279
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget v3, v0, Lcom/alipay/mobile/h5container/api/H5PageData;->num400:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/alipay/mobile/h5container/api/H5PageData;->num400:I

    .line 282
    :cond_7
    if-lt v2, v9, :cond_8

    .line 283
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget v2, v0, Lcom/alipay/mobile/h5container/api/H5PageData;->num500:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/alipay/mobile/h5container/api/H5PageData;->num500:I

    .line 286
    :cond_8
    iget v0, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$ResourceInfo;->statusCode:I

    if-lt v0, v7, :cond_0

    .line 290
    iget-boolean v0, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$ResourceInfo;->html:Z

    if-eqz v0, :cond_9

    .line 291
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$ResourceInfo;->url:Ljava/lang/String;

    const-string/jumbo v2, "genericError"

    invoke-direct {p0, v0, v2}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->a(Z)V

    .line 294
    :cond_9
    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->a(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$ResourceInfo;)V

    goto/16 :goto_0

    .line 266
    :cond_a
    if-ne v2, v8, :cond_4

    .line 267
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget v3, v0, Lcom/alipay/mobile/h5container/api/H5PageData;->num304:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/alipay/mobile/h5container/api/H5PageData;->num304:I

    goto :goto_1
.end method

.method public onScaleChanged(Lcom/alipay/mobile/nebula/webview/APWebView;FF)V
    .locals 0

    .prologue
    .line 486
    return-void
.end method

.method public onTooManyRedirects(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 576
    return-void
.end method

.method public onUnhandledKeyEvent(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/view/KeyEvent;)V
    .locals 0

    .prologue
    .line 481
    return-void
.end method

.method public onWebViewEvent(Lcom/alipay/mobile/nebula/webview/APWebView;ILjava/lang/Object;)V
    .locals 3

    .prologue
    .line 447
    const-string/jumbo v0, "H5WebViewClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onWebViewEvent "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    const/16 v0, 0x9

    if-ne p2, v0, :cond_0

    .line 449
    const-string/jumbo v0, "H5WebViewClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onWebViewEvent empty page "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->a(Z)V

    .line 452
    :cond_0
    return-void
.end method

.method public setCheckingUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public setWebProvider(Lcom/alipay/mobile/nebulacore/api/H5ContentProvider;)V
    .locals 0

    .prologue
    .line 143
    check-cast p1, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;

    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->e:Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;

    .line 144
    return-void
.end method

.method public shouldInterceptRequest(Lcom/alipay/mobile/nebula/webview/APWebView;Lcom/alipay/mobile/nebula/webview/APWebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 2

    .prologue
    .line 507
    invoke-interface {p2}, Lcom/alipay/mobile/nebula/webview/APWebResourceRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    .line 508
    invoke-interface {p2}, Lcom/alipay/mobile/nebula/webview/APWebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v1

    .line 509
    invoke-direct {p0, v1, v0}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->a(Landroid/net/Uri;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0
.end method

.method public shouldInterceptRequest(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 515
    invoke-static {p2}, Lcom/alipay/mobile/nebulacore/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 516
    const-string/jumbo v1, "GET"

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->a(Landroid/net/Uri;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0
.end method

.method public shouldInterceptResponse(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/util/HashMap;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/nebula/webview/APWebView;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 360
    const-string/jumbo v0, "httpcode"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 361
    const-string/jumbo v1, "url"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 362
    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 364
    const/16 v2, 0x64

    if-le v0, v2, :cond_0

    const/16 v2, 0x190

    if-lt v0, v2, :cond_1

    :cond_0
    if-nez p1, :cond_2

    .line 365
    :cond_1
    const/4 v0, 0x0

    .line 374
    :goto_0
    return v0

    .line 368
    :cond_2
    new-instance v2, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$2;

    invoke-direct {v2, p0, p1, v1, v0}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$2;-><init>(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;I)V

    .line 373
    const-wide/16 v0, 0x14

    .line 368
    invoke-static {v2, v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->runOnMain(Ljava/lang/Runnable;J)V

    .line 374
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public shouldOverrideKeyEvent(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 474
    const/4 v0, 0x0

    return v0
.end method

.method public shouldOverrideUrlLoading(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 148
    const-string/jumbo v2, "H5WebViewClient"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "shouldOverrideUrlLoading "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->e:Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;

    if-eqz v2, :cond_0

    .line 150
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->e:Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->disconnect()V

    .line 153
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-eqz v2, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    move v0, v1

    .line 175
    :cond_2
    :goto_0
    return v0

    .line 157
    :cond_3
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iput-object p2, v2, Lcom/alipay/mobile/h5container/api/H5PageData;->navUrl:Ljava/lang/String;

    .line 158
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Ljava/lang/String;

    .line 160
    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 161
    const-string/jumbo v2, "url"

    invoke-virtual {v3, v2, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    instance-of v2, p1, Lcom/alipay/mobile/nebulacore/web/H5WebView;

    if-eqz v2, :cond_4

    .line 164
    :try_start_0
    check-cast p1, Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getWebViewConfig()Landroid/os/Bundle;

    move-result-object v2

    .line 165
    const-string/jumbo v4, "needVerifyUrl"

    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 166
    const-string/jumbo v2, "needVerifyUrl"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string/jumbo v4, "h5PageShouldLoadUrl"

    invoke-virtual {v2, v4, v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 175
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->d:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 168
    :catch_0
    move-exception v2

    .line 169
    const-string/jumbo v4, "H5WebViewClient"

    const-string/jumbo v5, "exception detail"

    invoke-static {v4, v5, v2}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
