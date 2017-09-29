.class public Lcom/alipay/android/app/ui/quickpay/event/UIElementOnClickListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/event/UIElementOnClickListener;->a:Ljava/util/List;

    .line 20
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/event/UIElementOnClickListener;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/event/UIElementOnClickListener;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/event/UIElementOnClickListener;->a:Ljava/util/List;

    .line 42
    :cond_0
    return-void
.end method

.method public final a(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 23
    if-eqz p1, :cond_0

    .line 24
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/event/UIElementOnClickListener;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/event/UIElementOnClickListener;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/event/UIElementOnClickListener;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnClickListener;

    .line 32
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 35
    :cond_0
    return-void
.end method
