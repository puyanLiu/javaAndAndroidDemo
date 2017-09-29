.class final Lcom/alipay/android/app/ui/quickpay/util/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/ui/quickpay/util/l;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/util/l;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/util/m;->a:Lcom/alipay/android/app/ui/quickpay/util/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/m;->a:Lcom/alipay/android/app/ui/quickpay/util/l;

    iget-object v0, v0, Lcom/alipay/android/app/ui/quickpay/util/l;->c:Lcom/alipay/android/app/ui/quickpay/util/ViewTipsUtils;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/m;->a:Lcom/alipay/android/app/ui/quickpay/util/l;

    iget v0, v0, Lcom/alipay/android/app/ui/quickpay/util/l;->b:I

    div-int/lit8 v0, v0, 0x3

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/alipay/android/app/ui/quickpay/util/ViewTipsUtils;->a(J)Landroid/view/animation/Animation;

    move-result-object v0

    .line 151
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/util/m;->a:Lcom/alipay/android/app/ui/quickpay/util/l;

    iget-object v1, v1, Lcom/alipay/android/app/ui/quickpay/util/l;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 152
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/m;->a:Lcom/alipay/android/app/ui/quickpay/util/l;

    iget-object v0, v0, Lcom/alipay/android/app/ui/quickpay/util/l;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 153
    return-void
.end method
