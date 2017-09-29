.class public final Lcom/alipay/mobile/socialwidget/ui/BlankFragment_;
.super Lcom/alipay/mobile/socialwidget/ui/BlankFragment;
.source "BlankFragment_.java"

# interfaces
.implements Lorg/androidannotations/api/view/HasViews;


# instance fields
.field private final a:Lorg/androidannotations/api/view/OnViewChangedNotifier;

.field private b:Landroid/view/View;

.field private final c:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/alipay/mobile/socialwidget/ui/BlankFragment;-><init>()V

    .line 24
    new-instance v0, Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-direct {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/BlankFragment_;->a:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    .line 26
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "android.permission.READ_CONTACTS"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/BlankFragment_;->c:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$001(Lcom/alipay/mobile/socialwidget/ui/BlankFragment_;)V
    .locals 0

    .prologue
    .line 20
    invoke-super {p0}, Lcom/alipay/mobile/socialwidget/ui/BlankFragment;->getReadContactsPermission()V

    return-void
.end method

.method static synthetic access$101(Lcom/alipay/mobile/socialwidget/ui/BlankFragment_;)V
    .locals 0

    .prologue
    .line 20
    invoke-super {p0}, Lcom/alipay/mobile/socialwidget/ui/BlankFragment;->getReadContactsPermission()V

    return-void
.end method


# virtual methods
.method public final findViewById(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/BlankFragment_;->b:Landroid/view/View;

    if-nez v0, :cond_0

    .line 40
    const/4 v0, 0x0

    .line 42
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/BlankFragment_;->b:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public final getReadContactsPermission()V
    .locals 2

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/alipay/mobile/socialwidget/ui/BlankFragment_;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/BlankFragment_;->c:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/android/phone/androidannotations/utils/PermissionUtils;->hasSelfPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-static {p0}, Lcom/alipay/mobile/socialwidget/ui/BlankFragment_;->access$001(Lcom/alipay/mobile/socialwidget/ui/BlankFragment_;)V

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/BlankFragment_;->c:[Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/alipay/android/phone/androidannotations/utils/PermissionUtils;->requestPermissions(Landroid/support/v4/app/Fragment;[Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/BlankFragment_;->a:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    move-result-object v0

    .line 32
    invoke-super {p0, p1}, Lcom/alipay/mobile/socialwidget/ui/BlankFragment;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    .line 35
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 47
    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/socialwidget/ui/BlankFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/BlankFragment_;->b:Landroid/view/View;

    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/BlankFragment_;->b:Landroid/view/View;

    if-nez v0, :cond_0

    .line 49
    sget v0, Lcom/alipay/mobile/socialwidget/R$layout;->b:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/BlankFragment_;->b:Landroid/view/View;

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/BlankFragment_;->b:Landroid/view/View;

    return-object v0
.end method

.method public final onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .prologue
    .line 74
    packed-switch p1, :pswitch_data_0

    .line 83
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/socialwidget/ui/BlankFragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 84
    return-void

    .line 77
    :pswitch_0
    invoke-static {p3}, Lcom/alipay/android/phone/androidannotations/utils/PermissionUtils;->verifyPermissions([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-static {p0}, Lcom/alipay/mobile/socialwidget/ui/BlankFragment_;->access$101(Lcom/alipay/mobile/socialwidget/ui/BlankFragment_;)V

    goto :goto_0

    .line 74
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 59
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/socialwidget/ui/BlankFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/BlankFragment_;->a:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {v0, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    .line 61
    return-void
.end method
