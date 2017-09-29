.class Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer$2;
.super Ljava/lang/Object;
.source "AbsEggsEffectDisplayer.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;

.field private final synthetic val$nextEffects:Ljava/util/ArrayList;

.field private final synthetic val$resources:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;Ljava/util/ArrayList;Landroid/content/res/Resources;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer$2;->this$0:Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;

    iput-object p2, p0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer$2;->val$nextEffects:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer$2;->val$resources:Landroid/content/res/Resources;

    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    .prologue
    .line 327
    iget-object v0, p0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer$2;->val$nextEffects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer$2;->this$0:Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;

    invoke-static {v0}, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->access$6(Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 331
    return-void

    .line 327
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/egg/EggEffect;

    .line 328
    iget-object v2, p0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer$2;->this$0:Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;

    iget-object v3, p0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer$2;->val$resources:Landroid/content/res/Resources;

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->access$7(Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;Landroid/content/res/Resources;Lcom/alipay/mobile/egg/EggEffect;)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 323
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer$2;->this$0:Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;

    invoke-static {v0}, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->access$6(Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 319
    return-void
.end method
