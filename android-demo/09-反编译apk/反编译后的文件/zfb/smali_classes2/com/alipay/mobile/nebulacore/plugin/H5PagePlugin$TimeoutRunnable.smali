.class Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$TimeoutRunnable;
.super Ljava/lang/Object;
.source "H5PagePlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;

.field public event:Lcom/alipay/mobile/h5container/api/H5Event;

.field public shareCallBack:Z


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 1

    .prologue
    .line 231
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$TimeoutRunnable;->a:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$TimeoutRunnable;->shareCallBack:Z

    .line 232
    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$TimeoutRunnable;->event:Lcom/alipay/mobile/h5container/api/H5Event;

    .line 233
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 237
    const-string/jumbo v0, "H5PagePlugin"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "TimeoutRunnable timeout, shareCallBack:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$TimeoutRunnable;->shareCallBack:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$TimeoutRunnable;->shareCallBack:Z

    if-nez v0, :cond_0

    .line 239
    const-string/jumbo v0, "H5PagePlugin"

    const-string/jumbo v1, "TimeoutRunnable timeout,invoke default share.js"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const-string/jumbo v1, "https://t.alipayobjects.com/images/rmsweb/T1uq4gXeNiXXXXXXXX.png"

    .line 241
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$TimeoutRunnable;->a:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b(Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;)Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 242
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$TimeoutRunnable;->a:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b(Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;)Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/alipay/mobile/nebulacore/R$string;->shareurl:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 243
    :goto_0
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$TimeoutRunnable;->a:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$TimeoutRunnable;->event:Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-static {v3, v4, v1, v2, v0}, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->a(Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :cond_0
    return-void

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$TimeoutRunnable;->a:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b(Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;)Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
