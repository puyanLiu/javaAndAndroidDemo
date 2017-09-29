.class public Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;
.super Lcom/alipay/mobile/h5container/api/H5SimplePlugin;
.source "H5TransWebContent.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5TransWebContent"


# instance fields
.field private a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V
    .locals 5

    .prologue
    const/4 v3, -0x1

    .line 31
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 33
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/nebulacore/R$layout;->h5_trans_web_content:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->b:Landroid/view/View;

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->b:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/nebulacore/R$id;->h5_trans_web_content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->c:Landroid/widget/RelativeLayout;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const-string/jumbo v1, "H5TransWebContent"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "COLOR IS "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "backgroundColor"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->c:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getWebView()Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    return-void
.end method


# virtual methods
.method public getContent()Landroid/view/View;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->b:Landroid/view/View;

    return-object v0
.end method

.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 65
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 66
    const-string/jumbo v1, "closeWebview"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string/jumbo v1, "h5PageClose"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 74
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 68
    :cond_0
    const-string/jumbo v1, "h5PagePhysicalBack"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 69
    const-string/jumbo v1, "h5ToolbarBack"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string/jumbo v1, "h5PageBack"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_0

    .line 72
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 1

    .prologue
    .line 60
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;->interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z

    move-result v0

    return v0
.end method

.method public onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    .locals 1

    .prologue
    .line 54
    const-string/jumbo v0, "closeWebview"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 55
    const-string/jumbo v0, "h5PagePhysicalBack"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public onRelease()V
    .locals 0

    .prologue
    .line 79
    invoke-super {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;->onRelease()V

    .line 80
    return-void
.end method
