.class public Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;
.super Lcom/alipay/mobile/h5container/api/H5SimplePlugin;
.source "H5LoadingPlugin.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5LoadingPlugin"


# instance fields
.field private a:Ljava/lang/Runnable;

.field private b:Landroid/os/Handler;

.field private c:Lcom/alipay/mobile/h5container/api/H5Page;

.field private d:Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin$LoadingDialog;

.field private e:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/h5container/api/H5Page;)V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->b:Landroid/os/Handler;

    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 46
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 47
    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->e:Landroid/app/Activity;

    .line 49
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->e:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;)Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin$LoadingDialog;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->d:Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin$LoadingDialog;

    return-object v0
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 2

    .prologue
    .line 174
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 175
    const-string/jumbo v1, "showLoading"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 176
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->showLoading(Lcom/alipay/mobile/h5container/api/H5Event;)V

    .line 177
    const-string/jumbo v0, "success"

    const-string/jumbo v1, "true"

    invoke-interface {p2, v0, v1}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 182
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 178
    :cond_1
    const-string/jumbo v1, "hideLoading"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->hideLoading()V

    .line 180
    const-string/jumbo v0, "success"

    const-string/jumbo v1, "true"

    invoke-interface {p2, v0, v1}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public hideLoading()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->a:Ljava/lang/Runnable;

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->d:Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin$LoadingDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->d:Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin$LoadingDialog;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin$LoadingDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->e:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 155
    const-string/jumbo v0, "H5LoadingPlugin"

    const-string/jumbo v1, "hideLoading"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->d:Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin$LoadingDialog;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin$LoadingDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :cond_1
    :goto_0
    return-void

    .line 159
    :catch_0
    move-exception v0

    const-string/jumbo v0, "H5LoadingPlugin"

    const-string/jumbo v1, "dismiss exception"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->e:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 167
    const-string/jumbo v0, "showLoading"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 168
    const-string/jumbo v0, "hideLoading"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 170
    :cond_0
    return-void
.end method

.method public onRelease()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 54
    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->a:Ljava/lang/Runnable;

    .line 55
    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 56
    return-void
.end method

.method public showLoading(Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 6

    .prologue
    const/16 v5, 0x14

    .line 113
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 114
    const-string/jumbo v0, "text"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    const-string/jumbo v2, "delay"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v1

    .line 117
    const-string/jumbo v2, "H5LoadingPlugin"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "showLoading [title] "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " [delay] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->d:Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin$LoadingDialog;

    if-nez v2, :cond_0

    .line 120
    new-instance v2, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin$LoadingDialog;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->e:Landroid/app/Activity;

    invoke-direct {v2, p0, v3}, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin$LoadingDialog;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->d:Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin$LoadingDialog;

    .line 123
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->hideLoading()V

    .line 126
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v5, :cond_1

    .line 127
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 130
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->d:Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin$LoadingDialog;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin$LoadingDialog;->setMessage(Ljava/lang/String;)V

    .line 132
    new-instance v0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin$1;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->a:Ljava/lang/Runnable;

    .line 145
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->b:Landroid/os/Handler;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->a:Ljava/lang/Runnable;

    int-to-long v3, v1

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 146
    return-void
.end method
