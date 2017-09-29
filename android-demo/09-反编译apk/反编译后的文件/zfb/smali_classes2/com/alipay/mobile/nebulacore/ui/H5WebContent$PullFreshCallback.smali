.class Lcom/alipay/mobile/nebulacore/ui/H5WebContent$PullFreshCallback;
.super Ljava/lang/Object;
.source "H5WebContent.java"

# interfaces
.implements Lcom/alipay/mobile/h5container/api/H5CallBack;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/ui/H5WebContent;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)V
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$PullFreshCallback;->a:Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    return-void
.end method


# virtual methods
.method public onCallBack(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 4

    .prologue
    .line 329
    const-string/jumbo v0, "prevent"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    .line 330
    const-string/jumbo v1, "H5WebContent"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "FIRE_PULL_TO_REFRESH event prevent\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    if-eqz v0, :cond_0

    .line 332
    const-string/jumbo v0, "H5WebContent"

    const-string/jumbo v1, "set e.preventDefault(),not send H5_PAGE_RELOAD"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$PullFreshCallback;->a:Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->f(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)V

    .line 339
    :goto_0
    return-void

    .line 335
    :cond_0
    const-string/jumbo v0, "H5WebContent"

    const-string/jumbo v1, "not set e.preventDefault(),sendEvent H5_PAGE_RELOAD"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$PullFreshCallback;->a:Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->a(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v0

    const-string/jumbo v1, "h5PageReload"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 337
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$PullFreshCallback;->a:Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->g(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)V

    goto :goto_0
.end method
