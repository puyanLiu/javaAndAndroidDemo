.class final Lcom/alipay/android/app/flybird/ui/window/view/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

.field final synthetic b:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/view/c;->b:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;

    iput-object p2, p0, Lcom/alipay/android/app/flybird/ui/window/view/c;->a:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 84
    invoke-static {}, Lcom/alipay/android/app/base/trade/TradeManager;->a()Lcom/alipay/android/app/base/trade/TradeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/view/c;->b:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;

    iget v1, v1, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;->b:I

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/base/trade/TradeManager;->e(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-static {}, Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;->a()Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/view/c;->b:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;

    iget v1, v1, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;->b:I

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;->c(I)Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    move-result-object v0

    .line 87
    if-eqz v0, :cond_0

    .line 88
    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/view/c;->a:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    invoke-virtual {v1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->d()V

    .line 89
    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/view/c;->a:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->onEvent(Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)Z

    .line 92
    :cond_0
    return-void
.end method
