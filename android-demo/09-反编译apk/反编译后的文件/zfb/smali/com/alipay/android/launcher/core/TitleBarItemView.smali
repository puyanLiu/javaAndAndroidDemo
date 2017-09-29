.class public Lcom/alipay/android/launcher/core/TitleBarItemView;
.super Lcom/alipay/mobile/commonui/widget/APRelativeLayout;
.source "TitleBarItemView.java"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;-><init>(Landroid/content/Context;)V

    .line 19
    iput-object p1, p0, Lcom/alipay/android/launcher/core/TitleBarItemView;->d:Landroid/content/Context;

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    iput-object p1, p0, Lcom/alipay/android/launcher/core/TitleBarItemView;->d:Landroid/content/Context;

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    iput-object p1, p0, Lcom/alipay/android/launcher/core/TitleBarItemView;->d:Landroid/content/Context;

    .line 30
    return-void
.end method


# virtual methods
.method public getBadgeNum()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/alipay/android/launcher/core/TitleBarItemView;->a:I

    return v0
.end method

.method public getCurrentTab()I
    .locals 5

    .prologue
    .line 57
    const/4 v1, 0x0

    .line 59
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/android/launcher/core/TitleBarItemView;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 60
    const v2, 0x1020012

    .line 59
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    .line 61
    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTab()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 65
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "TitleBarItemView"

    .line 66
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "current tab = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 65
    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return v0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "TitleBarItemView"

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_0
.end method

.method public getIconResource()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/alipay/android/launcher/core/TitleBarItemView;->c:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alipay/android/launcher/core/TitleBarItemView;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setBadgeNum(I)V
    .locals 0

    .prologue
    .line 37
    iput p1, p0, Lcom/alipay/android/launcher/core/TitleBarItemView;->a:I

    .line 38
    return-void
.end method

.method public setIconResource(I)V
    .locals 0

    .prologue
    .line 53
    iput p1, p0, Lcom/alipay/android/launcher/core/TitleBarItemView;->c:I

    .line 54
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/alipay/android/launcher/core/TitleBarItemView;->b:Ljava/lang/String;

    .line 46
    return-void
.end method
