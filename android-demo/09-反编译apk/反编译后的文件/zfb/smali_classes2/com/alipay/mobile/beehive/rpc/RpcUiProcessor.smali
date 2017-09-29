.class public Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;
.super Ljava/lang/Object;
.source "RpcUiProcessor.java"


# instance fields
.field private activityResponsible:Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

.field private emptyText:Ljava/lang/String;

.field private flowTipView:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

.field private loadingText:Ljava/lang/String;

.field private netErrorText:Ljava/lang/String;

.field private retryRunnable:Ljava/lang/Runnable;

.field private warnText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-direct {p0, p1}, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;->init(Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;)V

    .line 39
    return-void
.end method

.method private createFlowTipViewIfNot()V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;->flowTipView:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;->activityResponsible:Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;->activityResponsible:Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/rpc/FlowTipViewFactory;->buildFlowTipView(Landroid/app/Activity;)Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;->flowTipView:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    .line 217
    :cond_0
    return-void
.end method

.method private findTitleBarFromRootView(Landroid/view/View;)Lcom/alipay/mobile/commonui/widget/APTitleBar;
    .locals 3

    .prologue
    .line 103
    instance-of v0, p1, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    if-eqz v0, :cond_0

    .line 104
    check-cast p1, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    .line 116
    :goto_0
    return-object p1

    .line 106
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 107
    check-cast p1, Landroid/view/ViewGroup;

    .line 108
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 109
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-lt v1, v2, :cond_2

    .line 116
    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    .line 110
    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;->findTitleBarFromRootView(Landroid/view/View;)Lcom/alipay/mobile/commonui/widget/APTitleBar;

    move-result-object v0

    .line 111
    if-eqz v0, :cond_3

    move-object p1, v0

    .line 112
    goto :goto_0

    .line 109
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method private getTitleBar()Lcom/alipay/mobile/commonui/widget/APTitleBar;
    .locals 2

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;->getRpcUiResponsible()Lcom/alipay/mobile/beehive/rpc/IRpcUiResponsible;

    move-result-object v0

    .line 88
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/alipay/mobile/beehive/rpc/IRpcUiResponsible;->getTitleBar()Lcom/alipay/mobile/commonui/widget/APTitleBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;->getRpcUiResponsible()Lcom/alipay/mobile/beehive/rpc/IRpcUiResponsible;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/beehive/rpc/IRpcUiResponsible;->getTitleBar()Lcom/alipay/mobile/commonui/widget/APTitleBar;

    move-result-object v0

    .line 99
    :goto_0
    return-object v0

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 92
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 93
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 95
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 96
    invoke-direct {p0, v0}, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;->findTitleBarFromRootView(Landroid/view/View;)Lcom/alipay/mobile/commonui/widget/APTitleBar;

    move-result-object v0

    goto :goto_0

    .line 99
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private init(Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;)V
    .locals 3

    .prologue
    .line 42
    iput-object p1, p0, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;->activityResponsible:Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    .line 43
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;->loadingText:Ljava/lang/String;

    .line 44
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;->emptyText:Ljava/lang/String;

    .line 45
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;->netErrorText:Ljava/lang/String;

    .line 46
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;->warnText:Ljava/lang/String;

    .line 48
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 49
    sget v1, Lcom/alipay/mobile/beehive/R$string;->no_data:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;->emptyText:Ljava/lang/String;

    .line 50
    sget v1, Lcom/alipay/mobile/beehive/R$string;->no_network:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;->netErrorText:Ljava/lang/String;

    .line 51
    sget v1, Lcom/alipay/mobile/beehive/R$string;->network_busy:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;->warnText:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v0

    .line 53
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "RpcRunner"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private setFlowTipViewParams(ILjava/lang/String;Ljava/lang/Runnable;)V
    .locals 3

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;->createFlowTipViewIfNot()V

    .line 148
    iget-object v0, p0, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;->flowTipView:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;->flowTipView:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->resetFlowTipType(I)V

    .line 150
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;->flowTipView:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->setTips(Ljava/lang/String;)V

    .line 153
    :cond_0
    if-eqz p3, :cond_2

    .line 154
    iget-object v0, p0, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;->flowTipView:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;->flowTipView:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->getActionButton()Lcom/alipay/mobile/commonui/widget/APButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APButton;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 155
    new-instance v2, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor$1;

    invoke-direct {v2, p0, p3}, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor$1;-><init>(Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;Ljava/lang/Runnable;)V

    .line 154
    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->setAction(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 165
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;->flowTipView:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 167
    :cond_1
    return-void

    .line 163
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;->flowTipView:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->setNoAction()V

    goto :goto_0
.end method


# virtual methods
.method public dismissProgressDialog()V
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;->getActivityResponsible()Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;->getActivityResponsible()Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;->dismissProgressDialog()V

    .line 72
    :cond_0
    return-void
.end method

.method public dismissTitleBarLoading()V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;->getTitleBar()Lcom/alipay/mobile/commonui/widget/APTitleBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;->getTitleBar()Lcom/alipay/mobile/commonui/widget/APTitleBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->stopProgressBar()V

    .line 84
    :cond_0
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;->activityResponsible:Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;->activityResponsible:Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    check-cast v0, Landroid/app/Activity;

    .line 223
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getActivityResponsible()Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;->activityResponsible:Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    return-object v0
.end method

.method public getEmptyText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;->emptyText:Ljava/lang/String;

    return-object v0
.end method

.method public getLoadingText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;->loadingText:Ljava/lang/String;

    return-object v0
.end method

.method public getNetErrorText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;->netErrorText:Ljava/lang/String;

    return-object v0
.end method

.method public getRetryRunnable()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;->retryRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method public getRpcUiResponsible()Lcom/alipay/mobile/beehive/rpc/IRpcUiResponsible;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;->activityResponsible:Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    instance-of v0, v0, Lcom/alipay/mobile/beehive/rpc/IRpcUiResponsible;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;->activityResponsible:Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    check-cast v0, Lcom/alipay/mobile/beehive/rpc/IRpcUiResponsible;

    .line 237
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWarnText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;->warnText:Ljava/lang/String;

    return-object v0
.end method

.method public hideFlowTipViewIfShow()V
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;->flowTipView:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;->flowTipView:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 231
    :cond_0
    return-void
.end method

.method public setEmptyText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;->emptyText:Ljava/lang/String;

    .line 191
    return-void
.end method

.method public setLoadingText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;->loadingText:Ljava/lang/String;

    .line 183
    return-void
.end method

.method public setNetErrorText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;->netErrorText:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public setRetryRunnable(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;->retryRunnable:Ljava/lang/Runnable;

    .line 207
    return-void
.end method

.method public setWarnText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;->warnText:Ljava/lang/String;

    .line 199
    return-void
.end method

.method public showEmptyView()V
    .locals 1

    .prologue
    .line 128
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;->showEmptyView(Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public showEmptyView(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 132
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object p1, p0, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;->emptyText:Ljava/lang/String;

    .line 135
    :cond_0
    const/16 v0, 0x11

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;->setFlowTipViewParams(ILjava/lang/String;Ljava/lang/Runnable;)V

    .line 136
    return-void
.end method

.method public showNetworkError()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;->retryRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;->showNetworkError(Ljava/lang/Runnable;)V

    .line 121
    return-void
.end method

.method public showNetworkError(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 124
    const/16 v0, 0x10

    iget-object v1, p0, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;->netErrorText:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1}, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;->setFlowTipViewParams(ILjava/lang/String;Ljava/lang/Runnable;)V

    .line 125
    return-void
.end method

.method public showProgressDialog(ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 2

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;->getActivityResponsible()Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;->getActivityResponsible()Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;->loadingText:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 66
    :cond_0
    return-void
.end method

.method public showTitleBarLoading()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;->getTitleBar()Lcom/alipay/mobile/commonui/widget/APTitleBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;->getTitleBar()Lcom/alipay/mobile/commonui/widget/APTitleBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->startProgressBar()V

    .line 78
    :cond_0
    return-void
.end method

.method public showWarn()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;->retryRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;->showWarn(Ljava/lang/Runnable;)V

    .line 140
    return-void
.end method

.method public showWarn(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 143
    const/16 v0, 0x12

    iget-object v1, p0, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;->warnText:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1}, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;->setFlowTipViewParams(ILjava/lang/String;Ljava/lang/Runnable;)V

    .line 144
    return-void
.end method
