.class final Lcom/alipay/android/app/hardwarepay/bracelet/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/hardwarepay/bracelet/f;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/hardwarepay/bracelet/f;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/h;->a:Lcom/alipay/android/app/hardwarepay/bracelet/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 4

    .prologue
    .line 184
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/h;->a:Lcom/alipay/android/app/hardwarepay/bracelet/f;

    iget-object v0, v0, Lcom/alipay/android/app/hardwarepay/bracelet/f;->d:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/h;->a:Lcom/alipay/android/app/hardwarepay/bracelet/f;

    iget-object v1, v1, Lcom/alipay/android/app/hardwarepay/bracelet/f;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/alipay/android/app/hardwarepay/bracelet/h;->a:Lcom/alipay/android/app/hardwarepay/bracelet/f;

    iget-object v2, v2, Lcom/alipay/android/app/hardwarepay/bracelet/f;->b:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;

    iget-object v3, p0, Lcom/alipay/android/app/hardwarepay/bracelet/h;->a:Lcom/alipay/android/app/hardwarepay/bracelet/f;

    iget v3, v3, Lcom/alipay/android/app/hardwarepay/bracelet/f;->c:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->callbackWhenFailed(Landroid/app/Activity;Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;I)V

    .line 185
    return-void
.end method
