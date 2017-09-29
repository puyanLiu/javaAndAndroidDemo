.class public Lcom/alipay/mobile/nebulacore/plugin/H5BridgePlugin;
.super Lcom/alipay/mobile/h5container/api/H5SimplePlugin;
.source "H5BridgePlugin.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5BridgePlugin"


# instance fields
.field private a:Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;

.field private b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5BridgePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 26
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5BridgePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getScriptLoader()Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5BridgePlugin;->a:Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;

    .line 27
    return-void
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 5

    .prologue
    .line 71
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 72
    const-string/jumbo v1, "h5PageJsParam"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 73
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 74
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 80
    const/4 v0, 0x1

    .line 82
    :goto_1
    return v0

    .line 74
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 75
    invoke-static {v1, v0}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 76
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 77
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5BridgePlugin;->a:Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;

    invoke-virtual {v4, v0, v3}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->setParamsToWebPage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 46
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 47
    const-string/jumbo v0, "url"

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 49
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "file://"

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    const-string/jumbo v0, "http://"

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "https://"

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    const/4 v0, 0x1

    .line 51
    :goto_0
    if-nez v0, :cond_1

    .line 52
    const-string/jumbo v5, "H5BridgePlugin"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "skip load js for abnormal url: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/alipay/mobile/nebulacore/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_1
    const-string/jumbo v4, "h5PageReceivedTitle"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 55
    if-eqz v0, :cond_2

    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5BridgePlugin;->a:Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->loadScript()Z

    .line 66
    :cond_2
    :goto_1
    return v1

    :cond_3
    move v0, v1

    .line 50
    goto :goto_0

    .line 58
    :cond_4
    const-string/jumbo v4, "h5PageFinished"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 59
    const-string/jumbo v2, "pageUpdated"

    invoke-static {v3, v2, v1}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v2

    .line 60
    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    .line 61
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5BridgePlugin;->a:Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->loadScript()Z

    goto :goto_1

    .line 63
    :cond_5
    const-string/jumbo v0, "h5PageStarted"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5BridgePlugin;->a:Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->resetBridge()V

    goto :goto_1
.end method

.method public onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    .locals 1

    .prologue
    .line 37
    const-string/jumbo v0, "h5PageStarted"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 38
    const-string/jumbo v0, "h5PageFinished"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 39
    const-string/jumbo v0, "h5PageReceivedTitle"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 40
    const-string/jumbo v0, "h5PageJsParam"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public onRelease()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5BridgePlugin;->a:Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;

    .line 32
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5BridgePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 33
    return-void
.end method
