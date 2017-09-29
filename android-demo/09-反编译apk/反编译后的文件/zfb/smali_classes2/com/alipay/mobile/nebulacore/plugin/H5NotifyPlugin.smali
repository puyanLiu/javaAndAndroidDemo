.class public Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin;
.super Lcom/alipay/mobile/h5container/api/H5SimplePlugin;
.source "H5NotifyPlugin.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5NotifyPlugin"


# instance fields
.field private a:I

.field private b:I

.field private c:Lcom/alipay/mobile/h5container/api/H5Page;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/h5container/api/H5Page;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;-><init>()V

    .line 24
    sget v0, Lcom/alipay/mobile/nebulacore/R$drawable;->simple_toast_ok:I

    iput v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin;->a:I

    .line 26
    sget v0, Lcom/alipay/mobile/nebulacore/R$drawable;->simple_toast_false:I

    iput v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin;->b:I

    .line 31
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 32
    return-void
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 7

    .prologue
    const/16 v0, 0x7d0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 46
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 47
    const-string/jumbo v4, "toast"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 50
    :cond_0
    :goto_0
    return v3

    .line 48
    :cond_1
    const-string/jumbo v4, "content"

    invoke-static {v1, v4}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "type"

    invoke-static {v1, v5}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "duration"

    invoke-static {v1, v6}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v1

    if-gt v1, v0, :cond_3

    move v1, v2

    :goto_1
    const-string/jumbo v6, "success"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin;->a:I

    :cond_2
    :goto_2
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v2, v4, v1}, Lcom/alipay/mobile/nebulacore/view/H5Toast;->showToast(Landroid/content/Context;ILjava/lang/String;I)V

    new-instance v1, Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin$1;

    invoke-direct {v1, p0, p2}, Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin$1;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    int-to-long v4, v0

    invoke-static {v1, v4, v5}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->runOnMain(Ljava/lang/Runnable;J)V

    const-string/jumbo v0, "H5JSFuncs"

    const-string/jumbo v1, "toast show"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/16 v0, 0xdac

    move v1, v3

    goto :goto_1

    :cond_4
    const-string/jumbo v6, "fail"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin;->b:I

    goto :goto_2
.end method

.method public onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    .locals 1

    .prologue
    .line 41
    const-string/jumbo v0, "toast"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public onRelease()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 37
    return-void
.end method
