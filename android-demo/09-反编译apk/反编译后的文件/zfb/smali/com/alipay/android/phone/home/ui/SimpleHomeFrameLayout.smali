.class public Lcom/alipay/android/phone/home/ui/SimpleHomeFrameLayout;
.super Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;
.source "SimpleHomeFrameLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected j:Landroid/view/View;

.field k:Lcom/alipay/android/phone/home/ui/HomeTopItemLayout;

.field protected l:Lcom/alipay/android/phone/home/ui/DragReorderGridView;

.field m:I

.field private final n:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 48
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;-><init>(Landroid/content/Context;)V

    .line 42
    iput-object v3, p0, Lcom/alipay/android/phone/home/ui/SimpleHomeFrameLayout;->l:Lcom/alipay/android/phone/home/ui/DragReorderGridView;

    .line 63
    iput v4, p0, Lcom/alipay/android/phone/home/ui/SimpleHomeFrameLayout;->m:I

    .line 49
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/SimpleHomeFrameLayout;->n:Landroid/content/Context;

    .line 51
    :try_start_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 52
    sget v1, Lcom/alipay/android/phone/openplatform/R$layout;->j:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 51
    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/ui/SimpleHomeFrameLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/SimpleHomeFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/openplatform/R$layout;->e:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/SimpleHomeFrameLayout;->j:Landroid/view/View;

    const/4 v0, 0x3

    sput v0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a:I

    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->r:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/ui/SimpleHomeFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/SimpleHomeFrameLayout;->l:Lcom/alipay/android/phone/home/ui/DragReorderGridView;

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/SimpleHomeFrameLayout;->l:Lcom/alipay/android/phone/home/ui/DragReorderGridView;

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/SimpleHomeFrameLayout;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->addHeaderView(Landroid/view/View;)V

    new-instance v0, Lcom/alipay/android/phone/home/ui/HomeTopItemLayout;

    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/SimpleHomeFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/home/ui/HomeTopItemLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/SimpleHomeFrameLayout;->k:Lcom/alipay/android/phone/home/ui/HomeTopItemLayout;

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/SimpleHomeFrameLayout;->l:Lcom/alipay/android/phone/home/ui/DragReorderGridView;

    invoke-virtual {v0, v4}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->setFadingEdgeLength(I)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/SimpleHomeFrameLayout;->l:Lcom/alipay/android/phone/home/ui/DragReorderGridView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->setOverScrollMode(I)V

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/SimpleHomeFrameLayout;->j:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/SimpleHomeFrameLayout;->j:Landroid/view/View;

    sget v1, Lcom/alipay/android/phone/openplatform/R$id;->ab:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/SimpleHomeFrameLayout;->j:Landroid/view/View;

    sget v1, Lcom/alipay/android/phone/openplatform/R$id;->Y:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    :cond_1
    new-instance v0, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/SimpleHomeFrameLayout;->n:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;-><init>(Landroid/view/LayoutInflater;)V

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/SimpleHomeFrameLayout;->a:Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/SimpleHomeFrameLayout;->a:Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/SimpleHomeFrameLayout;->e:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;->a(Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;)V

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/SimpleHomeFrameLayout;->i:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/phone/home/ui/au;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/home/ui/au;-><init>(Lcom/alipay/android/phone/home/ui/SimpleHomeFrameLayout;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 61
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 56
    sget v1, Lcom/alipay/android/phone/openplatform/R$layout;->i:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 55
    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/ui/SimpleHomeFrameLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method static synthetic access$0(Lcom/alipay/android/phone/home/ui/SimpleHomeFrameLayout;)V
    .locals 3

    .prologue
    .line 117
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->c:Ljava/lang/String;

    const-string/jumbo v2, "initHomeAppGrid"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/SimpleHomeFrameLayout;->n:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/SimpleHomeFrameLayout;->l:Lcom/alipay/android/phone/home/ui/DragReorderGridView;

    iget-object v2, p0, Lcom/alipay/android/phone/home/ui/SimpleHomeFrameLayout;->a:Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;

    invoke-virtual {v1, v2}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/SimpleHomeFrameLayout;->a:Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;

    iget-object v2, p0, Lcom/alipay/android/phone/home/ui/SimpleHomeFrameLayout;->l:Lcom/alipay/android/phone/home/ui/DragReorderGridView;

    invoke-virtual {v1, v2}, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;->a(Lcom/alipay/android/phone/home/ui/DragReorderGridView;)V

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/SimpleHomeFrameLayout;->l:Lcom/alipay/android/phone/home/ui/DragReorderGridView;

    new-instance v2, Lcom/alipay/android/phone/home/ui/av;

    invoke-direct {v2, p0, v0}, Lcom/alipay/android/phone/home/ui/av;-><init>(Lcom/alipay/android/phone/home/ui/SimpleHomeFrameLayout;Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;)V

    invoke-virtual {v1, v2}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->setDragReorderListener(Lcom/alipay/mobile/commonui/widget/draggridview/DragReorderListener;)V

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/SimpleHomeFrameLayout;->l:Lcom/alipay/android/phone/home/ui/DragReorderGridView;

    sget v1, Lcom/alipay/android/phone/openplatform/R$id;->p:I

    sget v2, Lcom/alipay/android/phone/openplatform/R$drawable;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->enableEditMode(II)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/ui/SimpleHomeFrameLayout;->refreshAppListData(Z)V

    return-void
.end method

.method static synthetic access$1(Lcom/alipay/android/phone/home/ui/SimpleHomeFrameLayout;)V
    .locals 3

    .prologue
    .line 194
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/SimpleHomeFrameLayout;->e:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/SimpleHomeFrameLayout;->a:Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;

    invoke-virtual {v1}, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;->e()Ljava/util/List;

    move-result-object v1

    const-string/jumbo v2, "firstScreen"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->saveAppsInStage(Ljava/util/List;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/SimpleHomeFrameLayout;->e:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->reportUserRank(Z)Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 205
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/alipay/android/phone/openplatform/R$id;->ab:I

    if-ne v0, v1, :cond_1

    .line 206
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/SimpleHomeFrameLayout;->jumpToSaoyisao()V

    .line 207
    invoke-static {}, Lcom/alipay/android/phone/home/util/HomeLogAgentUtil;->b()V

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/alipay/android/phone/openplatform/R$id;->Y:I

    if-ne v0, v1, :cond_0

    .line 209
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/SimpleHomeFrameLayout;->jumpToSaomafu()V

    .line 210
    const-string/jumbo v0, "20000056"

    invoke-static {v0}, Lcom/alipay/android/phone/home/util/HomeLogAgentUtil;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 238
    return-void
.end method

.method public onRefresh()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 217
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->c:Ljava/lang/String;

    const-string/jumbo v2, "onRefresh"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getInstance()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getNeedRefreshHome()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/SimpleHomeFrameLayout;->a:Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;->notifyDataSetChanged()V

    .line 221
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getInstance()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->setNeedRefreshHome(Z)V

    .line 224
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/SimpleHomeFrameLayout;->refreshHomeAppsData()V

    .line 226
    iget v0, p0, Lcom/alipay/android/phone/home/ui/SimpleHomeFrameLayout;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/android/phone/home/ui/SimpleHomeFrameLayout;->m:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    .line 227
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/SimpleHomeFrameLayout;->k:Lcom/alipay/android/phone/home/ui/HomeTopItemLayout;

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/SimpleHomeFrameLayout;->l:Lcom/alipay/android/phone/home/ui/DragReorderGridView;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/home/ui/HomeTopItemLayout;->setAppList(Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;Ljava/util/List;)V

    .line 233
    :cond_1
    :goto_0
    return-void

    .line 229
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/SimpleHomeFrameLayout;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v4, :cond_1

    .line 230
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/SimpleHomeFrameLayout;->k:Lcom/alipay/android/phone/home/ui/HomeTopItemLayout;

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/SimpleHomeFrameLayout;->l:Lcom/alipay/android/phone/home/ui/DragReorderGridView;

    iget-object v2, p0, Lcom/alipay/android/phone/home/ui/SimpleHomeFrameLayout;->d:Ljava/util/List;

    invoke-interface {v2, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/home/ui/HomeTopItemLayout;->setAppList(Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;Ljava/util/List;)V

    goto :goto_0
.end method

.method protected whenRefreshApplistData()V
    .locals 0

    .prologue
    .line 68
    return-void
.end method
