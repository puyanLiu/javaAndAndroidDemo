.class public Lcom/ali/user/mobile/h5/AUH5Plugin;
.super Ljava/lang/Object;
.source "AUH5Plugin.java"

# interfaces
.implements Lcom/alipay/mobile/h5container/api/H5Plugin;


# instance fields
.field private a:Lcom/alipay/mobile/h5container/api/H5Page;

.field private b:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/h5container/api/H5Page;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/ali/user/mobile/h5/AUH5Plugin;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 31
    return-void
.end method


# virtual methods
.method public checkWebviewBridge(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 101
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    const-string/jumbo v1, "https://www.alipay.com/webviewbridge"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    const/4 v0, 0x1

    .line 106
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIntentExtra()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/ali/user/mobile/h5/AUH5Plugin;->b:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/ali/user/mobile/h5/AUH5Plugin;->b:Landroid/content/Intent;

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/h5/AUH5Plugin;->b:Landroid/content/Intent;

    return-object v0
.end method

.method public getPage()Lcom/alipay/mobile/h5container/api/H5Page;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ali/user/mobile/h5/AUH5Plugin;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    return-object v0
.end method

.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 2

    .prologue
    .line 50
    const-string/jumbo v0, "AliuserH5Plugin"

    const-string/jumbo v1, "handleEvent"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 4

    .prologue
    .line 56
    const-string/jumbo v0, "AliuserH5Plugin"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "interceptEvent:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string/jumbo v0, "h5PageShouldLoadUrl"

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 58
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    const-string/jumbo v1, "AliuserH5Plugin"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "invoke url:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string/jumbo v1, "mailto:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "tel:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 61
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 62
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    .line 63
    invoke-virtual {p0}, Lcom/ali/user/mobile/h5/AUH5Plugin;->onFail()V

    .line 64
    const/4 v0, 0x1

    .line 80
    :goto_0
    return v0

    .line 66
    :cond_1
    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/h5/AUH5Plugin;->checkWebviewBridge(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 67
    const-string/jumbo v1, "AliuserH5Plugin"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onOverrideUrlLoading:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 69
    invoke-virtual {v1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ali/user/mobile/util/BundleUtil;->serialBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 70
    invoke-virtual {p0}, Lcom/ali/user/mobile/h5/AUH5Plugin;->getIntentExtra()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 71
    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/h5/AUH5Plugin;->onOverrideUrlLoading(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 73
    :cond_2
    const-string/jumbo v0, "AliuserH5Plugin"

    const-string/jumbo v1, "url unprocess"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :cond_3
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 74
    :cond_4
    const-string/jumbo v0, "h5PageBack"

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 75
    const-string/jumbo v0, "h5ToolbarClose"

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 76
    :cond_5
    const-string/jumbo v0, "AliuserH5Plugin"

    const-string/jumbo v1, "user cancel"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/ali/user/mobile/h5/AUH5Plugin;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->exitPage()Z

    .line 78
    invoke-virtual {p0}, Lcom/ali/user/mobile/h5/AUH5Plugin;->onCancel()V

    goto :goto_1
.end method

.method protected onCancel()V
    .locals 0

    .prologue
    .line 131
    return-void
.end method

.method protected onFail()V
    .locals 0

    .prologue
    .line 127
    return-void
.end method

.method public onInitialize(Lcom/alipay/mobile/h5container/api/H5CoreNode;)V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method protected onOverrideUrlLoading(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 110
    const-string/jumbo v1, "quit"

    invoke-virtual {p0}, Lcom/ali/user/mobile/h5/AUH5Plugin;->getIntentExtra()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "action"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/ali/user/mobile/h5/AUH5Plugin;->onFail()V

    .line 118
    :goto_0
    return v0

    .line 113
    :cond_0
    const-string/jumbo v1, "true"

    invoke-virtual {p0}, Lcom/ali/user/mobile/h5/AUH5Plugin;->getIntentExtra()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "isSuc"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 114
    invoke-virtual {p0}, Lcom/ali/user/mobile/h5/AUH5Plugin;->getPage()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Page;->exitPage()Z

    .line 115
    invoke-virtual {p0}, Lcom/ali/user/mobile/h5/AUH5Plugin;->onSuccess()V

    goto :goto_0

    .line 118
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    .locals 1

    .prologue
    .line 90
    const-string/jumbo v0, "h5PageShouldLoadUrl"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 91
    const-string/jumbo v0, "h5PageBack"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 92
    const-string/jumbo v0, "h5ToolbarClose"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public onRelease()V
    .locals 2

    .prologue
    .line 97
    const-string/jumbo v0, "AliuserH5Plugin"

    const-string/jumbo v1, "onRelease"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method protected onSuccess()V
    .locals 0

    .prologue
    .line 123
    return-void
.end method

.method public setPage(Lcom/alipay/mobile/h5container/api/H5Page;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/ali/user/mobile/h5/AUH5Plugin;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 35
    return-void
.end method
