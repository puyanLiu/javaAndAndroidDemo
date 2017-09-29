.class public Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;
.super Lcom/alipay/mobile/h5container/api/H5SimplePlugin;
.source "H5LongClickPlugin.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# static fields
.field public static final SAVE_IMAGE:Ljava/lang/String; = "saveImage"

.field public static final TAG:Ljava/lang/String; = "H5LongClickPlugin"


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 58
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 59
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 60
    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;->a:Landroid/app/Activity;

    .line 62
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getWebView()Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;->c:Landroid/view/View;

    .line 63
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;->c:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 64
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 164
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 165
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$ImageSaveRunner;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$ImageSaveRunner;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 166
    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 99
    if-nez p2, :cond_1

    .line 100
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;->a(Ljava/lang/String;)V

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    new-instance v0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$1;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$1;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;Ljava/lang/String;)V

    .line 119
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 120
    sget v2, Lcom/alipay/mobile/nebulacore/R$string;->save_to_phone:I

    .line 119
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 122
    new-array v2, v4, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 123
    aput-object v1, v2, v3

    .line 125
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;->a:Landroid/app/Activity;

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 126
    sget v3, Lcom/alipay/mobile/nebulacore/R$string;->image:I

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 128
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 129
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;->a:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 130
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 85
    const-string/jumbo v1, "H5LongClickPlugin"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "handleEvent event is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 87
    const-string/jumbo v2, "saveImage"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 89
    const-string/jumbo v2, "src"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 90
    const-string/jumbo v3, "showActionSheet"

    invoke-static {v1, v3, v0}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v1

    .line 91
    invoke-direct {p0, v2, v1}, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;->a(Ljava/lang/String;Z)V

    .line 94
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 138
    const-string/jumbo v2, "H5LongClickPlugin"

    const-string/jumbo v3, "onLongClick"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getWebView()Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;->a:Landroid/app/Activity;

    if-nez v2, :cond_1

    .line 161
    :cond_0
    :goto_0
    return v0

    .line 143
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getWebView()Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getHitTestResult()Lcom/alipay/mobile/nebula/webview/APHitTestResult;

    move-result-object v3

    .line 144
    if-eqz v3, :cond_3

    invoke-interface {v3}, Lcom/alipay/mobile/nebula/webview/APHitTestResult;->getType()I

    move-result v2

    const/4 v4, 0x5

    if-eq v2, v4, :cond_2

    .line 145
    invoke-interface {v3}, Lcom/alipay/mobile/nebula/webview/APHitTestResult;->getType()I

    move-result v2

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    :cond_2
    move v2, v1

    .line 144
    :goto_1
    if-eqz v2, :cond_0

    .line 149
    :try_start_0
    invoke-interface {v3}, Lcom/alipay/mobile/nebula/webview/APHitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v2

    .line 150
    const-string/jumbo v4, "H5LongClickPlugin"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "imgUrl:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-interface {v3}, Lcom/alipay/mobile/nebula/webview/APHitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 152
    const/4 v0, 0x1

    invoke-direct {p0, v2, v0}, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;->a(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move v0, v1

    .line 159
    goto :goto_0

    :cond_3
    move v2, v0

    .line 145
    goto :goto_1

    .line 156
    :catch_0
    move-exception v0

    .line 157
    const-string/jumbo v2, "H5LongClickPlugin"

    const-string/jumbo v3, "getExtras Exception"

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    .locals 2

    .prologue
    .line 68
    const-string/jumbo v0, "H5LongClickPlugin"

    const-string/jumbo v1, "onPrepare"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string/jumbo v0, "saveImage"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public onRelease()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 74
    const-string/jumbo v0, "H5LongClickPlugin"

    const-string/jumbo v1, "onRelease"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 77
    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;->c:Landroid/view/View;

    .line 79
    :cond_0
    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 80
    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;->a:Landroid/app/Activity;

    .line 81
    return-void
.end method
