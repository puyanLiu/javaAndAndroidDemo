.class final Lcom/alipay/android/app/display/uielement/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/display/uielement/BaseEditElement;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/display/uielement/BaseEditElement;)V
    .locals 0

    .prologue
    .line 414
    iput-object p1, p0, Lcom/alipay/android/app/display/uielement/d;->a:Lcom/alipay/android/app/display/uielement/BaseEditElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 418
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/d;->a:Lcom/alipay/android/app/display/uielement/BaseEditElement;

    iget-object v0, v0, Lcom/alipay/android/app/display/uielement/BaseEditElement;->a:Lcom/alipay/android/app/widget/CustomEditText;

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/d;->a:Lcom/alipay/android/app/display/uielement/BaseEditElement;

    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/d;->a:Lcom/alipay/android/app/display/uielement/BaseEditElement;

    iget-object v1, v1, Lcom/alipay/android/app/display/uielement/BaseEditElement;->a:Lcom/alipay/android/app/widget/CustomEditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/display/uielement/BaseEditElement;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 421
    :cond_0
    return-void
.end method
