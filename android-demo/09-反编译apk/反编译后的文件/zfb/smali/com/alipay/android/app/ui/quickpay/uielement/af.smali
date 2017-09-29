.class final Lcom/alipay/android/app/ui/quickpay/uielement/af;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;)V
    .locals 0

    .prologue
    .line 353
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/af;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/af;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->f(Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/af;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->d(Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;)V

    .line 361
    :goto_0
    return-void

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/af;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->a(Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;)Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a(Landroid/widget/EditText;)V

    goto :goto_0
.end method
