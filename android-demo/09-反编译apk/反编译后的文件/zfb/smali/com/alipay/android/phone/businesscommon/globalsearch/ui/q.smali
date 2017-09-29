.class final Lcom/alipay/android/phone/businesscommon/globalsearch/ui/q;
.super Ljava/lang/Object;
.source "MainSearchFragment_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/n;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/n;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/q;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/q;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/n;

    invoke-virtual {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/n;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/q;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/n;

    invoke-virtual {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/n;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/q;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/n;

    invoke-virtual {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/n;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/q;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/n;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/n;->b(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/n;)V

    .line 133
    :cond_0
    return-void
.end method
