.class Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$ShareCallback;
.super Ljava/lang/Object;
.source "H5PagePlugin.java"

# interfaces
.implements Lcom/alipay/mobile/h5container/api/H5CallBack;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;

.field private b:Lcom/alipay/mobile/h5container/api/H5Event;

.field private c:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$TimeoutRunnable;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$TimeoutRunnable;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$ShareCallback;->a:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$ShareCallback;->b:Lcom/alipay/mobile/h5container/api/H5Event;

    .line 200
    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$ShareCallback;->c:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$TimeoutRunnable;

    .line 201
    return-void
.end method


# virtual methods
.method public onCallBack(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 5

    .prologue
    .line 205
    if-nez p1, :cond_0

    .line 206
    const-string/jumbo v1, "https://t.alipayobjects.com/images/rmsweb/T1uq4gXeNiXXXXXXXX.png"

    .line 207
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$ShareCallback;->a:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b(Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;)Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 208
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$ShareCallback;->a:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;

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

    .line 209
    :goto_0
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$ShareCallback;->a:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$ShareCallback;->b:Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-static {v3, v4, v1, v2, v0}, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->a(Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$ShareCallback;->a:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->c(Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 212
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$ShareCallback;->a:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->d(Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;)I

    move-result v1

    if-le v0, v1, :cond_2

    .line 213
    const-string/jumbo v0, "H5PagePlugin"

    const-string/jumbo v1, "onCallBack timeOut"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    :goto_1
    return-void

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$ShareCallback;->a:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b(Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;)Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 216
    :cond_2
    const-string/jumbo v0, "imgUrl"

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 217
    const-string/jumbo v1, "desc"

    invoke-static {p1, v1}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 218
    const-string/jumbo v2, "title"

    invoke-static {p1, v2}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 219
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$ShareCallback;->c:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$TimeoutRunnable;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$TimeoutRunnable;->shareCallBack:Z

    .line 220
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$ShareCallback;->a:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$ShareCallback;->b:Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-static {v3, v4, v0, v1, v2}, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->a(Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
