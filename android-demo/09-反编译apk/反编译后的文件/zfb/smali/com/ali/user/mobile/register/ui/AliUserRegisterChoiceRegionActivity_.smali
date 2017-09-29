.class public final Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity_;
.super Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;
.source "AliUserRegisterChoiceRegionActivity_.java"

# interfaces
.implements Lorg/androidannotations/api/view/HasViews;
.implements Lorg/androidannotations/api/view/OnViewChangedListener;


# instance fields
.field private final a:Lorg/androidannotations/api/view/OnViewChangedNotifier;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;-><init>()V

    .line 27
    new-instance v0, Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-direct {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;-><init>()V

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity_;->a:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity_;->a:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    move-result-object v0

    .line 32
    invoke-static {p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->registerOnViewChangedListener(Lorg/androidannotations/api/view/OnViewChangedListener;)V

    .line 33
    invoke-super {p0, p1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    .line 35
    sget v0, Lcom/ali/user/mobile/security/ui/R$layout;->activity_register_region:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity_;->setContentView(I)V

    .line 36
    return-void
.end method

.method public final onViewChanged(Lorg/androidannotations/api/view/HasViews;)V
    .locals 1

    .prologue
    .line 62
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->register_region_title:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity_;->mRegisterTitle:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    .line 63
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->contacts_letters_list:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/ui/widget/AUBladeView;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity_;->mLetterView:Lcom/ali/user/mobile/ui/widget/AUBladeView;

    .line 64
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->register_list:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity_;->mListView:Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;

    .line 65
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity_;->init()V

    .line 66
    return-void
.end method

.method public final setContentView(I)V
    .locals 1

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;->setContentView(I)V

    .line 45
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity_;->a:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {v0, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    .line 46
    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;->setContentView(Landroid/view/View;)V

    .line 57
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity_;->a:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {v0, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    .line 58
    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 50
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity_;->a:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {v0, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    .line 52
    return-void
.end method
