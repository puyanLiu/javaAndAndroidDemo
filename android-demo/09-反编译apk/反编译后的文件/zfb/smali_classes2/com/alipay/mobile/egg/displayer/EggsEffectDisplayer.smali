.class public interface abstract Lcom/alipay/mobile/egg/displayer/EggsEffectDisplayer;
.super Ljava/lang/Object;
.source "EggsEffectDisplayer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract drawEggs(Landroid/view/ViewGroup;Landroid/graphics/Canvas;)V
.end method

.method public abstract fireEggs(Landroid/view/ViewGroup;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "TT;)V"
        }
    .end annotation
.end method

.method public abstract getAnimationCreator()Lcom/alipay/mobile/egg/displayer/AnimationCreator;
.end method

.method public abstract setEffectDisplayerListener(Lcom/alipay/mobile/egg/displayer/EffectDisplayerListener;)V
.end method
