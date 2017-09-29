.class final Lcom/alipay/android/app/ui/quickpay/window/aq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/ui/quickpay/window/ap;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/window/ap;)V
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/window/aq;->a:Lcom/alipay/android/app/ui/quickpay/window/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/aq;->a:Lcom/alipay/android/app/ui/quickpay/window/ap;

    iget-object v0, v0, Lcom/alipay/android/app/ui/quickpay/window/ap;->a:Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->finish()V

    .line 275
    return-void
.end method
