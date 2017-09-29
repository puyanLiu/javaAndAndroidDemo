.class final Lcom/alipay/android/phone/home/ui/v;
.super Landroid/os/Handler;
.source "HomeFrameLayout.java"


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/ui/HomeFrameLayout;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/ui/HomeFrameLayout;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/v;->a:Lcom/alipay/android/phone/home/ui/HomeFrameLayout;

    .line 114
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 117
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 118
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_0

    .line 119
    invoke-virtual {p0, v2}, Lcom/alipay/android/phone/home/ui/v;->removeMessages(I)V

    .line 120
    sget-object v0, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->c:Ljava/lang/String;

    const-string/jumbo v1, "O2ORemoteInfo startAnim "

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/v;->a:Lcom/alipay/android/phone/home/ui/HomeFrameLayout;

    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->access$0(Lcom/alipay/android/phone/home/ui/HomeFrameLayout;)Lcom/alipay/android/phone/home/widget/UserAvatarImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/v;->a:Lcom/alipay/android/phone/home/ui/HomeFrameLayout;

    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->access$1(Lcom/alipay/android/phone/home/ui/HomeFrameLayout;)Lcom/alipay/android/phone/home/ui/NearAnimHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/v;->a:Lcom/alipay/android/phone/home/ui/HomeFrameLayout;

    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->access$1(Lcom/alipay/android/phone/home/ui/HomeFrameLayout;)Lcom/alipay/android/phone/home/ui/NearAnimHelper;

    move-result-object v0

    iget-boolean v1, v0, Lcom/alipay/android/phone/home/ui/NearAnimHelper;->a:Z

    if-nez v1, :cond_0

    iput-boolean v2, v0, Lcom/alipay/android/phone/home/ui/NearAnimHelper;->a:Z

    iget-object v1, v0, Lcom/alipay/android/phone/home/ui/NearAnimHelper;->c:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lcom/alipay/android/phone/home/ui/NearAnimHelper;->b:Landroid/view/View;

    iget-object v0, v0, Lcom/alipay/android/phone/home/ui/NearAnimHelper;->d:Landroid/view/animation/Animation;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 125
    :cond_0
    return-void
.end method
