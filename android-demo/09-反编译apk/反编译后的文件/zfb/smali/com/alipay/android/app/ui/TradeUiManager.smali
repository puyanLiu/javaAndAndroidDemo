.class public Lcom/alipay/android/app/ui/TradeUiManager;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/alipay/android/app/ui/TradeUiManager;


# instance fields
.field private b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/ui/TradeUiManager;->b:Landroid/util/SparseArray;

    .line 29
    return-void
.end method

.method public static a()Lcom/alipay/android/app/ui/TradeUiManager;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/alipay/android/app/ui/TradeUiManager;->a:Lcom/alipay/android/app/ui/TradeUiManager;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/alipay/android/app/ui/TradeUiManager;

    invoke-direct {v0}, Lcom/alipay/android/app/ui/TradeUiManager;-><init>()V

    sput-object v0, Lcom/alipay/android/app/ui/TradeUiManager;->a:Lcom/alipay/android/app/ui/TradeUiManager;

    .line 23
    :cond_0
    sget-object v0, Lcom/alipay/android/app/ui/TradeUiManager;->a:Lcom/alipay/android/app/ui/TradeUiManager;

    return-object v0
.end method


# virtual methods
.method public final a(ILcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;)V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alipay/android/app/ui/TradeUiManager;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 33
    return-void
.end method

.method public final a(I)Z
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alipay/android/app/ui/TradeUiManager;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(I)V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alipay/android/app/ui/TradeUiManager;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 41
    return-void
.end method

.method public final c(I)Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alipay/android/app/ui/TradeUiManager;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;

    return-object v0
.end method
