.class final Lcom/alipay/mobile/pubsvc/ui/view/a;
.super Ljava/lang/Object;
.source "KeyBoardRelativeLayout.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/pubsvc/ui/view/KeyBoardRelativeLayout;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/pubsvc/ui/view/KeyBoardRelativeLayout;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/pubsvc/ui/view/a;->a:Lcom/alipay/mobile/pubsvc/ui/view/KeyBoardRelativeLayout;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/view/a;->a:Lcom/alipay/mobile/pubsvc/ui/view/KeyBoardRelativeLayout;

    invoke-static {v0}, Lcom/alipay/mobile/pubsvc/ui/view/KeyBoardRelativeLayout;->a(Lcom/alipay/mobile/pubsvc/ui/view/KeyBoardRelativeLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/view/a;->a:Lcom/alipay/mobile/pubsvc/ui/view/KeyBoardRelativeLayout;

    invoke-static {v0}, Lcom/alipay/mobile/pubsvc/ui/view/KeyBoardRelativeLayout;->b(Lcom/alipay/mobile/pubsvc/ui/view/KeyBoardRelativeLayout;)V

    .line 43
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/view/a;->a:Lcom/alipay/mobile/pubsvc/ui/view/KeyBoardRelativeLayout;

    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/ui/view/a;->a:Lcom/alipay/mobile/pubsvc/ui/view/KeyBoardRelativeLayout;

    invoke-virtual {v1}, Lcom/alipay/mobile/pubsvc/ui/view/KeyBoardRelativeLayout;->getMeasuredHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/pubsvc/ui/view/KeyBoardRelativeLayout;->a(Lcom/alipay/mobile/pubsvc/ui/view/KeyBoardRelativeLayout;I)V

    .line 45
    :cond_0
    return-void
.end method
