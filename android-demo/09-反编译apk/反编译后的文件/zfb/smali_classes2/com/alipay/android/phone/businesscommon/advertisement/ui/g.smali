.class final Lcom/alipay/android/phone/businesscommon/advertisement/ui/g;
.super Ljava/lang/Object;
.source "APNotifyView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/g;->a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/g;->a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;

    invoke-virtual {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 207
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    .line 208
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 209
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/g;->a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;

    invoke-virtual {v1}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/g;->a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/g;->a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;

    invoke-static {v1}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;->access$0(Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;)Landroid/view/animation/ScaleAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/g;->a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;->setVisibility(I)V

    goto :goto_0
.end method
