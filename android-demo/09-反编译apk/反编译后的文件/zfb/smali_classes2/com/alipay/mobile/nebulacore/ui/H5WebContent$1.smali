.class Lcom/alipay/mobile/nebulacore/ui/H5WebContent$1;
.super Ljava/lang/Object;
.source "H5WebContent.java"

# interfaces
.implements Lcom/alipay/mobile/nebulacore/refresh/H5PullAdapter;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

.field private b:Lcom/alipay/mobile/nebulacore/refresh/H5PullHeader;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$1;->a:Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canPull()Z
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$1;->a:Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->d(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)Z

    move-result v0

    return v0
.end method

.method public canRefresh()Z
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$1;->a:Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->c(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)Z

    move-result v0

    return v0
.end method

.method public getHeaderView()Landroid/view/View;
    .locals 4

    .prologue
    .line 147
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$1;->b:Lcom/alipay/mobile/nebulacore/refresh/H5PullHeader;

    if-nez v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$1;->a:Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->a(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 149
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 150
    sget v1, Lcom/alipay/mobile/nebulacore/R$layout;->h5_pull_header:I

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$1;->a:Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->e(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/refresh/H5PullHeader;

    .line 149
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$1;->b:Lcom/alipay/mobile/nebulacore/refresh/H5PullHeader;

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$1;->b:Lcom/alipay/mobile/nebulacore/refresh/H5PullHeader;

    return-object v0
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$1;->b:Lcom/alipay/mobile/nebulacore/refresh/H5PullHeader;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$1;->b:Lcom/alipay/mobile/nebulacore/refresh/H5PullHeader;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/refresh/H5PullHeader;->showFinish()V

    .line 177
    :cond_0
    return-void
.end method

.method public onLoading()V
    .locals 3

    .prologue
    .line 123
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$1;->b:Lcom/alipay/mobile/nebulacore/refresh/H5PullHeader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$1;->a:Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->a(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$1;->b:Lcom/alipay/mobile/nebulacore/refresh/H5PullHeader;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/refresh/H5PullHeader;->showLoading()V

    .line 125
    const-string/jumbo v0, "H5WebContent"

    const-string/jumbo v1, "onLoading,TimeoutRunnable begin,send event FIRE_PULL_TO_REFRESH "

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$1;->a:Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->a(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v0

    const-string/jumbo v1, "firePullToRefresh"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 129
    new-instance v0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$TimeoutRunnable;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$1;->a:Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$TimeoutRunnable;-><init>(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)V

    .line 130
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$1;->a:Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->b(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->runOnMain(Ljava/lang/Runnable;J)V

    .line 133
    :cond_0
    return-void
.end method

.method public onOpen()V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$1;->b:Lcom/alipay/mobile/nebulacore/refresh/H5PullHeader;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$1;->b:Lcom/alipay/mobile/nebulacore/refresh/H5PullHeader;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/refresh/H5PullHeader;->showOpen()V

    .line 160
    const-string/jumbo v0, "H5WebContent"

    const-string/jumbo v1, "open "

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :cond_0
    return-void
.end method

.method public onOver()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$1;->b:Lcom/alipay/mobile/nebulacore/refresh/H5PullHeader;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$1;->b:Lcom/alipay/mobile/nebulacore/refresh/H5PullHeader;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/refresh/H5PullHeader;->showOver()V

    .line 170
    :cond_0
    return-void
.end method
