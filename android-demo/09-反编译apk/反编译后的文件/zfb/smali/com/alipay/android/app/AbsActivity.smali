.class public Lcom/alipay/android/app/AbsActivity;
.super Landroid/support/v4/app/FragmentActivity;


# instance fields
.field protected a:Landroid/os/Handler;

.field private b:Landroid/content/res/Resources$Theme;

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 23
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/AbsActivity;->a:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public getAssets()Landroid/content/res/AssetManager;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/alipay/android/app/AbsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->B()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 3

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alipay/android/app/AbsActivity;->b:Landroid/content/res/Resources$Theme;

    if-nez v0, :cond_1

    .line 40
    invoke-virtual {p0}, Lcom/alipay/android/app/AbsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/AbsActivity;->b:Landroid/content/res/Resources$Theme;

    .line 41
    invoke-virtual {p0}, Lcom/alipay/android/app/AbsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 42
    if-eqz v0, :cond_0

    .line 43
    iget-object v1, p0, Lcom/alipay/android/app/AbsActivity;->b:Landroid/content/res/Resources$Theme;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/AbsActivity;->b:Landroid/content/res/Resources$Theme;

    iget v1, p0, Lcom/alipay/android/app/AbsActivity;->c:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/AbsActivity;->b:Landroid/content/res/Resources$Theme;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/alipay/android/app/AbsActivity;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 101
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 102
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 4

    .prologue
    .line 68
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onUserLeaveHint()V

    .line 69
    sget-boolean v0, Lcom/alipay/android/app/pay/GlobalConstant;->SDK:Z

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/alipay/android/app/AbsActivity;->a:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/app/a;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/a;-><init>(Lcom/alipay/android/app/AbsActivity;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 83
    :cond_0
    return-void
.end method

.method public setTheme(I)V
    .locals 0

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->setTheme(I)V

    .line 53
    iput p1, p0, Lcom/alipay/android/app/AbsActivity;->c:I

    .line 54
    return-void
.end method
