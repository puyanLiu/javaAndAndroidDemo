.class Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity$6;
.super Ljava/lang/Object;
.source "PhotoSelectActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity$6;->this$0:Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;

    iput p2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity$6;->val$position:I

    .line 470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 474
    iget v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity$6;->val$position:I

    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity$6;->this$0:Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;

    invoke-static {v1}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->access$24(Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;)Lcom/alipay/mobile/beehive/photo/view/PhotoGridView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/beehive/photo/view/PhotoGridView;->getFirstVisiblePosition()I

    move-result v1

    sub-int/2addr v0, v1

    .line 475
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity$6;->this$0:Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;

    invoke-static {v1}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->access$24(Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;)Lcom/alipay/mobile/beehive/photo/view/PhotoGridView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;

    .line 476
    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->animateSelection()V

    .line 477
    return-void
.end method
