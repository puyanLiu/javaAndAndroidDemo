.class final Lcom/alipay/android/app/ui/quickpay/widget/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/a;->a:Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/a;->a:Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;->access$000(Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/a;->a:Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;->access$000(Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 175
    :cond_0
    return-void
.end method
