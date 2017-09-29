.class public final Lcom/ali/user/mobile/avatar/EditAvatarActivity_;
.super Lcom/ali/user/mobile/avatar/EditAvatarActivity;
.source "EditAvatarActivity_.java"

# interfaces
.implements Lorg/androidannotations/api/view/HasViews;
.implements Lorg/androidannotations/api/view/OnViewChangedListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private final a:Lorg/androidannotations/api/view/OnViewChangedNotifier;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/ali/user/mobile/avatar/EditAvatarActivity;-><init>()V

    .line 31
    new-instance v0, Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-direct {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;-><init>()V

    iput-object v0, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity_;->a:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    return-void
.end method

.method static synthetic access$001(Lcom/ali/user/mobile/avatar/EditAvatarActivity_;I)V
    .locals 0

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->showToast(I)V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity_;->a:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    move-result-object v0

    .line 36
    invoke-static {p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->registerOnViewChangedListener(Lorg/androidannotations/api/view/OnViewChangedListener;)V

    .line 37
    invoke-super {p0, p1}, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    .line 39
    sget v0, Lcom/ali/user/mobile/security/ui/R$layout;->avatar_crop_image:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/avatar/EditAvatarActivity_;->setContentView(I)V

    .line 40
    return-void
.end method

.method public final onViewChanged(Lorg/androidannotations/api/view/HasViews;)V
    .locals 1

    .prologue
    .line 66
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->avatar_crop:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/avatar/CropImageView;

    iput-object v0, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity_;->mCropImageView:Lcom/ali/user/mobile/avatar/CropImageView;

    .line 67
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->operations_rotate:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity_;->mIvRotate:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 68
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->operations_cancel:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity_;->mBtnCancel:Lcom/alipay/mobile/commonui/widget/APButton;

    .line 69
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->operations_confirm:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity_;->mBtnConfirm:Lcom/alipay/mobile/commonui/widget/APButton;

    .line 70
    invoke-virtual {p0}, Lcom/ali/user/mobile/avatar/EditAvatarActivity_;->initActions()V

    .line 71
    return-void
.end method

.method public final setContentView(I)V
    .locals 1

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->setContentView(I)V

    .line 49
    iget-object v0, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity_;->a:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {v0, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    .line 50
    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->setContentView(Landroid/view/View;)V

    .line 61
    iget-object v0, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity_;->a:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {v0, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    .line 62
    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 54
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    iget-object v0, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity_;->a:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {v0, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    .line 56
    return-void
.end method

.method public final showToast(I)V
    .locals 4

    .prologue
    .line 75
    const-string/jumbo v0, ""

    new-instance v1, Lcom/ali/user/mobile/avatar/EditAvatarActivity_$1;

    invoke-direct {v1, p0, p1}, Lcom/ali/user/mobile/avatar/EditAvatarActivity_$1;-><init>(Lcom/ali/user/mobile/avatar/EditAvatarActivity_;I)V

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 87
    return-void
.end method
