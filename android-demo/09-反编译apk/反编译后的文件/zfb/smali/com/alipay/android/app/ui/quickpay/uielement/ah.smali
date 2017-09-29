.class final Lcom/alipay/android/app/ui/quickpay/uielement/ah;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/ui/quickpay/uielement/UILabel;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/uielement/UILabel;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/ah;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UILabel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 158
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/ah;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UILabel;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UILabel;->a(Lcom/alipay/android/app/ui/quickpay/uielement/UILabel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    new-instance v0, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/ah;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UILabel;

    invoke-static {v2}, Lcom/alipay/android/app/ui/quickpay/uielement/UILabel;->b(Lcom/alipay/android/app/ui/quickpay/uielement/UILabel;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->a(Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;)[Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    move-result-object v0

    .line 166
    :goto_0
    array-length v3, v0

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 171
    iget-object v5, p0, Lcom/alipay/android/app/ui/quickpay/uielement/ah;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UILabel;

    invoke-virtual {v5, p0, v4}, Lcom/alipay/android/app/ui/quickpay/uielement/UILabel;->a(Ljava/lang/Object;Lcom/alipay/android/app/ui/quickpay/event/ActionType;)V

    .line 170
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 163
    :cond_0
    new-instance v0, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/ah;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UILabel;

    invoke-static {v2}, Lcom/alipay/android/app/ui/quickpay/uielement/UILabel;->c(Lcom/alipay/android/app/ui/quickpay/uielement/UILabel;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->a(Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;)[Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    move-result-object v0

    goto :goto_0

    .line 173
    :cond_1
    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/ah;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UILabel;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/ah;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UILabel;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UILabel;->a(Lcom/alipay/android/app/ui/quickpay/uielement/UILabel;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    invoke-static {v2, v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UILabel;->a(Lcom/alipay/android/app/ui/quickpay/uielement/UILabel;Z)Z

    .line 174
    return-void

    :cond_2
    move v0, v1

    .line 173
    goto :goto_2
.end method
