.class public Lcom/alipay/android/app/ui/quickpay/data/MarqueeElementData;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/view/View;

.field private b:Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/data/MarqueeElementData;->a:Landroid/view/View;

    .line 13
    iput-object p2, p0, Lcom/alipay/android/app/ui/quickpay/data/MarqueeElementData;->b:Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;

    .line 14
    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/data/MarqueeElementData;->a:Landroid/view/View;

    return-object v0
.end method

.method public final b()Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 21
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/data/MarqueeElementData;->b:Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;

    return-object v0
.end method
