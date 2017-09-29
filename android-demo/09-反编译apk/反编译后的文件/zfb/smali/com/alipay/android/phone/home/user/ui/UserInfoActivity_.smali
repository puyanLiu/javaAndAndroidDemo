.class public final Lcom/alipay/android/phone/home/user/ui/UserInfoActivity_;
.super Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;
.source "UserInfoActivity_.java"

# interfaces
.implements Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;
.implements Lorg/androidannotations/api/view/HasViews;
.implements Lorg/androidannotations/api/view/OnViewChangedListener;


# instance fields
.field private final g:Lorg/androidannotations/api/view/OnViewChangedNotifier;

.field private final h:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;-><init>()V

    .line 28
    new-instance v0, Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-direct {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity_;->g:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    .line 29
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "android.permission.MANAGE_ACCOUNTS"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity_;->h:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity_;->h:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/alipay/android/phone/androidannotations/utils/PermissionUtils;->hasSelfPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-super {p0}, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;->b()V

    .line 90
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity_;->h:[Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/alipay/android/phone/androidannotations/utils/PermissionUtils;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity_;->g:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    move-result-object v0

    .line 35
    invoke-static {p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->registerOnViewChangedListener(Lorg/androidannotations/api/view/OnViewChangedListener;)V

    .line 36
    invoke-super {p0, p1}, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    .line 38
    sget v0, Lcom/alipay/android/phone/openplatform/R$layout;->o:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity_;->setContentView(I)V

    .line 39
    return-void
.end method

.method public final onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .prologue
    .line 94
    packed-switch p1, :pswitch_data_0

    .line 103
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 104
    return-void

    .line 97
    :pswitch_0
    invoke-static {p3}, Lcom/alipay/android/phone/androidannotations/utils/PermissionUtils;->verifyPermissions([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    invoke-super {p0}, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;->b()V

    goto :goto_0

    .line 94
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final onViewChanged(Lorg/androidannotations/api/view/HasViews;)V
    .locals 2

    .prologue
    .line 65
    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->al:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/home/user/ui/UserTableView;

    iput-object v0, p0, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity_;->d:Lcom/alipay/android/phone/home/user/ui/UserTableView;

    .line 66
    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->D:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity_;->c:Landroid/view/View;

    .line 67
    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->E:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/home/user/ui/UserTableView;

    iput-object v0, p0, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity_;->e:Lcom/alipay/android/phone/home/user/ui/UserTableView;

    .line 68
    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->d:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity_;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    .line 69
    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->ak:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/home/user/ui/UserContainer;

    iput-object v0, p0, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity_;->b:Lcom/alipay/android/phone/home/user/ui/UserContainer;

    .line 70
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity_;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity_;->c:Landroid/view/View;

    new-instance v1, Lcom/alipay/android/phone/home/user/ui/i;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/home/user/ui/i;-><init>(Lcom/alipay/android/phone/home/user/ui/UserInfoActivity_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity_;->a()V

    .line 81
    return-void
.end method

.method public final setContentView(I)V
    .locals 1

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;->setContentView(I)V

    .line 48
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity_;->g:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {v0, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    .line 49
    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;->setContentView(Landroid/view/View;)V

    .line 60
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity_;->g:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {v0, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    .line 61
    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 53
    invoke-super {p0, p1, p2}, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity_;->g:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {v0, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    .line 55
    return-void
.end method
