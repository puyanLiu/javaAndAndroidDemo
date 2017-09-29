.class public Lcom/alipay/mobile/beehive/photo/view/PhotoGridView;
.super Landroid/widget/GridView;
.source "PhotoGridView.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "PhotoGridView"


# instance fields
.field private listener:Lcom/alipay/mobile/beehive/photo/view/PhotoGridView$OnOverScrolledListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method


# virtual methods
.method protected onOverScrolled(IIZZ)V
    .locals 1

    .prologue
    .line 36
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/GridView;->onOverScrolled(IIZZ)V

    .line 37
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridView;->listener:Lcom/alipay/mobile/beehive/photo/view/PhotoGridView$OnOverScrolledListener;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridView;->listener:Lcom/alipay/mobile/beehive/photo/view/PhotoGridView$OnOverScrolledListener;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/beehive/photo/view/PhotoGridView$OnOverScrolledListener;->onOverScrolled(II)V

    .line 40
    :cond_0
    return-void
.end method

.method public setOnOverScrolledListener(Lcom/alipay/mobile/beehive/photo/view/PhotoGridView$OnOverScrolledListener;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridView;->listener:Lcom/alipay/mobile/beehive/photo/view/PhotoGridView$OnOverScrolledListener;

    .line 33
    return-void
.end method
