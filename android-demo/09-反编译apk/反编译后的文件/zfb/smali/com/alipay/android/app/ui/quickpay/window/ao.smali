.class final Lcom/alipay/android/app/ui/quickpay/window/ao;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/window/ao;->a:Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/ao;->a:Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->finish()V

    .line 191
    return-void
.end method
