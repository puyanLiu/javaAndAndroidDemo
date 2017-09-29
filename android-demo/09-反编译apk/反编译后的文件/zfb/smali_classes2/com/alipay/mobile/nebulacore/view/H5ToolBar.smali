.class public Lcom/alipay/mobile/nebulacore/view/H5ToolBar;
.super Lcom/alipay/mobile/h5container/api/H5SimplePlugin;
.source "H5ToolBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/alipay/mobile/h5container/api/H5Page;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Lcom/alipay/mobile/nebulacore/view/H5ToolMenu;

.field private i:Z


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/h5container/api/H5Page;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/view/H5ToolBar;->i:Z

    .line 45
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/view/H5ToolBar;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5ToolBar;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 47
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/nebulacore/R$layout;->h5_tool_bar:I

    .line 48
    const/4 v2, 0x0

    .line 47
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5ToolBar;->b:Landroid/view/View;

    .line 49
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5ToolBar;->b:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/nebulacore/R$id;->h5_toolbar_back:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5ToolBar;->c:Landroid/view/View;

    .line 50
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5ToolBar;->b:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/nebulacore/R$id;->h5_toolbar_close:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5ToolBar;->d:Landroid/view/View;

    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5ToolBar;->b:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/nebulacore/R$id;->h5_toolbar_menu_setting:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5ToolBar;->e:Landroid/widget/ImageView;

    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5ToolBar;->b:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/nebulacore/R$id;->h5_toolbar_iv_refresh:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5ToolBar;->g:Landroid/view/View;

    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5ToolBar;->b:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/nebulacore/R$id;->h5_toolbar_pb_refresh:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5ToolBar;->f:Landroid/view/View;

    .line 55
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5ToolBar;->c:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5ToolBar;->d:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5ToolBar;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5ToolBar;->g:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5ToolBar;->d:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 62
    new-instance v0, Lcom/alipay/mobile/nebulacore/view/H5ToolMenu;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5ToolBar;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebulacore/view/H5ToolMenu;-><init>(Lcom/alipay/mobile/h5container/api/H5Page;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5ToolBar;->h:Lcom/alipay/mobile/nebulacore/view/H5ToolMenu;

    .line 63
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/view/H5ToolBar;->a()V

    .line 64
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5ToolBar;->h:Lcom/alipay/mobile/nebulacore/view/H5ToolMenu;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/view/H5ToolMenu;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 137
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5ToolBar;->e:Landroid/widget/ImageView;

    sget v1, Lcom/alipay/mobile/nebulacore/R$drawable;->options_selector:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 141
    :goto_0
    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5ToolBar;->e:Landroid/widget/ImageView;

    sget v1, Lcom/alipay/mobile/nebulacore/R$drawable;->font_size_selector:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public getContent()Landroid/view/View;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5ToolBar;->b:Landroid/view/View;

    return-object v0
.end method

.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 103
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 104
    const-string/jumbo v2, "showToolbar"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 105
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5ToolBar;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 106
    const-string/jumbo v0, "success"

    const-string/jumbo v1, "true"

    invoke-interface {p2, v0, v1}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 113
    :goto_0
    const/4 v0, 0x1

    :cond_0
    return v0

    .line 107
    :cond_1
    const-string/jumbo v2, "hideToolbar"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    const-string/jumbo v0, "H5ToolBar"

    const-string/jumbo v1, "hideToolBar"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5ToolBar;->b:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 109
    const-string/jumbo v0, "success"

    const-string/jumbo v1, "true"

    invoke-interface {p2, v0, v1}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 78
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 79
    const-string/jumbo v1, "h5PageFinished"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 80
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5ToolBar;->f:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5ToolBar;->g:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 98
    :cond_0
    :goto_0
    return v2

    .line 82
    :cond_1
    const-string/jumbo v1, "h5PageStarted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 83
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5ToolBar;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5ToolBar;->g:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/view/H5ToolBar;->i:Z

    goto :goto_0

    .line 86
    :cond_2
    const-string/jumbo v1, "setToolbarMenu"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 87
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5ToolBar;->h:Lcom/alipay/mobile/nebulacore/view/H5ToolMenu;

    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/view/H5ToolBar;->i:Z

    invoke-virtual {v0, p1, v1}, Lcom/alipay/mobile/nebulacore/view/H5ToolMenu;->setMenu(Lcom/alipay/mobile/h5container/api/H5Event;Z)V

    .line 88
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/view/H5ToolBar;->a()V

    goto :goto_0

    .line 89
    :cond_3
    const-string/jumbo v1, "h5PageShowClose"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 91
    const-string/jumbo v1, "show"

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    .line 92
    if-eqz v0, :cond_4

    .line 93
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5ToolBar;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 95
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5ToolBar;->d:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 145
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5ToolBar;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v0, :cond_0

    if-nez p1, :cond_2

    .line 146
    :cond_0
    const-string/jumbo v0, "H5ToolBar"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "FATAL ERROR, illegal parameter in onClick() h5page: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5ToolBar;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " v: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 146
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :cond_1
    :goto_0
    return-void

    .line 151
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5ToolBar;->c:Landroid/view/View;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 152
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5ToolBar;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    const-string/jumbo v1, "h5ToolbarBack"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_0

    .line 153
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5ToolBar;->d:Landroid/view/View;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 154
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5ToolBar;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    const-string/jumbo v1, "h5ToolbarClose"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_0

    .line 155
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5ToolBar;->e:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 156
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5ToolBar;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    const-string/jumbo v1, "h5ToolbarMenu"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 157
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5ToolBar;->h:Lcom/alipay/mobile/nebulacore/view/H5ToolMenu;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/view/H5ToolMenu;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_5

    .line 158
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5ToolBar;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    const-string/jumbo v1, "showFontBar"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_0

    .line 160
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5ToolBar;->h:Lcom/alipay/mobile/nebulacore/view/H5ToolMenu;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5ToolBar;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/view/H5ToolMenu;->showMenu(Landroid/view/View;)V

    goto :goto_0

    .line 162
    :cond_6
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5ToolBar;->g:Landroid/view/View;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5ToolBar;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    const-string/jumbo v1, "h5ToolbarReload"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_0
.end method

.method public onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    .locals 1

    .prologue
    .line 118
    const-string/jumbo v0, "showToolbar"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 119
    const-string/jumbo v0, "hideToolbar"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 120
    const-string/jumbo v0, "setToolbarMenu"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 121
    const-string/jumbo v0, "h5PageStarted"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 122
    const-string/jumbo v0, "h5PageFinished"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 123
    const-string/jumbo v0, "h5PageShowClose"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public onRelease()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5ToolBar;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 73
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5ToolBar;->h:Lcom/alipay/mobile/nebulacore/view/H5ToolMenu;

    .line 74
    return-void
.end method
