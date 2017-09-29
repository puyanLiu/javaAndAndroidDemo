.class Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer$Flinger;
.super Ljava/lang/Object;
.source "H5PullContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;

.field private b:Landroid/widget/Scroller;

.field private c:I

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;)V
    .locals 2

    .prologue
    .line 121
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer$Flinger;->a:Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer$Flinger;->b:Landroid/widget/Scroller;

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer$Flinger;->d:Z

    .line 124
    return-void
.end method


# virtual methods
.method public isFinished()Z
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer$Flinger;->d:Z

    return v0
.end method

.method public recover(I)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 143
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer$Flinger;->a:Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 144
    iput v1, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer$Flinger;->c:I

    .line 145
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer$Flinger;->d:Z

    .line 146
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer$Flinger;->b:Landroid/widget/Scroller;

    const/16 v5, 0x190

    move v2, v1

    move v3, v1

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 147
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer$Flinger;->a:Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->post(Ljava/lang/Runnable;)Z

    .line 148
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 128
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer$Flinger;->b:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    .line 129
    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer$Flinger;->a:Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;

    iget v1, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer$Flinger;->c:I

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer$Flinger;->b:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->a(Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;I)Z

    .line 131
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer$Flinger;->b:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer$Flinger;->c:I

    .line 132
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer$Flinger;->a:Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->post(Ljava/lang/Runnable;)Z

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer$Flinger;->d:Z

    .line 135
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer$Flinger;->a:Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 136
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer$Flinger;->a:Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->a(Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;)Lcom/alipay/mobile/nebulacore/refresh/H5PullAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer$Flinger;->a:Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->a(Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;)Lcom/alipay/mobile/nebulacore/refresh/H5PullAdapter;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebulacore/refresh/H5PullAdapter;->onFinish()V

    goto :goto_0
.end method
