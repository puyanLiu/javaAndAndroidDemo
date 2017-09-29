.class final Lcom/alipay/android/phone/businesscommon/advertisement/ui/j;
.super Ljava/lang/Object;
.source "APNotifyView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/j;->a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/j;->a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/j;->a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;

    invoke-virtual {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;->checkHasMoreNotify()V

    .line 127
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 121
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 116
    return-void
.end method
