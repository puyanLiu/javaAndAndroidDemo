.class final Lcom/alipay/android/app/hardwarepay/bracelet/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;

.field final synthetic c:I

.field final synthetic d:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;Landroid/app/Activity;Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;I)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/f;->d:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;

    iput-object p2, p0, Lcom/alipay/android/app/hardwarepay/bracelet/f;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/alipay/android/app/hardwarepay/bracelet/f;->b:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;

    iput p4, p0, Lcom/alipay/android/app/hardwarepay/bracelet/f;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 172
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/f;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/f;->a:Landroid/app/Activity;

    const-string/jumbo v3, "mini_auth_service_down_tips"

    invoke-static {v3}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/alipay/android/app/hardwarepay/bracelet/f;->a:Landroid/app/Activity;

    const-string/jumbo v4, "alipay_cancel"

    invoke-static {v4}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/alipay/android/app/hardwarepay/bracelet/g;

    invoke-direct {v5, p0}, Lcom/alipay/android/app/hardwarepay/bracelet/g;-><init>(Lcom/alipay/android/app/hardwarepay/bracelet/f;)V

    move-object v3, v2

    invoke-static/range {v0 .. v5}, Lcom/alipay/android/app/ui/quickpay/widget/SystemDefaultDialog;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    .line 181
    new-instance v1, Lcom/alipay/android/app/hardwarepay/bracelet/h;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/hardwarepay/bracelet/h;-><init>(Lcom/alipay/android/app/hardwarepay/bracelet/f;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 187
    return-void
.end method
