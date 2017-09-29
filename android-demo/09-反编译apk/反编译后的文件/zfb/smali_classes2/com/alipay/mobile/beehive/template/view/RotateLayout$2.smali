.class Lcom/alipay/mobile/beehive/template/view/RotateLayout$2;
.super Ljava/lang/Object;
.source "RotateLayout.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/beehive/template/view/RotateLayout;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/beehive/template/view/RotateLayout;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/beehive/template/view/RotateLayout$2;->this$0:Lcom/alipay/mobile/beehive/template/view/RotateLayout;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 179
    iget-object v0, p0, Lcom/alipay/mobile/beehive/template/view/RotateLayout$2;->this$0:Lcom/alipay/mobile/beehive/template/view/RotateLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/template/view/RotateLayout;->setVisibility(I)V

    .line 180
    iget-object v0, p0, Lcom/alipay/mobile/beehive/template/view/RotateLayout$2;->this$0:Lcom/alipay/mobile/beehive/template/view/RotateLayout;

    invoke-virtual {v0, v2, v2}, Lcom/alipay/mobile/beehive/template/view/RotateLayout;->scrollTo(II)V

    .line 181
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 174
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 168
    return-void
.end method
