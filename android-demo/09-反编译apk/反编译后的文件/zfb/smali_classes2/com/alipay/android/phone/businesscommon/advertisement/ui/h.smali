.class final Lcom/alipay/android/phone/businesscommon/advertisement/ui/h;
.super Ljava/lang/Object;
.source "APNotifyView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/h;->a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/h;->a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/h;->a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;->access$1(Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;)Lcom/alipay/android/phone/businesscommon/advertisement/ui/f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/h;->a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;->access$1(Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;)Lcom/alipay/android/phone/businesscommon/advertisement/ui/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/f;->b()V

    .line 96
    :cond_0
    return-void
.end method
