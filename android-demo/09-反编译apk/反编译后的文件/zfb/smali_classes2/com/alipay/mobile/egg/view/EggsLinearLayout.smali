.class public Lcom/alipay/mobile/egg/view/EggsLinearLayout;
.super Landroid/widget/LinearLayout;
.source "EggsLinearLayout.java"


# instance fields
.field private mEggsDisplayer:Lcom/alipay/mobile/egg/displayer/EggsEffectDisplayer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alipay/mobile/egg/displayer/EggsEffectDisplayer",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alipay/mobile/egg/view/EggsLinearLayout;->mEggsDisplayer:Lcom/alipay/mobile/egg/displayer/EggsEffectDisplayer;

    if-eqz v0, :cond_0

    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/egg/view/EggsLinearLayout;->mEggsDisplayer:Lcom/alipay/mobile/egg/displayer/EggsEffectDisplayer;

    invoke-interface {v0, p0, p1}, Lcom/alipay/mobile/egg/displayer/EggsEffectDisplayer;->drawEggs(Landroid/view/ViewGroup;Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 41
    return-void

    .line 36
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setEggsDisplayer(Lcom/alipay/mobile/egg/displayer/EggsEffectDisplayer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/egg/displayer/EggsEffectDisplayer",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 28
    iput-object p1, p0, Lcom/alipay/mobile/egg/view/EggsLinearLayout;->mEggsDisplayer:Lcom/alipay/mobile/egg/displayer/EggsEffectDisplayer;

    .line 29
    return-void
.end method
