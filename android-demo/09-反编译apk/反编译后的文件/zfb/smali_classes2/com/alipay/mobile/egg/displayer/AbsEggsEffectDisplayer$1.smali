.class Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer$1;
.super Ljava/lang/Object;
.source "AbsEggsEffectDisplayer.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer$1;->this$0:Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 354
    iget-object v0, p0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer$1;->this$0:Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;

    invoke-static {v0}, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->access$0(Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->access$4(Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;I)V

    .line 356
    iget-object v0, p0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer$1;->this$0:Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;

    invoke-static {v0}, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->access$0(Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;)I

    move-result v0

    if-gtz v0, :cond_1

    .line 357
    iget-object v0, p0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer$1;->this$0:Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;

    invoke-static {v0}, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->access$2(Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;)Lcom/alipay/mobile/egg/displayer/EffectDisplayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer$1;->this$0:Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;

    invoke-static {v0}, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->access$2(Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;)Lcom/alipay/mobile/egg/displayer/EffectDisplayerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer$1;->this$0:Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;

    invoke-static {v1}, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->access$3(Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;)Lcom/alipay/mobile/egg/EggEffectGroup;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/egg/displayer/EffectDisplayerListener;->onFinishEffectDisplay(Lcom/alipay/mobile/egg/EggEffectGroup;)V

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer$1;->this$0:Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->access$1(Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;Z)V

    .line 361
    iget-object v0, p0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer$1;->this$0:Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;

    invoke-static {v0}, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->access$5(Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;)V

    .line 363
    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 350
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 339
    iget-object v0, p0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer$1;->this$0:Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;

    invoke-static {v0}, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->access$0(Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;)I

    move-result v0

    if-nez v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer$1;->this$0:Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->access$1(Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;Z)V

    .line 341
    iget-object v0, p0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer$1;->this$0:Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;

    invoke-static {v0}, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->access$2(Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;)Lcom/alipay/mobile/egg/displayer/EffectDisplayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer$1;->this$0:Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;

    invoke-static {v0}, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->access$2(Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;)Lcom/alipay/mobile/egg/displayer/EffectDisplayerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer$1;->this$0:Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;

    invoke-static {v1}, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->access$3(Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;)Lcom/alipay/mobile/egg/EggEffectGroup;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/egg/displayer/EffectDisplayerListener;->onPreEffectDisplay(Lcom/alipay/mobile/egg/EggEffectGroup;)V

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer$1;->this$0:Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;

    invoke-static {v0}, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->access$0(Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->access$4(Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;I)V

    .line 346
    return-void
.end method
