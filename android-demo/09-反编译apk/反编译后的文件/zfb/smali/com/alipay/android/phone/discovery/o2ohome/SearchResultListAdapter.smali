.class public Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SearchResultListAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "o2ohome.SearchAdapter"

.field private static final preGenerated:I = 0x2

.field private static final preGenerating:I = 0x1


# instance fields
.field private final birdNestService:Lcom/alipay/android/app/template/service/DynamicTemplateService;

.field private clickParam:Ljava/lang/String;

.field private final context:Landroid/app/Activity;

.field private final convertViews:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final eventHandler:Lcom/alipay/android/phone/discovery/o2ohome/JsHomeEventHandler;

.field private itemDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;",
            ">;"
        }
    .end annotation
.end field

.field private statusPreGenerateStatus:Ljava/util/concurrent/atomic/AtomicInteger;

.field private widgetGroup:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;


# direct methods
.method public constructor <init>(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;Ljava/util/List;Landroid/app/Activity;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;",
            ">;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->statusPreGenerateStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 38
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->clickParam:Ljava/lang/String;

    .line 39
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/JsHomeEventHandler;

    invoke-direct {v0}, Lcom/alipay/android/phone/discovery/o2ohome/JsHomeEventHandler;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->eventHandler:Lcom/alipay/android/phone/discovery/o2ohome/JsHomeEventHandler;

    .line 43
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->widgetGroup:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    .line 44
    iput-object p3, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->context:Landroid/app/Activity;

    .line 45
    iput-object p2, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->itemDataList:Ljava/util/List;

    .line 46
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->convertViews:Ljava/util/Queue;

    .line 47
    const-class v0, Lcom/alipay/android/app/template/service/DynamicTemplateService;

    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/util/OpenPageHelper;->getExtServiceByInterface(Ljava/lang/Class;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/service/DynamicTemplateService;

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->birdNestService:Lcom/alipay/android/app/template/service/DynamicTemplateService;

    .line 48
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->context:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->statusPreGenerateStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$2(Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;)Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->widgetGroup:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    return-object v0
.end method


# virtual methods
.method public clearData()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->itemDataList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->itemDataList:Ljava/util/List;

    .line 54
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->isPreGeneratedDone()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->itemDataList:Ljava/util/List;

    if-nez v0, :cond_1

    .line 141
    :cond_0
    const/4 v0, 0x0

    .line 143
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->itemDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->itemDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 153
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .prologue
    .line 160
    if-nez p2, :cond_1

    .line 161
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->convertViews:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->convertViews:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v6, v0

    .line 167
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->itemDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;

    .line 168
    iget-object v0, v8, Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;->jsonObj:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v1, "index"

    add-int/lit8 v2, p1, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    iget-object v0, v8, Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;->jsonObj:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v1, "recommendId"

    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->clickParam:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->birdNestService:Lcom/alipay/android/app/template/service/DynamicTemplateService;

    iget-object v1, v8, Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;->id:Ljava/lang/String;

    iget-object v2, v8, Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;->jsonObj:Lcom/alibaba/fastjson/JSONObject;

    iget-object v3, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->eventHandler:Lcom/alipay/android/phone/discovery/o2ohome/JsHomeEventHandler;

    const-string/jumbo v4, ""

    iget-object v5, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->context:Landroid/app/Activity;

    const/4 v7, 0x1

    invoke-virtual/range {v0 .. v7}, Lcom/alipay/android/app/template/service/DynamicTemplateService;->generateView(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/android/app/template/event/TElementEventHandler;Ljava/lang/String;Landroid/app/Activity;Landroid/view/View;Z)Landroid/view/View;

    move-result-object v0

    .line 171
    if-nez v0, :cond_0

    .line 174
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "o2ohome.SearchAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u70ed\u95e8\u63a8\u8350 generateView failed"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v8, Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :cond_0
    return-object v0

    :cond_1
    move-object v6, p2

    goto :goto_0
.end method

.method public isPreGeneratedDone()Z
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 57
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->statusPreGenerateStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    return v0
.end method

.method public preGenerateView(Ljava/util/List;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewTreeObserver$OnPreDrawListener;I)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;",
            ">;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Landroid/view/ViewTreeObserver$OnPreDrawListener;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 103
    if-nez p1, :cond_0

    .line 136
    :goto_0
    return-void

    .line 107
    :cond_0
    const/4 v1, 0x0

    .line 108
    if-eqz p2, :cond_7

    .line 109
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    move v2, v1

    .line 111
    :goto_1
    if-eqz p5, :cond_1

    if-nez p2, :cond_4

    :cond_1
    const/4 v1, 0x7

    .line 112
    :goto_2
    if-lez p5, :cond_2

    rem-int v2, v2, p5

    if-lez v2, :cond_2

    .line 113
    add-int/lit8 v1, v1, 0x1

    .line 115
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 119
    const/4 v1, 0x0

    move v9, v1

    :goto_3
    if-lt v9, v10, :cond_5

    .line 130
    if-eqz p3, :cond_3

    if-eqz p4, :cond_3

    .line 131
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    move-object/from16 v0, p4

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 134
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long v3, v1, v11

    .line 135
    const-string/jumbo v1, "O2OHOME"

    const-string/jumbo v2, "BirdNest_Hot"

    const-string/jumbo v5, "count"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v1 .. v6}, Lcom/alipay/android/phone/discovery/o2ohome/util/MonitorLogHelper;->performanceExt(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 111
    :cond_4
    div-int v1, v2, p5

    goto :goto_2

    .line 120
    :cond_5
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;

    .line 121
    const/4 v3, 0x0

    .line 122
    if-eqz p1, :cond_6

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 123
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;

    iget-object v3, v1, Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;->jsonObj:Lcom/alibaba/fastjson/JSONObject;

    .line 125
    :cond_6
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->birdNestService:Lcom/alipay/android/app/template/service/DynamicTemplateService;

    iget-object v2, v2, Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;->id:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->eventHandler:Lcom/alipay/android/phone/discovery/o2ohome/JsHomeEventHandler;

    const-string/jumbo v5, ""

    iget-object v6, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->context:Landroid/app/Activity;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lcom/alipay/android/app/template/service/DynamicTemplateService;->generateView(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/android/app/template/event/TElementEventHandler;Ljava/lang/String;Landroid/app/Activity;Landroid/view/View;Z)Landroid/view/View;

    move-result-object v1

    .line 126
    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->convertViews:Ljava/util/Queue;

    invoke-interface {v2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 119
    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto :goto_3

    :cond_7
    move v2, v1

    goto :goto_1
.end method

.method public setTemplates(Ljava/util/List;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 62
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 63
    :goto_0
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->itemDataList:Ljava/util/List;

    .line 64
    iput-object p2, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->clickParam:Ljava/lang/String;

    .line 66
    invoke-virtual {p0}, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->isPreGeneratedDone()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 67
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->widgetGroup:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    invoke-virtual {v1}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->pullRefreshFinished()V

    .line 68
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->widgetGroup:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->updateHeaderAndFooter(Z)V

    .line 69
    invoke-virtual {p0}, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->notifyDataSetChanged()V

    .line 98
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 62
    goto :goto_0

    .line 70
    :cond_1
    iget-object v3, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->statusPreGenerateStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 71
    new-instance v1, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter$1;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;ZLjava/util/List;)V

    invoke-static {v1}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 95
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->notifyDataSetChanged()V

    .line 96
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "o2ohome.SearchAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "preGenerateView() running.. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->statusPreGenerateStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
