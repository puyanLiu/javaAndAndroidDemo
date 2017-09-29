.class public Lcom/alipay/asset/common/view/BaseWealthWidgetView;
.super Lcom/alipay/mobile/commonui/widget/APFrameLayout;
.source "BaseWealthWidgetView.java"


# static fields
.field private static d:Lcom/alipay/mobile/commonbiz/image/ImageWorker;


# instance fields
.field private a:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

.field private b:Lcom/alipay/asset/common/view/AdCornerView;

.field private c:Lcom/alipay/mobile/framework/service/common/SchemeService;

.field private e:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;

.field private f:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;

.field protected iconView:Lcom/alipay/mobile/commonui/widget/APImageView;

.field protected mainInfoView:Lcom/alipay/mobile/commonui/widget/APTextView;

.field protected redPointContainerView:Lcom/alipay/mobile/commonui/widget/APFrameLayout;

.field protected secondaryInfoView:Lcom/alipay/mobile/commonui/widget/APTextView;

.field protected titleView:Lcom/alipay/mobile/commonui/widget/APTextView;

.field protected wealthHomeModule:Lcom/alipay/android/widgets/asset/model/WealthHomeModule;

.field protected widgetId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;-><init>(Landroid/content/Context;)V

    .line 69
    invoke-direct {p0, p1}, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->a(Landroid/content/Context;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    invoke-direct {p0, p1}, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->a(Landroid/content/Context;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    invoke-direct {p0, p1}, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->a(Landroid/content/Context;)V

    .line 60
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 77
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->getLayoutId()I

    move-result v1

    .line 78
    const/4 v2, 0x1

    .line 77
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 79
    sget v0, Lcom/alipay/android/phone/wealth/home/R$id;->X:I

    invoke-virtual {p0, v0}, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->titleView:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 80
    sget v0, Lcom/alipay/android/phone/wealth/home/R$id;->E:I

    invoke-virtual {p0, v0}, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->mainInfoView:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 81
    sget v0, Lcom/alipay/android/phone/wealth/home/R$id;->Q:I

    invoke-virtual {p0, v0}, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->secondaryInfoView:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 82
    sget v0, Lcom/alipay/android/phone/wealth/home/R$id;->L:I

    invoke-virtual {p0, v0}, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    iput-object v0, p0, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->redPointContainerView:Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    .line 83
    sget v0, Lcom/alipay/android/phone/wealth/home/R$id;->p:I

    invoke-virtual {p0, v0}, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->iconView:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 84
    sget v0, Lcom/alipay/android/phone/wealth/home/R$id;->a:I

    invoke-virtual {p0, v0}, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/asset/common/view/AdCornerView;

    iput-object v0, p0, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->b:Lcom/alipay/asset/common/view/AdCornerView;

    .line 85
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 87
    const-class v1, Lcom/alipay/mobile/framework/service/common/SchemeService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/SchemeService;

    .line 85
    iput-object v0, p0, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->c:Lcom/alipay/mobile/framework/service/common/SchemeService;

    .line 88
    instance-of v0, p0, Lcom/alipay/asset/common/view/WealthSummaryView;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lcom/alipay/asset/common/view/d;

    invoke-direct {v0, p0}, Lcom/alipay/asset/common/view/d;-><init>(Lcom/alipay/asset/common/view/BaseWealthWidgetView;)V

    invoke-virtual {p0, v0}, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 3

    .prologue
    .line 208
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    const-string/jumbo v0, "com.alipay.android.phone.wealth.home"

    .line 214
    invoke-virtual {p0}, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 216
    if-eqz v1, :cond_0

    .line 218
    :try_start_0
    const-string/jumbo v2, "drawable"

    invoke-virtual {v1, p1, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 219
    if-lez v0, :cond_0

    .line 220
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 221
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 225
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "BaseWealthWidgetView"

    const-string/jumbo v2, "Exception occurs in loadLocalIcon()"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/alipay/asset/common/view/BaseWealthWidgetView;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 207
    invoke-direct {p0, p1, p2}, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    return-void
.end method


# virtual methods
.method public bindWidgetFlagView(Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;)V
    .locals 3

    .prologue
    .line 107
    iget-object v0, p0, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->a:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    if-eq v0, p1, :cond_2

    if-eqz p1, :cond_2

    .line 108
    iput-object p1, p0, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->a:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    .line 109
    const-string/jumbo v0, "BaseWealthWidgetView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "bindWidgetFlagView, widgetId:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->widgetId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {p1}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p1}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->redPointContainerView:Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    if-eq v0, v1, :cond_0

    .line 112
    invoke-virtual {p1}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->redPointContainerView:Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;->removeAllViews()V

    .line 115
    iget-object v0, p0, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->redPointContainerView:Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;->addView(Landroid/view/View;)V

    .line 120
    :cond_1
    :goto_0
    return-void

    .line 116
    :cond_2
    if-nez p1, :cond_1

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->a:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    .line 118
    iget-object v0, p0, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->redPointContainerView:Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;->removeAllViews()V

    goto :goto_0
.end method

.method public getLayoutId()I
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public getWidgetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->widgetId:Ljava/lang/String;

    return-object v0
.end method

.method public handleClick()V
    .locals 4

    .prologue
    .line 123
    iget-object v0, p0, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->wealthHomeModule:Lcom/alipay/android/widgets/asset/model/WealthHomeModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->wealthHomeModule:Lcom/alipay/android/widgets/asset/model/WealthHomeModule;

    invoke-virtual {v0}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->getSchema()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "BaseWealthWidgetView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "handle schema : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->wealthHomeModule:Lcom/alipay/android/widgets/asset/model/WealthHomeModule;

    invoke-virtual {v3}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->getSchema()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->wealthHomeModule:Lcom/alipay/android/widgets/asset/model/WealthHomeModule;

    invoke-virtual {v0}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->getSchema()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 126
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 127
    const-string/jumbo v1, "u"

    iget-object v2, p0, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->wealthHomeModule:Lcom/alipay/android/widgets/asset/model/WealthHomeModule;

    invoke-virtual {v2}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->getSchema()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string/jumbo v1, "st"

    const-string/jumbo v2, "YES"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string/jumbo v1, "sb"

    const-string/jumbo v2, "NO"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    new-instance v1, Lcom/alipay/mobile/h5container/api/H5Bundle;

    invoke-direct {v1}, Lcom/alipay/mobile/h5container/api/H5Bundle;-><init>()V

    .line 131
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/h5container/api/H5Bundle;->setParams(Landroid/os/Bundle;)V

    .line 132
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 133
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 134
    const-class v2, Lcom/alipay/mobile/h5container/service/H5Service;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5Service;

    .line 135
    if-eqz v0, :cond_0

    .line 137
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v2

    .line 136
    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/h5container/service/H5Service;->startPage(Lcom/alipay/mobile/framework/app/MicroApplication;Lcom/alipay/mobile/h5container/api/H5Bundle;)V

    .line 143
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->wealthHomeModule:Lcom/alipay/android/widgets/asset/model/WealthHomeModule;

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->wealthHomeModule:Lcom/alipay/android/widgets/asset/model/WealthHomeModule;

    invoke-virtual {v0}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->getWidgetId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/widgets/asset/utils/LogAgentUtil;->a(Ljava/lang/String;)V

    .line 146
    :cond_1
    return-void

    .line 139
    :cond_2
    iget-object v0, p0, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->c:Lcom/alipay/mobile/framework/service/common/SchemeService;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->c:Lcom/alipay/mobile/framework/service/common/SchemeService;

    iget-object v1, p0, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->wealthHomeModule:Lcom/alipay/android/widgets/asset/model/WealthHomeModule;

    invoke-virtual {v1}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->getSchema()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/SchemeService;->process(Landroid/net/Uri;)I

    goto :goto_0
.end method

.method public loadIcon(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 2

    .prologue
    .line 167
    if-nez p3, :cond_0

    .line 205
    :goto_0
    return-void

    .line 168
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 169
    const-string/jumbo v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 170
    sget-object v0, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->d:Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    if-nez v0, :cond_1

    new-instance v0, Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/commonbiz/image/ImageWorker;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->d:Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->setCachePeriod(I)Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    :cond_1
    sget-object v0, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->d:Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    new-instance v1, Lcom/alipay/asset/common/view/e;

    invoke-direct {v1, p0, p3, p2}, Lcom/alipay/asset/common/view/e;-><init>(Lcom/alipay/asset/common/view/BaseWealthWidgetView;Landroid/widget/ImageView;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->loadImage(Ljava/lang/String;Lcom/alipay/mobile/commonbiz/image/ImageWorkerCallback;)Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    goto :goto_0

    .line 204
    :cond_2
    invoke-direct {p0, p2, p3}, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_0
.end method

.method public performClick()Z
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->a:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->a:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    invoke-virtual {v0}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->isHideFlag()Z

    move-result v0

    if-nez v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->a:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    invoke-virtual {v0}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->ackClick()V

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->b:Lcom/alipay/asset/common/view/AdCornerView;

    invoke-virtual {v0}, Lcom/alipay/asset/common/view/AdCornerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 245
    iget-object v0, p0, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->e:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;

    if-eqz v0, :cond_1

    .line 246
    invoke-static {}, Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;->a()Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->e:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;

    invoke-virtual {v0, v1}, Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;->a(Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;)V

    .line 248
    :cond_1
    iget-object v0, p0, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->f:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;

    if-eqz v0, :cond_2

    .line 249
    invoke-static {}, Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;->a()Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->f:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;

    invoke-virtual {v0, v1}, Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;->c(Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;)V

    .line 251
    :cond_2
    iget-object v0, p0, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->b:Lcom/alipay/asset/common/view/AdCornerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/asset/common/view/AdCornerView;->setVisibility(I)V

    .line 252
    invoke-virtual {p0}, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->updateAdvert()V

    .line 254
    :cond_3
    invoke-super {p0}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;->performClick()Z

    move-result v0

    return v0
.end method

.method public setWidgetId(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 231
    iput-object p1, p0, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->widgetId:Ljava/lang/String;

    .line 232
    iget-object v0, p0, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->widgetId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 233
    return-void
.end method

.method public updateAdvert()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->wealthHomeModule:Lcom/alipay/android/widgets/asset/model/WealthHomeModule;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->wealthHomeModule:Lcom/alipay/android/widgets/asset/model/WealthHomeModule;

    invoke-virtual {v0}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->getExtInfos()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->wealthHomeModule:Lcom/alipay/android/widgets/asset/model/WealthHomeModule;

    invoke-virtual {v0}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->getExtInfos()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "appId"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 151
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 152
    invoke-static {}, Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;->a()Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;->a(Ljava/lang/String;)Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->e:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;

    .line 153
    invoke-static {}, Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;->a()Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;->b(Ljava/lang/String;)Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->f:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;

    .line 154
    iget-object v0, p0, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->e:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->e:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;

    iget-object v0, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->content:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->b:Lcom/alipay/asset/common/view/AdCornerView;

    iget-object v1, p0, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->e:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;

    iget-object v1, v1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/asset/common/view/AdCornerView;->setAdvertText(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->b:Lcom/alipay/asset/common/view/AdCornerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/asset/common/view/AdCornerView;->setVisibility(I)V

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->wealthHomeModule:Lcom/alipay/android/widgets/asset/model/WealthHomeModule;

    invoke-virtual {v0}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->getSecondaryInfo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->f:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->f:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;

    iget-object v0, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->content:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->secondaryInfoView:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v1, p0, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->f:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;

    iget-object v1, v1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    :cond_1
    return-void
.end method
