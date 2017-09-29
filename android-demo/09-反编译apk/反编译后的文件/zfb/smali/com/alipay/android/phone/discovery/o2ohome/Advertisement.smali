.class public abstract Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;
.super Ljava/lang/Object;
.source "Advertisement.java"


# static fields
.field private static TAG:Ljava/lang/String; = null

.field private static final adSpaceId:Ljava/lang/String; = "o2o_homepage"


# instance fields
.field private advertisementView:Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;

.field private hasAd:Z

.field private lastAdCode:Ljava/lang/String;

.field private linearLayout:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string/jumbo v0, "Advertisement-o2o"

    sput-object v0, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->TAG:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->hasAd:Z

    .line 24
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->lastAdCode:Ljava/lang/String;

    .line 25
    iput-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->linearLayout:Landroid/widget/LinearLayout;

    .line 26
    iput-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->advertisementView:Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;

    .line 34
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->linearLayout:Landroid/widget/LinearLayout;

    .line 35
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->linearLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 36
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 37
    const/4 v1, -0x1

    .line 38
    const/4 v2, -0x2

    .line 36
    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 39
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->linearLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 43
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->linearLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement$1;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement$1;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;Landroid/content/Context;)V

    .line 48
    const-wide/16 v2, 0x64

    .line 43
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 49
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->initAdvertisementView(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->linearLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$3(Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;Z)V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->onNotifyShowAD(Z)V

    return-void
.end method

.method static synthetic access$4(Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;)Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->advertisementView:Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;

    return-object v0
.end method

.method private addSplitLineBottom(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 101
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->linearLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 102
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 103
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/android/phone/discovery/o2ohome/R$dimen;->home_activity_bottom_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v4, v4, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 105
    sget v2, Lcom/alipay/android/phone/discovery/o2ohome/R$color;->split_line:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 106
    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    :cond_0
    return-void
.end method

.method private addSplitLineTop(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 91
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->linearLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 92
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 93
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 94
    sget v2, Lcom/alipay/android/phone/discovery/o2ohome/R$color;->split_line:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 95
    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    :cond_0
    return-void
.end method

.method private initAdvertisementView(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->addSplitLineTop(Landroid/content/Context;)V

    .line 57
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 58
    const/4 v1, -0x1

    .line 59
    const/4 v2, -0x2

    .line 57
    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 60
    new-instance v1, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;

    const-string/jumbo v2, "o2o_homepage"

    new-instance v3, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement$2;

    invoke-direct {v3, p0}, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement$2;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;)V

    invoke-direct {v1, p1, v2, v3}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView$IonShowNotify;)V

    iput-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->advertisementView:Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;

    .line 77
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->advertisementView:Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->addSplitLineBottom(Landroid/content/Context;)V

    .line 81
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->linearLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 82
    return-void
.end method

.method public static isSameCity(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 166
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    const/4 v0, 0x1

    .line 179
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onNotifyShowAD(Z)V
    .locals 0

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->hasAd:Z

    .line 86
    invoke-virtual {p0}, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->showAdvertisement()V

    .line 87
    return-void
.end method


# virtual methods
.method public hideAdvertisement()V
    .locals 3

    .prologue
    .line 111
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->linearLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->linearLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 113
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "hideAdvertisement"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_0
    return-void
.end method

.method public abstract isNeedShowAdvertisement()Z
.end method

.method public isVisible()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 156
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->linearLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 157
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 160
    :cond_0
    return v0
.end method

.method public showAdvertisement()V
    .locals 3

    .prologue
    .line 119
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->linearLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 120
    iget-boolean v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->hasAd:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->isNeedShowAdvertisement()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->linearLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 123
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "linearLayout.setVisibility(View.VISIBLE)"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->linearLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 127
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "linearLayout.setVisibility(View.GONE)"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateAdvertisement(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->linearLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->advertisementView:Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->lastAdCode:Ljava/lang/String;

    .line 135
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->lastAdCode:Ljava/lang/String;

    .line 136
    new-instance v1, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement$3;

    invoke-direct {v1, p0, p1, v0}, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement$3;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 153
    :cond_0
    return-void
.end method
