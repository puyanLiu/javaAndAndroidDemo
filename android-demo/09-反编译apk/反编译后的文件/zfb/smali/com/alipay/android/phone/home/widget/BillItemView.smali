.class public Lcom/alipay/android/phone/home/widget/BillItemView;
.super Lcom/alipay/android/launcher/core/TitleBarItemView;
.source "BillItemView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/alipay/android/launcher/core/TitleBarItemView;-><init>(Landroid/content/Context;)V

    .line 37
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/home/widget/BillItemView;->a(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/launcher/core/TitleBarItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/home/widget/BillItemView;->a(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/android/launcher/core/TitleBarItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/home/widget/BillItemView;->a(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 41
    iput-object p1, p0, Lcom/alipay/android/phone/home/widget/BillItemView;->a:Landroid/content/Context;

    .line 42
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 43
    sget v1, Lcom/alipay/android/phone/openplatform/R$layout;->d:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 44
    sget v1, Lcom/alipay/android/phone/openplatform/R$id;->i:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    iput-object v0, p0, Lcom/alipay/android/phone/home/widget/BillItemView;->b:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    .line 46
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/BillItemView;->b:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    const-string/jumbo v1, "#AppCenter#20000076"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->setWidgetId(Ljava/lang/String;)V

    .line 48
    invoke-static {p1}, Lcom/alipay/mobile/mpass/badge/BadgeManager;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/mpass/badge/BadgeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/home/widget/BillItemView;->b:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/mpass/badge/BadgeManager;->registerBadgeView(Lcom/alipay/mobile/mpass/badge/ui/AbsBadgeView;)V

    .line 49
    invoke-virtual {p0, p0}, Lcom/alipay/android/phone/home/widget/BillItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 54
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "sourceId"

    const-string/jumbo v2, "20000001#topIcon"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "20000003"

    invoke-static {v1, v0}, Lcom/alipay/android/phone/home/manager/LaunchAppUtils;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {}, Lcom/alipay/android/phone/home/util/HomeLogAgentUtil;->a()V

    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/BillItemView;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/mpass/badge/BadgeManager;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/mpass/badge/BadgeManager;

    move-result-object v0

    const-string/jumbo v1, "#AppCenter#20000076"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/mpass/badge/BadgeManager;->ackClick(Ljava/lang/String;)V

    .line 55
    return-void
.end method
