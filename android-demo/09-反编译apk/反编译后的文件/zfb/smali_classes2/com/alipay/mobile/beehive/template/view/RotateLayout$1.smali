.class Lcom/alipay/mobile/beehive/template/view/RotateLayout$1;
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
    iput-object p1, p0, Lcom/alipay/mobile/beehive/template/view/RotateLayout$1;->this$0:Lcom/alipay/mobile/beehive/template/view/RotateLayout;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/alipay/mobile/beehive/template/view/RotateLayout$1;->this$0:Lcom/alipay/mobile/beehive/template/view/RotateLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alipay/mobile/beehive/template/view/RotateLayout;->access$0(Lcom/alipay/mobile/beehive/template/view/RotateLayout;Z)V

    .line 141
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 135
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/alipay/mobile/beehive/template/view/RotateLayout$1;->this$0:Lcom/alipay/mobile/beehive/template/view/RotateLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/mobile/beehive/template/view/RotateLayout;->access$0(Lcom/alipay/mobile/beehive/template/view/RotateLayout;Z)V

    .line 129
    return-void
.end method
