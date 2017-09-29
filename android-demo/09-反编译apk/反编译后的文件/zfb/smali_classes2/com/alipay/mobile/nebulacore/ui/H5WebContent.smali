.class public Lcom/alipay/mobile/nebulacore/ui/H5WebContent;
.super Lcom/alipay/mobile/h5container/api/H5SimplePlugin;
.source "H5WebContent.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5WebContent"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private c:Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;

.field private d:Landroid/widget/TextView;

.field private e:Lcom/alipay/mobile/nebulacore/view/H5Progress;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

.field private k:I

.field private l:Z

.field private m:I

.field private n:Z

.field private o:Z

.field private p:Lcom/alipay/mobile/nebulacore/refresh/H5PullAdapter;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;-><init>()V

    .line 56
    iput v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->k:I

    .line 60
    const/16 v0, 0x4e20

    iput v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->m:I

    .line 117
    new-instance v0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$1;-><init>(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->p:Lcom/alipay/mobile/nebulacore/refresh/H5PullAdapter;

    .line 68
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->j:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 69
    iput-boolean v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->g:Z

    .line 70
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->i:Z

    .line 71
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->f:Z

    .line 72
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->l:Z

    .line 73
    iput-boolean v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->n:Z

    .line 74
    iput-boolean v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->o:Z

    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->j:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/nebulacore/R$layout;->h5_web_content:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->a:Landroid/view/View;

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->a:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/nebulacore/R$id;->h5_web_content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->b:Landroid/view/View;

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->a:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/nebulacore/R$id;->tv_h5_provider:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->a:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/nebulacore/R$id;->pb_h5_progress:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/view/H5Progress;

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->e:Lcom/alipay/mobile/nebulacore/view/H5Progress;

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->a:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/nebulacore/R$id;->pc_h5_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->c:Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->c:Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->j:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getWebView()Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->c:Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->j:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getWebView()Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->setPullableView(Lcom/alipay/mobile/nebulacore/refresh/H5PullableView;)V

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->c:Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->p:Lcom/alipay/mobile/nebulacore/refresh/H5PullAdapter;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->setPullAdapter(Lcom/alipay/mobile/nebulacore/refresh/H5PullAdapter;)V

    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->a()V

    .line 76
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)Lcom/alipay/mobile/nebulacore/core/H5PageImpl;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->j:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 108
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->j:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "appId"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 109
    invoke-static {}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getInstance()Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 110
    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->isH5App(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->i:Z

    if-eqz v0, :cond_2

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->d:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    :goto_0
    return-void

    .line 113
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->m:I

    return v0
.end method

.method static synthetic c(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->i:Z

    return v0
.end method

.method static synthetic d(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->g:Z

    return v0
.end method

.method static synthetic e(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->c:Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;

    return-object v0
.end method

.method static synthetic f(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->l:Z

    return-void
.end method

.method static synthetic g(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->o:Z

    return-void
.end method

.method static synthetic h(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->n:Z

    return v0
.end method

.method static synthetic i(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)Lcom/alipay/mobile/nebulacore/view/H5Progress;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->e:Lcom/alipay/mobile/nebulacore/view/H5Progress;

    return-object v0
.end method

.method static synthetic j(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->n:Z

    return-void
.end method


# virtual methods
.method public getContent()Landroid/view/View;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->a:Landroid/view/View;

    return-object v0
.end method

.method public getPage()Lcom/alipay/mobile/h5container/api/H5Page;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->j:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    return-object v0
.end method

.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 230
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 231
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 232
    const-string/jumbo v4, "titleClick"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 233
    const-string/jumbo v4, "optionMenu"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 234
    const-string/jumbo v4, "subtitleClick"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->j:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getBridge()Lcom/alipay/mobile/h5container/api/H5Bridge;

    move-result-object v0

    invoke-interface {v0, v2, v5, v5}, Lcom/alipay/mobile/h5container/api/H5Bridge;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5CallBack;)V

    :cond_1
    :goto_0
    move v0, v1

    .line 270
    :cond_2
    return v0

    .line 236
    :cond_3
    const-string/jumbo v4, "pullRefresh"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 237
    const-string/jumbo v2, "pullRefresh"

    invoke-static {v3, v2, v0}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->i:Z

    .line 239
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->a()V

    .line 240
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->c:Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->notifyViewChanged()V

    goto :goto_0

    .line 241
    :cond_4
    const-string/jumbo v4, "canPullDown"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 242
    const-string/jumbo v0, "canPullDown"

    invoke-static {v3, v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->g:Z

    goto :goto_0

    .line 244
    :cond_5
    const-string/jumbo v4, "showDomain"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 245
    const-string/jumbo v0, "showDomain"

    invoke-static {v3, v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h:Z

    goto :goto_0

    .line 247
    :cond_6
    const-string/jumbo v4, "closeWebview"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 248
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->j:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string/jumbo v2, "h5PageClose"

    invoke-virtual {v0, v2, v5}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_0

    .line 249
    :cond_7
    const-string/jumbo v4, "h5PagePhysicalBack"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 250
    const-string/jumbo v4, "h5ToolbarBack"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 251
    :cond_8
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->j:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string/jumbo v2, "h5PageBack"

    invoke-virtual {v0, v2, v5}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_0

    .line 252
    :cond_9
    const-string/jumbo v4, "h5ToolbarClose"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 253
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->j:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string/jumbo v2, "h5PageClose"

    invoke-virtual {v0, v2, v5}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto/16 :goto_0

    .line 254
    :cond_a
    const-string/jumbo v4, "h5ToolbarReload"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 255
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->j:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string/jumbo v2, "h5PageReload"

    invoke-virtual {v0, v2, v5}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto/16 :goto_0

    .line 256
    :cond_b
    const-string/jumbo v4, "showProgressBar"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 257
    const-string/jumbo v2, "showProgress"

    invoke-static {v3, v2, v0}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->f:Z

    .line 258
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->f:Z

    if-nez v0, :cond_1

    .line 259
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->e:Lcom/alipay/mobile/nebulacore/view/H5Progress;

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/nebulacore/view/H5Progress;->setVisibility(I)V

    goto/16 :goto_0

    .line 261
    :cond_c
    const-string/jumbo v3, "firePullToRefresh"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 262
    new-instance v3, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$PullFreshCallback;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$PullFreshCallback;-><init>(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)V

    iget-boolean v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->o:Z

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->j:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v4}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getBridge()Lcom/alipay/mobile/h5container/api/H5Bridge;

    move-result-object v4

    invoke-interface {v4, v2, v5, v3}, Lcom/alipay/mobile/h5container/api/H5Bridge;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5CallBack;)V

    const-string/jumbo v2, "H5WebContent"

    const-string/jumbo v3, "sendToWeb FIRE_PULL_TO_REFRESH"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->o:Z

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v0, "H5WebContent"

    const-string/jumbo v2, "date not return,not sendToWeb FIRE_PULL_TO_REFRESH"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 263
    :cond_e
    const-string/jumbo v3, "restorePullToRefresh"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 264
    const-string/jumbo v2, "H5WebContent"

    const-string/jumbo v3, "handleEvent restorePullToRefresh"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->o:Z

    .line 266
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->c:Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->isBackToTop()Z

    move-result v2

    if-nez v2, :cond_f

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->n:Z

    const-string/jumbo v0, "H5WebContent"

    const-string/jumbo v2, "invoke restorePullToRefresh,not backToTop"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->e:Lcom/alipay/mobile/nebulacore/view/H5Progress;

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/nebulacore/view/H5Progress;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->c:Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->fitContent()V

    goto/16 :goto_0

    :cond_f
    const-string/jumbo v0, "H5WebContent"

    const-string/jumbo v2, "invoke restorePullToRefresh,already backToTop"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 204
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 205
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 206
    const-string/jumbo v2, "h5PageStarted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 207
    iget v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->k:I

    .line 208
    iget v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->k:I

    if-le v0, v5, :cond_1

    .line 209
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->e:Lcom/alipay/mobile/nebulacore/view/H5Progress;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/view/H5Progress;->hideProgress()V

    .line 225
    :cond_0
    :goto_0
    return v4

    .line 211
    :cond_1
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->f:Z

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->e:Lcom/alipay/mobile/nebulacore/view/H5Progress;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/nebulacore/view/H5Progress;->setVisibility(I)V

    goto :goto_0

    .line 216
    :cond_2
    const-string/jumbo v2, "h5PageFinished"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 217
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->e:Lcom/alipay/mobile/nebulacore/view/H5Progress;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/view/H5Progress;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->c:Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->fitContent()V

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->j:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/util/H5UrlHelper;->getHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->b:Landroid/view/View;

    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/nebulacore/R$color;->h5_provider:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h:Z

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/nebulacore/R$string;->h5_provider:I

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->j:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->j:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getWebView()Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->j:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getWebView()Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getType()Lcom/alipay/mobile/nebula/webview/WebViewType;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/nebula/webview/WebViewType;->THIRD_PARTY:Lcom/alipay/mobile/nebula/webview/WebViewType;

    if-ne v1, v2, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/nebulacore/R$string;->browser_provider:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->d:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 218
    :cond_5
    const-string/jumbo v2, "h5PageProgress"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 219
    const-string/jumbo v0, "progress"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v0

    .line 220
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->e:Lcom/alipay/mobile/nebulacore/view/H5Progress;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/nebulacore/view/H5Progress;->updateProgress(I)V

    goto/16 :goto_0

    .line 221
    :cond_6
    const-string/jumbo v2, "h5PageBackground"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    const-string/jumbo v0, "backgroundColor"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v0

    .line 223
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_0
.end method

.method public onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    .locals 1

    .prologue
    .line 182
    const-string/jumbo v0, "h5PageStarted"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 183
    const-string/jumbo v0, "h5PageProgress"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 184
    const-string/jumbo v0, "h5PageFinished"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 185
    const-string/jumbo v0, "h5PageBackground"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 186
    const-string/jumbo v0, "h5PagePhysicalBack"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 187
    const-string/jumbo v0, "h5ToolbarBack"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 188
    const-string/jumbo v0, "h5ToolbarClose"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 189
    const-string/jumbo v0, "h5ToolbarReload"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 190
    const-string/jumbo v0, "optionMenu"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 191
    const-string/jumbo v0, "titleClick"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 192
    const-string/jumbo v0, "subtitleClick"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 193
    const-string/jumbo v0, "closeWebview"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 194
    const-string/jumbo v0, "pullRefresh"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 195
    const-string/jumbo v0, "canPullDown"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 196
    const-string/jumbo v0, "showDomain"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 197
    const-string/jumbo v0, "showProgressBar"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 198
    const-string/jumbo v0, "firePullToRefresh"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 199
    const-string/jumbo v0, "restorePullToRefresh"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 200
    return-void
.end method

.method public onRelease()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->j:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 81
    return-void
.end method
