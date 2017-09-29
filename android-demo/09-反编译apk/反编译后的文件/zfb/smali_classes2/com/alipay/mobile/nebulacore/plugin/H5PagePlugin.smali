.class public Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;
.super Lcom/alipay/mobile/h5container/api/H5SimplePlugin;
.source "H5PagePlugin.java"


# static fields
.field public static final SHOW_SOFT_INPUT:Ljava/lang/String; = "showSoftInput"

.field public static final TAG:Ljava/lang/String; = "H5PagePlugin"

.field public static final TOGGLE_SOFT_INPUT:Ljava/lang/String; = "toggleSoftInput"


# instance fields
.field private a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

.field private b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

.field private c:Lcom/alipay/mobile/h5container/api/H5Bridge;

.field private d:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$PageStatus;

.field private e:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$H5BackHandler;

.field private f:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$BackBehavior;

.field private g:Lcom/alibaba/fastjson/JSONObject;

.field private h:J

.field private i:I


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;-><init>()V

    .line 67
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->i:I

    .line 70
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 71
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getWebView()Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    .line 72
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getBridge()Lcom/alipay/mobile/h5container/api/H5Bridge;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->c:Lcom/alipay/mobile/h5container/api/H5Bridge;

    .line 73
    sget-object v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$PageStatus;->NONE:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$PageStatus;

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->d:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$PageStatus;

    .line 74
    new-instance v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$H5BackHandler;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$H5BackHandler;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->e:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$H5BackHandler;

    .line 75
    sget-object v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$BackBehavior;->BACK:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$BackBehavior;

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->f:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$BackBehavior;

    .line 76
    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 531
    const-string/jumbo v0, "H5PagePlugin"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "perform back behavior "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->f:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$BackBehavior;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->f:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$BackBehavior;

    sget-object v1, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$BackBehavior;->POP:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$BackBehavior;

    if-ne v0, v1, :cond_1

    .line 534
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string/jumbo v1, "h5PageClose"

    invoke-virtual {v0, v1, v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 552
    :cond_0
    :goto_0
    return-void

    .line 535
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->f:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$BackBehavior;

    sget-object v1, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$BackBehavior;->BACK:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$BackBehavior;

    if-ne v0, v1, :cond_0

    .line 536
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->canGoBack()Z

    move-result v0

    if-nez v0, :cond_3

    .line 537
    :cond_2
    const-string/jumbo v0, "H5PagePlugin"

    const-string/jumbo v1, "webview can\'t go back and do exit!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string/jumbo v1, "h5PageClose"

    invoke-virtual {v0, v1, v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_0

    .line 542
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->copyBackForwardList()Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;

    move-result-object v0

    .line 543
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;->getCurrentIndex()I

    move-result v0

    .line 544
    if-gtz v0, :cond_4

    .line 545
    const-string/jumbo v0, "H5PagePlugin"

    const-string/jumbo v1, "webview with no history and do exit!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string/jumbo v1, "h5PageClose"

    invoke-virtual {v0, v1, v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_0

    .line 550
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->goBack()V

    goto :goto_0
.end method

.method private a(Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 5

    .prologue
    .line 498
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 499
    const-string/jumbo v1, "url"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 500
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 501
    const-string/jumbo v0, "h5_url_isnull"

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/util/H5Log;->w(Ljava/lang/String;)V

    .line 511
    :goto_0
    return-void

    .line 504
    :cond_0
    const-string/jumbo v2, "Referer"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 505
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 506
    const-string/jumbo v3, "Referer"

    const-string/jumbo v4, "Referer"

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 509
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 250
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 251
    const-string/jumbo v1, "tag"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 253
    const-string/jumbo v3, "ppchatShare"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 254
    const-string/jumbo v1, "shoot"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 256
    const-string/jumbo v1, "imageUrl"

    invoke-virtual {v0, v1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    :cond_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 259
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    :cond_1
    const-string/jumbo v1, "desc"

    invoke-virtual {v0, v1, p3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string/jumbo v2, "h5ToolbarMenuBt"

    invoke-virtual {v1, v2, v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 313
    :goto_0
    return-void

    .line 264
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->g:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->g:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 265
    :cond_3
    const-string/jumbo v0, "H5PagePlugin"

    const-string/jumbo v1, "shareChannels not set"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 268
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 270
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 271
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 272
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 273
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v3, v4, :cond_5

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 274
    :cond_5
    const-string/jumbo v3, "H5PagePlugin"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "pageTitle:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "  pageUrl:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object p4, v0

    .line 279
    :cond_6
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 280
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/alipay/mobile/nebulacore/R$string;->shareurl:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    .line 283
    :cond_7
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    move-object p3, v1

    .line 287
    :cond_8
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 288
    const-string/jumbo p2, "https://t.alipayobjects.com/images/rmsweb/T1uq4gXeNiXXXXXXXX.png"

    .line 291
    :cond_9
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 293
    const-string/jumbo v0, "title"

    invoke-virtual {v1, v0, p4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    const-string/jumbo v0, "content"

    invoke-virtual {v1, v0, p3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    const-string/jumbo v0, "url"

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    const-string/jumbo v0, "iconUrl"

    invoke-virtual {v1, v0, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    const-string/jumbo v0, "imageUrl"

    invoke-virtual {v1, v0, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    const-string/jumbo v0, "contentType"

    const-string/jumbo v3, "url"

    invoke-virtual {v1, v0, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->g:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v3, "channels"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v3

    .line 302
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 303
    :goto_1
    if-lt v2, v0, :cond_b

    .line 311
    :goto_2
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string/jumbo v1, "share"

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->g:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto/16 :goto_0

    :cond_a
    move v0, v2

    .line 302
    goto :goto_1

    .line 304
    :cond_b
    :try_start_1
    invoke-virtual {v3, v2}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 305
    const-string/jumbo v5, "param"

    invoke-virtual {v4, v5, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 303
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 307
    :catch_0
    move-exception v0

    .line 308
    const-string/jumbo v1, "H5PagePlugin"

    const-string/jumbo v2, "parse share channels exception."

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;)V
    .locals 0

    .prologue
    .line 530
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->a()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 249
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;)Lcom/alipay/mobile/nebulacore/core/H5PageImpl;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;)J
    .locals 2

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h:J

    return-wide v0
.end method

.method static synthetic d(Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;)I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->i:I

    return v0
.end method

.method static synthetic e(Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;)Lcom/alipay/mobile/nebulacore/web/H5WebView;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    return-object v0
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 11

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v10, 0x0

    const/4 v1, 0x0

    .line 318
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 319
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 320
    const-string/jumbo v3, "h5PageBackBehavior"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 321
    const-string/jumbo v0, "backBehavior"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 322
    const-string/jumbo v1, "pop"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 323
    sget-object v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$BackBehavior;->POP:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$BackBehavior;

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->f:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$BackBehavior;

    :cond_0
    :goto_0
    move v1, v7

    .line 472
    :cond_1
    return v1

    .line 324
    :cond_2
    const-string/jumbo v1, "back"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    sget-object v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$BackBehavior;->BACK:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$BackBehavior;

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->f:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$BackBehavior;

    goto :goto_0

    .line 327
    :cond_3
    const-string/jumbo v3, "h5PageLoadUrl"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 328
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 329
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 330
    const-string/jumbo v0, "start_up_url"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string/jumbo v1, "h5PageShouldLoadUrl"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_0

    .line 333
    :cond_4
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;)V

    goto :goto_0

    .line 335
    :cond_5
    const-string/jumbo v3, "h5PageLoadData"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 336
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "baseUrl"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v1, "data"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v1, "mimeType"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v1, "encoding"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v1, "historyUrl"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$1;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 337
    :cond_6
    const-string/jumbo v3, "h5PageDoLoadUrl"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 338
    const-string/jumbo v0, "url"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 339
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getUrl()Ljava/lang/String;

    move-result-object v3

    .line 340
    const-string/jumbo v4, "force"

    invoke-static {v2, v4, v1}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v1

    .line 342
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 343
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getWebViewClient()Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->setCheckingUrl(Ljava/lang/String;)V

    .line 347
    :cond_7
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    if-eqz v1, :cond_0

    .line 348
    :cond_8
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;)V

    goto/16 :goto_0

    .line 350
    :cond_9
    const-string/jumbo v3, "h5PageReload"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 351
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->reload()V

    goto/16 :goto_0

    .line 352
    :cond_a
    const-string/jumbo v3, "h5PageBack"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 353
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->d:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$PageStatus;

    sget-object v2, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$PageStatus;->FINISHED:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$PageStatus;

    if-ne v0, v2, :cond_b

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->e:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$H5BackHandler;

    iget-boolean v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$H5BackHandler;->waiting:Z

    if-nez v0, :cond_b

    move v0, v7

    :goto_1
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->e:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$H5BackHandler;

    iget-wide v5, v2, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$H5BackHandler;->lastBack:J

    sub-long v5, v3, v5

    const-wide/16 v8, 0x1f4

    cmp-long v2, v5, v8

    if-lez v2, :cond_c

    move v2, v7

    :goto_2
    if-eqz v0, :cond_d

    if-eqz v2, :cond_d

    :goto_3
    if-nez v1, :cond_e

    const-string/jumbo v0, "H5PagePlugin"

    const-string/jumbo v1, "send back event to bridge!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->e:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$H5BackHandler;

    iput-boolean v7, v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$H5BackHandler;->waiting:Z

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->e:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$H5BackHandler;

    iput-wide v3, v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$H5BackHandler;->lastBack:J

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->c:Lcom/alipay/mobile/h5container/api/H5Bridge;

    const-string/jumbo v1, "back"

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->e:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$H5BackHandler;

    invoke-interface {v0, v1, v10, v2}, Lcom/alipay/mobile/h5container/api/H5Bridge;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5CallBack;)V

    goto/16 :goto_0

    :cond_b
    move v0, v1

    goto :goto_1

    :cond_c
    move v2, v1

    goto :goto_2

    :cond_d
    move v1, v7

    goto :goto_3

    :cond_e
    const-string/jumbo v0, "H5PagePlugin"

    const-string/jumbo v1, "ignore bridge, perform back!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->a()V

    goto/16 :goto_0

    .line 354
    :cond_f
    const-string/jumbo v3, "h5PagePause"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 355
    const-string/jumbo v0, "H5PagePlugin"

    const-string/jumbo v1, "sendToWeb page event pause"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->c:Lcom/alipay/mobile/h5container/api/H5Bridge;

    const-string/jumbo v1, "pause"

    invoke-interface {v0, v1, v10, v10}, Lcom/alipay/mobile/h5container/api/H5Bridge;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5CallBack;)V

    goto/16 :goto_0

    .line 357
    :cond_10
    const-string/jumbo v3, "h5PageResume"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 358
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getSession()Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Session;->getData()Lcom/alipay/mobile/h5container/api/H5Data;

    move-result-object v0

    .line 359
    const-string/jumbo v1, "h5_session_pop_param"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/h5container/api/H5Data;->remove(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 360
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getSession()Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Session;->getData()Lcom/alipay/mobile/h5container/api/H5Data;

    move-result-object v1

    .line 361
    const-string/jumbo v2, "h5_session_resume_param"

    invoke-interface {v1, v2}, Lcom/alipay/mobile/h5container/api/H5Data;->remove(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 363
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 364
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 365
    const-string/jumbo v3, "data"

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    :cond_11
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 368
    const-string/jumbo v0, "resumeParams"

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    :cond_12
    const-string/jumbo v0, "H5PagePlugin"

    const-string/jumbo v1, "sendToWeb page event resume"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->c:Lcom/alipay/mobile/h5container/api/H5Bridge;

    const-string/jumbo v1, "resume"

    invoke-interface {v0, v1, v2, v10}, Lcom/alipay/mobile/h5container/api/H5Bridge;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5CallBack;)V

    goto/16 :goto_0

    .line 372
    :cond_13
    const-string/jumbo v3, "h5PageFontSize"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 373
    const-string/jumbo v0, "size"

    invoke-static {v2, v0, v5}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v0

    .line 374
    if-eq v0, v5, :cond_14

    .line 375
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->setTextSize(I)V

    .line 377
    :cond_14
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getSession()Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 378
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getSession()Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Session;->getScenario()Lcom/alipay/mobile/h5container/api/H5Scenario;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 379
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getSession()Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Session;->getScenario()Lcom/alipay/mobile/h5container/api/H5Scenario;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Scenario;->getData()Lcom/alipay/mobile/h5container/api/H5Data;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 380
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getSession()Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Session;->getScenario()Lcom/alipay/mobile/h5container/api/H5Scenario;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Scenario;->getData()Lcom/alipay/mobile/h5container/api/H5Data;

    move-result-object v1

    .line 381
    const-string/jumbo v2, "h5_font_size"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/h5container/api/H5Data;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 383
    :cond_15
    const-string/jumbo v3, "h5PageStarted"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 384
    sget-object v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$PageStatus;->LOADING:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$PageStatus;

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->d:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$PageStatus;

    .line 385
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v0

    .line 386
    const-string/jumbo v2, "showLoading"

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 387
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string/jumbo v1, "showLoading"

    invoke-virtual {v0, v1, v10}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto/16 :goto_0

    .line 388
    :cond_16
    const-string/jumbo v2, "showTitleLoading"

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string/jumbo v1, "showTitleLoading"

    invoke-virtual {v0, v1, v10}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto/16 :goto_0

    .line 391
    :cond_17
    const-string/jumbo v3, "h5PageFinished"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 392
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v3, "transparent"

    invoke-static {v0, v3, v1}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 393
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v1

    .line 394
    const-string/jumbo v3, "backgroundColor"

    .line 393
    invoke-static {v1, v3}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 397
    :cond_18
    sget-object v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$PageStatus;->FINISHED:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$PageStatus;

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->d:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$PageStatus;

    .line 399
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string/jumbo v1, "hideLoading"

    invoke-virtual {v0, v1, v10}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 400
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string/jumbo v1, "hideTitleLoading"

    invoke-virtual {v0, v1, v10}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 402
    const-string/jumbo v0, "historySize"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v0

    .line 403
    if-le v0, v7, :cond_0

    sget-object v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$BackBehavior;->BACK:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$BackBehavior;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->f:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$BackBehavior;

    if-ne v0, v1, :cond_0

    .line 404
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 405
    const-string/jumbo v1, "show"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string/jumbo v2, "h5PageShowClose"

    invoke-virtual {v1, v2, v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto/16 :goto_0

    .line 408
    :cond_19
    const-string/jumbo v3, "h5PageReceivedTitle"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 409
    sget-object v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$PageStatus;->FINISHED:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$PageStatus;

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->d:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$PageStatus;

    goto/16 :goto_0

    .line 410
    :cond_1a
    const-string/jumbo v3, "h5PageClose"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 411
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->exitPage()Z

    goto/16 :goto_0

    .line 412
    :cond_1b
    const-string/jumbo v3, "h5ToolbarMenuBt"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 413
    const-string/jumbo v0, "tag"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 414
    const-string/jumbo v2, "h5MenuActionOfFont"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 415
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string/jumbo v1, "showFontBar"

    invoke-virtual {v0, v1, v10}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto/16 :goto_0

    .line 416
    :cond_1c
    const-string/jumbo v2, "refresh"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 417
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string/jumbo v1, "h5PageReload"

    invoke-virtual {v0, v1, v10}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto/16 :goto_0

    .line 418
    :cond_1d
    const-string/jumbo v2, "copy"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 419
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 420
    const-string/jumbo v2, "text"

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string/jumbo v3, "setClipboard"

    invoke-virtual {v2, v3, v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 422
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/nebulacore/R$string;->copied:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 423
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 424
    invoke-static {v2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 425
    :cond_1e
    const-string/jumbo v2, "openInBrowser"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 426
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 427
    if-nez v0, :cond_1f

    .line 428
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 429
    const-string/jumbo v2, "error"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    invoke-interface {p2, v1}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 432
    :cond_1f
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 433
    const-string/jumbo v2, "https://ds.alipay.com/error/securityLink.htm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 434
    const-string/jumbo v2, "https://ds.alipay.com/error/redirectLink.htm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 435
    :cond_20
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 436
    const-string/jumbo v1, "H5PagePlugin"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "competitive link special text is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    :cond_21
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    sget-object v2, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_OPEN_IN_BROWSER:Ljava/lang/String;

    invoke-virtual {v1, v2, v10}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 440
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 441
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 442
    invoke-static {v10, v1}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->startActivity(Lcom/alipay/mobile/h5container/api/H5Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 447
    :cond_22
    const-string/jumbo v3, "toggleSoftInput"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 448
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 449
    const-string/jumbo v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 448
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 450
    invoke-virtual {v0, v1, v4}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    goto/16 :goto_0

    .line 451
    :cond_23
    const-string/jumbo v3, "showSoftInput"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 452
    const-string/jumbo v0, "show"

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getWebView()Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 453
    const-string/jumbo v0, "show"

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONObject;->getBooleanValue(Ljava/lang/String;)Z

    move-result v2

    .line 454
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 455
    const-string/jumbo v3, "input_method"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 454
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 456
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getView()Landroid/view/View;

    move-result-object v3

    .line 457
    if-eqz v2, :cond_24

    .line 458
    invoke-virtual {v0, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto/16 :goto_0

    .line 460
    :cond_24
    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto/16 :goto_0

    .line 463
    :cond_25
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 464
    const-string/jumbo v1, "error"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    const-string/jumbo v1, "H5PagePlugin"

    const-string/jumbo v2, "you should specify whether to or not to show soft input or internal error occurred!"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    invoke-interface {p2, v0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    goto/16 :goto_0
.end method

.method public interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 137
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 138
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 139
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v4}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getScriptLoader()Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;

    move-result-object v4

    iget-boolean v4, v4, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->bridgeLoaded:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v4}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getScriptLoader()Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;

    move-result-object v4

    iget-boolean v4, v4, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->bizLoaded:Z

    if-eqz v4, :cond_0

    .line 140
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string/jumbo v5, "h5PageScriptReady"

    invoke-virtual {v4, v5, v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 143
    :cond_0
    const-string/jumbo v4, "h5PageError"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 144
    sget-object v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$PageStatus;->ERROR:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$PageStatus;

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->d:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$PageStatus;

    .line 189
    :goto_0
    return v1

    .line 146
    :cond_1
    const-string/jumbo v4, "h5PageBackground"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 147
    const-string/jumbo v1, "backgroundColor"

    invoke-static {v3, v1}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v1

    .line 148
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_2
    move v1, v0

    .line 189
    goto :goto_0

    .line 149
    :cond_3
    const-string/jumbo v4, "h5ToolbarMenuBt"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 152
    const-string/jumbo v2, "tag"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 153
    const-string/jumbo v2, "shoot"

    invoke-static {v3, v2, v0}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v3

    .line 154
    const-string/jumbo v2, "ppchatShare"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string/jumbo v2, "shareFriend"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v2, v0

    .line 155
    :goto_1
    if-eqz v2, :cond_4

    if-eqz v3, :cond_6

    :cond_4
    move v1, v0

    .line 156
    goto :goto_0

    :cond_5
    move v2, v1

    .line 154
    goto :goto_1

    .line 160
    :cond_6
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getScriptLoader()Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;

    move-result-object v2

    iget-boolean v2, v2, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->bridgeLoaded:Z

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getScriptLoader()Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;

    move-result-object v2

    iget-boolean v2, v2, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->bizLoaded:Z

    if-eqz v2, :cond_8

    .line 161
    const-string/jumbo v2, "H5PagePlugin"

    const-string/jumbo v3, "share.js is ready"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->h:J

    .line 163
    new-instance v2, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$TimeoutRunnable;

    invoke-direct {v2, p0, p1}, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$TimeoutRunnable;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;Lcom/alipay/mobile/h5container/api/H5Event;)V

    .line 164
    iget v3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->i:I

    int-to-long v5, v3

    invoke-static {v2, v5, v6}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->runOnMain(Ljava/lang/Runnable;J)V

    .line 165
    new-instance v3, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$ShareCallback;

    invoke-direct {v3, p0, p1, v2}, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$ShareCallback;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$TimeoutRunnable;)V

    .line 166
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 167
    const-string/jumbo v5, "strict"

    const-string/jumbo v6, "ppchatShare"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    move v0, v1

    :cond_7
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getBridge()Lcom/alipay/mobile/h5container/api/H5Bridge;

    move-result-object v0

    const-string/jumbo v4, "JSPlugin_AlipayH5Share"

    invoke-interface {v0, v4, v2, v3}, Lcom/alipay/mobile/h5container/api/H5Bridge;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5CallBack;)V

    goto/16 :goto_0

    .line 171
    :cond_8
    const-string/jumbo v0, "H5PagePlugin"

    const-string/jumbo v2, "share.js is not ready"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string/jumbo v2, "https://t.alipayobjects.com/images/rmsweb/T1uq4gXeNiXXXXXXXX.png"

    .line 173
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getUrl()Ljava/lang/String;

    move-result-object v3

    .line 174
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/alipay/mobile/nebulacore/R$string;->shareurl:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 175
    :goto_2
    invoke-direct {p0, p1, v2, v3, v0}, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 174
    :cond_9
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 179
    :cond_a
    const-string/jumbo v4, "setShareChannels"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 180
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->NONE:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5Event$Error;->ordinal()I

    move-result v0

    .line 181
    if-eqz v3, :cond_b

    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b

    .line 182
    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->g:Lcom/alibaba/fastjson/JSONObject;

    .line 186
    :goto_3
    const-string/jumbo v2, "error"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v2, v0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Ljava/lang/String;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 184
    :cond_b
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5Event$Error;->ordinal()I

    move-result v0

    goto :goto_3
.end method

.method public onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    .locals 1

    .prologue
    .line 112
    const-string/jumbo v0, "h5PageBackBehavior"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 113
    const-string/jumbo v0, "h5PageReceivedTitle"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 114
    const-string/jumbo v0, "h5PageLoadUrl"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 115
    const-string/jumbo v0, "h5PageLoadData"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 116
    const-string/jumbo v0, "h5PageReload"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 117
    const-string/jumbo v0, "h5PageFontSize"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 118
    const-string/jumbo v0, "h5PageResume"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 119
    const-string/jumbo v0, "h5PageError"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 120
    const-string/jumbo v0, "h5PageBack"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 121
    const-string/jumbo v0, "h5PageStarted"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 122
    const-string/jumbo v0, "h5PageProgress"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 123
    const-string/jumbo v0, "h5PageFinished"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 124
    const-string/jumbo v0, "h5PageClose"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 125
    const-string/jumbo v0, "h5PageBackground"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 126
    const-string/jumbo v0, "h5ToolbarMenuBt"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 127
    const-string/jumbo v0, "h5PageDoLoadUrl"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 128
    const-string/jumbo v0, "toggleSoftInput"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 129
    const-string/jumbo v0, "showSoftInput"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 130
    const-string/jumbo v0, "setShareChannels"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 131
    const-string/jumbo v0, "h5PagePause"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public onRelease()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 104
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->c:Lcom/alipay/mobile/h5container/api/H5Bridge;

    .line 105
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    .line 106
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 107
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->e:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$H5BackHandler;

    .line 108
    return-void
.end method
